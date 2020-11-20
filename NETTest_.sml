structure RT_Nat = RT_Nat;

structure RT_Text = RT_Text;

structure RT_x_1 =
    struct
        type t = RT_Text.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_2 =
    struct
        type t = RT_x_1.t * RT_x_1.t * RT_Nat.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_x_1.equ(#1 x, #1 y) andalso 
                             RT_x_1.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_Nat.equ(#5 x, #5 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_1.toString(#1 x )) ^ "," ^
                             (RT_x_1.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_Nat.toString(#5 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_l_3 = RT_List(structure Elem = RT_x_1);

structure RT_l_4 = RT_List(structure Elem = RT_x_2);

structure RT_x_5 =
    struct
        type t = RT_l_3.t * RT_l_4.t;
        
        fun equ (x:t, y:t) = RT_l_3.equ(#1 x, #1 y) andalso 
                             RT_l_4.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_3.toString(#1 x )) ^ "," ^
                             (RT_l_4.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_3.typeToString ()) ^ " >< " ^
                              (RT_l_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_6 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_x_5.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_x_5.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_x_7 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t * RT_Nat.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_Nat.equ(#5 x, #5 y) andalso 
                             RT_x_5.equ(#6 x, #6 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_Nat.toString(#5 x )) ^ "," ^
                             (RT_x_5.toString(#6 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_8 =
    struct
        type t = RT_Text.t * RT_l_3.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_3.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_3.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_3.typeToString ()) ^
                              ")";
    end;
    
structure NETTest =
    struct
        type Time_ = RT_Nat.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type Connection_ = RT_x_2.t;
        
        type Stop_ = RT_x_1.t;
        
        type Net_ = RT_x_5.t;
        
        fun getStop'E79_ (stpid'EE5_, sl'EEC_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (39, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x27_'0_, x28_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x28_'0_, RT_Int.fromLit "0")
        end) (sl'EEC_))) then raise RSL.RSL_exception ("NETTest.rsl:37:5: Argument of getStop" ^ RT_x_8.toString (stpid'EE5_, sl'EEC_) ^ " not in subtype") else let val RSL_res_'E79_ = if RT_l_3.equ (sl'EEC_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (40, 12)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (42, 7)); let
            val stp'1073_ = ((RT_l_3.R_hd((sl'EEC_))):RT_x_1.t); 
            val (si'1082_, c'1085_) = ((stp'1073_):RT_x_1.t)
        in
            if RT_Text.equ (stpid'EE5_, si'1082_) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (44, 16)); raise RSL.RSL_exception "NETTest.rsl:44:16: stop encountered") else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (46, 11)); ((getStop'E79_) (stpid'EE5_, RT_l_3.R_tl((sl'EEC_)))))
        end) in if not(let
            val (x29_'0_, x30_'0_) = ((RSL_res_'E79_):RT_x_1.t)
        in
            RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")
        end) then raise RSL.RSL_exception ("NETTest.rsl:37:5: Result " ^ RT_x_1.toString RSL_res_'E79_ ^ " of getStop" ^ RT_x_8.toString (stpid'EE5_, sl'EEC_) ^ " not in subtype") else RSL_res_'E79_ end);
        
        val empty'645_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        fun addConnection'A91_ (startid'B03_, stpid'B0C_, hw'B13_, c'B17_, dt'B1A_, net'B1E_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (29, 5)); if not((RT_Nat.R_ge (hw'B13_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (c'B17_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (dt'B1A_, RT_Int.fromLit "0")) andalso (let
            val (x14_'0_, x15_'0_) = ((net'B1E_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x16_'0_, x17_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x17_'0_, RT_Int.fromLit "0")
            end) (x14_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x18_'0_, x19_'0_, x20_'0_, x21_'0_, x22_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x23_'0_, x24_'0_) = ((x18_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x24_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x25_'0_, x26_'0_) = ((x19_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x26_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x20_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x21_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x22_'0_, RT_Int.fromLit "0")))))
            end) (x15_'0_)))
        end)))) then raise RSL.RSL_exception ("NETTest.rsl:27:5: Argument of addConnection" ^ RT_x_7.toString (startid'B03_, stpid'B0C_, hw'B13_, c'B17_, dt'B1A_, net'B1E_) ^ " not in subtype") else let
            val (sl'B5E_, cl'B61_) = ((net'B1E_):RT_x_5.t); 
            val stpidOne'B6C_ = ((((getStop'E79_) (startid'B03_, sl'B5E_))):RT_x_1.t); 
            val stpidTwo'B8D_ = ((((getStop'E79_) (stpid'B0C_, sl'B5E_))):RT_x_1.t)
        in
            (sl'B5E_, RT_l_4.R_concat (cl'B61_, [(stpidOne'B6C_, stpidTwo'B8D_, hw'B13_, c'B17_, dt'B1A_)]))
        end);
        
        fun insertStop'70D_ (stopid'77C_, cap'784_, net'789_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (20, 9)); if not((RT_Nat.R_ge (cap'784_, RT_Int.fromLit "0")) andalso (let
            val (x1_'0_, x2_'0_) = ((net'789_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x3_'0_, x4_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x4_'0_, RT_Int.fromLit "0")
            end) (x1_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x5_'0_, x6_'0_, x7_'0_, x8_'0_, x9_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x10_'0_, x11_'0_) = ((x5_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x11_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x12_'0_, x13_'0_) = ((x6_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x13_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x7_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x8_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x9_'0_, RT_Int.fromLit "0")))))
            end) (x2_'0_)))
        end)) then raise RSL.RSL_exception ("NETTest.rsl:18:5: Argument of insertStop" ^ RT_x_6.toString (stopid'77C_, cap'784_, net'789_) ^ " not in subtype") else let
            val (sl'7DE_, cl'7E2_) = ((net'789_):RT_x_5.t); 
            val h'7ED_ = (((RT_l_3.R_concat (sl'7DE_, [(stopid'77C_, cap'784_)]))):RT_l_3.t)
        in
            (h'7ED_, cl'7E2_)
        end);
        
    end;
    
open NETTest;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (20, 9), (22, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (29, 5), (35, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (46, 11), (47, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (44, 16), (45, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (42, 7), (49, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (40, 12), (41, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (39, 5), (50, 3)));
RSL.print_error_count();
R_coverage.save_marked();
