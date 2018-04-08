package Inventory;

public class OrderHistory {
    String order;
    String user;

    public OrderHistory(String order, String user) {
        this.order = order;
        this.user = user;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
}
