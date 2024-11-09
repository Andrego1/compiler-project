{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,363) ([0,0,2,0,0,0,4,0,0,0,16,0,0,0,0,0,0,1024,0,0,0,4096,0,0,0,16384,0,0,0,11776,3082,512,44,0,2,0,0,47104,12328,2048,176,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65520,1,0,0,0,0,0,0,0,0,0,0,0,8160,0,0,0,0,0,0,0,0,0,2944,0,128,3,4096,0,0,0,8192,0,0,0,1024,0,0,0,2048,0,0,0,28672,1,4096,96,0,0,0,0,0,0,0,0,0,8,0,0,0,31,0,3585,0,0,0,0,0,0,0,24,0,0,0,64,1,0,0,128,2,736,0,49184,0,1472,0,32832,1,4096,64512,127,0,0,0,0,0,0,0,0,0,23552,0,1024,24,47104,0,2048,48,28672,1,4096,96,57344,2,8192,192,49152,5,16384,384,32768,11,32768,768,0,23,0,1537,0,46,0,3074,0,92,0,6148,0,184,0,12296,0,368,0,24592,0,736,0,49184,0,1472,0,32832,1,2944,0,128,3,5888,0,256,6,11776,0,512,12,23552,0,1024,24,47104,0,2048,48,28672,1,4096,96,0,0,0,0,0,0,0,0,0,0,16380,0,0,0,16376,0,0,0,8176,0,0,0,16352,0,0,0,1984,0,0,0,3968,0,0,0,7936,0,0,0,15872,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,3,0,0,0,7,0,0,32768,4095,0,0,0,8191,0,0,0,16382,0,0,0,32764,0,0,0,65528,0,0,0,65520,1,0,0,0,0,0,256,65472,7,0,512,65408,15,0,992,0,49184,1,0,30,0,0,3968,0,128,7,0,120,0,0,0,0,0,0,32768,0,0,0,0,49152,2047,0,0,0,0,0,0,0,0,0,0,4,0,0,0,16,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,32768,0,0,0,0,1,0,0,47104,12328,2048,176,28672,24657,4096,352,57344,3,8192,448,49152,7,16384,896,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,1024,0,0,0,8192,0,0,0,0,0,0,0,4096,0,0,0,35712,770,128,11,32768,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Fun","Commands","Command","Readln","Print","If","While","Type","InitExp","Decl","Assign","Expr","PostIncDecExp","Atomic","Sexp","id","num","real","str","'('","')'","'{'","'}'","if","else","while","int","float","boolean","string","fun","main","val","var","'+'","'-'","'*'","'/'","'%'","'>'","\">=\"","'<'","\"<=\"","\"==\"","\"!=\"","\"&&\"","\"||\"","'!'","\"++\"","\"--\"","'='","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","true","false","readln","print","':'","%eof"]
        bit_start = st * 65
        bit_end = (st + 1) * 65
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..64]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (34) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyReduce_2

action_1 (34) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (35) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (65) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (23) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (24) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (25) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (19) = happyShift action_18
action_7 (20) = happyShift action_19
action_7 (21) = happyShift action_20
action_7 (23) = happyShift action_21
action_7 (27) = happyShift action_22
action_7 (29) = happyShift action_23
action_7 (36) = happyShift action_24
action_7 (37) = happyShift action_25
action_7 (51) = happyShift action_26
action_7 (60) = happyShift action_27
action_7 (61) = happyShift action_28
action_7 (63) = happyShift action_29
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (8) = happyGoto action_10
action_7 (9) = happyGoto action_11
action_7 (10) = happyGoto action_12
action_7 (13) = happyGoto action_13
action_7 (14) = happyGoto action_14
action_7 (15) = happyGoto action_15
action_7 (16) = happyGoto action_16
action_7 (17) = happyGoto action_17
action_7 _ = happyReduce_4

action_8 (26) = happyShift action_60
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (19) = happyShift action_18
action_9 (20) = happyShift action_19
action_9 (21) = happyShift action_20
action_9 (23) = happyShift action_21
action_9 (27) = happyShift action_22
action_9 (29) = happyShift action_23
action_9 (36) = happyShift action_24
action_9 (37) = happyShift action_25
action_9 (51) = happyShift action_26
action_9 (60) = happyShift action_27
action_9 (61) = happyShift action_28
action_9 (63) = happyShift action_29
action_9 (5) = happyGoto action_59
action_9 (6) = happyGoto action_9
action_9 (8) = happyGoto action_10
action_9 (9) = happyGoto action_11
action_9 (10) = happyGoto action_12
action_9 (13) = happyGoto action_13
action_9 (14) = happyGoto action_14
action_9 (15) = happyGoto action_15
action_9 (16) = happyGoto action_16
action_9 (17) = happyGoto action_17
action_9 _ = happyReduce_4

