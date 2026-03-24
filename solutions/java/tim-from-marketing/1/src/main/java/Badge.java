class Badge {
    public String print(Integer id, String name, String department) {
        String idStr = id != null? "[" + id + "] - " : "";
        String depStr = department != null? department.toUpperCase() : "OWNER";
        return idStr+ name + " - " + depStr;
    }
}
