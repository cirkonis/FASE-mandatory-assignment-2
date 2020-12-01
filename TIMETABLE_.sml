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
    
structure TIMETABLE =
    struct
        type Time_ = RT_Nat.t;
        
        type Headway_ = RT_Nat.t;
        
        type DrivingTime_ = RT_Nat.t;
        
        type Capacity_ = RT_Nat.t;
        
        type StopId_ = RT_Text.t;
        
        type Connection_ = RT_x_2.t;
        
        type Stop_ = RT_x_1.t;
        
        type Net_ = RT_x_5.t;
        
        fun remove'A7FD_ (stp'A868_, sl'A86D_, newSl'A871_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (254, 5)); if not((let
            val (x205_'0_, x206_'0_) = ((stp'A868_):RT_x_1.t)
        in
            RT_Nat.R_ge (x206_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x207_'0_, x208_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x208_'0_, RT_Int.fromLit "0")
        end) (sl'A86D_))) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x209_'0_, x210_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x210_'0_, RT_Int.fromLit "0")
        end) (newSl'A871_))))) then raise RSL.RSL_exception ("NET.rsl:252:5: Argument of remove" ^ RT_x_13.toString (stp'A868_, sl'A86D_, newSl'A871_) ^ " not in subtype") else if RT_l_3.equ (sl'A86D_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (255, 9)); newSl'A871_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (257, 9)); let
            val stp1'A9F9_ = ((RT_l_3.R_hd((sl'A86D_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'A9F9_, stp'A868_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (259, 17)); ((remove'A7FD_) (stp'A868_, RT_l_3.R_tl((sl'A86D_)), newSl'A871_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (261, 17)); ((remove'A7FD_) (stp'A868_, RT_l_3.R_tl((sl'A86D_)), RT_l_3.R_concat (newSl'A871_, [stp1'A9F9_]))))
        end));
        
        fun getStop'6C9D_ (stpid'6D09_, sl'6D10_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (102, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x118_'0_, x119_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x119_'0_, RT_Int.fromLit "0")
        end) (sl'6D10_))) then raise RSL.RSL_exception ("NET.rsl:100:5: Argument of getStop" ^ RT_x_11.toString (stpid'6D09_, sl'6D10_) ^ " not in subtype") else if RT_l_3.equ (sl'6D10_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (103, 12)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (105, 7)); let
            val stp'6E97_ = ((RT_l_3.R_hd((sl'6D10_))):RT_x_1.t); 
            val (si'6EA6_, c'6EA9_) = ((stp'6E97_):RT_x_1.t)
        in
            if RT_Text.equ (stpid'6D09_, si'6EA6_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (107, 16)); stp'6E97_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (109, 11)); ((getStop'6C9D_) (stpid'6D09_, RT_l_3.R_tl((sl'6D10_)))))
        end));
        
        fun auxAreConnected'5FB9_ (stp1'602D_, stp2'6033_, cl'6039_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (69, 5)); if not((let
            val (x66_'0_, x67_'0_) = ((stp1'602D_):RT_x_1.t)
        in
            RT_Nat.R_ge (x67_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x68_'0_, x69_'0_) = ((stp2'6033_):RT_x_1.t)
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
        end) (cl'6039_))))) then raise RSL.RSL_exception ("NET.rsl:67:5: Argument of auxAreConnected" ^ RT_x_9.toString (stp1'602D_, stp2'6033_, cl'6039_) ^ " not in subtype") else if RT_l_4.equ (cl'6039_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (70, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (72, 9)); let
            val (cs1'61B6_, cs2'61BB_, hw'61C0_, cap'61C4_, dt'61C9_) = ((RT_l_4.R_hd((cl'6039_))):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stp1'602D_, cs1'61B6_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (73, 32)); RT_x_1.equ (stp2'6033_, cs2'61BB_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (73, 47)); ((RT_x_1.equ (stp1'602D_, cs2'61BB_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (73, 62)); RT_x_1.equ (stp2'6033_, cs1'61B6_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (74, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (76, 17)); ((auxAreConnected'5FB9_) (stp1'602D_, stp2'6033_, RT_l_4.R_tl((cl'6039_)))))
        end));
        
        fun areDirectlyConnected'6595_ (siOne'660E_, siTwo'6615_, net'661C_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (84, 5)); if not(let
            val (x79_'0_, x80_'0_) = ((net'661C_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:82:5: Argument of areDirectlyConnected" ^ RT_x_10.toString (siOne'660E_, siTwo'6615_, net'661C_) ^ " not in subtype") else let
            val (sl'6662_, cl'6665_) = ((net'661C_):RT_x_5.t); 
            val stp1'6670_ = ((((getStop'6C9D_) (siOne'660E_, sl'6662_))):RT_x_1.t); 
            val stp2'668B_ = ((((getStop'6C9D_) (siTwo'6615_, sl'6662_))):RT_x_1.t)
        in
            ((auxAreConnected'5FB9_) (stp1'6670_, stp2'668B_, cl'6665_))
        end);
        
        fun findDirectConnection'B6D5_ (stp'B74E_, sl'B753_, cl'B757_, net'B75B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (292, 5)); if not((let
            val (x263_'0_, x264_'0_) = ((stp'B74E_):RT_x_1.t)
        in
            RT_Nat.R_ge (x264_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x265_'0_, x266_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x266_'0_, RT_Int.fromLit "0")
        end) (sl'B753_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'B757_))) andalso (let
            val (x276_'0_, x277_'0_) = ((net'B75B_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:290:5: Argument of findDirectConnection" ^ RT_x_15.toString (stp'B74E_, sl'B753_, cl'B757_, net'B75B_) ^ " not in subtype") else if RT_l_3.equ (sl'B753_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (293, 9)); (RT_Text.fromLit "", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (295, 9)); let
            val stp1'B8D1_ = ((RT_l_3.R_hd((sl'B753_))):RT_x_1.t); 
            val (si'B8E1_, cap'B8E5_) = ((stp'B74E_):RT_x_1.t); 
            val (si1'B8F2_, cap1'B8F7_) = ((stp1'B8D1_):RT_x_1.t)
        in
            if ((areDirectlyConnected'6595_) (si'B8E1_, si1'B8F2_, net'B75B_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (297, 17)); stp1'B8D1_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (299, 17)); ((findDirectConnection'B6D5_) (stp'B74E_, RT_l_3.R_tl((sl'B753_)), cl'B757_, net'B75B_)))
        end));
        
        fun directStopExists'B2ED_ (stp'B362_, sl'B367_, cl'B36B_, net'B36F_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (282, 5)); if not((let
            val (x237_'0_, x238_'0_) = ((stp'B362_):RT_x_1.t)
        in
            RT_Nat.R_ge (x238_'0_, RT_Int.fromLit "0")
        end) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x239_'0_, x240_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x240_'0_, RT_Int.fromLit "0")
        end) (sl'B367_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'B36B_))) andalso (let
            val (x250_'0_, x251_'0_) = ((net'B36F_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:280:5: Argument of directStopExists" ^ RT_x_15.toString (stp'B362_, sl'B367_, cl'B36B_, net'B36F_) ^ " not in subtype") else let
            val check'B3B9_ = ((((findDirectConnection'B6D5_) (stp'B362_, sl'B367_, cl'B36B_, net'B36F_))):RT_x_1.t)
        in
            if RT_x_1.equ (check'B3B9_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (284, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (286, 13)); true)
        end);
        
        fun checkForNets'ADD9_ (sl'AE4A_, stpNet'AE4E_, cl'AE56_, net'AE5A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (269, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x211_'0_, x212_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x212_'0_, RT_Int.fromLit "0")
        end) (sl'AE4A_))) andalso (((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x213_'0_, x214_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x214_'0_, RT_Int.fromLit "0")
        end) (stpNet'AE4E_))) andalso (((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'AE56_))) andalso (let
            val (x224_'0_, x225_'0_) = ((net'AE5A_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:267:5: Argument of checkForNets" ^ RT_x_14.toString (sl'AE4A_, stpNet'AE4E_, cl'AE56_, net'AE5A_) ^ " not in subtype") else if RT_l_3.equ (sl'AE4A_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (270, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (272, 9)); if ((directStopExists'B2ED_) (RT_l_3.R_hd((sl'AE4A_)), stpNet'AE4E_, cl'AE56_, net'AE5A_)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (273, 13)); ((checkForNets'ADD9_) (RT_l_3.R_tl((sl'AE4A_)), RT_l_3.R_concat (stpNet'AE4E_, [RT_l_3.R_hd((sl'AE4A_))]), cl'AE56_, net'AE5A_))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (275, 13)); false)));
        
        fun stopsConnected'A1BD_ (sl'A230_, cl'A234_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (238, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x194_'0_, x195_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x195_'0_, RT_Int.fromLit "0")
        end) (sl'A230_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'A234_)))) then raise RSL.RSL_exception ("NET.rsl:236:5: Argument of stopsConnected" ^ RT_x_5.toString (sl'A230_, cl'A234_) ^ " not in subtype") else if RT_l_3.equ (sl'A230_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (239, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (241, 9)); let
            val stp'A3B9_ = ((RT_l_3.R_hd((sl'A230_))):RT_x_1.t); 
            val stp1'A3C7_ = ((((findDirectConnection'B6D5_) (stp'A3B9_, sl'A230_, cl'A234_, (sl'A230_, cl'A234_)))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'A3C7_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (243, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (245, 17)); let
                val stpNet'A551_ = ((RT_l_3.R_concat (([]:RT_l_3.t), [stp'A3B9_, stp1'A3C7_])):RT_l_3.t)
            in
                ((checkForNets'ADD9_) (((remove'A7FD_) (stp1'A3C7_, RT_l_3.R_tl((sl'A230_)), ([]:RT_l_3.t))), stpNet'A551_, cl'A234_, (sl'A230_, cl'A234_)))
            end)
        end));
        
        fun correctConnectionDrivingTime'9C45_ cl'9CC6_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (224, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'9CC6_))) then raise RSL.RSL_exception ("NET.rsl:222:5: Argument of correctConnectionDrivingTime" ^ "(" ^ RT_l_4.toString cl'9CC6_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'9CC6_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (225, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (227, 9)); let
            val (stp1'9E42_, stp2'9E48_, hw'9E4E_, cap'9E52_, dt'9E57_) = ((RT_l_4.R_hd((cl'9CC6_))):RT_x_2.t)
        in
            if RT_Nat.R_le (dt'9E57_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (229, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (231, 17)); ((correctConnectionDrivingTime'9C45_) (RT_l_4.R_tl((cl'9CC6_)))))
        end));
        
        fun capacity'7215_ (si'7282_, net'7286_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (116, 5)); if not(let
            val (x120_'0_, x121_'0_) = ((net'7286_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:114:5: Argument of capacity" ^ RT_x_8.toString (si'7282_, net'7286_) ^ " not in subtype") else let
            val (stoplist'72E2_, cl'72EC_) = ((net'7286_):RT_x_5.t); 
            val (x'72F8_, cap'72FB_) = ((((getStop'6C9D_) (si'7282_, stoplist'72E2_))):RT_x_1.t)
        in
            cap'72FB_
        end);
        
        fun correctCapacity'74D1_ net'7545_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (123, 5)); if not(let
            val (x133_'0_, x134_'0_) = ((net'7545_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:121:5: Argument of correctCapacity" ^ "(" ^ RT_x_5.toString net'7545_ ^ ")" ^ " not in subtype") else let
            val (sl'759E_, cl'75A1_) = ((net'7545_):RT_x_5.t)
        in
            if RT_l_3.equ (sl'759E_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (125, 13)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (127, 13)); let
                val h'7735_ = ((RT_l_3.R_hd((sl'759E_))):RT_x_1.t); 
                val (si'7742_, cap'7746_) = ((h'7735_):RT_x_1.t)
            in
                if RT_Nat.R_le (((capacity'7215_) (si'7742_, net'7545_)), RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (129, 21)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (131, 21)); ((correctCapacity'74D1_) ((RT_l_3.R_tl((sl'759E_)), cl'75A1_))))
            end)
        end);
        
        fun stopExists'8089_ (stp'80F8_, sl'80FD_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (153, 5)); if not((let
            val (x157_'0_, x158_'0_) = ((stp'80F8_):RT_x_1.t)
        in
            RT_Nat.R_ge (x158_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x159_'0_, x160_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x160_'0_, RT_Int.fromLit "0")
        end) (sl'80FD_)))) then raise RSL.RSL_exception ("NET.rsl:151:5: Argument of stopExists" ^ RT_x_12.toString (stp'80F8_, sl'80FD_) ^ " not in subtype") else if RT_l_3.equ (sl'80FD_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (154, 9)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (156, 9)); let
            val stp1'8285_ = ((RT_l_3.R_hd((sl'80FD_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp1'8285_, stp'80F8_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (158, 17)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (160, 17)); ((stopExists'8089_) (stp'80F8_, RT_l_3.R_tl((sl'80FD_)))))
        end));
        
        fun checkForRealStops'7B11_ (sl'7B87_, cl'7B8B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (139, 5)); if not(((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x146_'0_, x147_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x147_'0_, RT_Int.fromLit "0")
        end) (sl'7B87_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'7B8B_)))) then raise RSL.RSL_exception ("NET.rsl:137:5: Argument of checkForRealStops" ^ RT_x_5.toString (sl'7B87_, cl'7B8B_) ^ " not in subtype") else if RT_l_4.equ (cl'7B8B_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (140, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (142, 9)); let
            val (stp1'7D0E_, stp2'7D14_, hw'7D1A_, cap'7D1E_, dt'7D23_) = ((RT_l_4.R_hd((cl'7B8B_))):RT_x_2.t)
        in
            if (((stopExists'8089_) (stp1'7D0E_, sl'7B87_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (143, 39)); ((stopExists'8089_) (stp2'7D14_, sl'7B87_))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (144, 17)); ((checkForRealStops'7B11_) (sl'7B87_, RT_l_4.R_tl((cl'7B8B_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (146, 17)); false)
        end));
        
        fun correctStopsAux'872D_ (s'87A1_, sl'87A4_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (170, 5)); if not((let
            val (x161_'0_, x162_'0_) = ((s'87A1_):RT_x_1.t)
        in
            RT_Nat.R_ge (x162_'0_, RT_Int.fromLit "0")
        end) andalso ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x163_'0_, x164_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x164_'0_, RT_Int.fromLit "0")
        end) (sl'87A4_)))) then raise RSL.RSL_exception ("NET.rsl:168:5: Argument of correctStopsAux" ^ RT_x_12.toString (s'87A1_, sl'87A4_) ^ " not in subtype") else if RT_l_3.equ (sl'87A4_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (171, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (173, 9)); let
            val (si'892A_, cap'892E_) = ((s'87A1_):RT_x_1.t); 
            val (siNew'8939_, capNew'8940_) = ((RT_l_3.R_hd((sl'87A4_))):RT_x_1.t)
        in
            if RT_Text.equ (si'892A_, siNew'8939_) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (175, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (177, 17)); ((correctStopsAux'872D_) (s'87A1_, RT_l_3.R_tl((sl'87A4_)))))
        end));
        
        fun correctStops'8CA5_ sl'8D16_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (184, 5)); if not((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
            val (x165_'0_, x166_'0_) = ((x_'0_):RT_x_1.t)
        in
            RT_Nat.R_ge (x166_'0_, RT_Int.fromLit "0")
        end) (sl'8D16_))) then raise RSL.RSL_exception ("NET.rsl:182:5: Argument of correctStops" ^ "(" ^ RT_l_3.toString sl'8D16_ ^ ")" ^ " not in subtype") else if RT_l_3.equ (sl'8D16_, ([]:RT_l_3.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (185, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (187, 9)); if RT_Bool.equ (((correctStopsAux'872D_) (RT_l_3.R_hd((sl'8D16_)), RT_l_3.R_tl((sl'8D16_)))), true) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (188, 13)); ((correctStops'8CA5_) (RT_l_3.R_tl((sl'8D16_))))) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (190, 13)); false)));
        
        fun correctConnectionCapacity'9155_ cl'91D3_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (196, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'91D3_))) then raise RSL.RSL_exception ("NET.rsl:194:5: Argument of correctConnectionCapacity" ^ "(" ^ RT_l_4.toString cl'91D3_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'91D3_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (197, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (199, 9)); let
            val (stp1'9352_, stp2'9358_, hw'935E_, cap'9362_, dt'9367_) = ((RT_l_4.R_hd((cl'91D3_))):RT_x_2.t)
        in
            if RT_Nat.R_le (cap'9362_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (201, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (203, 17)); ((correctConnectionCapacity'9155_) (RT_l_4.R_tl((cl'91D3_)))))
        end));
        
        fun correctConnectionHeadway'96CD_ cl'974A_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (210, 5)); if not((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
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
        end) (cl'974A_))) then raise RSL.RSL_exception ("NET.rsl:208:5: Argument of correctConnectionHeadway" ^ "(" ^ RT_l_4.toString cl'974A_ ^ ")" ^ " not in subtype") else if RT_l_4.equ (cl'974A_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (211, 9)); true) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (213, 9)); let
            val (stp1'98CA_, stp2'98D0_, hw'98D6_, cap'98DA_, dt'98DF_) = ((RT_l_4.R_hd((cl'974A_))):RT_x_2.t)
        in
            if RT_Nat.R_le (hw'98D6_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (215, 17)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (217, 17)); ((correctConnectionHeadway'96CD_) (RT_l_4.R_tl((cl'974A_)))))
        end));
        
        fun isWellformed'BDDD_ net'BE4E_ = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (310, 5)); if not(let
            val (x289_'0_, x290_'0_) = ((net'BE4E_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:308:5: Argument of isWellformed" ^ "(" ^ RT_x_5.toString net'BE4E_ ^ ")" ^ " not in subtype") else let
            val (sl'BEAA_, cl'BEAD_) = ((net'BE4E_):RT_x_5.t)
        in
            (((correctCapacity'74D1_) (net'BE4E_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (312, 11)); (((correctStops'8CA5_) (sl'BEAA_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (313, 11)); (((correctConnectionCapacity'9155_) (cl'BEAD_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (314, 11)); (((correctConnectionDrivingTime'9C45_) (cl'BEAD_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (315, 11)); (((correctConnectionHeadway'96CD_) (cl'BEAD_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (316, 11)); (((stopsConnected'A1BD_) (sl'BEAA_, cl'BEAD_))) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (317, 11)); ((checkForRealStops'7B11_) (sl'BEAA_, cl'BEAD_))))))))
        end);
        
        fun getConnection'57E9_ (stpOne'585B_, stpTwo'5863_, cl'586B_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (49, 5)); if not((let
            val (x40_'0_, x41_'0_) = ((stpOne'585B_):RT_x_1.t)
        in
            RT_Nat.R_ge (x41_'0_, RT_Int.fromLit "0")
        end) andalso ((let
            val (x42_'0_, x43_'0_) = ((stpTwo'5863_):RT_x_1.t)
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
        end) (cl'586B_))))) then raise RSL.RSL_exception ("NET.rsl:47:5: Argument of getConnection" ^ RT_x_9.toString (stpOne'585B_, stpTwo'5863_, cl'586B_) ^ " not in subtype") else if RT_l_4.equ (cl'586B_, ([]:RT_l_4.t)) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (50, 9)); ((RT_Text.fromLit "", RT_Int.fromLit "0"), (RT_Text.fromLit "", RT_Int.fromLit "0"), RT_Int.fromLit "0", RT_Int.fromLit "0", RT_Int.fromLit "0")) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (52, 9)); let
            val con'59E5_ = ((RT_l_4.R_hd((cl'586B_))):RT_x_2.t); 
            val (s1'59F4_, s2'59F8_, hw'59FC_, cap'5A00_, dt'5A05_) = ((con'59E5_):RT_x_2.t)
        in
            if ((((RT_x_1.equ (stpOne'585B_, s1'59F4_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (53, 33)); RT_x_1.equ (stpTwo'5863_, s2'59F8_)))) orelse (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (53, 47)); ((RT_x_1.equ (stpOne'585B_, s2'59F8_)) andalso (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (53, 63)); RT_x_1.equ (stpTwo'5863_, s1'59F4_))))) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (54, 17)); con'59E5_) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (56, 17)); ((getConnection'57E9_) (stpOne'585B_, stpTwo'5863_, RT_l_4.R_tl((cl'586B_)))))
        end));
        
        fun capacity'5D61_ (siOne'5DCE_, siTwo'5DD5_, net'5DDC_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (63, 5)); if not(let
            val (x53_'0_, x54_'0_) = ((net'5DDC_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:61:5: Argument of capacity" ^ RT_x_10.toString (siOne'5DCE_, siTwo'5DD5_, net'5DDC_) ^ " not in subtype") else let
            val (sl'5E2D_, cl'5E30_) = ((net'5DDC_):RT_x_5.t); 
            val stpOne'5E3B_ = ((((getStop'6C9D_) (siOne'5DCE_, sl'5E2D_))):RT_x_1.t); 
            val stpTwo'5E57_ = ((((getStop'6C9D_) (siTwo'5DD5_, sl'5E2D_))):RT_x_1.t); 
            val (csOne'5E75_, csTwo'5E7C_, hw'5E83_, cap'5E87_, dt'5E8C_) = ((((getConnection'57E9_) (stpOne'5E3B_, stpTwo'5E57_, cl'5E30_))):RT_x_2.t)
        in
            cap'5E87_
        end);
        
        fun isIn'5401_ (si'546A_, net'546E_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (39, 5)); if not(let
            val (x27_'0_, x28_'0_) = ((net'546E_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:37:5: Argument of isIn" ^ RT_x_8.toString (si'546A_, net'546E_) ^ " not in subtype") else let
            val (sl'54CD_, cl'54D0_) = ((net'546E_):RT_x_5.t); 
            val stp'54DB_ = ((((getStop'6C9D_) (si'546A_, sl'54CD_))):RT_x_1.t)
        in
            if RT_x_1.equ (stp'54DB_, (RT_Text.fromLit "", RT_Int.fromLit "0")) then (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (41, 13)); false) else (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (43, 13)); true)
        end);
        
        fun minHeadway'67ED_ (siOne'685C_, siTwo'6863_, net'686A_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (90, 5)); if not(let
            val (x92_'0_, x93_'0_) = ((net'686A_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:88:5: Argument of minHeadway" ^ RT_x_10.toString (siOne'685C_, siTwo'6863_, net'686A_) ^ " not in subtype") else let
            val (sl'68B9_, cl'68BC_) = ((net'686A_):RT_x_5.t); 
            val stpOne'68C7_ = ((((getStop'6C9D_) (siOne'685C_, sl'68B9_))):RT_x_1.t); 
            val stpTwo'68E3_ = ((((getStop'6C9D_) (siTwo'6863_, sl'68B9_))):RT_x_1.t); 
            val (csOne'6901_, csTwo'6908_, hw'690F_, cap'6913_, dt'6918_) = ((((getConnection'57E9_) (stpOne'68C7_, stpTwo'68E3_, cl'68BC_))):RT_x_2.t)
        in
            hw'690F_
        end);
        
        fun addConnection'5019_ (startid'508B_, stpid'5094_, hw'509B_, c'509F_, dt'50A2_, net'50A6_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (29, 5)); if not((RT_Nat.R_ge (hw'509B_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (c'509F_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (dt'50A2_, RT_Int.fromLit "0")) andalso (let
            val (x14_'0_, x15_'0_) = ((net'50A6_):RT_x_5.t)
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
        end)))) then raise RSL.RSL_exception ("NET.rsl:27:5: Argument of addConnection" ^ RT_x_7.toString (startid'508B_, stpid'5094_, hw'509B_, c'509F_, dt'50A2_, net'50A6_) ^ " not in subtype") else let
            val (sl'50E6_, cl'50E9_) = ((net'50A6_):RT_x_5.t); 
            val stpidOne'50F4_ = ((((getStop'6C9D_) (startid'508B_, sl'50E6_))):RT_x_1.t); 
            val stpidTwo'5115_ = ((((getStop'6C9D_) (stpid'5094_, sl'50E6_))):RT_x_1.t)
        in
            (sl'50E6_, RT_l_4.R_concat (cl'50E9_, [(stpidOne'50F4_, stpidTwo'5115_, hw'509B_, c'509F_, dt'50A2_)]))
        end);
        
        fun minDrivingTime'6A45_ (siOne'6AB8_, siTwo'6ABF_, net'6AC6_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (96, 5)); if not(let
            val (x105_'0_, x106_'0_) = ((net'6AC6_):RT_x_5.t)
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
        end) then raise RSL.RSL_exception ("NET.rsl:94:5: Argument of minDrivingTime" ^ RT_x_10.toString (siOne'6AB8_, siTwo'6ABF_, net'6AC6_) ^ " not in subtype") else let
            val (sl'6B11_, cl'6B14_) = ((net'6AC6_):RT_x_5.t); 
            val stpOne'6B1F_ = ((((getStop'6C9D_) (siOne'6AB8_, sl'6B11_))):RT_x_1.t); 
            val stpTwo'6B3B_ = ((((getStop'6C9D_) (siTwo'6ABF_, sl'6B11_))):RT_x_1.t); 
            val (csOne'6B59_, csTwo'6B60_, hw'6B67_, cap'6B6B_, dt'6B70_) = ((((getConnection'57E9_) (stpOne'6B1F_, stpTwo'6B3B_, cl'6B14_))):RT_x_2.t)
        in
            dt'6B70_
        end);
        
        fun insertStop'4C95_ (stopid'4D04_, cap'4D0C_, net'4D11_) = (R_coverage.cancel(RT_Text.fromLit "NET.rsl", (20, 9)); if not((RT_Nat.R_ge (cap'4D0C_, RT_Int.fromLit "0")) andalso (let
            val (x1_'0_, x2_'0_) = ((net'4D11_):RT_x_5.t)
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
        end)) then raise RSL.RSL_exception ("NET.rsl:18:5: Argument of insertStop" ^ RT_x_6.toString (stopid'4D04_, cap'4D0C_, net'4D11_) ^ " not in subtype") else let
            val (sl'4D66_, cl'4D6A_) = ((net'4D11_):RT_x_5.t); 
            val h'4D75_ = (((RT_l_3.R_concat (sl'4D66_, [(stopid'4D04_, cap'4D0C_)]))):RT_l_3.t)
        in
            (h'4D75_, cl'4D6A_)
        end);
        
        val empty'4BCD_ = (([]:RT_l_3.t), ([]:RT_l_4.t));
        
        type TimeTable_ = RT_l_19.t;
        
        type Plan_ = RT_x_16.t;
        
        type TramId_ = RT_Text.t;
        
        type ArrivalTime_ = RT_Nat.t;
        
        type DepartureTime_ = RT_Nat.t;
        
        fun correctArrivalTime'3D5B_ planList'3DD2_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (159, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x352_'0_, x353_'0_, x354_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x353_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x354_'0_, RT_Int.fromLit "0"))
        end) (planList'3DD2_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:157:7: Argument of correctArrivalTime" ^ "(" ^ RT_l_17.toString planList'3DD2_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'3DD2_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (159, 33)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (161, 11)); let
            val (stopId'3EF4_, aTime'3EFC_, dTime'3F03_) = ((RT_l_17.R_hd((planList'3DD2_))):RT_x_16.t)
        in
            if RT_Nat.R_le (aTime'3EFC_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (162, 32)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (163, 18)); ((correctArrivalTime'3D5B_) (RT_l_17.R_tl((planList'3DD2_)))))
        end));
        
        fun correctTramIdsAux'24BF_ (head'2535_, timeTable'253B_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (96, 9)); if not((let
            val (x325_'0_, x326_'0_) = ((head'2535_):RT_x_18.t)
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
        end) (timeTable'253B_)))) then raise RSL.RSL_exception ("TIMETABLE.rsl:94:7: Argument of correctTramIdsAux" ^ RT_x_23.toString (head'2535_, timeTable'253B_) ^ " not in subtype") else if RT_l_19.equ (timeTable'253B_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (96, 34)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (98, 11)); let
            val (tramId'26BA_, planList'26C2_) = ((head'2535_):RT_x_18.t); 
            val (tid'271E_, pList'2723_) = ((RT_l_19.R_hd((timeTable'253B_))):RT_x_18.t)
        in
            if RT_Text.equ (tramId'26BA_, tid'271E_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (102, 34)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (103, 18)); ((correctTramIdsAux'24BF_) (head'2535_, RT_l_19.R_tl((timeTable'253B_)))))
        end));
        
        fun correctTramIds'2A37_ timeTable'2AAA_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (110, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x335_'0_, x336_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x337_'0_, x338_'0_, x339_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x338_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x339_'0_, RT_Int.fromLit "0"))
            end) (x336_'0_))
        end) (timeTable'2AAA_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:108:7: Argument of correctTramIds" ^ "(" ^ RT_l_19.toString timeTable'2AAA_ ^ ")" ^ " not in subtype") else if RT_l_19.equ (timeTable'2AAA_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (110, 34)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (112, 11)); if RT_Bool.equ (((correctTramIdsAux'24BF_) (RT_l_19.R_hd((timeTable'2AAA_)), RT_l_19.R_tl((timeTable'2AAA_)))), true) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (115, 16)); ((correctTramIds'2A37_) (RT_l_19.R_tl((timeTable'2AAA_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (116, 16)); false)));
        
        fun correctStopPlanAux'2EE7_ (head'2F5E_, planList'2F64_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (122, 9)); if not((let
            val (x340_'0_, x341_'0_, x342_'0_) = ((head'2F5E_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x341_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x342_'0_, RT_Int.fromLit "0"))
        end) andalso ((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x343_'0_, x344_'0_, x345_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x344_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x345_'0_, RT_Int.fromLit "0"))
        end) (planList'2F64_)))) then raise RSL.RSL_exception ("TIMETABLE.rsl:120:7: Argument of correctStopPlanAux" ^ RT_x_24.toString (head'2F5E_, planList'2F64_) ^ " not in subtype") else if RT_l_17.equ (planList'2F64_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (122, 33)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (124, 11)); let
            val (stopId'30E2_, aTime'30EA_, dTime'30F1_) = ((head'2F5E_):RT_x_16.t); 
            val (sid'3146_, at'314B_, dt'314F_) = ((RT_l_17.R_hd((planList'2F64_))):RT_x_16.t)
        in
            if RT_Text.equ (stopId'30E2_, sid'3146_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (128, 34)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (129, 18)); ((correctStopPlanAux'2EE7_) (head'2F5E_, RT_l_17.R_tl((planList'2F64_)))))
        end));
        
        fun correctStopPlan'345F_ planList'34D3_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (136, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x346_'0_, x347_'0_, x348_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x347_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x348_'0_, RT_Int.fromLit "0"))
        end) (planList'34D3_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:134:7: Argument of correctStopPlan" ^ "(" ^ RT_l_17.toString planList'34D3_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'34D3_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (136, 33)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (138, 11)); if RT_Bool.equ (((correctStopPlanAux'2EE7_) (RT_l_17.R_hd((planList'34D3_)), RT_l_17.R_tl((planList'34D3_)))), true) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (141, 16)); ((correctStopPlan'345F_) (RT_l_17.R_tl((planList'34D3_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (142, 16)); false)));
        
        fun correctDepartureTime'390F_ planList'3988_ = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (148, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x349_'0_, x350_'0_, x351_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x350_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x351_'0_, RT_Int.fromLit "0"))
        end) (planList'3988_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:146:7: Argument of correctDepartureTime" ^ "(" ^ RT_l_17.toString planList'3988_ ^ ")" ^ " not in subtype") else if RT_l_17.equ (planList'3988_, ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (148, 33)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (150, 11)); let
            val (stopId'3AA8_, aTime'3AB0_, dTime'3AB7_) = ((RT_l_17.R_hd((planList'3988_))):RT_x_16.t)
        in
            if RT_Nat.R_le (dTime'3AB7_, RT_Int.fromLit "0") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (151, 32)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (152, 18)); ((correctDepartureTime'390F_) (RT_l_17.R_tl((planList'3988_)))))
        end));
        
        fun isWellformed'420B_ (timeTable'427C_, net'4287_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (171, 9)); if not(((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x355_'0_, x356_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x357_'0_, x358_'0_, x359_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x358_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x359_'0_, RT_Int.fromLit "0"))
            end) (x356_'0_))
        end) (timeTable'427C_))) andalso (let
            val (x360_'0_, x361_'0_) = ((net'4287_):RT_x_5.t)
        in
            ((RT_l_3.R_all (fn (x_'0_:RT_x_1.t) => let
                val (x362_'0_, x363_'0_) = ((x_'0_):RT_x_1.t)
            in
                RT_Nat.R_ge (x363_'0_, RT_Int.fromLit "0")
            end) (x360_'0_))) andalso ((RT_l_4.R_all (fn (x_'0_:RT_x_2.t) => let
                val (x364_'0_, x365_'0_, x366_'0_, x367_'0_, x368_'0_) = ((x_'0_):RT_x_2.t)
            in
                (let
                    val (x369_'0_, x370_'0_) = ((x364_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x370_'0_, RT_Int.fromLit "0")
                end) andalso ((let
                    val (x371_'0_, x372_'0_) = ((x365_'0_):RT_x_1.t)
                in
                    RT_Nat.R_ge (x372_'0_, RT_Int.fromLit "0")
                end) andalso ((RT_Nat.R_ge (x366_'0_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (x367_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x368_'0_, RT_Int.fromLit "0")))))
            end) (x361_'0_)))
        end)) then raise RSL.RSL_exception ("TIMETABLE.rsl:169:7: Argument of isWellformed" ^ RT_x_25.toString (timeTable'427C_, net'4287_) ^ " not in subtype") else let
            val (tid'42DA_, planList'42DF_) = ((RT_l_19.R_hd((timeTable'427C_))):RT_x_18.t)
        in
            (((correctTramIds'2A37_) (timeTable'427C_))) andalso (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (173, 11)); (((correctStopPlan'345F_) (planList'42DF_))) andalso (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (174, 11)); (((correctArrivalTime'3D5B_) (planList'42DF_))) andalso (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (175, 11)); ((correctDepartureTime'390F_) (planList'42DF_)))))
        end);
        
        fun findStop'200F_ (stopId'207C_, planList'2084_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (84, 9)); if not((RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
            val (x322_'0_, x323_'0_, x324_'0_) = ((x_'0_):RT_x_16.t)
        in
            (RT_Nat.R_ge (x323_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x324_'0_, RT_Int.fromLit "0"))
        end) (planList'2084_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:82:7: Argument of findStop" ^ RT_x_18.toString (stopId'207C_, planList'2084_) ^ " not in subtype") else let
            val (stopid'20DE_, aTime'20E6_, dTime'20ED_) = ((RT_l_17.R_hd((planList'2084_))):RT_x_16.t)
        in
            if RT_Text.equ (stopid'20DE_, RT_Text.fromLit "") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (85, 31)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (87, 13)); if RT_Text.equ (stopid'20DE_, stopId'207C_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (87, 37)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (88, 18)); if (RSL.C_not RT_l_17.equ) (RT_l_17.R_tl((planList'2084_)), ([]:RT_l_17.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (88, 47)); ((findStop'200F_) (stopId'207C_, RT_l_17.R_tl((planList'2084_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (89, 25)); false)))
        end);
        
        val empty'5E3_ = let val z__'5F5_ = ([]:RT_l_19.t) in if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x373_'0_, x374_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x375_'0_, x376_'0_, x377_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x376_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x377_'0_, RT_Int.fromLit "0"))
            end) (x374_'0_))
        end) (z__'5F5_))) then (RSL.add_load_err("TIMETABLE.rsl:15:25: Value " ^ RT_l_19.toString(z__'5F5_) ^ " of empty not in subtype"); z__'5F5_) else z__'5F5_ end;
        
        fun isIn'12C7_ (tramId'1330_, timeTable'1338_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (50, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x312_'0_, x313_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x314_'0_, x315_'0_, x316_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x315_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x316_'0_, RT_Int.fromLit "0"))
            end) (x313_'0_))
        end) (timeTable'1338_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:48:7: Argument of isIn" ^ RT_x_20.toString (tramId'1330_, timeTable'1338_) ^ " not in subtype") else let
            val (tId'1396_, planList'139B_) = ((RT_l_19.R_hd((timeTable'1338_))):RT_x_18.t)
        in
            if RT_Text.equ (tId'1396_, RT_Text.fromLit "") then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (51, 28)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (53, 13)); if RT_Text.equ (tramId'1330_, tId'1396_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (53, 34)); true) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (55, 8)); if (RSL.C_not RT_l_19.equ) (RT_l_19.R_tl((timeTable'1338_)), ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (55, 38)); ((isIn'12C7_) (tramId'1330_, RT_l_19.R_tl((timeTable'1338_))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (57, 13)); false)))
        end);
        
        fun stopIsIn'1B5F_ (stopId'1BCC_, tramId'1BD4_, timeTable'1BDC_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (72, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x317_'0_, x318_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x319_'0_, x320_'0_, x321_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x320_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x321_'0_, RT_Int.fromLit "0"))
            end) (x318_'0_))
        end) (timeTable'1BDC_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:70:7: Argument of stopIsIn" ^ RT_x_22.toString (stopId'1BCC_, tramId'1BD4_, timeTable'1BDC_) ^ " not in subtype") else let
            val (tId'1C2E_, planList'1C33_) = ((RT_l_19.R_hd((timeTable'1BDC_))):RT_x_18.t)
        in
            if not (((isIn'12C7_) (tramId'1BD4_, timeTable'1BDC_))) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (73, 44)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (75, 6)); if (RSL.C_not RT_Text.equ) (tId'1C2E_, tramId'1BD4_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (76, 8)); if RT_l_19.equ (RT_l_19.R_tl((timeTable'1BDC_)), ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (76, 37)); false) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (77, 13)); ((stopIsIn'1B5F_) (stopId'1BCC_, tramId'1BD4_, RT_l_19.R_tl((timeTable'1BDC_)))))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (78, 11)); ((findStop'200F_) (stopId'1BCC_, planList'1C33_))))
        end);
        
        fun addStop'9CB_ (tramId'B5E_, stopId'B66_, arrivalTime'B6E_, departureTime'B7B_, timeTable'BC2_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (31, 9)); if not((RT_Nat.R_ge (arrivalTime'B6E_, RT_Int.fromLit "0")) andalso ((RT_Nat.R_ge (departureTime'B7B_, RT_Int.fromLit "0")) andalso ((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x307_'0_, x308_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x309_'0_, x310_'0_, x311_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x310_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x311_'0_, RT_Int.fromLit "0"))
            end) (x308_'0_))
        end) (timeTable'BC2_))))) then raise RSL.RSL_exception ("TIMETABLE.rsl:25:7: Argument of addStop" ^ RT_x_21.toString (tramId'B5E_, stopId'B66_, arrivalTime'B6E_, departureTime'B7B_, timeTable'BC2_) ^ " not in subtype") else if RT_l_19.equ (timeTable'BC2_, ([]:RT_l_19.t)) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (31, 34)); [(RT_Text.fromLit "", [(RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")])]) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (33, 11)); let
            val (tId'CF4_, planList'CF9_) = ((RT_l_19.R_hd((timeTable'BC2_))):RT_x_18.t)
        in
            if RT_Text.equ (tId'CF4_, tramId'B5E_) then (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (35, 18)); ((tramId'B5E_, planList'CF9_))::(RT_l_19.R_tl((timeTable'BC2_)))) else (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (37, 15)); ((tId'CF4_, planList'CF9_))::(((addStop'9CB_) (tramId'B5E_, stopId'B66_, arrivalTime'B6E_, departureTime'B7B_, RT_l_19.R_tl((timeTable'BC2_))))))
        end));
        
        fun addTram'773_ (tramId'7DF_, timeTable'7E7_) = (R_coverage.cancel(RT_Text.fromLit "TIMETABLE.rsl", (21, 9)); if not((RT_l_19.R_all (fn (x_'0_:RT_x_18.t) => let
            val (x302_'0_, x303_'0_) = ((x_'0_):RT_x_18.t)
        in
            (RT_l_17.R_all (fn (x_'0_:RT_x_16.t) => let
                val (x304_'0_, x305_'0_, x306_'0_) = ((x_'0_):RT_x_16.t)
            in
                (RT_Nat.R_ge (x305_'0_, RT_Int.fromLit "0")) andalso (RT_Nat.R_ge (x306_'0_, RT_Int.fromLit "0"))
            end) (x303_'0_))
        end) (timeTable'7E7_))) then raise RSL.RSL_exception ("TIMETABLE.rsl:19:7: Argument of addTram" ^ RT_x_20.toString (tramId'7DF_, timeTable'7E7_) ^ " not in subtype") else RT_l_19.R_concat (timeTable'7E7_, [(tramId'7DF_, [(RT_Text.fromLit "", RT_Int.fromLit "0", RT_Int.fromLit "0")])]));
        
    end;
    
open TIMETABLE;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (21, 9), (21, 49));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (37, 15), (41, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (35, 18), (36, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (33, 11), (43, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (31, 34), (32, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (31, 9), (45, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (77, 13), (77, 51));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (76, 37), (77, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (78, 11), (78, 38));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (76, 8), (78, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (75, 6), (79, 4));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (73, 44), (74, 7));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (72, 9), (80, 5));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (57, 13), (57, 19));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (55, 38), (57, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (55, 8), (58, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (53, 34), (54, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (53, 13), (59, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (51, 28), (52, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (50, 9), (60, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (89, 25), (89, 31));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (88, 47), (89, 23));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (88, 18), (90, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (87, 37), (88, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (87, 13), (91, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (85, 31), (86, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (84, 9), (92, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (175, 11), (176, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (174, 11), (176, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (173, 11), (176, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (171, 9), (177, 5));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (152, 18), (153, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (151, 32), (152, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (150, 11), (155, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (148, 33), (149, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (148, 9), (155, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (142, 16), (143, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (141, 16), (142, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (138, 11), (144, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (136, 33), (137, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (136, 9), (144, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (129, 18), (130, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (128, 34), (129, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (124, 11), (132, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (122, 33), (123, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (122, 9), (132, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (116, 16), (117, 11));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (115, 16), (116, 14));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (112, 11), (118, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (110, 34), (111, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (110, 9), (118, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (103, 18), (104, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (102, 34), (103, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (98, 11), (106, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (96, 34), (97, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (96, 9), (106, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (163, 18), (164, 13));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (162, 32), (163, 16));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (161, 11), (166, 9));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (159, 33), (160, 12));
R_coverage.mark(RT_Text.fromLit "TIMETABLE.rsl", (159, 9), (168, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (20, 9), (22, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (96, 5), (98, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (29, 5), (35, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (90, 5), (92, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (43, 13), (44, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (41, 13), (42, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (39, 5), (45, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (63, 5), (65, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (53, 63), (53, 74));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (53, 33), (53, 44));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (53, 47), (53, 75));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (56, 17), (57, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (54, 17), (55, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (52, 9), (59, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (50, 9), (51, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (49, 5), (59, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (317, 11), (318, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (316, 11), (318, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (315, 11), (318, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (314, 11), (318, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (313, 11), (318, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (312, 11), (318, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (310, 5), (321, 3));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (217, 17), (218, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (215, 17), (216, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (213, 9), (220, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (211, 9), (212, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (210, 5), (220, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (203, 17), (204, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (201, 17), (202, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (199, 9), (206, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (197, 9), (198, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (196, 5), (206, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (190, 13), (191, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (188, 13), (189, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (187, 9), (192, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (185, 9), (186, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (184, 5), (192, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (177, 17), (178, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (175, 17), (176, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (173, 9), (180, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (171, 9), (172, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (170, 5), (180, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (143, 39), (143, 62));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (146, 17), (147, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (144, 17), (145, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (142, 9), (149, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (140, 9), (141, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (139, 5), (149, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (160, 17), (161, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (158, 17), (159, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (156, 9), (163, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (154, 9), (155, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (153, 5), (163, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (131, 21), (132, 17));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (129, 21), (130, 20));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (127, 13), (134, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (125, 13), (126, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (123, 5), (135, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (116, 5), (118, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (231, 17), (232, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (229, 17), (230, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (227, 9), (234, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (225, 9), (226, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (224, 5), (234, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (245, 17), (248, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (243, 17), (244, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (241, 9), (250, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (239, 9), (240, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (238, 5), (250, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (275, 13), (276, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (273, 13), (274, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (272, 9), (277, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (270, 9), (271, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (269, 5), (277, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (286, 13), (287, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (284, 13), (285, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (282, 5), (288, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (299, 17), (300, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (297, 17), (298, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (295, 9), (302, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (293, 9), (294, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (292, 5), (306, 7));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (84, 5), (86, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (73, 62), (73, 72));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (73, 32), (73, 42));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (73, 47), (73, 73));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (76, 17), (77, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (74, 17), (75, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (72, 9), (79, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (70, 9), (71, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (69, 5), (79, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (109, 11), (110, 9));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (107, 16), (108, 12));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (105, 7), (112, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (103, 12), (104, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (102, 5), (112, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (261, 17), (262, 13));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (259, 17), (260, 16));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (257, 9), (264, 5));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (255, 9), (256, 8));
R_coverage.mark(RT_Text.fromLit "NET.rsl", (254, 5), (264, 8)));
RSL.print_error_count();
R_coverage.save_marked();