action_10 _ = happyReduce_10

action_11 _ = happyReduce_8

action_12 _ = happyReduce_9

action_13 _ = happyReduce_5

action_14 _ = happyReduce_6

action_15 (38) = happyShift action_46
action_15 (39) = happyShift action_47
action_15 (40) = happyShift action_48
action_15 (41) = happyShift action_49
action_15 (42) = happyShift action_50
action_15 (43) = happyShift action_51
action_15 (44) = happyShift action_52
action_15 (45) = happyShift action_53
action_15 (46) = happyShift action_54
action_15 (47) = happyShift action_55
action_15 (48) = happyShift action_56
action_15 (49) = happyShift action_57
action_15 (50) = happyShift action_58
action_15 _ = happyReduce_7

action_16 _ = happyReduce_38

action_17 _ = happyReduce_49

action_18 (52) = happyShift action_38
action_18 (53) = happyShift action_39
action_18 (54) = happyShift action_40
action_18 (55) = happyShift action_41
action_18 (56) = happyShift action_42
action_18 (57) = happyShift action_43
action_18 (58) = happyShift action_44
action_18 (59) = happyShift action_45
action_18 _ = happyReduce_52

action_19 _ = happyReduce_53

action_20 _ = happyReduce_54

action_21 (19) = happyShift action_32
action_21 (20) = happyShift action_19
action_21 (21) = happyShift action_20
action_21 (23) = happyShift action_21
action_21 (51) = happyShift action_26
action_21 (60) = happyShift action_27
action_21 (61) = happyShift action_28
action_21 (15) = happyGoto action_37
action_21 (16) = happyGoto action_16
action_21 (17) = happyGoto action_17
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (23) = happyShift action_36
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (23) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (19) = happyShift action_34
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (19) = happyShift action_33
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (19) = happyShift action_32
action_26 (20) = happyShift action_19
action_26 (21) = happyShift action_20
action_26 (23) = happyShift action_21
action_26 (51) = happyShift action_26
action_26 (60) = happyShift action_27
action_26 (61) = happyShift action_28
action_26 (15) = happyGoto action_31
action_26 (16) = happyGoto action_16
action_26 (17) = happyGoto action_17
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_55

action_28 _ = happyReduce_56

action_29 (23) = happyShift action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (19) = happyShift action_32
action_30 (20) = happyShift action_19
action_30 (21) = happyShift action_20
action_30 (22) = happyShift action_91
action_30 (23) = happyShift action_21
action_30 (51) = happyShift action_26
action_30 (60) = happyShift action_27
action_30 (61) = happyShift action_28
action_30 (62) = happyShift action_92
action_30 (7) = happyGoto action_87
action_30 (12) = happyGoto action_88
action_30 (15) = happyGoto action_89
action_30 (16) = happyGoto action_16
action_30 (17) = happyGoto action_17
action_30 (18) = happyGoto action_90
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_47

action_32 (52) = happyShift action_38
action_32 (53) = happyShift action_39
action_32 _ = happyReduce_52

action_33 (54) = happyShift action_85
action_33 (64) = happyShift action_86
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (54) = happyShift action_83
action_34 (64) = happyShift action_84
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (19) = happyShift action_32
action_35 (20) = happyShift action_19
action_35 (21) = happyShift action_20
action_35 (23) = happyShift action_21
action_35 (51) = happyShift action_26
action_35 (60) = happyShift action_27
action_35 (61) = happyShift action_28
action_35 (15) = happyGoto action_82
action_35 (16) = happyGoto action_16
action_35 (17) = happyGoto action_17
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (19) = happyShift action_32
action_36 (20) = happyShift action_19
action_36 (21) = happyShift action_20
action_36 (23) = happyShift action_21
action_36 (51) = happyShift action_26
action_36 (60) = happyShift action_27
action_36 (61) = happyShift action_28
action_36 (15) = happyGoto action_81
action_36 (16) = happyGoto action_16
action_36 (17) = happyGoto action_17
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (24) = happyShift action_80
action_37 (38) = happyShift action_46
action_37 (39) = happyShift action_47
action_37 (40) = happyShift action_48
action_37 (41) = happyShift action_49
action_37 (42) = happyShift action_50
action_37 (43) = happyShift action_51
action_37 (44) = happyShift action_52
action_37 (45) = happyShift action_53
action_37 (46) = happyShift action_54
action_37 (47) = happyShift action_55
action_37 (48) = happyShift action_56
action_37 (49) = happyShift action_57
action_37 (50) = happyShift action_58
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_50

action_39 _ = happyReduce_51

