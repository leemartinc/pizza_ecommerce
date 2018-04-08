package cart;

import java.util.ArrayList;

public class Cart {
    public ArrayList<Item> array = new ArrayList<>();


    public void addItem(Item item) {
        array.add(item);
    }

    public void remove(String itemtoremove) {
        for (Item item : array) {
            if (item.getName().equals(itemtoremove)) {
                array.remove(item);
                break;
            }
        }
    }

    public double getTotal() {
        double total = 0;
        for (Item item : array) {
            total = total + item.price;
        }
        return total;
    }


}
