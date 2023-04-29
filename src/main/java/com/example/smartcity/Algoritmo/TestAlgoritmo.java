package com.example.smartcity.Algoritmo;

import com.example.smartcity.model.Bean.ParkingBean;

import java.util.ArrayList;
import java.util.List;

public class TestAlgoritmo {
    public static void main(String[] args) {
        Location start = new Location();

        //Interfaccia utente (i nodi iniziali e finali sono prestabiliti, all'utente verrà dato una lista di posizioni)
        Nodo initialNode = start.chooseStart("San Giorgio");
        Nodo finalNode = start.chooseEnd("Napoli");

        int rows = 7;
        int cols = 8;

        AStar aStar = new AStar(rows, cols, initialNode, finalNode);
        int[][] blocksArray = new int[][]{{1, 3}, {2, 3}, {3, 3}};

        aStar.setBlocchi(blocksArray);
        aStar.setParking(start.setParking());


        List<Nodo> path = aStar.ricercaPercorso();

        List<ParkingBean> parcheggioDisp = new ArrayList<>();
        for (Nodo node : path) {                                                    //per ogni nodo appartentente al percorso trovato da a*
            System.out.println(node);
            if(node.isPark() && start.getNodoParkIndirizzo(node) != null){          //controllo se è un nodo parcheggio
                parcheggioDisp.add(start.getNodoParkIndirizzo(node));              //se è vero allora cerco i parcheggi disponibili lungo il percorso
                System.out.println("parcheggio size " + parcheggioDisp.size());

            }
        }


        for (ParkingBean parking: parcheggioDisp) {         //e li stampo (n.b questo passo va nella jsp)
            System.out.println("\nTEST "+ parking.getNomeParcheggio());
            System.out.println(parking.getIndirizzo());
            System.out.println(parking.getPostiAuto());
            System.out.println(parking.getPostiFurgone());
            System.out.println(parking.getPostiMoto());
            System.out.println(parking.getTariffaAF());


        }


        //Search Area San Giorgio - Napoli
        //      0   1   2   3   4   5   6
        // 0    -   -   P   P   -   -   -
        // 1    -   -   -   B   P   -   -
        // 2    -   I   -   B   -   F   -
        // 3    -   -   -   B   -   -   -
        // 4    -   -   -   -   -   -   -
        // 5    -   -   -   -   -   -   -


        //Expected output with diagonals
        //Node [row=2, col=1]
        //Node [row=1, col=2]
        //Node [row=0, col=3]
        //Node [row=1, col=4]
        //Node [row=2, col=5]

        //Search Path with diagonals San Giorgio - Napoli
        //      0   1   2   3   4   5   6
        // 0    -   -   -   *   -   -   -
        // 1    -   -   *   B   *   -   -
        // 2    -   I*  -   B   -  *F   -
        // 3    -   -   -   B   -   -   -
        // 4    -   -   -   -   -   -   -
        // 5    -   -   -   -   -   -   -


        //Search Path with diagonals San Giorgio - Casoria
        //      0   1   2   3   4   5   6
        // 0    -   -   P   P   -   -   -
        // 1    -   -   -   B   P   -   -
        // 2    -   I*  -   B   -   -   -
        // 3    -   -   *P  B   -   -   -
        // 4    -   -   -   *  *P  -   -
        // 5    -   -   -   -   -   *F   -

        //Search Path with diagonals San Giorgio - Caserta
        //      0   1   2   3   4   5   6
        // 0    -   -   P   P   -   -   -
        // 1    -   -   -   B   P   -   -
        // 2    -   I*  -   B   -   -   -
        // 3    -   -   *P  B   -   -   *F
        // 4    -   -   -   *  *P   *   -
        // 5    -   -   -   -   -   -   -
    }
}