action_40 (19) = happyShift action_32
action_40 (20) = happyShift action_19
action_40 (21) = happyShift action_20
action_40 (23) = happyShift action_21
action_40 (51) = happyShift action_26
action_40 (60) = happyShift action_27
action_40 (61) = happyShift action_28
action_40 (15) = happyGoto action_79
action_40 (16) = happyGoto action_16
action_40 (17) = happyGoto action_17
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (19) = happyShift action_32
action_41 (20) = happyShift action_19
action_41 (21) = happyShift action_20
action_41 (23) = happyShift action_21
action_41 (51) = happyShift action_26
action_41 (60) = happyShift action_27
action_41 (61) = happyShift action_28
action_41 (15) = happyGoto action_78
action_41 (16) = happyGoto action_16
action_41 (17) = happyGoto action_17
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (19) = happyShift action_32
action_42 (20) = happyShift action_19
action_42 (21) = happyShift action_20
action_42 (23) = happyShift action_21
action_42 (51) = happyShift action_26
action_42 (60) = happyShift action_27
action_42 (61) = happyShift action_28
action_42 (15) = happyGoto action_77
action_42 (16) = happyGoto action_16
action_42 (17) = happyGoto action_17
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (19) = happyShift action_32
action_43 (20) = happyShift action_19
action_43 (21) = happyShift action_20
action_43 (23) = happyShift action_21
action_43 (51) = happyShift action_26
action_43 (60) = happyShift action_27
action_43 (61) = happyShift action_28
action_43 (15) = happyGoto action_76
action_43 (16) = happyGoto action_16
action_43 (17) = happyGoto action_17
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_32
action_44 (20) = happyShift action_19
action_44 (21) = happyShift action_20
action_44 (23) = happyShift action_21
action_44 (51) = happyShift action_26
action_44 (60) = happyShift action_27
action_44 (61) = happyShift action_28
action_44 (15) = happyGoto action_75
action_44 (16) = happyGoto action_16
action_44 (17) = happyGoto action_17
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (19) = happyShift action_32
action_45 (20) = happyShift action_19
action_45 (21) = happyShift action_20
action_45 (23) = happyShift action_21
action_45 (51) = happyShift action_26
action_45 (60) = happyShift action_27
action_45 (61) = happyShift action_28
action_45 (15) = happyGoto action_74
action_45 (16) = happyGoto action_16
action_45 (17) = happyGoto action_17
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (19) = happyShift action_32
action_46 (20) = happyShift action_19
action_46 (21) = happyShift action_20
action_46 (23) = happyShift action_21
action_46 (51) = happyShift action_26
action_46 (60) = happyShift action_27
action_46 (61) = happyShift action_28
action_46 (15) = happyGoto action_73
action_46 (16) = happyGoto action_16
action_46 (17) = happyGoto action_17
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (19) = happyShift action_32
action_47 (20) = happyShift action_19
action_47 (21) = happyShift action_20
action_47 (23) = happyShift action_21
action_47 (51) = happyShift action_26
action_47 (60) = happyShift action_27
action_47 (61) = happyShift action_28
action_47 (15) = happyGoto action_72
action_47 (16) = happyGoto action_16
action_47 (17) = happyGoto action_17
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (19) = happyShift action_32
action_48 (20) = happyShift action_19
action_48 (21) = happyShift action_20
action_48 (23) = happyShift action_21
action_48 (51) = happyShift action_26
action_48 (60) = happyShift action_27
action_48 (61) = happyShift action_28
action_48 (15) = happyGoto action_71
action_48 (16) = happyGoto action_16
action_48 (17) = happyGoto action_17
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_32
action_49 (20) = happyShift action_19
action_49 (21) = happyShift action_20
action_49 (23) = happyShift action_21
action_49 (51) = happyShift action_26
action_49 (60) = happyShift action_27
action_49 (61) = happyShift action_28
action_49 (15) = happyGoto action_70
action_49 (16) = happyGoto action_16
action_49 (17) = happyGoto action_17
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (19) = happyShift action_32
action_50 (20) = happyShift action_19
action_50 (21) = happyShift action_20
action_50 (23) = happyShift action_21
action_50 (51) = happyShift action_26
action_50 (60) = happyShift action_27
action_50 (61) = happyShift action_28
action_50 (15) = happyGoto action_69
action_50 (16) = happyGoto action_16
action_50 (17) = happyGoto action_17
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (19) = happyShift action_32
action_51 (20) = happyShift action_19
action_51 (21) = happyShift action_20
action_51 (23) = happyShift action_21
action_51 (51) = happyShift action_26
action_51 (60) = happyShift action_27
action_51 (61) = happyShift action_28
action_51 (15) = happyGoto action_68
action_51 (16) = happyGoto action_16
action_51 (17) = happyGoto action_17
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (19) = happyShift action_32
action_52 (20) = happyShift action_19
action_52 (21) = happyShift action_20
action_52 (23) = happyShift action_21
action_52 (51) = happyShift action_26
action_52 (60) = happyShift action_27
action_52 (61) = happyShift action_28
action_52 (15) = happyGoto action_67
action_52 (16) = happyGoto action_16
action_52 (17) = happyGoto action_17
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (19) = happyShift action_32
action_53 (20) = happyShift action_19
action_53 (21) = happyShift action_20
action_53 (23) = happyShift action_21
action_53 (51) = happyShift action_26
action_53 (60) = happyShift action_27
action_53 (61) = happyShift action_28
action_53 (15) = happyGoto action_66
action_53 (16) = happyGoto action_16
action_53 (17) = happyGoto action_17
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (19) = happyShift action_32
action_54 (20) = happyShift action_19
action_54 (21) = happyShift action_20
action_54 (23) = happyShift action_21
action_54 (51) = happyShift action_26
action_54 (60) = happyShift action_27
action_54 (61) = happyShift action_28
action_54 (15) = happyGoto action_65
action_54 (16) = happyGoto action_16
action_54 (17) = happyGoto action_17
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (19) = happyShift action_32
action_55 (20) = happyShift action_19
action_55 (21) = happyShift action_20
action_55 (23) = happyShift action_21
action_55 (51) = happyShift action_26
action_55 (60) = happyShift action_27
action_55 (61) = happyShift action_28
action_55 (15) = happyGoto action_64
action_55 (16) = happyGoto action_16
action_55 (17) = happyGoto action_17
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (19) = happyShift action_32
action_56 (20) = happyShift action_19
action_56 (21) = happyShift action_20
action_56 (23) = happyShift action_21
action_56 (51) = happyShift action_26
action_56 (60) = happyShift action_27
action_56 (61) = happyShift action_28
action_56 (15) = happyGoto action_63
action_56 (16) = happyGoto action_16
action_56 (17) = happyGoto action_17
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (19) = happyShift action_32
action_57 (20) = happyShift action_19
action_57 (21) = happyShift action_20
action_57 (23) = happyShift action_21
action_57 (51) = happyShift action_26
action_57 (60) = happyShift action_27
action_57 (61) = happyShift action_28
action_57 (15) = happyGoto action_62
action_57 (16) = happyGoto action_16
action_57 (17) = happyGoto action_17
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (19) = happyShift action_32
action_58 (20) = happyShift action_19
action_58 (21) = happyShift action_20
action_58 (23) = happyShift action_21
action_58 (51) = happyShift action_26
action_58 (60) = happyShift action_27
action_58 (61) = happyShift action_28
action_58 (15) = happyGoto action_61
action_58 (16) = happyGoto action_16
action_58 (17) = happyGoto action_17
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_3

