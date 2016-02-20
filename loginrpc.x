/*
 *   loginrpc.x
 */
 
 
          struct credpair {
               char uname[256];
               char password[256];
          };
 	  struct resultpair {
		int returnCode;
		int userCount;
	  };
          program LOGIN_PROG {
               version LOGIN_VERS {
                    resultpair LOGIN(credpair) = 1;
               } = 1;
          } = 0x20000008;
	  program REGISTER_PROG {
               version REGISTER_VERS {
                    resultpair REGISTER(credpair) = 1;
               } = 1;
          } = 0x20000088;

