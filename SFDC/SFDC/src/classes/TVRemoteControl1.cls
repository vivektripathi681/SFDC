public class TVRemoteControl1 
{
   
        //volume to be modified
        integer volume;
        //constant for maximum volume value
        Static final integer MAX_volume=50;
        //constructor
         
        public TVRemoteControl1(integer v)
        {
            //set inital value for volume
            volume=v;
        }
        public integer increasevolume(integer amount)
        {
            volume =amount;
            if(volume > MAX_volume)
            {
                volume=MAX_volume;
            }
            return volume;
        }
        public integer decreasevolume(integer amount)
        {
            volume =amount;
            if(volume<0)
            {
                volume=0;
            }
            return volume;
        }
   // test.stopTest()
        public static string getmenuoptions()
        {
            return 'AUDIO SETTING-VIDEO SETTINGS';
        }
        
    }