action_60 _ = happyReduce_1

action_61 (38) = happyShift action_46
action_61 (39) = happyShift action_47
action_61 (40) = happyShift action_48
action_61 (41) = happyShift action_49
action_61 (42) = happyShift action_50
action_61 (43) = happyShift action_51
action_61 (44) = happyShift action_52
action_61 (45) = happyShift action_53
action_61 (46) = happyShift action_54
action_61 (47) = happyShift action_55
action_61 (48) = happyShift action_56
action_61 (49) = happyShift action_57
action_61 _ = happyReduce_40

action_62 (38) = happyShift action_46
action_62 (39) = happyShift action_47
action_62 (40) = happyShift action_48
action_62 (41) = happyShift action_49
action_62 (42) = happyShift action_50
action_62 (43) = happyShift action_51
action_62 (44) = happyShift action_52
action_62 (45) = happyShift action_53
action_62 (46) = happyShift action_54
action_62 (47) = happyShift action_55
action_62 (48) = happyShift action_56
action_62 _ = happyReduce_39

action_63 (38) = happyShift action_46
action_63 (39) = happyShift action_47
action_63 (40) = happyShift action_48
action_63 (41) = happyShift action_49
action_63 (42) = happyShift action_50
action_63 (43) = happyShift action_51
action_63 (44) = happyShift action_52
action_63 (45) = happyShift action_53
action_63 (46) = happyShift action_54
action_63 (47) = happyFail []
action_63 (48) = happyFail []
action_63 _ = happyReduce_46

action_64 (38) = happyShift action_46
action_64 (39) = happyShift action_47
action_64 (40) = happyShift action_48
action_64 (41) = happyShift action_49
action_64 (42) = happyShift action_50
action_64 (43) = happyShift action_51
action_64 (44) = happyShift action_52
action_64 (45) = happyShift action_53
action_64 (46) = happyShift action_54
action_64 (47) = happyFail []
action_64 (48) = happyFail []
action_64 _ = happyReduce_45

action_65 (38) = happyShift action_46
action_65 (39) = happyShift action_47
action_65 (40) = happyShift action_48
action_65 (41) = happyShift action_49
action_65 (42) = happyShift action_50
action_65 (43) = happyFail []
action_65 (44) = happyFail []
action_65 (45) = happyFail []
action_65 (46) = happyFail []
action_65 _ = happyReduce_44

