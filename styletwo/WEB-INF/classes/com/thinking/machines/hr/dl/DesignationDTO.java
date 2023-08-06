package com.thinking.machines.hr.dl;
//import com.thinking.machines.hr.dl.*;
public class DesignationDTO implements java.io.Serializable, Comparable<DesignationDTO>{
    private int code;
    private String title;
    public DesignationDTO(){
        this.code = 0;
        this.title = "";
    }
    public int getCode() {
        return this.code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    public String getTitle() {
        return this.title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public boolean equals(Object object){
        if(!(object instanceof DesignationDTO)) return false;
        DesignationDTO other = (DesignationDTO) object;
        return this.code == other.code;
    }
    public int compareTo(DesignationDTO other){
        return this.title.compareToIgnoreCase(other.title);
    }
    public int hashCode(){
        return this.code;
    }
}