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
    
structure RT_x_16 =
    struct
        type t = RT_Text.t * RT_Nat.t * RT_Nat.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Nat.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Nat.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^
                              ")";
    end;
    
structure RT_l_17 = RT_List(structure Elem = RT_x_16);

structure RT_x_18 =
    struct
        type t = RT_Text.t * RT_l_17.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_17.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_17.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_17.typeToString ()) ^
                              ")";
    end;
    
structure RT_l_19 = RT_List(structure Elem = RT_x_18);

structure RT_x_20 =
    struct
        type t = RT_Text.t * RT_l_19.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_l_19.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_l_19.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_19.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_21 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_Nat.t * RT_Nat.t * RT_l_19.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_Nat.equ(#3 x, #3 y) andalso 
                             RT_Nat.equ(#4 x, #4 y) andalso 
                             RT_l_19.equ(#5 x, #5 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_Nat.toString(#3 x )) ^ "," ^
                             (RT_Nat.toString(#4 x )) ^ "," ^
                             (RT_l_19.toString(#5 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_Nat.typeToString ()) ^ " >< " ^
                              (RT_l_19.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_22 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_l_19.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_l_19.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_l_19.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_l_19.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_23 =
    struct
        type t = RT_x_18.t * RT_l_19.t;
        
        fun equ (x:t, y:t) = RT_x_18.equ(#1 x, #1 y) andalso 
                             RT_l_19.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_18.toString(#1 x )) ^ "," ^
                             (RT_l_19.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_18.typeToString ()) ^ " >< " ^
                              (RT_l_19.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_24 =
    struct
        type t = RT_x_16.t * RT_l_17.t;
        
        fun equ (x:t, y:t) = RT_x_16.equ(#1 x, #1 y) andalso 
                             RT_l_17.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_x_16.toString(#1 x )) ^ "," ^
                             (RT_l_17.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_x_16.typeToString ()) ^ " >< " ^
                              (RT_l_17.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_25 =
    struct
        type t = RT_l_19.t * RT_x_5.t;
        
        fun equ (x:t, y:t) = RT_l_19.equ(#1 x, #1 y) andalso 
                             RT_x_5.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_l_19.toString(#1 x )) ^ "," ^
                             (RT_x_5.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_l_19.typeToString ()) ^ " >< " ^
                              (RT_x_5.typeToString ()) ^
                              ")";
    end;
    
structure test_for_TIMETABLE =
    struct
        type Time_ = RT_Nat.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type Connection_ = RT_x_2.t;
        
        type Stop_ = RT_x_1.t;
        
        type Net_ = RT_x_5.t;
        
        fun remove'F4F1_ (stp'F55C_, sl'F561_, newSl'F565_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (262, 5)); if not((let
            val (x205_'0_, x206_'0_) = ((stp'F55C_):RT_x_1.t)
        in
            RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x207_'0_, x208_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")
        end) (sl'F561_))) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x209_'0_, x210_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")
        end) (newSl'F565_))))) then raise RSL.RSL_exception ("NET.rsl:260:5: Argument of remove" ^ RT_x_13.toString (stp'F55C_, sl'F561_, newSl'F565_) ^ " not in subtype") else if RT_l_3.equ (sl'F561_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (263, 9)); newSl'F565_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (265, 9)); let
            val stp1'F6ED_ = ((RT_l_3.R_hd((sl'F561_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'F6ED_, stp'F55C_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (267, 17)); ((remove'F4F1_) (stp'F55C_, RT_l_3.R_tl((sl'F561_)), newSl'F565_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (269, 17)); ((remove'F4F1_) (stp'F55C_, RT_l_3.R_tl((sl'F561_)), RT_l_3.R_concat (newSl'F565_, [stp1'F6ED_]))))
        end));
        
        fun auxAreConnected'B6D5_ (stp1'B749_, stp2'B74F_, cl'B755_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (103, 5)); if not((let
            val (x118_'0_, x119_'0_) = ((stp1'B749_):RT_x_1.t)
        in
            RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x120_'0_, x121_'0_) = ((stp2'B74F_):RT_x_1.t)
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
        end) (cl'B755_))))) then raise RSL.RSL_exception ("NET.rsl:101:5: Argument of auxAreConnected" ^ RT_x_10.toString (stp1'B749_, stp2'B74F_, cl'B755_) ^ " not in subtype") else if RT_l_4.equ (cl'B755_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (104, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (106, 9)); let
            val (cs1'B8D2_, cs2'B8D7_, hw'B8DC_, cap'B8E0_, dt'B8E5_) = ((RT_l_4.R_hd((cl'B755_))):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stp1'B749_, cs1'B8D2_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 32)); RT_x_1.equ (stp2'B74F_, cs2'B8D7_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 47)); ((RT_x_1.equ (stp1'B749_, cs2'B8D7_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 62)); RT_x_1.equ (stp2'B74F_, cs1'B8D2_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (108, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (110, 17)); ((auxAreConnected'B6D5_) (stp1'B749_, stp2'B74F_, RT_l_4.R_tl((cl'B755_)))))
        end));
        
        fun getStop'BC4D_ (stpid'BCB9_, sl'BCC0_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (117, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x131_'0_, x132_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x132_'0_, RT_Int.fromLit "0")
        end) (sl'BCC0_))) then raise RSL.RSL_exception ("NET.rsl:115:5: Argument of getStop" ^ RT_x_11.toString (stpid'BCB9_, sl'BCC0_) ^ " not in subtype") else if RT_l_3.equ (sl'BCC0_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (118, 12)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (120, 7)); let
            val stp'BE47_ = ((RT_l_3.R_hd((sl'BCC0_))):RT_x_1.t); 
            val (si'BE56_, c'BE59_) = ((stp'BE47_):RT_x_1.t)
        in
            if RT_Text.equ (stpid'BCB9_, si'BE56_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (122, 16)); stp'BE47_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (124, 11)); ((getStop'BC4D_) (stpid'BCB9_, RT_l_3.R_tl((sl'BCC0_)))))
        end));
        
        fun areDirectlyConnected'A4DD_ (siOne'A556_, siTwo'A55D_, net'A564_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (57, 5)); if not(let
            val (x53_'0_, x54_'0_) = ((net'A564_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:55:5: Argument of areDirectlyConnected" ^ RT_x_9.toString (siOne'A556_, siTwo'A55D_, net'A564_) ^ " not in subtype") else let
            val (sl'A5AA_, cl'A5AD_) = ((net'A564_):RT_x_5.t); 
            val stp1'A5B8_ = ((((getStop'BC4D_) (siOne'A556_, sl'A5AA_))):RT_x_1.t); 
            val stp2'A5D3_ = ((((getStop'BC4D_) (siTwo'A55D_, sl'A5AA_))):RT_x_1.t)
        in
            ((auxAreConnected'B6D5_) (stp1'A5B8_, stp2'A5D3_, cl'A5AD_))
        end);
        
        fun findDirectConnection'103C9_ (stp'10442_, sl'10447_, cl'1044B_, net'1044F_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (300, 5)); if not((let
            val (x263_'0_, x264_'0_) = ((stp'10442_):RT_x_1.t)
        in
            RT_Nat.R_ge (x264_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x265_'0_, x266_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x266_'0_, RT_Int.fromLit "0")
        end) (sl'10447_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'1044B_))) andalso (let
            val (x276_'0_, x277_'0_) = ((net'1044F_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:298:5: Argument of findDirectConnection" ^ RT_x_15.toString (stp'10442_, sl'10447_, cl'1044B_, net'1044F_) ^ " not in subtype") else if RT_l_3.equ (sl'10447_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (301, 9)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (303, 9)); let
            val stp1'105C5_ = ((RT_l_3.R_hd((sl'10447_))):RT_x_1.t); 
            val (si'105D5_, cap'105D9_) = ((stp'10442_):RT_x_1.t); 
            val (si1'105E6_, cap1'105EB_) = ((stp1'105C5_):RT_x_1.t)
        in
            if ((areDirectlyConnected'A4DD_) (si'105D5_, si1'105E6_, net'1044F_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (305, 17)); stp1'105C5_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (307, 17)); ((findDirectConnection'103C9_) (stp'10442_, RT_l_3.R_tl((sl'10447_)), cl'1044B_, net'1044F_)))
        end));
        
        fun directStopExists'FFE1_ (stp'10056_, sl'1005B_, cl'1005F_, net'10063_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (290, 5)); if not((let
            val (x237_'0_, x238_'0_) = ((stp'10056_):RT_x_1.t)
        in
            RT_Nat.R_ge (x238_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x239_'0_, x240_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x240_'0_, RT_Int.fromLit "0")
        end) (sl'1005B_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'1005F_))) andalso (let
            val (x250_'0_, x251_'0_) = ((net'10063_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:288:5: Argument of directStopExists" ^ RT_x_15.toString (stp'10056_, sl'1005B_, cl'1005F_, net'10063_) ^ " not in subtype") else let
            val check'100AD_ = ((((findDirectConnection'103C9_) (stp'10056_, sl'1005B_, cl'1005F_, net'10063_))):RT_x_1.t)
        in
            if RT_x_1.equ (check'100AD_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (292, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (294, 13)); true)
        end);
        
        fun checkForNets'FACD_ (sl'FB3E_, stpNet'FB42_, cl'FB4A_, net'FB4E_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (277, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x211_'0_, x212_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")
        end) (sl'FB3E_))) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x213_'0_, x214_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")
        end) (stpNet'FB42_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'FB4A_))) andalso (let
            val (x224_'0_, x225_'0_) = ((net'FB4E_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:275:5: Argument of checkForNets" ^ RT_x_14.toString (sl'FB3E_, stpNet'FB42_, cl'FB4A_, net'FB4E_) ^ " not in subtype") else if RT_l_3.equ (sl'FB3E_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (278, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (280, 9)); if ((directStopExists'FFE1_) (RT_l_3.R_hd((sl'FB3E_)), stpNet'FB42_, cl'FB4A_, net'FB4E_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (281, 13)); ((checkForNets'FACD_) (RT_l_3.R_tl((sl'FB3E_)), RT_l_3.R_concat (stpNet'FB42_, [RT_l_3.R_hd((sl'FB3E_))]), cl'FB4A_, net'FB4E_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (283, 13)); false)));
        
        fun stopsConnected'EEB1_ (sl'EF24_, cl'EF28_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (246, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x194_'0_, x195_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")
        end) (sl'EF24_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'EF28_)))) then raise RSL.RSL_exception ("NET.rsl:244:5: Argument of stopsConnected" ^ RT_x_5.toString (sl'EF24_, cl'EF28_) ^ " not in subtype") else if RT_l_3.equ (sl'EF24_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (247, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (249, 9)); let
            val stp'F0AD_ = ((RT_l_3.R_hd((sl'EF24_))):RT_x_1.t); 
            val stp1'F0BB_ = ((((findDirectConnection'103C9_) (stp'F0AD_, sl'EF24_, cl'EF28_, (sl'EF24_, cl'EF28_)))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'F0BB_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (251, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (253, 17)); let
                val stpNet'F245_ = ((RT_l_3.R_concat (([]:RT_l_3.t), [stp'F0AD_, stp1'F0BB_])):RT_l_3.t)
            in
                ((checkForNets'FACD_) (((remove'F4F1_) (stp1'F0BB_, RT_l_3.R_tl((sl'EF24_)), ([]:RT_l_3.t))), stpNet'F245_, cl'EF28_, (sl'EF24_, cl'EF28_)))
            end)
        end));
        
        fun capacity'AC49_ (si'ACB6_, net'ACBA_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (76, 5)); if not(let
            val (x92_'0_, x93_'0_) = ((net'ACBA_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:74:5: Argument of capacity" ^ RT_x_8.toString (si'ACB6_, net'ACBA_) ^ " not in subtype") else let
            val (stoplist'AD16_, cl'AD20_) = ((net'ACBA_):RT_x_5.t); 
            val (x'AD2C_, cap'AD2F_) = ((((getStop'BC4D_) (si'ACB6_, stoplist'AD16_))):RT_x_1.t)
        in
            cap'AD2F_
        end);
        
        fun correctCapacity'C1C5_ net'C239_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 5)); if not(let
            val (x133_'0_, x134_'0_) = ((net'C239_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:129:5: Argument of correctCapacity" ^ "(" ^ RT_x_5.toString net'C239_ ^ ")" ^ " not in subtype") else let
            val (sl'C292_, cl'C295_) = ((net'C239_):RT_x_5.t)
        in
            if RT_l_3.equ (sl'C292_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (133, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (135, 13)); let
                val h'C429_ = ((RT_l_3.R_hd((sl'C292_))):RT_x_1.t); 
                val (si'C436_, cap'C43A_) = ((h'C429_):RT_x_1.t)
            in
                if RT_Nat.R_le (((capacity'AC49_) (si'C436_, net'C239_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (137, 21)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (139, 21)); ((correctCapacity'C1C5_) ((RT_l_3.R_tl((sl'C292_)), cl'C295_))))
            end)
        end);
        
        fun correctConnectionDrivingTime'E939_ cl'E9BA_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (232, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'E9BA_))) then raise RSL.RSL_exception ("NET.rsl:230:5: Argument of correctConnectionDrivingTime" ^ "(" ^ RT_l_4.toString cl'E9BA_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'E9BA_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (233, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (235, 9)); let
            val (stp1'EB36_, stp2'EB3C_, hw'EB42_, cap'EB46_, dt'EB4B_) = ((RT_l_4.R_hd((cl'E9BA_))):RT_x_2.t)
        in
            if RT_Nat.R_le (dt'EB4B_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (237, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (239, 17)); ((correctConnectionDrivingTime'E939_) (RT_l_4.R_tl((cl'E9BA_)))))
        end));
        
        fun stopExists'CD7D_ (stp'CDEC_, sl'CDF1_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (161, 5)); if not((let
            val (x157_'0_, x158_'0_) = ((stp'CDEC_):RT_x_1.t)
        in
            RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x159_'0_, x160_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")
        end) (sl'CDF1_)))) then raise RSL.RSL_exception ("NET.rsl:159:5: Argument of stopExists" ^ RT_x_12.toString (stp'CDEC_, sl'CDF1_) ^ " not in subtype") else if RT_l_3.equ (sl'CDF1_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (162, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (164, 9)); let
            val stp1'CF79_ = ((RT_l_3.R_hd((sl'CDF1_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'CF79_, stp'CDEC_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (166, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (168, 17)); ((stopExists'CD7D_) (stp'CDEC_, RT_l_3.R_tl((sl'CDF1_)))))
        end));
        
        fun checkForRealStops'C805_ (sl'C87B_, cl'C87F_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (147, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x146_'0_, x147_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")
        end) (sl'C87B_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'C87F_)))) then raise RSL.RSL_exception ("NET.rsl:145:5: Argument of checkForRealStops" ^ RT_x_5.toString (sl'C87B_, cl'C87F_) ^ " not in subtype") else if RT_l_4.equ (cl'C87F_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (148, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (150, 9)); let
            val (stp1'CA02_, stp2'CA08_, hw'CA0E_, cap'CA12_, dt'CA17_) = ((RT_l_4.R_hd((cl'C87F_))):RT_x_2.t)
        in
            if (((stopExists'CD7D_) (stp1'CA02_, sl'C87B_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (151, 39)); ((stopExists'CD7D_) (stp2'CA08_, sl'C87B_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (152, 17)); ((checkForRealStops'C805_) (sl'C87B_, RT_l_4.R_tl((cl'C87F_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (154, 17)); false)
        end));
        
        fun correctStopsAux'D421_ (s'D495_, sl'D498_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (178, 5)); if not((let
            val (x161_'0_, x162_'0_) = ((s'D495_):RT_x_1.t)
        in
            RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x163_'0_, x164_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0")
        end) (sl'D498_)))) then raise RSL.RSL_exception ("NET.rsl:176:5: Argument of correctStopsAux" ^ RT_x_12.toString (s'D495_, sl'D498_) ^ " not in subtype") else if RT_l_3.equ (sl'D498_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (179, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (181, 9)); let
            val (si'D61E_, cap'D622_) = ((s'D495_):RT_x_1.t); 
            val (siNew'D62D_, capNew'D634_) = ((RT_l_3.R_hd((sl'D498_))):RT_x_1.t)
        in
            if RT_Text.equ (si'D61E_, siNew'D62D_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (183, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (185, 17)); ((correctStopsAux'D421_) (s'D495_, RT_l_3.R_tl((sl'D498_)))))
        end));
        
        fun correctStops'D999_ sl'DA0A_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (192, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x165_'0_, x166_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")
        end) (sl'DA0A_))) then raise RSL.RSL_exception ("NET.rsl:190:5: Argument of correctStops" ^ "(" ^ RT_l_3.toString sl'DA0A_ ^ ")" ^ " not in subtype") else if RT_l_3.equ (sl'DA0A_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (193, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (195, 9)); if RT_Bool.equ (((correctStopsAux'D421_) (RT_l_3.R_hd((sl'DA0A_)), RT_l_3.R_tl((sl'DA0A_)))), true) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (196, 13)); ((correctStops'D999_) (RT_l_3.R_tl((sl'DA0A_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (198, 13)); false)));
        
        fun correctConnectionCapacity'DE49_ cl'DEC7_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (204, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'DEC7_))) then raise RSL.RSL_exception ("NET.rsl:202:5: Argument of correctConnectionCapacity" ^ "(" ^ RT_l_4.toString cl'DEC7_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'DEC7_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (205, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (207, 9)); let
            val (stp1'E046_, stp2'E04C_, hw'E052_, cap'E056_, dt'E05B_) = ((RT_l_4.R_hd((cl'DEC7_))):RT_x_2.t)
        in
            if RT_Nat.R_le (cap'E056_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (209, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (211, 17)); ((correctConnectionCapacity'DE49_) (RT_l_4.R_tl((cl'DEC7_)))))
        end));
        
        fun correctConnectionHeadway'E3C1_ cl'E43E_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (218, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'E43E_))) then raise RSL.RSL_exception ("NET.rsl:216:5: Argument of correctConnectionHeadway" ^ "(" ^ RT_l_4.toString cl'E43E_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'E43E_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (219, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (221, 9)); let
            val (stp1'E5BE_, stp2'E5C4_, hw'E5CA_, cap'E5CE_, dt'E5D3_) = ((RT_l_4.R_hd((cl'E43E_))):RT_x_2.t)
        in
            if RT_Nat.R_le (hw'E5CA_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (223, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (225, 17)); ((correctConnectionHeadway'E3C1_) (RT_l_4.R_tl((cl'E43E_)))))
        end));
        
        fun isWellformed'10A09_ net'10A7A_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (316, 5)); if not(let
            val (x289_'0_, x290_'0_) = ((net'10A7A_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:314:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'10A7A_ ^ ")" ^ " not in subtype") else let
            val (sl'10AD6_, cl'10AD9_) = ((net'10A7A_):RT_x_5.t)
        in
            (((correctCapacity'C1C5_) (net'10A7A_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (318, 11)); (((correctStops'D999_) (sl'10AD6_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (319, 11)); (((correctConnectionCapacity'DE49_) (cl'10AD9_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (320, 11)); (((correctConnectionDrivingTime'E939_) (cl'10AD9_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (321, 11)); (((correctConnectionHeadway'E3C1_) (cl'10AD9_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (322, 11)); (((stopsConnected'EEB1_) (sl'10AD6_, cl'10AD9_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (323, 11)); ((checkForRealStops'C805_) (sl'10AD6_, cl'10AD9_))))))))
        end);
        
        fun getConnection'B15D_ (stpOne'B1CF_, stpTwo'B1D7_, cl'B1DF_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (89, 5)); if not((let
            val (x105_'0_, x106_'0_) = ((stpOne'B1CF_):RT_x_1.t)
        in
            RT_Nat.R_ge (x106_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x107_'0_, x108_'0_) = ((stpTwo'B1D7_):RT_x_1.t)
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
        end) (cl'B1DF_))))) then raise RSL.RSL_exception ("NET.rsl:87:5: Argument of getConnection" ^ RT_x_10.toString (stpOne'B1CF_, stpTwo'B1D7_, cl'B1DF_) ^ " not in subtype") else if RT_l_4.equ (cl'B1DF_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (90, 9)); ((RT_Text.fromLit "", RT_Int.fromLit "0"), (RT_Text.fromLit "", RT_Int.fromLit "0"), RT_Int.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (92, 9)); let
            val con'B359_ = ((RT_l_4.R_hd((cl'B1DF_))):RT_x_2.t); 
            val (s1'B368_, s2'B36C_, hw'B370_, cap'B374_, dt'B379_) = ((con'B359_):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stpOne'B1CF_, s1'B368_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 33)); RT_x_1.equ (stpTwo'B1D7_, s2'B36C_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 47)); ((RT_x_1.equ (stpOne'B1CF_, s2'B36C_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (93, 63)); RT_x_1.equ (stpTwo'B1D7_, s1'B368_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (94, 17)); con'B359_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 17)); ((getConnection'B15D_) (stpOne'B1CF_, stpTwo'B1D7_, RT_l_4.R_tl((cl'B1DF_)))))
        end));
        
        fun minDrivingTime'A98D_ (siOne'AA00_, siTwo'AA07_, net'AA0E_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (69, 5)); if not(let
            val (x79_'0_, x80_'0_) = ((net'AA0E_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:67:5: Argument of minDrivingTime" ^ RT_x_9.toString (siOne'AA00_, siTwo'AA07_, net'AA0E_) ^ " not in subtype") else let
            val (sl'AA59_, cl'AA5C_) = ((net'AA0E_):RT_x_5.t); 
            val stpOne'AA67_ = ((((getStop'BC4D_) (siOne'AA00_, sl'AA59_))):RT_x_1.t); 
            val stpTwo'AA83_ = ((((getStop'BC4D_) (siTwo'AA07_, sl'AA59_))):RT_x_1.t); 
            val (csOne'AAA1_, csTwo'AAA8_, hw'AAAF_, cap'AAB3_, dt'AAB8_) = ((((getConnection'B15D_) (stpOne'AA67_, stpTwo'AA83_, cl'AA5C_))):RT_x_2.t)
        in
            dt'AAB8_
        end);
        
        fun capacity'A221_ (siOne'A28E_, siTwo'A295_, net'A29C_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (50, 5)); if not(let
            val (x40_'0_, x41_'0_) = ((net'A29C_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:48:5: Argument of capacity" ^ RT_x_9.toString (siOne'A28E_, siTwo'A295_, net'A29C_) ^ " not in subtype") else let
            val (sl'A2ED_, cl'A2F0_) = ((net'A29C_):RT_x_5.t); 
            val stpOne'A2FB_ = ((((getStop'BC4D_) (siOne'A28E_, sl'A2ED_))):RT_x_1.t); 
            val stpTwo'A317_ = ((((getStop'BC4D_) (siTwo'A295_, sl'A2ED_))):RT_x_1.t); 
            val (csOne'A335_, csTwo'A33C_, hw'A343_, cap'A347_, dt'A34C_) = ((((getConnection'B15D_) (stpOne'A2FB_, stpTwo'A317_, cl'A2F0_))):RT_x_2.t)
        in
            cap'A347_
        end);
        
        fun minHeadway'A735_ (siOne'A7A4_, siTwo'A7AB_, net'A7B2_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (63, 5)); if not(let
            val (x66_'0_, x67_'0_) = ((net'A7B2_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:61:5: Argument of minHeadway" ^ RT_x_9.toString (siOne'A7A4_, siTwo'A7AB_, net'A7B2_) ^ " not in subtype") else let
            val (sl'A801_, cl'A804_) = ((net'A7B2_):RT_x_5.t); 
            val stpOne'A80F_ = ((((getStop'BC4D_) (siOne'A7A4_, sl'A801_))):RT_x_1.t); 
            val stpTwo'A82B_ = ((((getStop'BC4D_) (siTwo'A7AB_, sl'A801_))):RT_x_1.t); 
            val (csOne'A849_, csTwo'A850_, hw'A857_, cap'A85B_, dt'A860_) = ((((getConnection'B15D_) (stpOne'A80F_, stpTwo'A82B_, cl'A804_))):RT_x_2.t)
        in
            hw'A857_
        end);
        
        fun isIn'9DD5_ (si'9E3E_, net'9E42_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (39, 5)); if not(let
            val (x27_'0_, x28_'0_) = ((net'9E42_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:37:5: Argument of isIn" ^ RT_x_8.toString (si'9E3E_, net'9E42_) ^ " not in subtype") else let
            val (sl'9EA1_, cl'9EA4_) = ((net'9E42_):RT_x_5.t); 
            val stp'9EAF_ = ((((getStop'BC4D_) (si'9E3E_, sl'9EA1_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp'9EAF_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (41, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (43, 13)); true)
        end);
        
        val empty'95A1_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        fun addConnection'99ED_ (startid'9A5F_, stpid'9A68_, hw'9A6F_, c'9A73_, dt'9A76_, net'9A7A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (29, 5)); if not((RT_Nat.R_ge (hw'9A6F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (c'9A73_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (dt'9A76_, RT_Int.fromLit "0")) andalso (let
            val (x14_'0_, x15_'0_) = ((net'9A7A_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:27:5: Argument of addConnection" ^ RT_x_7.toString (startid'9A5F_, stpid'9A68_, hw'9A6F_, c'9A73_, dt'9A76_, net'9A7A_) ^ " not in subtype") else let
            val (sl'9ABA_, cl'9ABD_) = ((net'9A7A_):RT_x_5.t); 
            val stpidOne'9AC8_ = ((((getStop'BC4D_) (startid'9A5F_, sl'9ABA_))):RT_x_1.t); 
            val stpidTwo'9AE9_ = ((((getStop'BC4D_) (stpid'9A68_, sl'9ABA_))):RT_x_1.t)
        in
            (sl'9ABA_, RT_l_4.R_concat (cl'9ABD_, [(stpidOne'9AC8_, stpidTwo'9AE9_, hw'9A6F_, c'9A73_, dt'9A76_)]))
        end);
        
        fun insertStop'9669_ (stopid'96D8_, cap'96E0_, net'96E5_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (20, 9)); if not((RT_Nat.R_ge (cap'96E0_, RT_Int.fromLit "0")) andalso (let
            val (x1_'0_, x2_'0_) = ((net'96E5_):RT_x_5.t)
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
        end)) then raise RSL.RSL_exception ("NET.rsl:18:5: Argument of insertStop" ^ RT_x_6.toString (stopid'96D8_, cap'96E0_, net'96E5_) ^ " not in subtype") else let
            val (sl'973A_, cl'973E_) = ((net'96E5_):RT_x_5.t); 
            val h'9749_ = (((RT_l_3.R_concat (sl'973A_, [(stopid'96D8_, cap'96E0_)]))):RT_l_3.t)
        in
            (h'9749_, cl'973E_)
        end);
        
        type TimeTable_ = RT_l_19.t;
        
        type Plan_ = RT_x_16.t;
        
        type TramId_ = RT_Text.t;
        
        type ArrivalTime_ = RT_Nat.t;
        
        type DepartureTime_ = RT_Nat.t;
        
        fun correctTimeDifference'8153_ planList'81CD_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (178, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x355_'0_, x356_'0_, x357_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x356_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x357_'0_, RT_Int.fromLit "0"))
        end) (planList'81CD_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:176:7: Argument of correctTimeDifference" ^ "(" ^ RT_l_17.toString planList'81CD_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'81CD_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (179, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (181, 11)); let
            val (stopId'8350_, aTime'8358_, dTime'835F_) = ((RT_l_17.R_hd((planList'81CD_))):RT_x_16.t)
        in
            if RT_Nat.R_le (dTime'835F_, aTime'8358_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (183, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (185, 17)); ((correctTimeDifference'8153_) (RT_l_17.R_tl((planList'81CD_)))))
        end));
        
        fun correctDepartureTime'7663_ planList'76DC_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (150, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x349_'0_, x350_'0_, x351_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x350_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x351_'0_, RT_Int.fromLit "0"))
        end) (planList'76DC_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:148:7: Argument of correctDepartureTime" ^ "(" ^ RT_l_17.toString planList'76DC_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'76DC_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (151, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (153, 11)); let
            val (stopId'7860_, aTime'7868_, dTime'786F_) = ((RT_l_17.R_hd((planList'76DC_))):RT_x_16.t)
        in
            if RT_Nat.R_lt (dTime'786F_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (155, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (157, 17)); ((correctDepartureTime'7663_) (RT_l_17.R_tl((planList'76DC_)))))
        end));
        
        fun correctArrivalTime'7BDB_ planList'7C52_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (164, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x352_'0_, x353_'0_, x354_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x353_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x354_'0_, RT_Int.fromLit "0"))
        end) (planList'7C52_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:162:7: Argument of correctArrivalTime" ^ "(" ^ RT_l_17.toString planList'7C52_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'7C52_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (165, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (167, 11)); let
            val (stopId'7DD8_, aTime'7DE0_, dTime'7DE7_) = ((RT_l_17.R_hd((planList'7C52_))):RT_x_16.t)
        in
            if RT_Nat.R_lt (aTime'7DE0_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (169, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (171, 17)); ((correctArrivalTime'7BDB_) (RT_l_17.R_tl((planList'7C52_)))))
        end));
        
        fun correctPlanLists'86CB_ timeTable'8740_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (192, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x358_'0_, x359_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x360_'0_, x361_'0_, x362_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x361_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x362_'0_, RT_Int.fromLit "0"))
            end) (x359_'0_))
        end) (timeTable'8740_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:190:7: Argument of correctPlanLists" ^ "(" ^ RT_l_19.toString timeTable'8740_ ^ ")" ^ " not in subtype") else if RT_l_19.equ (timeTable'8740_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (193, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (195, 11)); let
            val (tid'88C8_, planList'88CD_) = ((RT_l_19.R_hd((timeTable'8740_))):RT_x_18.t)
        in
            if RT_Bool.equ (((((correctArrivalTime'7BDB_) (planList'88CD_))) andalso (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (196, 48)); (((correctDepartureTime'7663_) (planList'88CD_))) andalso (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (196, 81)); ((correctTimeDifference'8153_) (planList'88CD_))))), true) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (197, 17)); ((correctPlanLists'86CB_) (RT_l_19.R_tl((timeTable'8740_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (199, 17)); false)
        end));
        
        fun correctTramIdsAux'6277_ (head'62ED_, timeTable'62F3_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (99, 9)); if not((let
            val (x325_'0_, x326_'0_) = ((head'62ED_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x327_'0_, x328_'0_, x329_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x328_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x329_'0_, RT_Int.fromLit "0"))
            end) (x326_'0_))
        end) andalso ((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x330_'0_, x331_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x332_'0_, x333_'0_, x334_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x333_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x334_'0_, RT_Int.fromLit "0"))
            end) (x331_'0_))
        end) (timeTable'62F3_)))) then raise RSL.RSL_exception ("TIMETABLE.rsl:97:7: Argument of correctTramIdsAux" ^ RT_x_23.toString (head'62ED_, timeTable'62F3_) ^ " not in subtype") else if RT_l_19.equ (timeTable'62F3_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (100, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (102, 11)); let
            val (tramId'6474_, planList'647C_) = ((head'62ED_):RT_x_18.t); 
            val (tid'648F_, pList'6494_) = ((RT_l_19.R_hd((timeTable'62F3_))):RT_x_18.t)
        in
            if RT_Text.equ (tramId'6474_, tid'648F_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (104, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (106, 17)); ((correctTramIdsAux'6277_) (head'62ED_, RT_l_19.R_tl((timeTable'62F3_)))))
        end));
        
        fun correctTramIds'67EF_ timeTable'6862_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (113, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x335_'0_, x336_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x337_'0_, x338_'0_, x339_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x338_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x339_'0_, RT_Int.fromLit "0"))
            end) (x336_'0_))
        end) (timeTable'6862_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:111:7: Argument of correctTramIds" ^ "(" ^ RT_l_19.toString timeTable'6862_ ^ ")" ^ " not in subtype") else if RT_l_19.equ (timeTable'6862_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (113, 34)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (115, 11)); if RT_Bool.equ (((correctTramIdsAux'6277_) (RT_l_19.R_hd((timeTable'6862_)), RT_l_19.R_tl((timeTable'6862_)))), true) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (116, 15)); ((correctTramIds'67EF_) (RT_l_19.R_tl((timeTable'6862_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (118, 15)); false)));
        
        fun isWellformed'8DD3_ (timeTable'8E44_, net'8E4F_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (210, 9)); if not(((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x363_'0_, x364_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x365_'0_, x366_'0_, x367_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x366_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x367_'0_, RT_Int.fromLit "0"))
            end) (x364_'0_))
        end) (timeTable'8E44_))) andalso (let
            val (x368_'0_, x369_'0_) = ((net'8E4F_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x370_'0_, x371_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x371_'0_, RT_Int.fromLit "0")
            end) (x368_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x372_'0_, x373_'0_, x374_'0_, x375_'0_, x376_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x377_'0_, x378_'0_) = ((x372_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x378_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x379_'0_, x380_'0_) = ((x373_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x380_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x374_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x375_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x376_'0_, RT_Int.fromLit "0")))))
            end) (x369_'0_)))
        end)) then raise RSL.RSL_exception ("TIMETABLE.rsl:208:7: Argument of isWellformed" ^ RT_x_25.toString (timeTable'8E44_, net'8E4F_) ^ " not in subtype") else (((correctTramIds'67EF_) (timeTable'8E44_))) andalso (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (211, 9)); ((correctPlanLists'86CB_) (timeTable'8E44_))));
        
        fun correctStopPlanAux'6C3B_ (head'6CB2_, planList'6CB8_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (124, 9)); if not((let
            val (x340_'0_, x341_'0_, x342_'0_) = ((head'6CB2_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x341_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x342_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x343_'0_, x344_'0_, x345_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x344_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x345_'0_, RT_Int.fromLit "0"))
        end) (planList'6CB8_)))) then raise RSL.RSL_exception ("TIMETABLE.rsl:122:7: Argument of correctStopPlanAux" ^ RT_x_24.toString (head'6CB2_, planList'6CB8_) ^ " not in subtype") else if RT_l_17.equ (planList'6CB8_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (125, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (127, 11)); let
            val (stopId'6E38_, aTime'6E40_, dTime'6E47_) = ((head'6CB2_):RT_x_16.t); 
            val (sid'6E57_, at'6E5C_, dt'6E60_) = ((RT_l_17.R_hd((planList'6CB8_))):RT_x_16.t)
        in
            if RT_Text.equ (stopId'6E38_, sid'6E57_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (129, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (131, 17)); ((correctStopPlanAux'6C3B_) (head'6CB2_, RT_l_17.R_tl((planList'6CB8_)))))
        end));
        
        fun correctStopPlan'71B3_ planList'7227_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (138, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x346_'0_, x347_'0_, x348_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x347_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x348_'0_, RT_Int.fromLit "0"))
        end) (planList'7227_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:136:7: Argument of correctStopPlan" ^ "(" ^ RT_l_17.toString planList'7227_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'7227_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (139, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (141, 13)); if RT_Bool.equ (((correctStopPlanAux'6C3B_) (RT_l_17.R_hd((planList'7227_)), RT_l_17.R_tl((planList'7227_)))), true) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (142, 17)); ((correctStopPlan'71B3_) (RT_l_17.R_tl((planList'7227_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (144, 17)); false)));
        
        val empty'426F_ = let val z__'4281_ = ([]:RT_l_19.t) in if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x381_'0_, x382_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x383_'0_, x384_'0_, x385_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x384_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x385_'0_, RT_Int.fromLit "0"))
            end) (x382_'0_))
        end) (z__'4281_))) then (RSL.add_load_err("TIMETABLE.rsl:15:25: Value " ^ RT_l_19.toString(z__'4281_) ^ " of empty not in subtype"); z__'4281_) else z__'4281_ end;
        
        fun findStop'5B6F_ (stopId'5BDC_, planList'5BE4_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (81, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x322_'0_, x323_'0_, x324_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x323_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x324_'0_, RT_Int.fromLit "0"))
        end) (planList'5BE4_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:79:7: Argument of findStop" ^ RT_x_18.toString (stopId'5BDC_, planList'5BE4_) ^ " not in subtype") else let
            val (stopid'5C3E_, aTime'5C46_, dTime'5C4D_) = ((RT_l_17.R_hd((planList'5BE4_))):RT_x_16.t)
        in
            if RT_Text.equ (stopid'5C3E_, RT_Text.fromLit "") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (83, 15)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (85, 13)); if RT_Text.equ (stopid'5C3E_, stopId'5BDC_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (86, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (88, 17)); if (RSL.C_not RT_l_17.equ) (RT_l_17.R_tl((planList'5BE4_)), ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (89, 21)); ((findStop'5B6F_) (stopId'5BDC_, RT_l_17.R_tl((planList'5BE4_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (91, 21)); false)))
        end);
        
        fun addTram'439B_ (tramId'4407_, timeTable'440F_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (20, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x302_'0_, x303_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x304_'0_, x305_'0_, x306_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x305_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x306_'0_, RT_Int.fromLit "0"))
            end) (x303_'0_))
        end) (timeTable'440F_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:18:7: Argument of addTram" ^ RT_x_20.toString (tramId'4407_, timeTable'440F_) ^ " not in subtype") else RT_l_19.R_concat (timeTable'440F_, [(tramId'4407_, [(RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")])]));
        
        fun isIn'4C33_ (tramId'4C9C_, timeTable'4CA4_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (42, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x312_'0_, x313_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x314_'0_, x315_'0_, x316_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x315_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x316_'0_, RT_Int.fromLit "0"))
            end) (x313_'0_))
        end) (timeTable'4CA4_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:40:7: Argument of isIn" ^ RT_x_20.toString (tramId'4C9C_, timeTable'4CA4_) ^ " not in subtype") else let
            val (tId'4D02_, planList'4D07_) = ((RT_l_19.R_hd((timeTable'4CA4_))):RT_x_18.t)
        in
            if RT_Text.equ (tId'4D02_, RT_Text.fromLit "") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (43, 28)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (45, 13)); if RT_Text.equ (tramId'4C9C_, tId'4D02_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (45, 34)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (47, 8)); if (RSL.C_not RT_l_19.equ) (RT_l_19.R_tl((timeTable'4CA4_)), ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (47, 38)); ((isIn'4C33_) (tramId'4C9C_, RT_l_19.R_tl((timeTable'4CA4_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (49, 13)); false)))
        end);
        
        fun stopIsIn'54CB_ (stopId'5538_, tramId'5540_, timeTable'5548_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (64, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x317_'0_, x318_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x319_'0_, x320_'0_, x321_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x320_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x321_'0_, RT_Int.fromLit "0"))
            end) (x318_'0_))
        end) (timeTable'5548_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:62:7: Argument of stopIsIn" ^ RT_x_22.toString (stopId'5538_, tramId'5540_, timeTable'5548_) ^ " not in subtype") else let
            val (tId'559A_, planList'559F_) = ((RT_l_19.R_hd((timeTable'5548_))):RT_x_18.t)
        in
            if not (((isIn'4C33_) (tramId'5540_, timeTable'5548_))) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (65, 44)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (67, 13)); if (RSL.C_not RT_Text.equ) (tId'559A_, tramId'5540_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (68, 15)); if RT_l_19.equ (RT_l_19.R_tl((timeTable'5548_)), ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (69, 19)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (71, 19)); ((stopIsIn'54CB_) (stopId'5538_, tramId'5540_, RT_l_19.R_tl((timeTable'5548_)))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (74, 17)); ((findStop'5B6F_) (stopId'5538_, planList'559F_))))
        end);
        
        fun addStop'458F_ (tramId'45FB_, stopId'4603_, arrivalTime'460B_, departureTime'4618_, timeTable'4627_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (25, 9)); if not((RT_Nat.R_ge (arrivalTime'460B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departureTime'4618_, RT_Int.fromLit "0")) andalso ((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x307_'0_, x308_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x309_'0_, x310_'0_, x311_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x310_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x311_'0_, RT_Int.fromLit "0"))
            end) (x308_'0_))
        end) (timeTable'4627_))))) then raise RSL.RSL_exception ("TIMETABLE.rsl:23:7: Argument of addStop" ^ RT_x_21.toString (tramId'45FB_, stopId'4603_, arrivalTime'460B_, departureTime'4618_, timeTable'4627_) ^ " not in subtype") else if RT_l_19.equ (timeTable'4627_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (26, 13)); [(RT_Text.fromLit "", [(RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")])]) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (28, 11)); let
            val (tId'478C_, planList'4791_) = ((RT_l_19.R_hd((timeTable'4627_))):RT_x_18.t)
        in
            if RT_Text.equ (tId'478C_, tramId'45FB_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (30, 18)); ((tramId'45FB_, planList'4791_))::(RT_l_19.R_tl((timeTable'4627_)))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (32, 15)); ((tId'478C_, planList'4791_))::(((addStop'458F_) (tramId'45FB_, stopId'4603_, arrivalTime'460B_, departureTime'4618_, RT_l_19.R_tl((timeTable'4627_))))))
        end));
        
        val plan1'1583_ = (RT_Text.fromLit "stop_1", RT_Int.fromLit "2", RT_Int.fromLit "3");
        
        val plan5'13F3_ = (RT_Text.fromLit "stop_5", RT_Int.fromLit "2", RT_Int.fromLit "3");
        
        val plan2'14BB_ = (RT_Text.fromLit "stop_2", RT_Int.fromLit "8", RT_Int.fromLit "1");
        
        val planL'164B_ = [plan5'13F3_, plan2'14BB_, plan1'1583_];
        
        val tramId2'151F_ = RT_Text.fromLit "tram_2";
        
        val timeTable3'1264_ = [(RT_Text.fromLit "tram2", [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")])];
        
        val tramId1'15E7_ = RT_Text.fromLit "tram_1";
        
        val timeTable2'FA7_ = [(RT_Text.fromLit "tram1", [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")]), (RT_Text.fromLit "tram2", [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")])];
        
        val tramId5'1457_ = RT_Text.fromLit "tram_5";
        
        val timeTable1'647_ = [(RT_Text.fromLit "tram1", [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")]), (RT_Text.fromLit "tram2", [(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")]), (RT_Text.fromLit "tram_1", [(RT_Text.fromLit "stop_1", RT_Int.fromLit "2", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_2", RT_Int.fromLit "4", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_3", RT_Int.fromLit "7", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_4", RT_Int.fromLit "2", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_5", RT_Int.fromLit "10", RT_Int.fromLit "3")]), (RT_Text.fromLit "tram_2", [(RT_Text.fromLit "stop_1", RT_Int.fromLit "8", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_2", RT_Int.fromLit "14", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_3", RT_Int.fromLit "17", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_4", RT_Int.fromLit "20", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_5", RT_Int.fromLit "1", RT_Int.fromLit "3")]), (RT_Text.fromLit "tram_3", [(RT_Text.fromLit "stop_1", RT_Int.fromLit "9", RT_Int.fromLit "2"), (RT_Text.fromLit "stop_2", RT_Int.fromLit "18", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_3", RT_Int.fromLit "18", RT_Int.fromLit "5"), (RT_Text.fromLit "stop_4", RT_Int.fromLit "22", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_5", RT_Int.fromLit "20", RT_Int.fromLit "2"), (RT_Text.fromLit "stop_1", RT_Int.fromLit "12", RT_Int.fromLit "1")]), (RT_Text.fromLit "tram_4", [(RT_Text.fromLit "stop_1", RT_Int.fromLit "10", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_2", RT_Int.fromLit "20", RT_Int.fromLit "2"), (RT_Text.fromLit "stop_3", RT_Int.fromLit "7", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_4", RT_Int.fromLit "23", RT_Int.fromLit "5"), (RT_Text.fromLit "stop_5", RT_Int.fromLit "10", RT_Int.fromLit "4"), (RT_Text.fromLit "stop_1", RT_Int.fromLit "14", RT_Int.fromLit "2")])];
        
        val nett'2C3_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        val exNet'3EF_ = ([(RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), (RT_Text.fromLit "D", RT_Int.fromLit "2")], [((RT_Text.fromLit "A", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "6"), RT_Int.fromLit "1", RT_Int.fromLit "1", RT_Int.fromLit "10"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "C", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "3", RT_Int.fromLit "12"), ((RT_Text.fromLit "B", RT_Int.fromLit "6"), (RT_Text.fromLit "D", RT_Int.fromLit "2"), RT_Int.fromLit "2", RT_Int.fromLit "2", RT_Int.fromLit "7")]);
        
        val stID'327_ = RT_Text.fromLit "ab";
        
        val cap'38B_ = RT_Int.fromLit "3";
        
    end;
    
open test_for_TIMETABLE;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (32, 15), (34, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (30, 18), (31, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (28, 11), (36, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (26, 13), (27, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (25, 9), (38, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (71, 19), (72, 15));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (69, 19), (70, 18));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (74, 17), (75, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (68, 15), (73, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (67, 13), (76, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (65, 44), (66, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (64, 9), (77, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (49, 13), (49, 19));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (47, 38), (49, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (47, 8), (50, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (45, 34), (46, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (45, 13), (51, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (43, 28), (44, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (42, 9), (52, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (20, 9), (20, 49));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (91, 21), (92, 17));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (89, 21), (90, 20));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (88, 17), (93, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (86, 17), (87, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (85, 13), (94, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (83, 15), (84, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (81, 9), (95, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (144, 17), (145, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (142, 17), (143, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (141, 13), (146, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (139, 13), (140, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (138, 9), (146, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (131, 17), (132, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (129, 17), (130, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (127, 11), (134, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (125, 13), (126, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (124, 9), (134, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (211, 9), (212, 5));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (210, 9), (212, 5));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (118, 15), (119, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (116, 15), (117, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (115, 11), (120, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (113, 34), (114, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (113, 9), (120, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (106, 17), (107, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (104, 17), (105, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (102, 11), (109, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (100, 13), (101, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (99, 9), (109, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (196, 81), (197, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (196, 48), (197, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (199, 17), (200, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (197, 17), (198, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (195, 11), (202, 7));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (193, 13), (194, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (192, 9), (207, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (171, 17), (172, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (169, 17), (170, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (167, 11), (174, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (165, 13), (166, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (164, 9), (174, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (157, 17), (158, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (155, 17), (156, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (153, 11), (160, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (151, 13), (152, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (150, 9), (160, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (185, 17), (186, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (183, 17), (184, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (181, 11), (188, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (179, 13), (180, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (178, 9), (188, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (20, 9), (22, 12));
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
(RSL.C_output "[t1] " RT_l_19.toStringSafe (fn _ => ((addTram'439B_) (RT_Text.fromLit "tram_5", timeTable1'647_))));

(RSL.C_output "[t2] " RT_l_19.toStringSafe (fn _ => ((addStop'458F_) (RT_Text.fromLit "tram_1", RT_Text.fromLit "stop_5", RT_Int.fromLit "2", RT_Int.fromLit "3", timeTable1'647_))));

(RSL.C_output "[t3] " RT_l_19.toStringSafe (fn _ => ((addStop'458F_) (RT_Text.fromLit "tram1", RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48", timeTable1'647_))));

(RSL.C_output "[t4] " RT_l_19.toStringSafe (fn _ => ((addStop'458F_) (RT_Text.fromLit "tram_2", RT_Text.fromLit "stop_6", RT_Int.fromLit "46", RT_Int.fromLit "48", timeTable1'647_))));

(RSL.C_output "[t5] " RT_Bool.toStringSafe (fn _ => ((isIn'4C33_) (tramId1'15E7_, timeTable1'647_))));

(RSL.C_output "[t6] " RT_Bool.toStringSafe (fn _ => ((isIn'4C33_) (RT_Text.fromLit "tram_7", timeTable1'647_))));

(RSL.C_output "[t7] " RT_Bool.toStringSafe (fn _ => ((stopIsIn'54CB_) (RT_Text.fromLit "stop_4", RT_Text.fromLit "tram_4", timeTable1'647_))));

(RSL.C_output "[t8] " RT_Bool.toStringSafe (fn _ => ((stopIsIn'54CB_) (RT_Text.fromLit "stop_4", RT_Text.fromLit "tram2", timeTable1'647_))));

(RSL.C_output "[t9] " RT_Bool.toStringSafe (fn _ => ((findStop'5B6F_) (RT_Text.fromLit "stop_1", planL'164B_))));

(RSL.C_output "[t10] " RT_Bool.toStringSafe (fn _ => ((findStop'5B6F_) (RT_Text.fromLit "stop_3", planL'164B_))));

(RSL.C_output "[t11] " RT_Bool.toStringSafe (fn _ => ((correctTramIdsAux'6277_) ((RT_Text.fromLit "tram1", [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")]), timeTable1'647_))));

(RSL.C_output "[t12] " RT_Bool.toStringSafe (fn _ => ((correctTramIdsAux'6277_) ((RT_Text.fromLit "tram_1", [(RT_Text.fromLit "stop_1", RT_Int.fromLit "2", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_2", RT_Int.fromLit "4", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_3", RT_Int.fromLit "7", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_4", RT_Int.fromLit "2", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_5", RT_Int.fromLit "10", RT_Int.fromLit "3")]), timeTable1'647_))));

(RSL.C_output "[t13] " RT_Bool.toStringSafe (fn _ => ((correctTramIds'67EF_) (timeTable1'647_))));

(RSL.C_output "[t14] " RT_Bool.toStringSafe (fn _ => ((correctTramIds'67EF_) (timeTable2'FA7_))));

(RSL.C_output "[t15] " RT_Bool.toStringSafe (fn _ => ((correctStopPlanAux'6C3B_) ((RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), [(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")]))));

(RSL.C_output "[t16] " RT_Bool.toStringSafe (fn _ => ((correctStopPlanAux'6C3B_) (plan1'1583_, [(RT_Text.fromLit "stop_1", RT_Int.fromLit "10", RT_Int.fromLit "3"), (RT_Text.fromLit "stop_2", RT_Int.fromLit "20", RT_Int.fromLit "2"), (RT_Text.fromLit "stop_3", RT_Int.fromLit "7", RT_Int.fromLit "1"), (RT_Text.fromLit "stop_4", RT_Int.fromLit "23", RT_Int.fromLit "5"), (RT_Text.fromLit "stop_5", RT_Int.fromLit "10", RT_Int.fromLit "4"), (RT_Text.fromLit "stop_1", RT_Int.fromLit "14", RT_Int.fromLit "2")]))));

(RSL.C_output "[t17] " RT_Bool.toStringSafe (fn _ => ((correctStopPlan'71B3_) (planL'164B_))));

(RSL.C_output "[t18] " RT_Bool.toStringSafe (fn _ => ((correctStopPlan'71B3_) ([(RT_Text.fromLit "A", RT_Int.fromLit "0", RT_Int.fromLit "1"), (RT_Text.fromLit "B", RT_Int.fromLit "12", RT_Int.fromLit "14"), (RT_Text.fromLit "C", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "46", RT_Int.fromLit "48"), (RT_Text.fromLit "A", RT_Int.fromLit "59", RT_Int.fromLit "60")]))));

(RSL.C_output "[t19] " RT_Bool.toStringSafe (fn _ => ((correctDepartureTime'7663_) ([(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")]))));

(RSL.C_output "[t20] " RT_Bool.toStringSafe (fn _ => ((correctDepartureTime'7663_) (planL'164B_))));

(RSL.C_output "[t21] " RT_Bool.toStringSafe (fn _ => ((correctArrivalTime'7BDB_) ([(RT_Text.fromLit "D", RT_Int.fromLit "0", RT_Int.fromLit "2"), (RT_Text.fromLit "B", RT_Int.fromLit "11", RT_Int.fromLit "13"), (RT_Text.fromLit "A", RT_Int.fromLit "28", RT_Int.fromLit "32"), (RT_Text.fromLit "B", RT_Int.fromLit "47", RT_Int.fromLit "50"), (RT_Text.fromLit "D", RT_Int.fromLit "58", RT_Int.fromLit "60")]))));

(RSL.C_output "[t22] " RT_Bool.toStringSafe (fn _ => ((correctArrivalTime'7BDB_) (planL'164B_))));

(RSL.C_output "[t23] " RT_Bool.toStringSafe (fn _ => ((isWellformed'8DD3_) (timeTable1'647_, exNet'3EF_))));

(RSL.C_output "[t24] " RT_Bool.toStringSafe (fn _ => ((isWellformed'8DD3_) (timeTable2'FA7_, exNet'3EF_))));

(RSL.C_output "" RT_Bool.toStringSafe (fn _ => ((correctTramIds'67EF_) (timeTable2'FA7_))));

(RSL.C_output "" RT_Bool.toStringSafe (fn _ => ((correctPlanLists'86CB_) (timeTable2'FA7_))));

(RSL.C_output "[t25] " RT_Bool.toStringSafe (fn _ => ((isWellformed'8DD3_) (timeTable3'1264_, exNet'3EF_))));

(RSL.C_output "[t26] " RT_Bool.toStringSafe (fn _ => ((isWellformed'8DD3_) (timeTable1'647_, exNet'3EF_))));

(RSL.C_output "[t27] " RT_Bool.toStringSafe (fn _ => ((isWellformed'8DD3_) (timeTable1'647_, exNet'3EF_))));

RSL.print_error_count();
R_coverage.save_marked();