action_66 (38) = happyShift action_46
action_66 (39) = happyShift action_47
action_66 (40) = happyShift action_48
action_66 (41) = happyShift action_49
action_66 (42) = happyShift action_50
action_66 (43) = happyFail []
action_66 (44) = happyFail []
action_66 (45) = happyFail []
action_66 (46) = happyFail []
action_66 _ = happyReduce_43

action_67 (38) = happyShift action_46
action_67 (39) = happyShift action_47
action_67 (40) = happyShift action_48
action_67 (41) = happyShift action_49
action_67 (42) = happyShift action_50
action_67 (43) = happyFail []
action_67 (44) = happyFail []
action_67 (45) = happyFail []
action_67 (46) = happyFail []
action_67 _ = happyReduce_42

action_68 (38) = happyShift action_46
action_68 (39) = happyShift action_47
action_68 (40) = happyShift action_48
action_68 (41) = happyShift action_49
action_68 (42) = happyShift action_50
action_68 (43) = happyFail []
action_68 (44) = happyFail []
action_68 (45) = happyFail []
action_68 (46) = happyFail []
action_68 _ = happyReduce_41

action_69 _ = happyReduce_37

action_70 _ = happyReduce_36

action_71 _ = happyReduce_35

action_72 (40) = happyShift action_48
action_72 (41) = happyShift action_49
action_72 (42) = happyShift action_50
action_72 _ = happyReduce_34

action_73 (40) = happyShift action_48
action_73 (41) = happyShift action_49
action_73 (42) = happyShift action_50
action_73 _ = happyReduce_33

action_74 (38) = happyShift action_46
action_74 (39) = happyShift action_47
action_74 (40) = happyShift action_48
action_74 (41) = happyShift action_49
action_74 (42) = happyShift action_50
action_74 (43) = happyShift action_51
action_74 (44) = happyShift action_52
action_74 (45) = happyShift action_53
action_74 (46) = happyShift action_54
action_74 (47) = happyShift action_55
action_74 (48) = happyShift action_56
action_74 (49) = happyShift action_57
action_74 (50) = happyShift action_58
action_74 _ = happyReduce_32

action_75 (38) = happyShift action_46
action_75 (39) = happyShift action_47
action_75 (40) = happyShift action_48
action_75 (41) = happyShift action_49
action_75 (42) = happyShift action_50
action_75 (43) = happyShift action_51
action_75 (44) = happyShift action_52
action_75 (45) = happyShift action_53
action_75 (46) = happyShift action_54
action_75 (47) = happyShift action_55
action_75 (48) = happyShift action_56
action_75 (49) = happyShift action_57
action_75 (50) = happyShift action_58
action_75 _ = happyReduce_31

action_76 (38) = happyShift action_46
action_76 (39) = happyShift action_47
action_76 (40) = happyShift action_48
action_76 (41) = happyShift action_49
action_76 (42) = happyShift action_50
action_76 (43) = happyShift action_51
action_76 (44) = happyShift action_52
action_76 (45) = happyShift action_53
action_76 (46) = happyShift action_54
action_76 (47) = happyShift action_55
action_76 (48) = happyShift action_56
action_76 (49) = happyShift action_57
action_76 (50) = happyShift action_58
action_76 _ = happyReduce_30

action_77 (38) = happyShift action_46
action_77 (39) = happyShift action_47
action_77 (40) = happyShift action_48
action_77 (41) = happyShift action_49
action_77 (42) = happyShift action_50
action_77 (43) = happyShift action_51
action_77 (44) = happyShift action_52
action_77 (45) = happyShift action_53
action_77 (46) = happyShift action_54
action_77 (47) = happyShift action_55
action_77 (48) = happyShift action_56
action_77 (49) = happyShift action_57
action_77 (50) = happyShift action_58
action_77 _ = happyReduce_29

action_78 (38) = happyShift action_46
action_78 (39) = happyShift action_47
action_78 (40) = happyShift action_48
action_78 (41) = happyShift action_49
action_78 (42) = happyShift action_50
action_78 (43) = happyShift action_51
action_78 (44) = happyShift action_52
action_78 (45) = happyShift action_53
action_78 (46) = happyShift action_54
action_78 (47) = happyShift action_55
action_78 (48) = happyShift action_56
action_78 (49) = happyShift action_57
action_78 (50) = happyShift action_58
action_78 _ = happyReduce_28

action_79 (38) = happyShift action_46
action_79 (39) = happyShift action_47
action_79 (40) = happyShift action_48
action_79 (41) = happyShift action_49
action_79 (42) = happyShift action_50
action_79 (43) = happyShift action_51
action_79 (44) = happyShift action_52
action_79 (45) = happyShift action_53
action_79 (46) = happyShift action_54
action_79 (47) = happyShift action_55
action_79 (48) = happyShift action_56
action_79 (49) = happyShift action_57
action_79 (50) = happyShift action_58
action_79 _ = happyReduce_27

