package com.example.smartcity.service.algoritmo;

import com.example.smartcity.model.LoginDao;
import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.ParkingDao;

import java.util.ArrayList;
import java.util.List;

public class Location {

    private List<Nodo> start = new ArrayList<>();
    private List<Nodo> end = new ArrayList<>();

    private List<Nodo> nodopark = new ArrayList<>();


    //private int[][]blocksParking;

    public Location(){
        setStart();
        setEnd();
        //setParking();
    }

    void setStart(){
        Nodo nodo1 = new Nodo(2,1);
        nodo1.setIndirizzo("San Giorgio");

        Nodo nodo2 = new Nodo(1,1);
        nodo2.setIndirizzo("Portici");

        Nodo nodo3 = new Nodo(0,1);
        nodo3.setIndirizzo("Pomigliano");

        this.start.add(nodo1);
        this.start.add(nodo2);
        this.start.add(nodo3);
    }

    public void setEnd() {
        Nodo nodo1 = new Nodo(2,5);
        nodo1.setIndirizzo("Napoli");

        Nodo nodo2 = new Nodo(3,6);
        nodo2.setIndirizzo("Caserta");

        Nodo nodo3 = new Nodo(5,5);
        nodo3.setIndirizzo("Casoria");

        this.end.add(nodo1);
        this.end.add(nodo2);
        this.end.add(nodo3);
    }

    public int[][] setParking(){
        //int[][] blocksParking = new int[][]{{0,2}, {0,3}, {1,4}};

        //List<ParkingBean> parking = ParkingDao.getIstanza().;

        Nodo park1 = new Nodo(0,2);
        Nodo park2 = new Nodo(0,3);
        Nodo park3 = new Nodo(1,4);

        //park1.setIndirizzoParcheggio(ParkingDao.getIstanza().getParkingBean(1).getIndirizzo());
        //park2.setIndirizzoParcheggio(ParkingDao.getIstanza().getParkingBean(2).getIndirizzo());
        //park3.setIndirizzoParcheggio(ParkingDao.getIstanza().getParkingBean(3).getIndirizzo());

        nodopark.add(park1);
        nodopark.add(park2);
        nodopark.add(park3);


        int[][] blocksParking = new int[][]{{park1.getRow(), park1.getCol()},
                {park2.getRow(), park2.getCol()},
                {park3.getRow(),park3.getCol()}};

        setParkIndirizzo();

        return blocksParking;
    }

   public void setParkIndirizzo(){
        int i = 1;
       ParkingDao parkingDao = ParkingDao.getIstanza();

       for (Nodo nodo: nodopark) {
           nodo.setIndirizzoParcheggio(parkingDao.getParkingBean(i).getIndirizzo());
           System.out.println("riga: " + nodo.getRow() + " colonna: "+ nodo.getCol()+ " indirizzo:" + nodo.getIndirizzoParcheggio());
           i++;
       }
    }


    public Nodo chooseStart(String indirizzo){

        for (Nodo position : this.start) {
            if(indirizzo.equals(position.getIndirizzo())){
                return position;
            }
        }
        return null;
    }

    public Nodo chooseEnd(String indirizzo){

        for (Nodo position : this.end) {
            if(indirizzo.equals(position.getIndirizzo())){
                return position;
            }
        }
        return null;
    }


    public List<Nodo> getNodopark(){
        return nodopark;
    }

    //public String getNodoParkIndirizzo()...


}
