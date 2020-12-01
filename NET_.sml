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
    
structure NET =
    struct
        type Time_ = RT_Nat.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type Connection_ = RT_x_2.t;
        
        type Stop_ = RT_x_1.t;
        
        type Net_ = RT_x_5.t;
        
        fun remove'6595_ (stp'6600_, sl'6605_, newSl'6609_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (262, 5)); if not((let
            val (x205_'0_, x206_'0_) = ((stp'6600_):RT_x_1.t)
        in
            RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x207_'0_, x208_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")
        end) (sl'6605_))) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x209_'0_, x210_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")
        end) (newSl'6609_))))) then raise RSL.RSL_exception ("NET.rsl:260:5: Argument of remove" ^ RT_x_13.toString (stp'6600_, sl'6605_, newSl'6609_) ^ " not in subtype") else if RT_l_3.equ (sl'6605_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (263, 9)); newSl'6609_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (265, 9)); let
            val stp1'6791_ = ((RT_l_3.R_hd((sl'6605_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'6791_, stp'6600_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (267, 17)); ((remove'6595_) (stp'6600_, RT_l_3.R_tl((sl'6605_)), newSl'6609_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (269, 17)); ((remove'6595_) (stp'6600_, RT_l_3.R_tl((sl'6605_)), RT_l_3.R_concat (newSl'6609_, [stp1'6791_]))))
        end));
        
        fun auxAreConnected'2779_ (stp1'27ED_, stp2'27F3_, cl'27F9_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (103, 5)); if not((let
            val (x118_'0_, x119_'0_) = ((stp1'27ED_):RT_x_1.t)
        in
            RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x120_'0_, x121_'0_) = ((stp2'27F3_):RT_x_1.t)
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
        end) (cl'27F9_))))) then raise RSL.RSL_exception ("NET.rsl:101:5: Argument of auxAreConnected" ^ RT_x_10.toString (stp1'27ED_, stp2'27F3_, cl'27F9_) ^ " not in subtype") else if RT_l_4.equ (cl'27F9_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (106, 9)); let
            val (cs1'2976_, cs2'297B_, hw'2980_, cap'2984_, dt'2989_) = ((RT_l_4.R_hd((cl'27F9_))):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stp1'27ED_, cs1'2976_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 32)); RT_x_1.equ (stp2'27F3_, cs2'297B_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 47)); ((RT_x_1.equ (stp1'27ED_, cs2'297B_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 62)); RT_x_1.equ (stp2'27F3_, cs1'2976_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (108, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (110, 17)); ((auxAreConnected'2779_) (stp1'27ED_, stp2'27F3_, RT_l_4.R_tl((cl'27F9_)))))
        end));
        
        fun getStop'2CF1_ (stpid'2D5D_, sl'2D64_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (117, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x131_'0_, x132_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")
        end) (sl'2D64_))) then raise RSL.RSL_exception ("NET.rsl:115:5: Argument of getStop" ^ RT_x_11.toString (stpid'2D5D_, sl'2D64_) ^ " not in subtype") else if RT_l_3.equ (sl'2D64_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 12)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (120, 7)); let
            val stp'2EEB_ = ((RT_l_3.R_hd((sl'2D64_))):RT_x_1.t); 
            val (si'2EFA_, c'2EFD_) = ((stp'2EEB_):RT_x_1.t)
        in
            if RT_Text.equ (stpid'2D5D_, si'2EFA_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (122, 16)); stp'2EEB_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (124, 11)); ((getStop'2CF1_) (stpid'2D5D_, RT_l_3.R_tl((sl'2D64_)))))
        end));
        
        fun areDirectlyConnected'1581_ (siOne'15FA_, siTwo'1601_, net'1608_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (57, 5)); if not(let
            val (x53_'0_, x54_'0_) = ((net'1608_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:55:5: Argument of areDirectlyConnected" ^ RT_x_9.toString (siOne'15FA_, siTwo'1601_, net'1608_) ^ " not in subtype") else let
            val (sl'164E_, cl'1651_) = ((net'1608_):RT_x_5.t); 
            val stp1'165C_ = ((((getStop'2CF1_) (siOne'15FA_, sl'164E_))):RT_x_1.t); 
            val stp2'1677_ = ((((getStop'2CF1_) (siTwo'1601_, sl'164E_))):RT_x_1.t)
        in
            ((auxAreConnected'2779_) (stp1'165C_, stp2'1677_, cl'1651_))
        end);
        
        fun findDirectConnection'746D_ (stp'74E6_, sl'74EB_, cl'74EF_, net'74F3_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (300, 5)); if not((let
            val (x263_'0_, x264_'0_) = ((stp'74E6_):RT_x_1.t)
        in
            RT_Nat.R_ge (x264_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x265_'0_, x266_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x266_'0_, RT_Int.fromLit "0")
        end) (sl'74EB_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'74EF_))) andalso (let
            val (x276_'0_, x277_'0_) = ((net'74F3_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:298:5: Argument of findDirectConnection" ^ RT_x_15.toString (stp'74E6_, sl'74EB_, cl'74EF_, net'74F3_) ^ " not in subtype") else if RT_l_3.equ (sl'74EB_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (301, 9)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (303, 9)); let
            val stp1'7669_ = ((RT_l_3.R_hd((sl'74EB_))):RT_x_1.t); 
            val (si'7679_, cap'767D_) = ((stp'74E6_):RT_x_1.t); 
            val (si1'768A_, cap1'768F_) = ((stp1'7669_):RT_x_1.t)
        in
            if ((areDirectlyConnected'1581_) (si'7679_, si1'768A_, net'74F3_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (305, 17)); stp1'7669_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (307, 17)); ((findDirectConnection'746D_) (stp'74E6_, RT_l_3.R_tl((sl'74EB_)), cl'74EF_, net'74F3_)))
        end));
        
        fun directStopExists'7085_ (stp'70FA_, sl'70FF_, cl'7103_, net'7107_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (290, 5)); if not((let
            val (x237_'0_, x238_'0_) = ((stp'70FA_):RT_x_1.t)
        in
            RT_Nat.R_ge (x238_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x239_'0_, x240_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x240_'0_, RT_Int.fromLit "0")
        end) (sl'70FF_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'7103_))) andalso (let
            val (x250_'0_, x251_'0_) = ((net'7107_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:288:5: Argument of directStopExists" ^ RT_x_15.toString (stp'70FA_, sl'70FF_, cl'7103_, net'7107_) ^ " not in subtype") else let
            val check'7151_ = ((((findDirectConnection'746D_) (stp'70FA_, sl'70FF_, cl'7103_, net'7107_))):RT_x_1.t)
        in
            if RT_x_1.equ (check'7151_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (292, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (294, 13)); true)
        end);
        
        fun checkForNets'6B71_ (sl'6BE2_, stpNet'6BE6_, cl'6BEE_, net'6BF2_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (277, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x211_'0_, x212_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")
        end) (sl'6BE2_))) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x213_'0_, x214_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")
        end) (stpNet'6BE6_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'6BEE_))) andalso (let
            val (x224_'0_, x225_'0_) = ((net'6BF2_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:275:5: Argument of checkForNets" ^ RT_x_14.toString (sl'6BE2_, stpNet'6BE6_, cl'6BEE_, net'6BF2_) ^ " not in subtype") else if RT_l_3.equ (sl'6BE2_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (278, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (280, 9)); if ((directStopExists'7085_) (RT_l_3.R_hd((sl'6BE2_)), stpNet'6BE6_, cl'6BEE_, net'6BF2_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (281, 13)); ((checkForNets'6B71_) (RT_l_3.R_tl((sl'6BE2_)), RT_l_3.R_concat (stpNet'6BE6_, [RT_l_3.R_hd((sl'6BE2_))]), cl'6BEE_, net'6BF2_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (283, 13)); false)));
        
        fun stopsConnected'5F55_ (sl'5FC8_, cl'5FCC_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (246, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x194_'0_, x195_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")
        end) (sl'5FC8_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'5FCC_)))) then raise RSL.RSL_exception ("NET.rsl:244:5: Argument of stopsConnected" ^ RT_x_5.toString (sl'5FC8_, cl'5FCC_) ^ " not in subtype") else if RT_l_3.equ (sl'5FC8_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (247, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (249, 9)); let
            val stp'6151_ = ((RT_l_3.R_hd((sl'5FC8_))):RT_x_1.t); 
            val stp1'615F_ = ((((findDirectConnection'746D_) (stp'6151_, sl'5FC8_, cl'5FCC_, (sl'5FC8_, cl'5FCC_)))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'615F_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (251, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (253, 17)); let
                val stpNet'62E9_ = ((RT_l_3.R_concat (([]:RT_l_3.t), [stp'6151_, stp1'615F_])):RT_l_3.t)
            in
                ((checkForNets'6B71_) (((remove'6595_) (stp1'615F_, RT_l_3.R_tl((sl'5FC8_)), ([]:RT_l_3.t))), stpNet'62E9_, cl'5FCC_, (sl'5FC8_, cl'5FCC_)))
            end)
        end));
        
        fun capacity'1CED_ (si'1D5A_, net'1D5E_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (76, 5)); if not(let
            val (x92_'0_, x93_'0_) = ((net'1D5E_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:74:5: Argument of capacity" ^ RT_x_8.toString (si'1D5A_, net'1D5E_) ^ " not in subtype") else let
            val (stoplist'1DBA_, cl'1DC4_) = ((net'1D5E_):RT_x_5.t); 
            val (x'1DD0_, cap'1DD3_) = ((((getStop'2CF1_) (si'1D5A_, stoplist'1DBA_))):RT_x_1.t)
        in
            cap'1DD3_
        end);
        
        fun correctCapacity'3269_ net'32DD_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 5)); if not(let
            val (x133_'0_, x134_'0_) = ((net'32DD_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:129:5: Argument of correctCapacity" ^ "(" ^ RT_x_5.toString net'32DD_ ^ ")" ^ " not in subtype") else let
            val (sl'3336_, cl'3339_) = ((net'32DD_):RT_x_5.t)
        in
            if RT_l_3.equ (sl'3336_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (133, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (135, 13)); let
                val h'34CD_ = ((RT_l_3.R_hd((sl'3336_))):RT_x_1.t); 
                val (si'34DA_, cap'34DE_) = ((h'34CD_):RT_x_1.t)
            in
                if RT_Nat.R_le (((capacity'1CED_) (si'34DA_, net'32DD_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (137, 21)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (139, 21)); ((correctCapacity'3269_) ((RT_l_3.R_tl((sl'3336_)), cl'3339_))))
            end)
        end);
        
        fun correctConnectionDrivingTime'59DD_ cl'5A5E_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (232, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'5A5E_))) then raise RSL.RSL_exception ("NET.rsl:230:5: Argument of correctConnectionDrivingTime" ^ "(" ^ RT_l_4.toString cl'5A5E_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'5A5E_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (233, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (235, 9)); let
            val (stp1'5BDA_, stp2'5BE0_, hw'5BE6_, cap'5BEA_, dt'5BEF_) = ((RT_l_4.R_hd((cl'5A5E_))):RT_x_2.t)
        in
            if RT_Nat.R_le (dt'5BEF_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (237, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (239, 17)); ((correctConnectionDrivingTime'59DD_) (RT_l_4.R_tl((cl'5A5E_)))))
        end));
        
        fun stopExists'3E21_ (stp'3E90_, sl'3E95_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (161, 5)); if not((let
            val (x157_'0_, x158_'0_) = ((stp'3E90_):RT_x_1.t)
        in
            RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x159_'0_, x160_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")
        end) (sl'3E95_)))) then raise RSL.RSL_exception ("NET.rsl:159:5: Argument of stopExists" ^ RT_x_12.toString (stp'3E90_, sl'3E95_) ^ " not in subtype") else if RT_l_3.equ (sl'3E95_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (162, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (164, 9)); let
            val stp1'401D_ = ((RT_l_3.R_hd((sl'3E95_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'401D_, stp'3E90_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (166, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (168, 17)); ((stopExists'3E21_) (stp'3E90_, RT_l_3.R_tl((sl'3E95_)))))
        end));
        
        fun checkForRealStops'38A9_ (sl'391F_, cl'3923_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (147, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x146_'0_, x147_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")
        end) (sl'391F_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'3923_)))) then raise RSL.RSL_exception ("NET.rsl:145:5: Argument of checkForRealStops" ^ RT_x_5.toString (sl'391F_, cl'3923_) ^ " not in subtype") else if RT_l_4.equ (cl'3923_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (148, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (150, 9)); let
            val (stp1'3AA6_, stp2'3AAC_, hw'3AB2_, cap'3AB6_, dt'3ABB_) = ((RT_l_4.R_hd((cl'3923_))):RT_x_2.t)
        in
            if (((stopExists'3E21_) (stp1'3AA6_, sl'391F_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (151, 39)); ((stopExists'3E21_) (stp2'3AAC_, sl'391F_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (152, 17)); ((checkForRealStops'38A9_) (sl'391F_, RT_l_4.R_tl((cl'3923_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (154, 17)); false)
        end));
        
        fun correctStopsAux'44C5_ (s'4539_, sl'453C_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (178, 5)); if not((let
            val (x161_'0_, x162_'0_) = ((s'4539_):RT_x_1.t)
        in
            RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x163_'0_, x164_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0")
        end) (sl'453C_)))) then raise RSL.RSL_exception ("NET.rsl:176:5: Argument of correctStopsAux" ^ RT_x_12.toString (s'4539_, sl'453C_) ^ " not in subtype") else if RT_l_3.equ (sl'453C_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (179, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (181, 9)); let
            val (si'46C2_, cap'46C6_) = ((s'4539_):RT_x_1.t); 
            val (siNew'46D1_, capNew'46D8_) = ((RT_l_3.R_hd((sl'453C_))):RT_x_1.t)
        in
            if RT_Text.equ (si'46C2_, siNew'46D1_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (183, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (185, 17)); ((correctStopsAux'44C5_) (s'4539_, RT_l_3.R_tl((sl'453C_)))))
        end));
        
        fun correctStops'4A3D_ sl'4AAE_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (192, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x165_'0_, x166_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")
        end) (sl'4AAE_))) then raise RSL.RSL_exception ("NET.rsl:190:5: Argument of correctStops" ^ "(" ^ RT_l_3.toString sl'4AAE_ ^ ")" ^ " not in subtype") else if RT_l_3.equ (sl'4AAE_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (193, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (195, 9)); if RT_Bool.equ (((correctStopsAux'44C5_) (RT_l_3.R_hd((sl'4AAE_)), RT_l_3.R_tl((sl'4AAE_)))), true) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (196, 13)); ((correctStops'4A3D_) (RT_l_3.R_tl((sl'4AAE_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (198, 13)); false)));
        
        fun correctConnectionCapacity'4EED_ cl'4F6B_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (204, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'4F6B_))) then raise RSL.RSL_exception ("NET.rsl:202:5: Argument of correctConnectionCapacity" ^ "(" ^ RT_l_4.toString cl'4F6B_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'4F6B_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (205, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (207, 9)); let
            val (stp1'50EA_, stp2'50F0_, hw'50F6_, cap'50FA_, dt'50FF_) = ((RT_l_4.R_hd((cl'4F6B_))):RT_x_2.t)
        in
            if RT_Nat.R_le (cap'50FA_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (209, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (211, 17)); ((correctConnectionCapacity'4EED_) (RT_l_4.R_tl((cl'4F6B_)))))
        end));
        
        fun correctConnectionHeadway'5465_ cl'54E2_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (218, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'54E2_))) then raise RSL.RSL_exception ("NET.rsl:216:5: Argument of correctConnectionHeadway" ^ "(" ^ RT_l_4.toString cl'54E2_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'54E2_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (219, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (221, 9)); let
            val (stp1'5662_, stp2'5668_, hw'566E_, cap'5672_, dt'5677_) = ((RT_l_4.R_hd((cl'54E2_))):RT_x_2.t)
        in
            if RT_Nat.R_le (hw'566E_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (223, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (225, 17)); ((correctConnectionHeadway'5465_) (RT_l_4.R_tl((cl'54E2_)))))
        end));
        
        fun isWellformed'7AAD_ net'7B1E_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (316, 5)); if not(let
            val (x289_'0_, x290_'0_) = ((net'7B1E_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:314:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'7B1E_ ^ ")" ^ " not in subtype") else let
            val (sl'7B7A_, cl'7B7D_) = ((net'7B1E_):RT_x_5.t)
        in
            (((correctCapacity'3269_) (net'7B1E_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (318, 11)); (((correctStops'4A3D_) (sl'7B7A_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (319, 11)); (((correctConnectionCapacity'4EED_) (cl'7B7D_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (320, 11)); (((correctConnectionDrivingTime'59DD_) (cl'7B7D_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (321, 11)); (((correctConnectionHeadway'5465_) (cl'7B7D_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (322, 11)); (((stopsConnected'5F55_) (sl'7B7A_, cl'7B7D_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (323, 11)); ((checkForRealStops'38A9_) (sl'7B7A_, cl'7B7D_))))))))
        end);
        
        fun getConnection'2201_ (stpOne'2273_, stpTwo'227B_, cl'2283_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (89, 5)); if not((let
            val (x105_'0_, x106_'0_) = ((stpOne'2273_):RT_x_1.t)
        in
            RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x107_'0_, x108_'0_) = ((stpTwo'227B_):RT_x_1.t)
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
        end) (cl'2283_))))) then raise RSL.RSL_exception ("NET.rsl:87:5: Argument of getConnection" ^ RT_x_10.toString (stpOne'2273_, stpTwo'227B_, cl'2283_) ^ " not in subtype") else if RT_l_4.equ (cl'2283_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (90, 9)); ((RT_Text.fromLit "", RT_Int.fromLit "0"), (RT_Text.fromLit "", RT_Int.fromLit "0"), RT_Int.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (92, 9)); let
            val con'23FD_ = ((RT_l_4.R_hd((cl'2283_))):RT_x_2.t); 
            val (s1'240C_, s2'2410_, hw'2414_, cap'2418_, dt'241D_) = ((con'23FD_):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stpOne'2273_, s1'240C_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 33)); RT_x_1.equ (stpTwo'227B_, s2'2410_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 47)); ((RT_x_1.equ (stpOne'2273_, s2'2410_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 63)); RT_x_1.equ (stpTwo'227B_, s1'240C_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 17)); con'23FD_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 17)); ((getConnection'2201_) (stpOne'2273_, stpTwo'227B_, RT_l_4.R_tl((cl'2283_)))))
        end));
        
        fun minDrivingTime'1A31_ (siOne'1AA4_, siTwo'1AAB_, net'1AB2_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (69, 5)); if not(let
            val (x79_'0_, x80_'0_) = ((net'1AB2_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:67:5: Argument of minDrivingTime" ^ RT_x_9.toString (siOne'1AA4_, siTwo'1AAB_, net'1AB2_) ^ " not in subtype") else let
            val (sl'1AFD_, cl'1B00_) = ((net'1AB2_):RT_x_5.t); 
            val stpOne'1B0B_ = ((((getStop'2CF1_) (siOne'1AA4_, sl'1AFD_))):RT_x_1.t); 
            val stpTwo'1B27_ = ((((getStop'2CF1_) (siTwo'1AAB_, sl'1AFD_))):RT_x_1.t); 
            val (csOne'1B45_, csTwo'1B4C_, hw'1B53_, cap'1B57_, dt'1B5C_) = ((((getConnection'2201_) (stpOne'1B0B_, stpTwo'1B27_, cl'1B00_))):RT_x_2.t)
        in
            dt'1B5C_
        end);
        
        fun capacity'12C5_ (siOne'1332_, siTwo'1339_, net'1340_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (50, 5)); if not(let
            val (x40_'0_, x41_'0_) = ((net'1340_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:48:5: Argument of capacity" ^ RT_x_9.toString (siOne'1332_, siTwo'1339_, net'1340_) ^ " not in subtype") else let
            val (sl'1391_, cl'1394_) = ((net'1340_):RT_x_5.t); 
            val stpOne'139F_ = ((((getStop'2CF1_) (siOne'1332_, sl'1391_))):RT_x_1.t); 
            val stpTwo'13BB_ = ((((getStop'2CF1_) (siTwo'1339_, sl'1391_))):RT_x_1.t); 
            val (csOne'13D9_, csTwo'13E0_, hw'13E7_, cap'13EB_, dt'13F0_) = ((((getConnection'2201_) (stpOne'139F_, stpTwo'13BB_, cl'1394_))):RT_x_2.t)
        in
            cap'13EB_
        end);
        
        fun minHeadway'17D9_ (siOne'1848_, siTwo'184F_, net'1856_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (63, 5)); if not(let
            val (x66_'0_, x67_'0_) = ((net'1856_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:61:5: Argument of minHeadway" ^ RT_x_9.toString (siOne'1848_, siTwo'184F_, net'1856_) ^ " not in subtype") else let
            val (sl'18A5_, cl'18A8_) = ((net'1856_):RT_x_5.t); 
            val stpOne'18B3_ = ((((getStop'2CF1_) (siOne'1848_, sl'18A5_))):RT_x_1.t); 
            val stpTwo'18CF_ = ((((getStop'2CF1_) (siTwo'184F_, sl'18A5_))):RT_x_1.t); 
            val (csOne'18ED_, csTwo'18F4_, hw'18FB_, cap'18FF_, dt'1904_) = ((((getConnection'2201_) (stpOne'18B3_, stpTwo'18CF_, cl'18A8_))):RT_x_2.t)
        in
            hw'18FB_
        end);
        
        fun isIn'E79_ (si'EE2_, net'EE6_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (39, 5)); if not(let
            val (x27_'0_, x28_'0_) = ((net'EE6_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:37:5: Argument of isIn" ^ RT_x_8.toString (si'EE2_, net'EE6_) ^ " not in subtype") else let
            val (sl'F45_, cl'F48_) = ((net'EE6_):RT_x_5.t); 
            val stp'F53_ = ((((getStop'2CF1_) (si'EE2_, sl'F45_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp'F53_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (41, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (43, 13)); true)
        end);
        
        val empty'645_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        fun addConnection'A91_ (startid'B03_, stpid'B0C_, hw'B13_, c'B17_, dt'B1A_, net'B1E_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (29, 5)); if not((RT_Nat.R_ge (hw'B13_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (c'B17_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (dt'B1A_, RT_Int.fromLit "0")) andalso (let
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:27:5: Argument of addConnection" ^ RT_x_7.toString (startid'B03_, stpid'B0C_, hw'B13_, c'B17_, dt'B1A_, net'B1E_) ^ " not in subtype") else let
            val (sl'B5E_, cl'B61_) = ((net'B1E_):RT_x_5.t); 
            val stpidOne'B6C_ = ((((getStop'2CF1_) (startid'B03_, sl'B5E_))):RT_x_1.t); 
            val stpidTwo'B8D_ = ((((getStop'2CF1_) (stpid'B0C_, sl'B5E_))):RT_x_1.t)
        in
            (sl'B5E_, RT_l_4.R_concat (cl'B61_, [(stpidOne'B6C_, stpidTwo'B8D_, hw'B13_, c'B17_, dt'B1A_)]))
        end);
        
        fun insertStop'70D_ (stopid'77C_, cap'784_, net'789_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (20, 9)); if not((RT_Nat.R_ge (cap'784_, RT_Int.fromLit "0")) andalso (let
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
        end)) then raise RSL.RSL_exception ("NET.rsl:18:5: Argument of insertStop" ^ RT_x_6.toString (stopid'77C_, cap'784_, net'789_) ^ " not in subtype") else let
            val (sl'7DE_, cl'7E2_) = ((net'789_):RT_x_5.t); 
            val h'7ED_ = (((RT_l_3.R_concat (sl'7DE_, [(stopid'77C_, cap'784_)]))):RT_l_3.t)
        in
            (h'7ED_, cl'7E2_)
        end);
        
    end;
    
open NET;

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
RSL.print_error_count();
R_coverage.save_marked();