action_80 _ = happyReduce_48

action_81 (24) = happyShift action_104
action_81 (38) = happyShift action_46
action_81 (39) = happyShift action_47
action_81 (40) = happyShift action_48
action_81 (41) = happyShift action_49
action_81 (42) = happyShift action_50
action_81 (43) = happyShift action_51
action_81 (44) = happyShift action_52
action_81 (45) = happyShift action_53
action_81 (46) = happyShift action_54
action_81 (47) = happyShift action_55
action_81 (48) = happyShift action_56
action_81 (49) = happyShift action_57
action_81 (50) = happyShift action_58
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (24) = happyShift action_103
action_82 (38) = happyShift action_46
action_82 (39) = happyShift action_47
action_82 (40) = happyShift action_48
action_82 (41) = happyShift action_49
action_82 (42) = happyShift action_50
action_82 (43) = happyShift action_51
action_82 (44) = happyShift action_52
action_82 (45) = happyShift action_53
action_82 (46) = happyShift action_54
action_82 (47) = happyShift action_55
action_82 (48) = happyShift action_56
action_82 (49) = happyShift action_57
action_82 (50) = happyShift action_58
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (19) = happyShift action_32
action_83 (20) = happyShift action_19
action_83 (21) = happyShift action_20
action_83 (22) = happyShift action_91
action_83 (23) = happyShift action_21
action_83 (51) = happyShift action_26
action_83 (60) = happyShift action_27
action_83 (61) = happyShift action_28
action_83 (62) = happyShift action_92
action_83 (7) = happyGoto action_87
action_83 (12) = happyGoto action_102
action_83 (15) = happyGoto action_89
action_83 (16) = happyGoto action_16
action_83 (17) = happyGoto action_17
action_83 (18) = happyGoto action_90
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (30) = happyShift action_96
action_84 (31) = happyShift action_97
action_84 (32) = happyShift action_98
action_84 (33) = happyShift action_99
action_84 (11) = happyGoto action_101
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (19) = happyShift action_32
action_85 (20) = happyShift action_19
action_85 (21) = happyShift action_20
action_85 (22) = happyShift action_91
action_85 (23) = happyShift action_21
action_85 (51) = happyShift action_26
action_85 (60) = happyShift action_27
action_85 (61) = happyShift action_28
action_85 (62) = happyShift action_92
action_85 (7) = happyGoto action_87
action_85 (12) = happyGoto action_100
action_85 (15) = happyGoto action_89
action_85 (16) = happyGoto action_16
action_85 (17) = happyGoto action_17
action_85 (18) = happyGoto action_90
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (30) = happyShift action_96
action_86 (31) = happyShift action_97
action_86 (32) = happyShift action_98
action_86 (33) = happyShift action_99
action_86 (11) = happyGoto action_95
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_22

action_88 (24) = happyShift action_94
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (38) = happyShift action_46
action_89 (39) = happyShift action_47
action_89 (40) = happyShift action_48
action_89 (41) = happyShift action_49
action_89 (42) = happyShift action_50
action_89 (43) = happyShift action_51
action_89 (44) = happyShift action_52
action_89 (45) = happyShift action_53
action_89 (46) = happyShift action_54
action_89 (47) = happyShift action_55
action_89 (48) = happyShift action_56
action_89 (49) = happyShift action_57
action_89 (50) = happyShift action_58
action_89 _ = happyReduce_20

action_90 _ = happyReduce_21

action_91 _ = happyReduce_57

action_92 (23) = happyShift action_93
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (24) = happyShift action_109
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_12

action_95 (54) = happyShift action_108
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_16

action_97 _ = happyReduce_17

action_98 _ = happyReduce_18

action_99 _ = happyReduce_19

action_100 _ = happyReduce_23

action_101 (54) = happyShift action_107
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_24

action_103 (25) = happyShift action_106
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (25) = happyShift action_105
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (19) = happyShift action_18
action_105 (20) = happyShift action_19
action_105 (21) = happyShift action_20
action_105 (23) = happyShift action_21
action_105 (27) = happyShift action_22
action_105 (29) = happyShift action_23
action_105 (36) = happyShift action_24
action_105 (37) = happyShift action_25
action_105 (51) = happyShift action_26
action_105 (60) = happyShift action_27
action_105 (61) = happyShift action_28
action_105 (63) = happyShift action_29
action_105 (5) = happyGoto action_113
action_105 (6) = happyGoto action_9
action_105 (8) = happyGoto action_10
action_105 (9) = happyGoto action_11
action_105 (10) = happyGoto action_12
action_105 (13) = happyGoto action_13
action_105 (14) = happyGoto action_14
action_105 (15) = happyGoto action_15
action_105 (16) = happyGoto action_16
action_105 (17) = happyGoto action_17
action_105 _ = happyReduce_4

