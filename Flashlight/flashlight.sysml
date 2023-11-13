package 'Package Yashwanth' {
	
		/* This package implements the FlashLight 
	 * The flashlight functionality with a timer & button*/
	
  	
	part def Flashlight {
		part light : Light;
		part timer : Timer;
		part button : Button;
	}
	
	part def Light {
	 port light : Port;
	 
	  state def lightstm {
	 	
            entry; then off;
            state off;
            state on;
            transition off_to_on
                first off
                accept tick
                then on;
            transition on_to_off
                first on
                accept tick
                then off;
             
            
	}
	
	}
	
	part def Timer {
	 port light : Port;
	 port control : Port;	
	 
	  state def timerstm {
	 	
            entry; then off;
            
            state off;
            state ticking;
          
            transition off_to_ticking
                first off
                accept on
                then ticking;
            transition ticking_to_off
                first ticking
                 accept off
                then off;
            }
            
            
	 	
	}
	 
	
	
	part def Button {
	 port control : Port;
	 
	 state def buttonstm {
	 	
            entry; then off;
            
            state off;
            transition off_to_on
                first off
                accept pushing
                then on;
            transition on_to_off
                first on
                accept pushing
                then off;
            state on
            {
            	entry SendOn;
            }   
                
            }
	 	
	}
	
	port def Port;
  
  
  
	
}