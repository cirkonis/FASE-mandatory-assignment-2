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
        type t = RT_Text.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_x_5.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_x_5.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_9 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_x_5.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_x_5.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_10 =
    struct
        type t = RT_x_1.t * RT_x_1.t * RT_l_4.t;
        
        fun equ (x:t, y:t) = RT_x_1.equ(#1 x, #1 y) andalso 
                             RT_x_1.equ(#2 x, #2 y) andalso 
                             RT_l_4.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_1.toString(#1 x )) ^ "," ^
                             (RT_x_1.toString(#2 x )) ^ "," ^
                             (RT_l_4.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_l_4.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_11 =
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
    
structure RT_x_12 =
    struct
        type t = RT_x_1.t * RT_l_3.t;
        
        fun equ (x:t, y:t) = RT_x_1.equ(#1 x, #1 y) andalso 
                             RT_l_3.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_1.toString(#1 x )) ^ "," ^
                             (RT_l_3.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_l_3.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_13 =
    struct
        type t = RT_x_1.t * RT_l_3.t * RT_l_3.t;
        
        fun equ (x:t, y:t) = RT_x_1.equ(#1 x, #1 y) andalso 
                             RT_l_3.equ(#2 x, #2 y) andalso 
                             RT_l_3.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_1.toString(#1 x )) ^ "," ^
                             (RT_l_3.toString(#2 x )) ^ "," ^
                             (RT_l_3.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_l_3.typeToString ()) ^ " >< " ^
                              (RT_l_3.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_14 =
    struct
        type t = RT_l_3.t * RT_l_3.t * RT_l_4.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_l_3.equ(#1 x, #1 y) andalso 
                             RT_l_3.equ(#2 x, #2 y) andalso 
                             RT_l_4.equ(#3 x, #3 y) andalso 
                             RT_x_5.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_3.toString(#1 x )) ^ "," ^
                             (RT_l_3.toString(#2 x )) ^ "," ^
                             (RT_l_4.toString(#3 x )) ^ "," ^
                             (RT_x_5.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_3.typeToString ()) ^ " >< " ^
                              (RT_l_3.typeToString ()) ^ " >< " ^
                              (RT_l_4.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_15 =
    struct
        type t = RT_x_1.t * RT_l_3.t * RT_l_4.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_x_1.equ(#1 x, #1 y) andalso 
                             RT_l_3.equ(#2 x, #2 y) andalso 
                             RT_l_4.equ(#3 x, #3 y) andalso 
                             RT_x_5.equ(#4 x, #4 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_1.toString(#1 x )) ^ "," ^
                             (RT_l_3.toString(#2 x )) ^ "," ^
                             (RT_l_4.toString(#3 x )) ^ "," ^
                             (RT_x_5.toString(#4 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_1.typeToString ()) ^ " >< " ^
                              (RT_l_3.typeToString ()) ^ " >< " ^
                              (RT_l_4.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure test =
    struct
        type Time_ = RT_Nat.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type Connection_ = RT_x_2.t;
        
        type Stop_ = RT_x_1.t;
        
        type Net_ = RT_x_5.t;
        
        fun remove'94D9_ (stp'9544_, sl'9549_, newSl'954D_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (262, 5)); if not((let
            val (x205_'0_, x206_'0_) = ((stp'9544_):RT_x_1.t)
        in
            RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x207_'0_, x208_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")
        end) (sl'9549_))) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x209_'0_, x210_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")
        end) (newSl'954D_))))) then raise RSL.RSL_exception ("NET.rsl:260:5: Argument of remove" ^ RT_x_13.toString (stp'9544_, sl'9549_, newSl'954D_) ^ " not in subtype") else if RT_l_3.equ (sl'9549_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (263, 9)); newSl'954D_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (265, 9)); let
            val stp1'96D5_ = ((RT_l_3.R_hd((sl'9549_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'96D5_, stp'9544_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (267, 17)); ((remove'94D9_) (stp'9544_, RT_l_3.R_tl((sl'9549_)), newSl'954D_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (269, 17)); ((remove'94D9_) (stp'9544_, RT_l_3.R_tl((sl'9549_)), RT_l_3.R_concat (newSl'954D_, [stp1'96D5_]))))
        end));
        
        fun auxAreConnected'56BD_ (stp1'5731_, stp2'5737_, cl'573D_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (103, 5)); if not((let
            val (x118_'0_, x119_'0_) = ((stp1'5731_):RT_x_1.t)
        in
            RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x120_'0_, x121_'0_) = ((stp2'5737_):RT_x_1.t)
        in
            RT_Nat.R_ge (x121_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x122_'0_, x123_'0_, x124_'0_, x125_'0_, x126_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x127_'0_, x128_'0_) = ((x122_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x129_'0_, x130_'0_) = ((x123_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x124_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x125_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")))))
        end) (cl'573D_))))) then raise RSL.RSL_exception ("NET.rsl:101:5: Argument of auxAreConnected" ^ RT_x_10.toString (stp1'5731_, stp2'5737_, cl'573D_) ^ " not in subtype") else if RT_l_4.equ (cl'573D_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (106, 9)); let
            val (cs1'58BA_, cs2'58BF_, hw'58C4_, cap'58C8_, dt'58CD_) = ((RT_l_4.R_hd((cl'573D_))):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stp1'5731_, cs1'58BA_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 32)); RT_x_1.equ (stp2'5737_, cs2'58BF_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 47)); ((RT_x_1.equ (stp1'5731_, cs2'58BF_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 62)); RT_x_1.equ (stp2'5737_, cs1'58BA_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (108, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (110, 17)); ((auxAreConnected'56BD_) (stp1'5731_, stp2'5737_, RT_l_4.R_tl((cl'573D_)))))
        end));
        
        fun getStop'5C35_ (stpid'5CA1_, sl'5CA8_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (117, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x131_'0_, x132_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")
        end) (sl'5CA8_))) then raise RSL.RSL_exception ("NET.rsl:115:5: Argument of getStop" ^ RT_x_11.toString (stpid'5CA1_, sl'5CA8_) ^ " not in subtype") else if RT_l_3.equ (sl'5CA8_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 12)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (120, 7)); let
            val stp'5E2F_ = ((RT_l_3.R_hd((sl'5CA8_))):RT_x_1.t); 
            val (si'5E3E_, c'5E41_) = ((stp'5E2F_):RT_x_1.t)
        in
            if RT_Text.equ (stpid'5CA1_, si'5E3E_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (122, 16)); stp'5E2F_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (124, 11)); ((getStop'5C35_) (stpid'5CA1_, RT_l_3.R_tl((sl'5CA8_)))))
        end));
        
        fun areDirectlyConnected'44C5_ (siOne'453E_, siTwo'4545_, net'454C_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (57, 5)); if not(let
            val (x53_'0_, x54_'0_) = ((net'454C_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x55_'0_, x56_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x56_'0_, RT_Int.fromLit "0")
            end) (x53_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x57_'0_, x58_'0_, x59_'0_, x60_'0_, x61_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x62_'0_, x63_'0_) = ((x57_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x63_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x64_'0_, x65_'0_) = ((x58_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x65_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x59_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x60_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x61_'0_, RT_Int.fromLit "0")))))
            end) (x54_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:55:5: Argument of areDirectlyConnected" ^ RT_x_9.toString (siOne'453E_, siTwo'4545_, net'454C_) ^ " not in subtype") else let
            val (sl'4592_, cl'4595_) = ((net'454C_):RT_x_5.t); 
            val stp1'45A0_ = ((((getStop'5C35_) (siOne'453E_, sl'4592_))):RT_x_1.t); 
            val stp2'45BB_ = ((((getStop'5C35_) (siTwo'4545_, sl'4592_))):RT_x_1.t)
        in
            ((auxAreConnected'56BD_) (stp1'45A0_, stp2'45BB_, cl'4595_))
        end);
        
        fun findDirectConnection'A3B1_ (stp'A42A_, sl'A42F_, cl'A433_, net'A437_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (300, 5)); if not((let
            val (x263_'0_, x264_'0_) = ((stp'A42A_):RT_x_1.t)
        in
            RT_Nat.R_ge (x264_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x265_'0_, x266_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x266_'0_, RT_Int.fromLit "0")
        end) (sl'A42F_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x267_'0_, x268_'0_, x269_'0_, x270_'0_, x271_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x272_'0_, x273_'0_) = ((x267_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x273_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x274_'0_, x275_'0_) = ((x268_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x275_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x269_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x270_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x271_'0_, RT_Int.fromLit "0")))))
        end) (cl'A433_))) andalso (let
            val (x276_'0_, x277_'0_) = ((net'A437_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x278_'0_, x279_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x279_'0_, RT_Int.fromLit "0")
            end) (x276_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x280_'0_, x281_'0_, x282_'0_, x283_'0_, x284_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x285_'0_, x286_'0_) = ((x280_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x286_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x287_'0_, x288_'0_) = ((x281_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x288_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x282_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x283_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x284_'0_, RT_Int.fromLit "0")))))
            end) (x277_'0_)))
        end)))) then raise RSL.RSL_exception ("NET.rsl:298:5: Argument of findDirectConnection" ^ RT_x_15.toString (stp'A42A_, sl'A42F_, cl'A433_, net'A437_) ^ " not in subtype") else if RT_l_3.equ (sl'A42F_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (301, 9)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (303, 9)); let
            val stp1'A5AD_ = ((RT_l_3.R_hd((sl'A42F_))):RT_x_1.t); 
            val (si'A5BD_, cap'A5C1_) = ((stp'A42A_):RT_x_1.t); 
            val (si1'A5CE_, cap1'A5D3_) = ((stp1'A5AD_):RT_x_1.t)
        in
            if ((areDirectlyConnected'44C5_) (si'A5BD_, si1'A5CE_, net'A437_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (305, 17)); stp1'A5AD_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (307, 17)); ((findDirectConnection'A3B1_) (stp'A42A_, RT_l_3.R_tl((sl'A42F_)), cl'A433_, net'A437_)))
        end));
        
        fun directStopExists'9FC9_ (stp'A03E_, sl'A043_, cl'A047_, net'A04B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (290, 5)); if not((let
            val (x237_'0_, x238_'0_) = ((stp'A03E_):RT_x_1.t)
        in
            RT_Nat.R_ge (x238_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x239_'0_, x240_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x240_'0_, RT_Int.fromLit "0")
        end) (sl'A043_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x241_'0_, x242_'0_, x243_'0_, x244_'0_, x245_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x246_'0_, x247_'0_) = ((x241_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x247_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x248_'0_, x249_'0_) = ((x242_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x249_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x243_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x244_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x245_'0_, RT_Int.fromLit "0")))))
        end) (cl'A047_))) andalso (let
            val (x250_'0_, x251_'0_) = ((net'A04B_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x252_'0_, x253_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x253_'0_, RT_Int.fromLit "0")
            end) (x250_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x254_'0_, x255_'0_, x256_'0_, x257_'0_, x258_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x259_'0_, x260_'0_) = ((x254_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x260_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x261_'0_, x262_'0_) = ((x255_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x262_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x256_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x257_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x258_'0_, RT_Int.fromLit "0")))))
            end) (x251_'0_)))
        end)))) then raise RSL.RSL_exception ("NET.rsl:288:5: Argument of directStopExists" ^ RT_x_15.toString (stp'A03E_, sl'A043_, cl'A047_, net'A04B_) ^ " not in subtype") else let
            val check'A095_ = ((((findDirectConnection'A3B1_) (stp'A03E_, sl'A043_, cl'A047_, net'A04B_))):RT_x_1.t)
        in
            if RT_x_1.equ (check'A095_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (292, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (294, 13)); true)
        end);
        
        fun checkForNets'9AB5_ (sl'9B26_, stpNet'9B2A_, cl'9B32_, net'9B36_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (277, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x211_'0_, x212_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")
        end) (sl'9B26_))) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x213_'0_, x214_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")
        end) (stpNet'9B2A_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x215_'0_, x216_'0_, x217_'0_, x218_'0_, x219_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x220_'0_, x221_'0_) = ((x215_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x221_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x222_'0_, x223_'0_) = ((x216_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x223_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x217_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x218_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x219_'0_, RT_Int.fromLit "0")))))
        end) (cl'9B32_))) andalso (let
            val (x224_'0_, x225_'0_) = ((net'9B36_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x226_'0_, x227_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x227_'0_, RT_Int.fromLit "0")
            end) (x224_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x228_'0_, x229_'0_, x230_'0_, x231_'0_, x232_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x233_'0_, x234_'0_) = ((x228_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x234_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x235_'0_, x236_'0_) = ((x229_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x236_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x230_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x231_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x232_'0_, RT_Int.fromLit "0")))))
            end) (x225_'0_)))
        end)))) then raise RSL.RSL_exception ("NET.rsl:275:5: Argument of checkForNets" ^ RT_x_14.toString (sl'9B26_, stpNet'9B2A_, cl'9B32_, net'9B36_) ^ " not in subtype") else if RT_l_3.equ (sl'9B26_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (278, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (280, 9)); if ((directStopExists'9FC9_) (RT_l_3.R_hd((sl'9B26_)), stpNet'9B2A_, cl'9B32_, net'9B36_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (281, 13)); ((checkForNets'9AB5_) (RT_l_3.R_tl((sl'9B26_)), RT_l_3.R_concat (stpNet'9B2A_, [RT_l_3.R_hd((sl'9B26_))]), cl'9B32_, net'9B36_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (283, 13)); false)));
        
        fun stopsConnected'8E99_ (sl'8F0C_, cl'8F10_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (246, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x194_'0_, x195_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")
        end) (sl'8F0C_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x196_'0_, x197_'0_, x198_'0_, x199_'0_, x200_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x201_'0_, x202_'0_) = ((x196_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x202_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x203_'0_, x204_'0_) = ((x197_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x204_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x198_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x199_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x200_'0_, RT_Int.fromLit "0")))))
        end) (cl'8F10_)))) then raise RSL.RSL_exception ("NET.rsl:244:5: Argument of stopsConnected" ^ RT_x_5.toString (sl'8F0C_, cl'8F10_) ^ " not in subtype") else if RT_l_3.equ (sl'8F0C_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (247, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (249, 9)); let
            val stp'9095_ = ((RT_l_3.R_hd((sl'8F0C_))):RT_x_1.t); 
            val stp1'90A3_ = ((((findDirectConnection'A3B1_) (stp'9095_, sl'8F0C_, cl'8F10_, (sl'8F0C_, cl'8F10_)))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'90A3_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (251, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (253, 17)); let
                val stpNet'922D_ = ((RT_l_3.R_concat (([]:RT_l_3.t), [stp'9095_, stp1'90A3_])):RT_l_3.t)
            in
                ((checkForNets'9AB5_) (((remove'94D9_) (stp1'90A3_, RT_l_3.R_tl((sl'8F0C_)), ([]:RT_l_3.t))), stpNet'922D_, cl'8F10_, (sl'8F0C_, cl'8F10_)))
            end)
        end));
        
        fun capacity'4C31_ (si'4C9E_, net'4CA2_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (76, 5)); if not(let
            val (x92_'0_, x93_'0_) = ((net'4CA2_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x94_'0_, x95_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x95_'0_, RT_Int.fromLit "0")
            end) (x92_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x96_'0_, x97_'0_, x98_'0_, x99_'0_, x100_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x101_'0_, x102_'0_) = ((x96_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x102_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x103_'0_, x104_'0_) = ((x97_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x104_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x98_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x99_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x100_'0_, RT_Int.fromLit "0")))))
            end) (x93_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:74:5: Argument of capacity" ^ RT_x_8.toString (si'4C9E_, net'4CA2_) ^ " not in subtype") else let
            val (stoplist'4CFE_, cl'4D08_) = ((net'4CA2_):RT_x_5.t); 
            val (x'4D14_, cap'4D17_) = ((((getStop'5C35_) (si'4C9E_, stoplist'4CFE_))):RT_x_1.t)
        in
            cap'4D17_
        end);
        
        fun correctCapacity'61AD_ net'6221_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 5)); if not(let
            val (x133_'0_, x134_'0_) = ((net'6221_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x135_'0_, x136_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x136_'0_, RT_Int.fromLit "0")
            end) (x133_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x137_'0_, x138_'0_, x139_'0_, x140_'0_, x141_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x142_'0_, x143_'0_) = ((x137_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x143_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x144_'0_, x145_'0_) = ((x138_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x145_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x139_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x140_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x141_'0_, RT_Int.fromLit "0")))))
            end) (x134_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:129:5: Argument of correctCapacity" ^ "(" ^ RT_x_5.toString net'6221_ ^ ")" ^ " not in subtype") else let
            val (sl'627A_, cl'627D_) = ((net'6221_):RT_x_5.t)
        in
            if RT_l_3.equ (sl'627A_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (133, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (135, 13)); let
                val h'6411_ = ((RT_l_3.R_hd((sl'627A_))):RT_x_1.t); 
                val (si'641E_, cap'6422_) = ((h'6411_):RT_x_1.t)
            in
                if RT_Nat.R_le (((capacity'4C31_) (si'641E_, net'6221_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (137, 21)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (139, 21)); ((correctCapacity'61AD_) ((RT_l_3.R_tl((sl'627A_)), cl'627D_))))
            end)
        end);
        
        fun correctConnectionDrivingTime'8921_ cl'89A2_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (232, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x185_'0_, x186_'0_, x187_'0_, x188_'0_, x189_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x190_'0_, x191_'0_) = ((x185_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x191_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x192_'0_, x193_'0_) = ((x186_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x193_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x187_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x188_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x189_'0_, RT_Int.fromLit "0")))))
        end) (cl'89A2_))) then raise RSL.RSL_exception ("NET.rsl:230:5: Argument of correctConnectionDrivingTime" ^ "(" ^ RT_l_4.toString cl'89A2_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'89A2_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (233, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (235, 9)); let
            val (stp1'8B1E_, stp2'8B24_, hw'8B2A_, cap'8B2E_, dt'8B33_) = ((RT_l_4.R_hd((cl'89A2_))):RT_x_2.t)
        in
            if RT_Nat.R_le (dt'8B33_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (237, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (239, 17)); ((correctConnectionDrivingTime'8921_) (RT_l_4.R_tl((cl'89A2_)))))
        end));
        
        fun stopExists'6D65_ (stp'6DD4_, sl'6DD9_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (161, 5)); if not((let
            val (x157_'0_, x158_'0_) = ((stp'6DD4_):RT_x_1.t)
        in
            RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x159_'0_, x160_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")
        end) (sl'6DD9_)))) then raise RSL.RSL_exception ("NET.rsl:159:5: Argument of stopExists" ^ RT_x_12.toString (stp'6DD4_, sl'6DD9_) ^ " not in subtype") else if RT_l_3.equ (sl'6DD9_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (162, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (164, 9)); let
            val stp1'6F61_ = ((RT_l_3.R_hd((sl'6DD9_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'6F61_, stp'6DD4_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (166, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (168, 17)); ((stopExists'6D65_) (stp'6DD4_, RT_l_3.R_tl((sl'6DD9_)))))
        end));
        
        fun checkForRealStops'67ED_ (sl'6863_, cl'6867_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (147, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x146_'0_, x147_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")
        end) (sl'6863_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x148_'0_, x149_'0_, x150_'0_, x151_'0_, x152_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x153_'0_, x154_'0_) = ((x148_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x154_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x155_'0_, x156_'0_) = ((x149_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x156_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x150_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x151_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x152_'0_, RT_Int.fromLit "0")))))
        end) (cl'6867_)))) then raise RSL.RSL_exception ("NET.rsl:145:5: Argument of checkForRealStops" ^ RT_x_5.toString (sl'6863_, cl'6867_) ^ " not in subtype") else if RT_l_4.equ (cl'6867_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (148, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (150, 9)); let
            val (stp1'69EA_, stp2'69F0_, hw'69F6_, cap'69FA_, dt'69FF_) = ((RT_l_4.R_hd((cl'6867_))):RT_x_2.t)
        in
            if (((stopExists'6D65_) (stp1'69EA_, sl'6863_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (151, 39)); ((stopExists'6D65_) (stp2'69F0_, sl'6863_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (152, 17)); ((checkForRealStops'67ED_) (sl'6863_, RT_l_4.R_tl((cl'6867_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (154, 17)); false)
        end));
        
        fun correctStopsAux'7409_ (s'747D_, sl'7480_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (178, 5)); if not((let
            val (x161_'0_, x162_'0_) = ((s'747D_):RT_x_1.t)
        in
            RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x163_'0_, x164_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0")
        end) (sl'7480_)))) then raise RSL.RSL_exception ("NET.rsl:176:5: Argument of correctStopsAux" ^ RT_x_12.toString (s'747D_, sl'7480_) ^ " not in subtype") else if RT_l_3.equ (sl'7480_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (179, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (181, 9)); let
            val (si'7606_, cap'760A_) = ((s'747D_):RT_x_1.t); 
            val (siNew'7615_, capNew'761C_) = ((RT_l_3.R_hd((sl'7480_))):RT_x_1.t)
        in
            if RT_Text.equ (si'7606_, siNew'7615_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (183, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (185, 17)); ((correctStopsAux'7409_) (s'747D_, RT_l_3.R_tl((sl'7480_)))))
        end));
        
        fun correctStops'7981_ sl'79F2_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (192, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x165_'0_, x166_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")
        end) (sl'79F2_))) then raise RSL.RSL_exception ("NET.rsl:190:5: Argument of correctStops" ^ "(" ^ RT_l_3.toString sl'79F2_ ^ ")" ^ " not in subtype") else if RT_l_3.equ (sl'79F2_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (193, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (195, 9)); if RT_Bool.equ (((correctStopsAux'7409_) (RT_l_3.R_hd((sl'79F2_)), RT_l_3.R_tl((sl'79F2_)))), true) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (196, 13)); ((correctStops'7981_) (RT_l_3.R_tl((sl'79F2_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (198, 13)); false)));
        
        fun correctConnectionCapacity'7E31_ cl'7EAF_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (204, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x167_'0_, x168_'0_, x169_'0_, x170_'0_, x171_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x172_'0_, x173_'0_) = ((x167_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x173_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x174_'0_, x175_'0_) = ((x168_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x175_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x169_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x170_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x171_'0_, RT_Int.fromLit "0")))))
        end) (cl'7EAF_))) then raise RSL.RSL_exception ("NET.rsl:202:5: Argument of correctConnectionCapacity" ^ "(" ^ RT_l_4.toString cl'7EAF_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'7EAF_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (205, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (207, 9)); let
            val (stp1'802E_, stp2'8034_, hw'803A_, cap'803E_, dt'8043_) = ((RT_l_4.R_hd((cl'7EAF_))):RT_x_2.t)
        in
            if RT_Nat.R_le (cap'803E_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (209, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (211, 17)); ((correctConnectionCapacity'7E31_) (RT_l_4.R_tl((cl'7EAF_)))))
        end));
        
        fun correctConnectionHeadway'83A9_ cl'8426_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (218, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x176_'0_, x177_'0_, x178_'0_, x179_'0_, x180_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x181_'0_, x182_'0_) = ((x176_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x182_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x183_'0_, x184_'0_) = ((x177_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x184_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x178_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x179_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x180_'0_, RT_Int.fromLit "0")))))
        end) (cl'8426_))) then raise RSL.RSL_exception ("NET.rsl:216:5: Argument of correctConnectionHeadway" ^ "(" ^ RT_l_4.toString cl'8426_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'8426_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (219, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (221, 9)); let
            val (stp1'85A6_, stp2'85AC_, hw'85B2_, cap'85B6_, dt'85BB_) = ((RT_l_4.R_hd((cl'8426_))):RT_x_2.t)
        in
            if RT_Nat.R_le (hw'85B2_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (223, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (225, 17)); ((correctConnectionHeadway'83A9_) (RT_l_4.R_tl((cl'8426_)))))
        end));
        
        fun isWellformed'A9F1_ net'AA62_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (316, 5)); if not(let
            val (x289_'0_, x290_'0_) = ((net'AA62_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x291_'0_, x292_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x292_'0_, RT_Int.fromLit "0")
            end) (x289_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x293_'0_, x294_'0_, x295_'0_, x296_'0_, x297_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x298_'0_, x299_'0_) = ((x293_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x299_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x300_'0_, x301_'0_) = ((x294_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x301_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x295_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x296_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x297_'0_, RT_Int.fromLit "0")))))
            end) (x290_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:314:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'AA62_ ^ ")" ^ " not in subtype") else let
            val (sl'AABE_, cl'AAC1_) = ((net'AA62_):RT_x_5.t)
        in
            (((correctCapacity'61AD_) (net'AA62_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (318, 11)); (((correctStops'7981_) (sl'AABE_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (319, 11)); (((correctConnectionCapacity'7E31_) (cl'AAC1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (320, 11)); (((correctConnectionDrivingTime'8921_) (cl'AAC1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (321, 11)); (((correctConnectionHeadway'83A9_) (cl'AAC1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (322, 11)); (((stopsConnected'8E99_) (sl'AABE_, cl'AAC1_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (323, 11)); ((checkForRealStops'67ED_) (sl'AABE_, cl'AAC1_))))))))
        end);
        
        fun getConnection'5145_ (stpOne'51B7_, stpTwo'51BF_, cl'51C7_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (89, 5)); if not((let
            val (x105_'0_, x106_'0_) = ((stpOne'51B7_):RT_x_1.t)
        in
            RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x107_'0_, x108_'0_) = ((stpTwo'51BF_):RT_x_1.t)
        in
            RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
            val (x109_'0_, x110_'0_, x111_'0_, x112_'0_, x113_'0_) = ((x_'0_):RT_x_2.t)
        in
            (let
                val (x114_'0_, x115_'0_) = ((x109_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x115_'0_, RT_Int.fromLit "0")
            end) andalso ((let
                val (x116_'0_, x117_'0_) = ((x110_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x117_'0_, RT_Int.fromLit "0")
            end) andalso ((RT_Nat.R_ge (x111_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x112_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x113_'0_, RT_Int.fromLit "0")))))
        end) (cl'51C7_))))) then raise RSL.RSL_exception ("NET.rsl:87:5: Argument of getConnection" ^ RT_x_10.toString (stpOne'51B7_, stpTwo'51BF_, cl'51C7_) ^ " not in subtype") else if RT_l_4.equ (cl'51C7_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (90, 9)); ((RT_Text.fromLit "", RT_Int.fromLit "0"), (RT_Text.fromLit "", RT_Int.fromLit "0"), RT_Int.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (92, 9)); let
            val con'5341_ = ((RT_l_4.R_hd((cl'51C7_))):RT_x_2.t); 
            val (s1'5350_, s2'5354_, hw'5358_, cap'535C_, dt'5361_) = ((con'5341_):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stpOne'51B7_, s1'5350_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 33)); RT_x_1.equ (stpTwo'51BF_, s2'5354_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 47)); ((RT_x_1.equ (stpOne'51B7_, s2'5354_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 63)); RT_x_1.equ (stpTwo'51BF_, s1'5350_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 17)); con'5341_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 17)); ((getConnection'5145_) (stpOne'51B7_, stpTwo'51BF_, RT_l_4.R_tl((cl'51C7_)))))
        end));
        
        fun minDrivingTime'4975_ (siOne'49E8_, siTwo'49EF_, net'49F6_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (69, 5)); if not(let
            val (x79_'0_, x80_'0_) = ((net'49F6_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x81_'0_, x82_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x82_'0_, RT_Int.fromLit "0")
            end) (x79_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x83_'0_, x84_'0_, x85_'0_, x86_'0_, x87_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x88_'0_, x89_'0_) = ((x83_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x89_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x90_'0_, x91_'0_) = ((x84_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x91_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x85_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x86_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x87_'0_, RT_Int.fromLit "0")))))
            end) (x80_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:67:5: Argument of minDrivingTime" ^ RT_x_9.toString (siOne'49E8_, siTwo'49EF_, net'49F6_) ^ " not in subtype") else let
            val (sl'4A41_, cl'4A44_) = ((net'49F6_):RT_x_5.t); 
            val stpOne'4A4F_ = ((((getStop'5C35_) (siOne'49E8_, sl'4A41_))):RT_x_1.t); 
            val stpTwo'4A6B_ = ((((getStop'5C35_) (siTwo'49EF_, sl'4A41_))):RT_x_1.t); 
            val (csOne'4A89_, csTwo'4A90_, hw'4A97_, cap'4A9B_, dt'4AA0_) = ((((getConnection'5145_) (stpOne'4A4F_, stpTwo'4A6B_, cl'4A44_))):RT_x_2.t)
        in
            dt'4AA0_
        end);
        
        fun capacity'4209_ (siOne'4276_, siTwo'427D_, net'4284_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (50, 5)); if not(let
            val (x40_'0_, x41_'0_) = ((net'4284_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x42_'0_, x43_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")
            end) (x40_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x44_'0_, x45_'0_, x46_'0_, x47_'0_, x48_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x49_'0_, x50_'0_) = ((x44_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x50_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x51_'0_, x52_'0_) = ((x45_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x52_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x46_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x47_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x48_'0_, RT_Int.fromLit "0")))))
            end) (x41_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:48:5: Argument of capacity" ^ RT_x_9.toString (siOne'4276_, siTwo'427D_, net'4284_) ^ " not in subtype") else let
            val (sl'42D5_, cl'42D8_) = ((net'4284_):RT_x_5.t); 
            val stpOne'42E3_ = ((((getStop'5C35_) (siOne'4276_, sl'42D5_))):RT_x_1.t); 
            val stpTwo'42FF_ = ((((getStop'5C35_) (siTwo'427D_, sl'42D5_))):RT_x_1.t); 
            val (csOne'431D_, csTwo'4324_, hw'432B_, cap'432F_, dt'4334_) = ((((getConnection'5145_) (stpOne'42E3_, stpTwo'42FF_, cl'42D8_))):RT_x_2.t)
        in
            cap'432F_
        end);
        
        fun minHeadway'471D_ (siOne'478C_, siTwo'4793_, net'479A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (63, 5)); if not(let
            val (x66_'0_, x67_'0_) = ((net'479A_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x68_'0_, x69_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x69_'0_, RT_Int.fromLit "0")
            end) (x66_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x70_'0_, x71_'0_, x72_'0_, x73_'0_, x74_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x75_'0_, x76_'0_) = ((x70_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x76_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x77_'0_, x78_'0_) = ((x71_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x78_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x72_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x73_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x74_'0_, RT_Int.fromLit "0")))))
            end) (x67_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:61:5: Argument of minHeadway" ^ RT_x_9.toString (siOne'478C_, siTwo'4793_, net'479A_) ^ " not in subtype") else let
            val (sl'47E9_, cl'47EC_) = ((net'479A_):RT_x_5.t); 
            val stpOne'47F7_ = ((((getStop'5C35_) (siOne'478C_, sl'47E9_))):RT_x_1.t); 
            val stpTwo'4813_ = ((((getStop'5C35_) (siTwo'4793_, sl'47E9_))):RT_x_1.t); 
            val (csOne'4831_, csTwo'4838_, hw'483F_, cap'4843_, dt'4848_) = ((((getConnection'5145_) (stpOne'47F7_, stpTwo'4813_, cl'47EC_))):RT_x_2.t)
        in
            hw'483F_
        end);
        
        fun isIn'3DBD_ (si'3E26_, net'3E2A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (39, 5)); if not(let
            val (x27_'0_, x28_'0_) = ((net'3E2A_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x29_'0_, x30_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x30_'0_, RT_Int.fromLit "0")
            end) (x27_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x31_'0_, x32_'0_, x33_'0_, x34_'0_, x35_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x36_'0_, x37_'0_) = ((x31_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x37_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x38_'0_, x39_'0_) = ((x32_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x39_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x33_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x34_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x35_'0_, RT_Int.fromLit "0")))))
            end) (x28_'0_)))
        end) then raise RSL.RSL_exception ("NET.rsl:37:5: Argument of isIn" ^ RT_x_8.toString (si'3E26_, net'3E2A_) ^ " not in subtype") else let
            val (sl'3E89_, cl'3E8C_) = ((net'3E2A_):RT_x_5.t); 
            val stp'3E97_ = ((((getStop'5C35_) (si'3E26_, sl'3E89_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp'3E97_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (41, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (43, 13)); true)
        end);
        
        val empty'3589_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        fun addConnection'39D5_ (startid'3A47_, stpid'3A50_, hw'3A57_, c'3A5B_, dt'3A5E_, net'3A62_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (29, 5)); if not((RT_Nat.R_ge (hw'3A57_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (c'3A5B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (dt'3A5E_, RT_Int.fromLit "0")) andalso (let
            val (x14_'0_, x15_'0_) = ((net'3A62_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:27:5: Argument of addConnection" ^ RT_x_7.toString (startid'3A47_, stpid'3A50_, hw'3A57_, c'3A5B_, dt'3A5E_, net'3A62_) ^ " not in subtype") else let
            val (sl'3AA2_, cl'3AA5_) = ((net'3A62_):RT_x_5.t); 
            val stpidOne'3AB0_ = ((((getStop'5C35_) (startid'3A47_, sl'3AA2_))):RT_x_1.t); 
            val stpidTwo'3AD1_ = ((((getStop'5C35_) (stpid'3A50_, sl'3AA2_))):RT_x_1.t)
        in
            (sl'3AA2_, RT_l_4.R_concat (cl'3AA5_, [(stpidOne'3AB0_, stpidTwo'3AD1_, hw'3A57_, c'3A5B_, dt'3A5E_)]))
        end);
        
        fun insertStop'3651_ (stopid'36C0_, cap'36C8_, net'36CD_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (20, 9)); if not((RT_Nat.R_ge (cap'36C8_, RT_Int.fromLit "0")) andalso (let
            val (x1_'0_, x2_'0_) = ((net'36CD_):RT_x_5.t)
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
        end)) then raise RSL.RSL_exception ("NET.rsl:18:5: Argument of insertStop" ^ RT_x_6.toString (stopid'36C0_, cap'36C8_, net'36CD_) ^ " not in subtype") else let
            val (sl'3722_, cl'3726_) = ((net'36CD_):RT_x_5.t); 
            val h'3731_ = (((RT_l_3.R_concat (sl'3722_, [(stopid'36C0_, cap'36C8_)]))):RT_l_3.t)
        in
            (h'3731_, cl'3726_)
        end);
        
        val exNetMissingBDCon'A93_ = ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")], [((RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), RT_Int.fromLit "1", RT_Int.fromLit "1", RT_Int.fromLit "10"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "3", RT_Int.fromLit "12")]);
        
        val nett'2C3_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        val exNet'89F_ = ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")], [((RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), RT_Int.fromLit "1", RT_Int.fromLit "1", RT_Int.fromLit "10"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "3", RT_Int.fromLit "12"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "2", RT_Int.fromLit "7")]);
        
        val stID'327_ = RT_Text.fromLit "ab";
        
        val clExNetFail'70F_ = [((RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), RT_Int.fromLit "1", RT_Int.fromLit "1", RT_Int.fromLit "10"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "3", RT_Int.fromLit "12"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "2", RT_Int.fromLit "7"), ((RT_Text.fromLit "Q", RT_Int.fromLit "27"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), RT_Int.fromLit "4", RT_Int.fromLit "5", RT_Int.fromLit "14")];
        
        val cap'38B_ = RT_Int.fromLit "3";
        
        val clExNetFail1'5E3_ = [((RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), RT_Int.fromLit "1", RT_Int.fromLit "1", RT_Int.fromLit "10"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "3", RT_Int.fromLit "12")];
        
        val slExNet'3EF_ = [(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")];
        
        val clExNet'453_ = [((RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), RT_Int.fromLit "1", RT_Int.fromLit "1", RT_Int.fromLit "10"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "3", RT_Int.fromLit "12"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "2", RT_Int.fromLit "7")];
        
    end;
    
open test;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NET.rsl", (20, 9), (22, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (29, 5), (35, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (43, 13), (44, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (41, 13), (42, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (39, 5), (45, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (63, 5), (65, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (50, 5), (52, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (69, 5), (71, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (93, 63), (93, 74));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (93, 33), (93, 44));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (93, 47), (93, 75));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 17), (97, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (94, 17), (95, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (92, 9), (99, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (90, 9), (91, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (89, 5), (99, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (323, 11), (324, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (322, 11), (324, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (321, 11), (324, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (320, 11), (324, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (319, 11), (324, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (318, 11), (324, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (316, 5), (327, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (225, 17), (226, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (223, 17), (224, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (221, 9), (228, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (219, 9), (220, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (218, 5), (228, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (211, 17), (212, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (209, 17), (210, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (207, 9), (214, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (205, 9), (206, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (204, 5), (214, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (198, 13), (199, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (196, 13), (197, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (195, 9), (200, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (193, 9), (194, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (192, 5), (200, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (185, 17), (186, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (183, 17), (184, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (181, 9), (188, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (179, 9), (180, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (178, 5), (188, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (151, 39), (151, 62));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (154, 17), (155, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (152, 17), (153, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (150, 9), (157, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (148, 9), (149, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (147, 5), (157, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (168, 17), (169, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (166, 17), (167, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (164, 9), (171, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (162, 9), (163, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (161, 5), (171, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (239, 17), (240, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (237, 17), (238, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (235, 9), (242, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (233, 9), (234, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (232, 5), (242, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (139, 21), (140, 17));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (137, 21), (138, 20));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (135, 13), (142, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (133, 13), (134, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (131, 5), (143, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (76, 5), (84, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (253, 17), (256, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (251, 17), (252, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (249, 9), (258, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (247, 9), (248, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (246, 5), (258, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (283, 13), (284, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (281, 13), (282, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (280, 9), (285, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (278, 9), (279, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (277, 5), (285, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (294, 13), (295, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (292, 13), (293, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (290, 5), (296, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (307, 17), (308, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (305, 17), (306, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (303, 9), (310, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (301, 9), (302, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (300, 5), (312, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (57, 5), (59, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (124, 11), (125, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (122, 16), (123, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (120, 7), (127, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (118, 12), (119, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (117, 5), (127, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (107, 62), (107, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (107, 32), (107, 42));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (107, 47), (107, 73));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (110, 17), (111, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (108, 17), (109, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (106, 9), (113, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (104, 9), (105, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (103, 5), (113, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (269, 17), (270, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (267, 17), (268, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (265, 9), (272, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (263, 9), (264, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (262, 5), (272, 8)));
(RSL.C_output "[t1] " RT_x_5.toStringSafe (fn _ => nett'2C3_));

(RSL.C_output "[t2] " RT_x_5.toStringSafe (fn _ => ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))));

(RSL.C_output "" RT_x_5.toStringSafe (fn _ => ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))));

(RSL.C_output "[t3] " RT_x_1.toStringSafe (fn _ => ((getStop'5C35_) (RT_Text.fromLit "ab", [(RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), (RT_Text.fromLit "cd", RT_Int.fromLit "5")]))));

(RSL.C_output "[t4] " RT_x_5.toStringSafe (fn _ => ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))));

(RSL.C_output "[t5] " RT_Nat.toStringSafe (fn _ => ((capacity'4C31_) (RT_Text.fromLit "ab", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t6] " RT_Bool.toStringSafe (fn _ => ((correctCapacity'61AD_) (((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t7] " RT_Bool.toStringSafe (fn _ => ((correctCapacity'61AD_) (((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "0", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t8] " RT_Bool.toStringSafe (fn _ => ((correctStops'7981_) ([(RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), (RT_Text.fromLit "cd", RT_Int.fromLit "5")]))));

(RSL.C_output "[t9] " RT_Bool.toStringSafe (fn _ => ((correctStops'7981_) ([(RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), (RT_Text.fromLit "cd", RT_Int.fromLit "5"), (RT_Text.fromLit "ab", RT_Int.fromLit "5")]))));

(RSL.C_output "[t10] " RT_Bool.toStringSafe (fn _ => ((isIn'3DBD_) (RT_Text.fromLit "ab", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t11] " RT_Nat.toStringSafe (fn _ => ((capacity'4209_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t12] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'44C5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t13] " RT_Bool.toStringSafe (fn _ => ((areDirectlyConnected'44C5_) (RT_Text.fromLit "ab", RT_Text.fromLit "cd", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, ((insertStop'3651_) (RT_Text.fromLit "cd", RT_Int.fromLit "5", nett'2C3_))))))))))));

(RSL.C_output "[t14] " RT_Nat.toStringSafe (fn _ => ((minHeadway'471D_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t15] " RT_Nat.toStringSafe (fn _ => ((minHeadway'471D_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "cd", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t16] " RT_Nat.toStringSafe (fn _ => ((minDrivingTime'4975_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t17] " RT_Nat.toStringSafe (fn _ => ((minDrivingTime'4975_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "cd", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t18] " RT_Bool.toStringSafe (fn _ => ((correctConnectionCapacity'7E31_) ([((RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2")]))));

(RSL.C_output "[t19] " RT_Bool.toStringSafe (fn _ => ((correctConnectionCapacity'7E31_) ([((RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), RT_Int.fromLit "1", RT_Int.fromLit "0", RT_Int.fromLit "2")]))));

(RSL.C_output "[t20] " RT_Bool.toStringSafe (fn _ => ((correctConnectionHeadway'83A9_) ([((RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2")]))));

(RSL.C_output "[t21] " RT_Bool.toStringSafe (fn _ => ((correctConnectionHeadway'83A9_) ([((RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), RT_Int.fromLit "0", RT_Int.fromLit "4", RT_Int.fromLit "2")]))));

(RSL.C_output "[t22] " RT_Bool.toStringSafe (fn _ => ((correctConnectionDrivingTime'8921_) ([((RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2")]))));

(RSL.C_output "[t23] " RT_Bool.toStringSafe (fn _ => ((correctConnectionDrivingTime'8921_) ([((RT_Text.fromLit "ab", RT_Int.fromLit "3"), (RT_Text.fromLit "bc", RT_Int.fromLit "2"), RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "0")]))));

(RSL.C_output "[t24] " RT_Bool.toStringSafe (fn _ => ((stopsConnected'8E99_) (slExNet'3EF_, clExNet'453_))));

(RSL.C_output "[t25] " RT_Bool.toStringSafe (fn _ => ((stopsConnected'8E99_) (slExNet'3EF_, clExNetFail1'5E3_))));

(RSL.C_output "[t26] " RT_Bool.toStringSafe (fn _ => ((checkForRealStops'67ED_) (slExNet'3EF_, clExNet'453_))));

(RSL.C_output "[t27] " RT_Bool.toStringSafe (fn _ => ((checkForRealStops'67ED_) (slExNet'3EF_, clExNetFail'70F_))));

(RSL.C_output "[t28] " RT_Bool.toStringSafe (fn _ => ((isIn'3DBD_) (RT_Text.fromLit "qr", ((addConnection'39D5_) (RT_Text.fromLit "ab", RT_Text.fromLit "bc", RT_Int.fromLit "1", RT_Int.fromLit "4", RT_Int.fromLit "2", ((insertStop'3651_) (RT_Text.fromLit "bc", RT_Int.fromLit "2", ((insertStop'3651_) (stID'327_, cap'38B_, nett'2C3_))))))))));

(RSL.C_output "[t29] " RT_Bool.toStringSafe (fn _ => ((isWellformed'A9F1_) (exNet'89F_))));

RSL.print_error_count();
R_coverage.save_marked();