action_106 (19) = happyShift action_18
action_106 (20) = happyShift action_19
action_106 (21) = happyShift action_20
action_106 (23) = happyShift action_21
action_106 (27) = happyShift action_22
action_106 (29) = happyShift action_23
action_106 (36) = happyShift action_24
action_106 (37) = happyShift action_25
action_106 (51) = happyShift action_26
action_106 (60) = happyShift action_27
action_106 (61) = happyShift action_28
action_106 (63) = happyShift action_29
action_106 (5) = happyGoto action_112
action_106 (6) = happyGoto action_9
action_106 (8) = happyGoto action_10
action_106 (9) = happyGoto action_11
action_106 (10) = happyGoto action_12
action_106 (13) = happyGoto action_13
action_106 (14) = happyGoto action_14
action_106 (15) = happyGoto action_15
action_106 (16) = happyGoto action_16
action_106 (17) = happyGoto action_17
action_106 _ = happyReduce_4

action_107 (19) = happyShift action_32
action_107 (20) = happyShift action_19
action_107 (21) = happyShift action_20
action_107 (22) = happyShift action_91
action_107 (23) = happyShift action_21
action_107 (51) = happyShift action_26
action_107 (60) = happyShift action_27
action_107 (61) = happyShift action_28
action_107 (62) = happyShift action_92
action_107 (7) = happyGoto action_87
action_107 (12) = happyGoto action_111
action_107 (15) = happyGoto action_89
action_107 (16) = happyGoto action_16
action_107 (17) = happyGoto action_17
action_107 (18) = happyGoto action_90
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (19) = happyShift action_32
action_108 (20) = happyShift action_19
action_108 (21) = happyShift action_20
action_108 (22) = happyShift action_91
action_108 (23) = happyShift action_21
action_108 (51) = happyShift action_26
action_108 (60) = happyShift action_27
action_108 (61) = happyShift action_28
action_108 (62) = happyShift action_92
action_108 (7) = happyGoto action_87
action_108 (12) = happyGoto action_110
action_108 (15) = happyGoto action_89
action_108 (16) = happyGoto action_16
action_108 (17) = happyGoto action_17
action_108 (18) = happyGoto action_90
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_11

action_110 _ = happyReduce_25

action_111 _ = happyReduce_26

action_112 (26) = happyShift action_115
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (26) = happyShift action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (28) = happyShift action_116
action_114 _ = happyReduce_13

action_115 _ = happyReduce_15

action_116 (25) = happyShift action_117
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (19) = happyShift action_18
action_117 (20) = happyShift action_19
action_117 (21) = happyShift action_20
action_117 (23) = happyShift action_21
action_117 (27) = happyShift action_22
action_117 (29) = happyShift action_23
action_117 (36) = happyShift action_24
action_117 (37) = happyShift action_25
action_117 (51) = happyShift action_26
action_117 (60) = happyShift action_27
action_117 (61) = happyShift action_28
action_117 (63) = happyShift action_29
action_117 (5) = happyGoto action_118
action_117 (6) = happyGoto action_9
action_117 (8) = happyGoto action_10
action_117 (9) = happyGoto action_11
action_117 (10) = happyGoto action_12
action_117 (13) = happyGoto action_13
action_117 (14) = happyGoto action_14
action_117 (15) = happyGoto action_15
action_117 (16) = happyGoto action_16
action_117 (17) = happyGoto action_17
action_117 _ = happyReduce_4

action_118 (26) = happyShift action_119
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_14

