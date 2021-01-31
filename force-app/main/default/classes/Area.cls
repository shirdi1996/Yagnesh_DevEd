public class Area {
	private string type;
    	private integer length;
    		private integer breadth;
    			private integer height;
    private integer radius; 
public Area(string type, integer length,integer breadth, integer height, integer radius)
    {
       this.type=type;
        	this.length=length;
        			this.breadth=breadth;
       		this.height=height;
       this.radius=radius; }

    
public string gettype(){
        return type;
    }
    
public integer getlength(){
        return length;
    }
    
public integer getbreadth(){
        return breadth;
    }    
public integer getheight(){
        return height;
    }    
public integer getradius(){
        return radius;
    }    
}