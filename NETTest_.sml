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
    
structure RT_x_10 =
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
        
        fun remove'6275_ (stp'62E0_, sl'62E5_, newSl'62E9_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (254, 5)); if not((let
            val (x205_'0_, x206_'0_) = ((stp'62E0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x207_'0_, x208_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")
        end) (sl'62E5_))) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x209_'0_, x210_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")
        end) (newSl'62E9_))))) then raise RSL.RSL_exception ("NETTest.rsl:252:5: Argument of remove" ^ RT_x_13.toString (stp'62E0_, sl'62E5_, newSl'62E9_) ^ " not in subtype") else if RT_l_3.equ (sl'62E5_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (255, 9)); newSl'62E9_) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (257, 9)); let
            val stp1'6471_ = ((RT_l_3.R_hd((sl'62E5_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'6471_, stp'62E0_) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (259, 17)); ((remove'6275_) (stp'62E0_, RT_l_3.R_tl((sl'62E5_)), newSl'62E9_))) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (261, 17)); ((remove'6275_) (stp'62E0_, RT_l_3.R_tl((sl'62E5_)), RT_l_3.R_concat (newSl'62E9_, [stp1'6471_]))))
        end));
        
        fun getStop'2715_ (stpid'2781_, sl'2788_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (102, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x118_'0_, x119_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0")
        end) (sl'2788_))) then raise RSL.RSL_exception ("NETTest.rsl:100:5: Argument of getStop" ^ RT_x_11.toString (stpid'2781_, sl'2788_) ^ " not in subtype") else if RT_l_3.equ (sl'2788_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (103, 12)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (105, 7)); let
            val stp'290F_ = ((RT_l_3.R_hd((sl'2788_))):RT_x_1.t); 
            val (si'291E_, c'2921_) = ((stp'290F_):RT_x_1.t)
        in
            if RT_Text.equ (stpid'2781_, si'291E_) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (107, 16)); stp'290F_) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (109, 11)); ((getStop'2715_) (stpid'2781_, RT_l_3.R_tl((sl'2788_)))))
        end));
        
        fun auxAreConnected'1A31_ (stp1'1AA5_, stp2'1AAB_, cl'1AB1_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (69, 5)); if not((let
            val (x66_'0_, x67_'0_) = ((stp1'1AA5_):RT_x_1.t)
        in
            RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x68_'0_, x69_'0_) = ((stp2'1AAB_):RT_x_1.t)
        in
            RT_Nat.R_ge (x69_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'1AB1_))))) then raise RSL.RSL_exception ("NETTest.rsl:67:5: Argument of auxAreConnected" ^ RT_x_9.toString (stp1'1AA5_, stp2'1AAB_, cl'1AB1_) ^ " not in subtype") else if RT_l_4.equ (cl'1AB1_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (70, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (72, 9)); let
            val (cs1'1C2E_, cs2'1C33_, hw'1C38_, cap'1C3C_, dt'1C41_) = ((RT_l_4.R_hd((cl'1AB1_))):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stp1'1AA5_, cs1'1C2E_)) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (73, 32)); RT_x_1.equ (stp2'1AAB_, cs2'1C33_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (73, 47)); ((RT_x_1.equ (stp1'1AA5_, cs2'1C33_)) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (73, 62)); RT_x_1.equ (stp2'1AAB_, cs1'1C2E_))))) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (74, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (76, 17)); ((auxAreConnected'1A31_) (stp1'1AA5_, stp2'1AAB_, RT_l_4.R_tl((cl'1AB1_)))))
        end));
        
        fun areDirectlyConnected'200D_ (siOne'2086_, siTwo'208D_, net'2094_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (84, 5)); if not(let
            val (x79_'0_, x80_'0_) = ((net'2094_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NETTest.rsl:82:5: Argument of areDirectlyConnected" ^ RT_x_10.toString (siOne'2086_, siTwo'208D_, net'2094_) ^ " not in subtype") else let
            val (sl'20DA_, cl'20DD_) = ((net'2094_):RT_x_5.t); 
            val stp1'20E8_ = ((((getStop'2715_) (siOne'2086_, sl'20DA_))):RT_x_1.t); 
            val stp2'2103_ = ((((getStop'2715_) (siTwo'208D_, sl'20DA_))):RT_x_1.t)
        in
            ((auxAreConnected'1A31_) (stp1'20E8_, stp2'2103_, cl'20DD_))
        end);
        
        fun findDirectConnection'714D_ (stp'71C6_, sl'71CB_, cl'71CF_, net'71D3_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (292, 5)); if not((let
            val (x263_'0_, x264_'0_) = ((stp'71C6_):RT_x_1.t)
        in
            RT_Nat.R_ge (x264_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x265_'0_, x266_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x266_'0_, RT_Int.fromLit "0")
        end) (sl'71CB_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'71CF_))) andalso (let
            val (x276_'0_, x277_'0_) = ((net'71D3_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NETTest.rsl:290:5: Argument of findDirectConnection" ^ RT_x_15.toString (stp'71C6_, sl'71CB_, cl'71CF_, net'71D3_) ^ " not in subtype") else if RT_l_3.equ (sl'71CB_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (293, 9)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (295, 9)); let
            val stp1'7349_ = ((RT_l_3.R_hd((sl'71CB_))):RT_x_1.t); 
            val (si'7359_, cap'735D_) = ((stp'71C6_):RT_x_1.t); 
            val (si1'736A_, cap1'736F_) = ((stp1'7349_):RT_x_1.t)
        in
            if ((areDirectlyConnected'200D_) (si'7359_, si1'736A_, net'71D3_)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (297, 17)); stp1'7349_) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (299, 17)); ((findDirectConnection'714D_) (stp'71C6_, RT_l_3.R_tl((sl'71CB_)), cl'71CF_, net'71D3_)))
        end));
        
        fun directStopExists'6D65_ (stp'6DDA_, sl'6DDF_, cl'6DE3_, net'6DE7_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (282, 5)); if not((let
            val (x237_'0_, x238_'0_) = ((stp'6DDA_):RT_x_1.t)
        in
            RT_Nat.R_ge (x238_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x239_'0_, x240_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x240_'0_, RT_Int.fromLit "0")
        end) (sl'6DDF_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'6DE3_))) andalso (let
            val (x250_'0_, x251_'0_) = ((net'6DE7_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NETTest.rsl:280:5: Argument of directStopExists" ^ RT_x_15.toString (stp'6DDA_, sl'6DDF_, cl'6DE3_, net'6DE7_) ^ " not in subtype") else let
            val check'6E31_ = ((((findDirectConnection'714D_) (stp'6DDA_, sl'6DDF_, cl'6DE3_, net'6DE7_))):RT_x_1.t)
        in
            if RT_x_1.equ (check'6E31_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (284, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (286, 13)); true)
        end);
        
        fun checkForNets'6851_ (sl'68C2_, stpNet'68C6_, cl'68CE_, net'68D2_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (269, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x211_'0_, x212_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")
        end) (sl'68C2_))) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x213_'0_, x214_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")
        end) (stpNet'68C6_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'68CE_))) andalso (let
            val (x224_'0_, x225_'0_) = ((net'68D2_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NETTest.rsl:267:5: Argument of checkForNets" ^ RT_x_14.toString (sl'68C2_, stpNet'68C6_, cl'68CE_, net'68D2_) ^ " not in subtype") else if RT_l_3.equ (sl'68C2_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (270, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (272, 9)); if ((directStopExists'6D65_) (RT_l_3.R_hd((sl'68C2_)), stpNet'68C6_, cl'68CE_, net'68D2_)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (273, 13)); ((checkForNets'6851_) (RT_l_3.R_tl((sl'68C2_)), RT_l_3.R_concat (stpNet'68C6_, [RT_l_3.R_hd((sl'68C2_))]), cl'68CE_, net'68D2_))) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (275, 13)); false)));
        
        fun stopsConnected'5C35_ (sl'5CA8_, cl'5CAC_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (238, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x194_'0_, x195_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")
        end) (sl'5CA8_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'5CAC_)))) then raise RSL.RSL_exception ("NETTest.rsl:236:5: Argument of stopsConnected" ^ RT_x_5.toString (sl'5CA8_, cl'5CAC_) ^ " not in subtype") else if RT_l_3.equ (sl'5CA8_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (239, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (241, 9)); let
            val stp'5E31_ = ((RT_l_3.R_hd((sl'5CA8_))):RT_x_1.t); 
            val stp1'5E3F_ = ((((findDirectConnection'714D_) (stp'5E31_, sl'5CA8_, cl'5CAC_, (sl'5CA8_, cl'5CAC_)))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'5E3F_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (243, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (245, 17)); let
                val stpNet'5FC9_ = ((RT_l_3.R_concat (([]:RT_l_3.t), [stp'5E31_, stp1'5E3F_])):RT_l_3.t)
            in
                ((checkForNets'6851_) (((remove'6275_) (stp1'5E3F_, RT_l_3.R_tl((sl'5CA8_)), ([]:RT_l_3.t))), stpNet'5FC9_, cl'5CAC_, (sl'5CA8_, cl'5CAC_)))
            end)
        end));
        
        fun correctConnectionDrivingTime'56BD_ cl'573E_ = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (224, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'573E_))) then raise RSL.RSL_exception ("NETTest.rsl:222:5: Argument of correctConnectionDrivingTime" ^ "(" ^ RT_l_4.toString cl'573E_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'573E_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (225, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (227, 9)); let
            val (stp1'58BA_, stp2'58C0_, hw'58C6_, cap'58CA_, dt'58CF_) = ((RT_l_4.R_hd((cl'573E_))):RT_x_2.t)
        in
            if RT_Nat.R_le (dt'58CF_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (229, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (231, 17)); ((correctConnectionDrivingTime'56BD_) (RT_l_4.R_tl((cl'573E_)))))
        end));
        
        fun capacity'2C8D_ (si'2CFA_, net'2CFE_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (116, 5)); if not(let
            val (x120_'0_, x121_'0_) = ((net'2CFE_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x122_'0_, x123_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x123_'0_, RT_Int.fromLit "0")
            end) (x120_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x124_'0_, x125_'0_, x126_'0_, x127_'0_, x128_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x129_'0_, x130_'0_) = ((x124_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x130_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x131_'0_, x132_'0_) = ((x125_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x126_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x127_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x128_'0_, RT_Int.fromLit "0")))))
            end) (x121_'0_)))
        end) then raise RSL.RSL_exception ("NETTest.rsl:114:5: Argument of capacity" ^ RT_x_8.toString (si'2CFA_, net'2CFE_) ^ " not in subtype") else let
            val (stoplist'2D5A_, cl'2D64_) = ((net'2CFE_):RT_x_5.t); 
            val (x'2D70_, cap'2D73_) = ((((getStop'2715_) (si'2CFA_, stoplist'2D5A_))):RT_x_1.t)
        in
            cap'2D73_
        end);
        
        fun correctCapacity'2F49_ net'2FBD_ = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (123, 5)); if not(let
            val (x133_'0_, x134_'0_) = ((net'2FBD_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NETTest.rsl:121:5: Argument of correctCapacity" ^ "(" ^ RT_x_5.toString net'2FBD_ ^ ")" ^ " not in subtype") else let
            val (sl'3016_, cl'3019_) = ((net'2FBD_):RT_x_5.t)
        in
            if RT_l_3.equ (sl'3016_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (125, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (127, 13)); let
                val h'31AD_ = ((RT_l_3.R_hd((sl'3016_))):RT_x_1.t); 
                val (si'31BA_, cap'31BE_) = ((h'31AD_):RT_x_1.t)
            in
                if RT_Nat.R_le (((capacity'2C8D_) (si'31BA_, net'2FBD_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (129, 21)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (131, 21)); ((correctCapacity'2F49_) ((RT_l_3.R_tl((sl'3016_)), cl'3019_))))
            end)
        end);
        
        fun correctStopsAux'41A5_ (s'4219_, sl'421C_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (170, 5)); if not((let
            val (x161_'0_, x162_'0_) = ((s'4219_):RT_x_1.t)
        in
            RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x163_'0_, x164_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0")
        end) (sl'421C_)))) then raise RSL.RSL_exception ("NETTest.rsl:168:5: Argument of correctStopsAux" ^ RT_x_12.toString (s'4219_, sl'421C_) ^ " not in subtype") else if RT_l_3.equ (sl'421C_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (171, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (173, 9)); let
            val (si'43A2_, cap'43A6_) = ((s'4219_):RT_x_1.t); 
            val (siNew'43B1_, capNew'43B8_) = ((RT_l_3.R_hd((sl'421C_))):RT_x_1.t)
        in
            if RT_Text.equ (si'43A2_, siNew'43B1_) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (175, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (177, 17)); ((correctStopsAux'41A5_) (s'4219_, RT_l_3.R_tl((sl'421C_)))))
        end));
        
        fun correctStops'471D_ sl'478E_ = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (184, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x165_'0_, x166_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")
        end) (sl'478E_))) then raise RSL.RSL_exception ("NETTest.rsl:182:5: Argument of correctStops" ^ "(" ^ RT_l_3.toString sl'478E_ ^ ")" ^ " not in subtype") else if RT_l_3.equ (sl'478E_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (185, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (187, 9)); if RT_Bool.equ (((correctStopsAux'41A5_) (RT_l_3.R_hd((sl'478E_)), RT_l_3.R_tl((sl'478E_)))), true) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (188, 13)); ((correctStops'471D_) (RT_l_3.R_tl((sl'478E_))))) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (190, 13)); false)));
        
        fun correctConnectionCapacity'4BCD_ cl'4C4B_ = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (196, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'4C4B_))) then raise RSL.RSL_exception ("NETTest.rsl:194:5: Argument of correctConnectionCapacity" ^ "(" ^ RT_l_4.toString cl'4C4B_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'4C4B_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (197, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (199, 9)); let
            val (stp1'4DCA_, stp2'4DD0_, hw'4DD6_, cap'4DDA_, dt'4DDF_) = ((RT_l_4.R_hd((cl'4C4B_))):RT_x_2.t)
        in
            if RT_Nat.R_le (cap'4DDA_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (201, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (203, 17)); ((correctConnectionCapacity'4BCD_) (RT_l_4.R_tl((cl'4C4B_)))))
        end));
        
        fun correctConnectionHeadway'5145_ cl'51C2_ = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (210, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'51C2_))) then raise RSL.RSL_exception ("NETTest.rsl:208:5: Argument of correctConnectionHeadway" ^ "(" ^ RT_l_4.toString cl'51C2_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'51C2_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (211, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (213, 9)); let
            val (stp1'5342_, stp2'5348_, hw'534E_, cap'5352_, dt'5357_) = ((RT_l_4.R_hd((cl'51C2_))):RT_x_2.t)
        in
            if RT_Nat.R_le (hw'534E_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (215, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (217, 17)); ((correctConnectionHeadway'5145_) (RT_l_4.R_tl((cl'51C2_)))))
        end));
        
        fun isWellformed'7855_ net'78C6_ = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (310, 5)); if not(let
            val (x289_'0_, x290_'0_) = ((net'78C6_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NETTest.rsl:308:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'78C6_ ^ ")" ^ " not in subtype") else let
            val (sl'7922_, cl'7925_) = ((net'78C6_):RT_x_5.t)
        in
            (((correctCapacity'2F49_) (net'78C6_))) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (312, 11)); (((correctStops'471D_) (sl'7922_))) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (313, 11)); (((correctConnectionCapacity'4BCD_) (cl'7925_))) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (314, 11)); (((correctConnectionDrivingTime'56BD_) (cl'7925_))) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (315, 11)); (((correctConnectionHeadway'5145_) (cl'7925_))) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (316, 11)); ((stopsConnected'5C35_) (sl'7922_, cl'7925_)))))))
        end);
        
        fun getConnection'1261_ (stpOne'12D3_, stpTwo'12DB_, cl'12E3_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (49, 5)); if not((let
            val (x40_'0_, x41_'0_) = ((stpOne'12D3_):RT_x_1.t)
        in
            RT_Nat.R_ge (x41_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x42_'0_, x43_'0_) = ((stpTwo'12DB_):RT_x_1.t)
        in
            RT_Nat.R_ge (x43_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'12E3_))))) then raise RSL.RSL_exception ("NETTest.rsl:47:5: Argument of getConnection" ^ RT_x_9.toString (stpOne'12D3_, stpTwo'12DB_, cl'12E3_) ^ " not in subtype") else if RT_l_4.equ (cl'12E3_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (50, 9)); ((RT_Text.fromLit "", RT_Int.fromLit "0"), (RT_Text.fromLit "", RT_Int.fromLit "0"), RT_Int.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (52, 9)); let
            val con'145D_ = ((RT_l_4.R_hd((cl'12E3_))):RT_x_2.t); 
            val (s1'146C_, s2'1470_, hw'1474_, cap'1478_, dt'147D_) = ((con'145D_):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stpOne'12D3_, s1'146C_)) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (53, 33)); RT_x_1.equ (stpTwo'12DB_, s2'1470_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (53, 47)); ((RT_x_1.equ (stpOne'12D3_, s2'1470_)) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (53, 63)); RT_x_1.equ (stpTwo'12DB_, s1'146C_))))) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (54, 17)); con'145D_) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (56, 17)); ((getConnection'1261_) (stpOne'12D3_, stpTwo'12DB_, RT_l_4.R_tl((cl'12E3_)))))
        end));
        
        fun capacity'17D9_ (siOne'1846_, siTwo'184D_, net'1854_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (63, 5)); if not(let
            val (x53_'0_, x54_'0_) = ((net'1854_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NETTest.rsl:61:5: Argument of capacity" ^ RT_x_10.toString (siOne'1846_, siTwo'184D_, net'1854_) ^ " not in subtype") else let
            val (sl'18A5_, cl'18A8_) = ((net'1854_):RT_x_5.t); 
            val stpOne'18B3_ = ((((getStop'2715_) (siOne'1846_, sl'18A5_))):RT_x_1.t); 
            val stpTwo'18CF_ = ((((getStop'2715_) (siTwo'184D_, sl'18A5_))):RT_x_1.t); 
            val (csOne'18ED_, csTwo'18F4_, hw'18FB_, cap'18FF_, dt'1904_) = ((((getConnection'1261_) (stpOne'18B3_, stpTwo'18CF_, cl'18A8_))):RT_x_2.t)
        in
            cap'18FF_
        end);
        
        fun isIn'E79_ (si'EE2_, net'EE6_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (39, 5)); if not(let
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
        end) then raise RSL.RSL_exception ("NETTest.rsl:37:5: Argument of isIn" ^ RT_x_8.toString (si'EE2_, net'EE6_) ^ " not in subtype") else let
            val (sl'F45_, cl'F48_) = ((net'EE6_):RT_x_5.t); 
            val stp'F53_ = ((((getStop'2715_) (si'EE2_, sl'F45_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp'F53_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (41, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (43, 13)); true)
        end);
        
        fun minHeadway'2265_ (siOne'22D4_, siTwo'22DB_, net'22E2_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (90, 5)); if not(let
            val (x92_'0_, x93_'0_) = ((net'22E2_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NETTest.rsl:88:5: Argument of minHeadway" ^ RT_x_10.toString (siOne'22D4_, siTwo'22DB_, net'22E2_) ^ " not in subtype") else let
            val (sl'2331_, cl'2334_) = ((net'22E2_):RT_x_5.t); 
            val stpOne'233F_ = ((((getStop'2715_) (siOne'22D4_, sl'2331_))):RT_x_1.t); 
            val stpTwo'235B_ = ((((getStop'2715_) (siTwo'22DB_, sl'2331_))):RT_x_1.t); 
            val (csOne'2379_, csTwo'2380_, hw'2387_, cap'238B_, dt'2390_) = ((((getConnection'1261_) (stpOne'233F_, stpTwo'235B_, cl'2334_))):RT_x_2.t)
        in
            hw'2387_
        end);
        
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
            val stpidOne'B6C_ = ((((getStop'2715_) (startid'B03_, sl'B5E_))):RT_x_1.t); 
            val stpidTwo'B8D_ = ((((getStop'2715_) (stpid'B0C_, sl'B5E_))):RT_x_1.t)
        in
            (sl'B5E_, RT_l_4.R_concat (cl'B61_, [(stpidOne'B6C_, stpidTwo'B8D_, hw'B13_, c'B17_, dt'B1A_)]))
        end);
        
        fun minDrivingTime'24BD_ (siOne'2530_, siTwo'2537_, net'253E_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (96, 5)); if not(let
            val (x105_'0_, x106_'0_) = ((net'253E_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x107_'0_, x108_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x108_'0_, RT_Int.fromLit "0")
            end) (x105_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
            end) (x106_'0_)))
        end) then raise RSL.RSL_exception ("NETTest.rsl:94:5: Argument of minDrivingTime" ^ RT_x_10.toString (siOne'2530_, siTwo'2537_, net'253E_) ^ " not in subtype") else let
            val (sl'2589_, cl'258C_) = ((net'253E_):RT_x_5.t); 
            val stpOne'2597_ = ((((getStop'2715_) (siOne'2530_, sl'2589_))):RT_x_1.t); 
            val stpTwo'25B3_ = ((((getStop'2715_) (siTwo'2537_, sl'2589_))):RT_x_1.t); 
            val (csOne'25D1_, csTwo'25D8_, hw'25DF_, cap'25E3_, dt'25E8_) = ((((getConnection'1261_) (stpOne'2597_, stpTwo'25B3_, cl'258C_))):RT_x_2.t)
        in
            dt'25E8_
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
        
        fun stopExists'3B01_ (stp'3B70_, sl'3B75_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (153, 5)); if not((let
            val (x157_'0_, x158_'0_) = ((stp'3B70_):RT_x_1.t)
        in
            RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x159_'0_, x160_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")
        end) (sl'3B75_)))) then raise RSL.RSL_exception ("NETTest.rsl:151:5: Argument of stopExists" ^ RT_x_12.toString (stp'3B70_, sl'3B75_) ^ " not in subtype") else if RT_l_3.equ (sl'3B75_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (154, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (156, 9)); let
            val stp1'3CFD_ = ((RT_l_3.R_hd((sl'3B75_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'3CFD_, stp'3B70_) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (158, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (160, 17)); ((stopExists'3B01_) (stp'3B70_, RT_l_3.R_tl((sl'3B75_)))))
        end));
        
        fun checkForRealStops'3589_ (sl'35FF_, cl'3603_) = (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (139, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x146_'0_, x147_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")
        end) (sl'35FF_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'3603_)))) then raise RSL.RSL_exception ("NETTest.rsl:137:5: Argument of checkForRealStops" ^ RT_x_5.toString (sl'35FF_, cl'3603_) ^ " not in subtype") else if RT_l_4.equ (cl'3603_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (140, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (142, 9)); let
            val (stp1'3786_, stp2'378C_, hw'3792_, cap'3796_, dt'379B_) = ((RT_l_4.R_hd((cl'3603_))):RT_x_2.t)
        in
            if (((stopExists'3B01_) (stp1'3786_, sl'35FF_))) andalso (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (143, 39)); ((stopExists'3B01_) (stp2'378C_, sl'35FF_))) then (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (144, 17)); ((checkForRealStops'3589_) (sl'35FF_, RT_l_4.R_tl((cl'3603_))))) else (R_coverage.cancel(RT_Text.fromLit "NETTest.rsl", (146, 17)); false)
        end));
        
        val empty'645_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
    end;
    
open NETTest;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (143, 39), (143, 62));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (146, 17), (147, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (144, 17), (145, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (142, 9), (149, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (140, 9), (141, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (139, 5), (149, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (160, 17), (161, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (158, 17), (159, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (156, 9), (163, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (154, 9), (155, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (153, 5), (163, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (20, 9), (22, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (96, 5), (98, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (29, 5), (35, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (90, 5), (92, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (43, 13), (44, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (41, 13), (42, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (39, 5), (45, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (63, 5), (65, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (53, 63), (53, 74));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (53, 33), (53, 44));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (53, 47), (53, 75));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (56, 17), (57, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (54, 17), (55, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (52, 9), (59, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (50, 9), (51, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (49, 5), (59, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (316, 11), (317, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (315, 11), (317, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (314, 11), (317, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (313, 11), (317, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (312, 11), (317, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (310, 5), (320, 3));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (217, 17), (218, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (215, 17), (216, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (213, 9), (220, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (211, 9), (212, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (210, 5), (220, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (203, 17), (204, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (201, 17), (202, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (199, 9), (206, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (197, 9), (198, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (196, 5), (206, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (190, 13), (191, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (188, 13), (189, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (187, 9), (192, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (185, 9), (186, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (184, 5), (192, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (177, 17), (178, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (175, 17), (176, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (173, 9), (180, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (171, 9), (172, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (170, 5), (180, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (131, 21), (132, 17));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (129, 21), (130, 20));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (127, 13), (134, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (125, 13), (126, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (123, 5), (135, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (116, 5), (118, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (231, 17), (232, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (229, 17), (230, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (227, 9), (234, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (225, 9), (226, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (224, 5), (234, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (245, 17), (248, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (243, 17), (244, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (241, 9), (250, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (239, 9), (240, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (238, 5), (250, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (275, 13), (276, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (273, 13), (274, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (272, 9), (277, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (270, 9), (271, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (269, 5), (277, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (286, 13), (287, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (284, 13), (285, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (282, 5), (288, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (299, 17), (300, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (297, 17), (298, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (295, 9), (302, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (293, 9), (294, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (292, 5), (306, 7));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (84, 5), (86, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (73, 62), (73, 72));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (73, 32), (73, 42));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (73, 47), (73, 73));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (76, 17), (77, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (74, 17), (75, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (72, 9), (79, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (70, 9), (71, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (69, 5), (79, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (109, 11), (110, 9));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (107, 16), (108, 12));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (105, 7), (112, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (103, 12), (104, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (102, 5), (112, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (261, 17), (262, 13));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (259, 17), (260, 16));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (257, 9), (264, 5));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (255, 9), (256, 8));
R_coverage.mark(RT_Text.fromLit "NETTest.rsl", (254, 5), (264, 8)));
RSL.print_error_count();
R_coverage.save_marked();