happyReduce_1 = happyReduce 7 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_0  4 happyReduction_2
happyReduction_2  =  HappyAbsSyn4
		 ([]
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_0  5 happyReduction_4
happyReduction_4  =  HappyAbsSyn5
		 ([]
	)

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn7
		 (ReadlnNode
	)

happyReduce_12 = happyReduce 4 8 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintNode happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 7 9 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfNode happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 11 9 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfElseNode happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 7 10 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WhileNode happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  11 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn11
		 (IntType
	)

happyReduce_17 = happySpecReduce_1  11 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn11
		 (FloatType
	)

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn11
		 (BoolType
	)

happyReduce_19 = happySpecReduce_1  11 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn11
		 (StringType
	)

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn12
		 (ReadlnNode
	)

happyReduce_23 = happyReduce 4 13 happyReduction_23
happyReduction_23 ((HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (VarDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 4 13 happyReduction_24
happyReduction_24 ((HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (ValDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 6 13 happyReduction_25
happyReduction_25 ((HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (VarDeclTyped happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 13 happyReduction_26
happyReduction_26 ((HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (ValDeclTyped happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_3  14 happyReduction_27
happyReduction_27 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (AddAssignNode happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (SubAssignNode happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (MultAssignNode happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (DivAssignNode happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (ModAssignNode happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  15 happyReduction_33
happyReduction_33 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  15 happyReduction_35
happyReduction_35 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  15 happyReduction_37
happyReduction_37 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  15 happyReduction_39
happyReduction_39 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  15 happyReduction_40
happyReduction_40 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  15 happyReduction_41
happyReduction_41 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  15 happyReduction_42
happyReduction_42 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  15 happyReduction_43
happyReduction_43 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  15 happyReduction_44
happyReduction_44 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  15 happyReduction_45
happyReduction_45 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  15 happyReduction_46
happyReduction_46 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  15 happyReduction_47
happyReduction_47 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (NotNode happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  15 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  15 happyReduction_49
happyReduction_49 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  16 happyReduction_50
happyReduction_50 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn16
		 (IncrNode (IdNode happy_var_1)
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  16 happyReduction_51
happyReduction_51 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn16
		 (DecrNode (IdNode happy_var_1)
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  17 happyReduction_52
happyReduction_52 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (IdNode happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  17 happyReduction_53
happyReduction_53 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn17
		 (NumNode happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  17 happyReduction_54
happyReduction_54 (HappyTerminal (REAL happy_var_1))
	 =  HappyAbsSyn17
		 (RealNode happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  17 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn17
		 (BoolNode True
	)

happyReduce_56 = happySpecReduce_1  17 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn17
		 (BoolNode False
	)

happyReduce_57 = happySpecReduce_1  18 happyReduction_57
happyReduction_57 (HappyTerminal (STR happy_var_1))
	 =  HappyAbsSyn18
		 (StringNode happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ID happy_dollar_dollar -> cont 19;
	NUM happy_dollar_dollar -> cont 20;
	REAL happy_dollar_dollar -> cont 21;
	STR happy_dollar_dollar -> cont 22;
	LPAREN -> cont 23;
	RPAREN -> cont 24;
	LBRACE -> cont 25;
	RBRACE -> cont 26;
	IF -> cont 27;
	ELSE -> cont 28;
	WHILE -> cont 29;
	INT -> cont 30;
	FLOAT -> cont 31;
	BOOLEAN -> cont 32;
	STRING -> cont 33;
	FUN -> cont 34;
	MAIN -> cont 35;
	VAL -> cont 36;
	VAR -> cont 37;
	PLUS -> cont 38;
	MINUS -> cont 39;
	MULT -> cont 40;
	DIV -> cont 41;
	MOD -> cont 42;
	G -> cont 43;
	GEQ -> cont 44;
	L -> cont 45;
	LEQ -> cont 46;
	EQUAL -> cont 47;
	NEQUAL -> cont 48;
	AND -> cont 49;
	OR -> cont 50;
	NOT -> cont 51;
	ICR -> cont 52;
	DCR -> cont 53;
	ATRIB -> cont 54;
	ATRIB_PLUS -> cont 55;
	ATRIB_MINUS -> cont 56;
	ATRIB_MULT -> cont 57;
	ATRIB_DIV -> cont 58;
	ATRIB_MOD -> cont 59;
	TRUE -> cont 60;
	FALSE -> cont 61;
	READLN -> cont 62;
	PRINT -> cont 63;
	COLON -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- AST Nodes
data Exp = NumNode Int
         | RealNode Float
         | StringNode String
         | IdNode String
         | AddNode Exp Exp
         | SubNode Exp Exp
         | MultNode Exp Exp
         | DivNode Exp Exp
         | ModNode Exp Exp
         | IncrNode Exp 
         | DecrNode Exp 
         | BoolNode Bool
         | AndNode Exp Exp
         | OrNode Exp Exp
         | GtNode Exp Exp
         | GeNode Exp Exp
         | LtNode Exp Exp
         | LeNode Exp Exp
         | EqNode Exp Exp
         | NeNode Exp Exp
         | NotNode Exp
         | IfNode Exp [Exp]
         | IfElseNode Exp [Exp] [Exp]
         | WhileNode Exp [Exp]
         | PrintNode Exp
         | ReadlnNode
         | VarDecl String Exp
         | VarDeclTyped String Type Exp
         | ValDecl String Exp
         | ValDeclTyped String Type Exp
         | AssignNode String Exp
         | AddAssignNode String Exp     -- Representa `+=`
         | SubAssignNode String Exp     -- Representa `-=`
         | MultAssignNode String Exp    -- Representa `*=`
         | DivAssignNode String Exp     -- Representa `/=`
         | ModAssignNode String Exp     -- Representa `%=`
         deriving (Show, Eq)

data Type = IntType | FloatType | BoolType | StringType deriving (Show, Eq)

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing" ++ show toks
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
