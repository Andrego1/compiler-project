{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19
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
	| HappyAbsSyn19 t19

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,424) ([0,0,8,0,0,0,64,0,0,0,1024,0,0,0,0,0,0,0,8,0,0,0,128,0,0,0,2048,0,0,0,256,3082,0,32,0,4,0,0,16384,704,3,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8160,0,1024,0,0,0,8192,0,0,0,4096,0,0,0,32768,0,0,0,0,64,0,0,0,992,1024,32832,3,0,0,4096,64,0,0,32768,512,49152,5,32776,1792,0,46,64,14340,0,0,0,0,0,0,0,0,0,23552,32768,2048,112,57344,2,16388,896,0,23,32,7170,0,184,256,57360,0,1472,2048,128,7,11776,16384,1024,56,0,0,0,0,32768,1280,6,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,4095,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23552,32768,2048,112,57344,2,16388,896,0,23,32,7170,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8191,0,0,0,65528,0,0,0,65472,7,0,0,65024,63,0,0,61440,511,0,0,32769,4095,0,0,8,32764,0,0,62,64,14340,0,0,15,0,0,3968,4096,256,14,0,960,0,0,0,4,0,0,0,0,65520,1,0,0,0,0,0,0,0,0,0,11776,16384,1024,56,28672,1,8194,448,32768,11,16,3585,0,92,128,28680,0,736,1024,32832,3,5888,8192,512,28,47104,0,4097,224,49152,5,32776,1792,0,46,64,14340,0,368,512,49184,1,2944,4096,256,14,23552,32768,2048,112,57344,2,16388,896,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,2048,24658,0,256,16384,656,3,2048,0,64,0,0,0,0,0,0,0,0,0,0,0,32768,49152,2047,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,6164,0,64,0,0,0,0,32768,1280,6,4096,0,124,128,28680,0,992,1024,32832,3,0,61440,255,0,0,32768,1023,0,0,0,2044,0,0,0,16352,0,0,0,7936,0,0,0,63488,0,0,0,49152,7,0,0,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,3,0,0,0,28,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,32768,0,0,0,2048,24658,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Fun","Commands","Command","Print","Readln","If","Aux_if","While","Type","InitExp","Decl","Assign","Expr","PostIncDecExp","Atomic","Sexp","id","num","real","str","'('","')'","'{'","'}'","';'","if","else","while","int","float","boolean","string","fun","main","val","var","'+'","'-'","'*'","'/'","'%'","'>'","\">=\"","'<'","\"<=\"","\"==\"","\"!=\"","\"&&\"","\"||\"","'!'","\"++\"","\"--\"","'='","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","true","false","readln","print","':'","%eof"]
        bit_start = st * 67
        bit_end = (st + 1) * 67
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..66]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (36) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (36) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (37) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (67) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (24) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (25) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (26) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (20) = happyShift action_16
action_7 (29) = happyShift action_17
action_7 (31) = happyShift action_18
action_7 (38) = happyShift action_19
action_7 (39) = happyShift action_20
action_7 (65) = happyShift action_21
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (7) = happyGoto action_10
action_7 (9) = happyGoto action_11
action_7 (11) = happyGoto action_12
action_7 (14) = happyGoto action_13
action_7 (15) = happyGoto action_14
action_7 (17) = happyGoto action_15
action_7 _ = happyReduce_4

action_8 (27) = happyShift action_37
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (20) = happyShift action_16
action_9 (28) = happyShift action_36
action_9 (29) = happyShift action_17
action_9 (31) = happyShift action_18
action_9 (38) = happyShift action_19
action_9 (39) = happyShift action_20
action_9 (65) = happyShift action_21
action_9 (5) = happyGoto action_35
action_9 (6) = happyGoto action_9
action_9 (7) = happyGoto action_10
action_9 (9) = happyGoto action_11
action_9 (11) = happyGoto action_12
action_9 (14) = happyGoto action_13
action_9 (15) = happyGoto action_14
action_9 (17) = happyGoto action_15
action_9 _ = happyReduce_4

action_10 _ = happyReduce_9

action_11 _ = happyReduce_7

action_12 _ = happyReduce_8

action_13 _ = happyReduce_5

action_14 _ = happyReduce_6

action_15 _ = happyReduce_34

action_16 (54) = happyShift action_27
action_16 (55) = happyShift action_28
action_16 (56) = happyShift action_29
action_16 (57) = happyShift action_30
action_16 (58) = happyShift action_31
action_16 (59) = happyShift action_32
action_16 (60) = happyShift action_33
action_16 (61) = happyShift action_34
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (24) = happyShift action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (24) = happyShift action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (20) = happyShift action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (20) = happyShift action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (24) = happyShift action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (20) = happyShift action_42
action_22 (21) = happyShift action_43
action_22 (22) = happyShift action_44
action_22 (23) = happyShift action_65
action_22 (24) = happyShift action_45
action_22 (41) = happyShift action_46
action_22 (53) = happyShift action_47
action_22 (62) = happyShift action_48
action_22 (63) = happyShift action_49
action_22 (64) = happyShift action_50
action_22 (8) = happyGoto action_39
action_22 (13) = happyGoto action_62
action_22 (16) = happyGoto action_63
action_22 (18) = happyGoto action_41
action_22 (19) = happyGoto action_64
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (56) = happyShift action_60
action_23 (66) = happyShift action_61
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (56) = happyShift action_58
action_24 (66) = happyShift action_59
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (20) = happyShift action_42
action_25 (21) = happyShift action_43
action_25 (22) = happyShift action_44
action_25 (24) = happyShift action_45
action_25 (41) = happyShift action_46
action_25 (53) = happyShift action_47
action_25 (62) = happyShift action_48
action_25 (63) = happyShift action_49
action_25 (64) = happyShift action_50
action_25 (8) = happyGoto action_39
action_25 (16) = happyGoto action_57
action_25 (18) = happyGoto action_41
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (20) = happyShift action_42
action_26 (21) = happyShift action_43
action_26 (22) = happyShift action_44
action_26 (24) = happyShift action_45
action_26 (41) = happyShift action_46
action_26 (53) = happyShift action_47
action_26 (62) = happyShift action_48
action_26 (63) = happyShift action_49
action_26 (64) = happyShift action_50
action_26 (8) = happyGoto action_39
action_26 (16) = happyGoto action_56
action_26 (18) = happyGoto action_41
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_52

action_28 _ = happyReduce_53

action_29 (20) = happyShift action_42
action_29 (21) = happyShift action_43
action_29 (22) = happyShift action_44
action_29 (24) = happyShift action_45
action_29 (41) = happyShift action_46
action_29 (53) = happyShift action_47
action_29 (62) = happyShift action_48
action_29 (63) = happyShift action_49
action_29 (64) = happyShift action_50
action_29 (8) = happyGoto action_39
action_29 (16) = happyGoto action_55
action_29 (18) = happyGoto action_41
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_42
action_30 (21) = happyShift action_43
action_30 (22) = happyShift action_44
action_30 (24) = happyShift action_45
action_30 (41) = happyShift action_46
action_30 (53) = happyShift action_47
action_30 (62) = happyShift action_48
action_30 (63) = happyShift action_49
action_30 (64) = happyShift action_50
action_30 (8) = happyGoto action_39
action_30 (16) = happyGoto action_54
action_30 (18) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (20) = happyShift action_42
action_31 (21) = happyShift action_43
action_31 (22) = happyShift action_44
action_31 (24) = happyShift action_45
action_31 (41) = happyShift action_46
action_31 (53) = happyShift action_47
action_31 (62) = happyShift action_48
action_31 (63) = happyShift action_49
action_31 (64) = happyShift action_50
action_31 (8) = happyGoto action_39
action_31 (16) = happyGoto action_53
action_31 (18) = happyGoto action_41
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (20) = happyShift action_42
action_32 (21) = happyShift action_43
action_32 (22) = happyShift action_44
action_32 (24) = happyShift action_45
action_32 (41) = happyShift action_46
action_32 (53) = happyShift action_47
action_32 (62) = happyShift action_48
action_32 (63) = happyShift action_49
action_32 (64) = happyShift action_50
action_32 (8) = happyGoto action_39
action_32 (16) = happyGoto action_52
action_32 (18) = happyGoto action_41
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (20) = happyShift action_42
action_33 (21) = happyShift action_43
action_33 (22) = happyShift action_44
action_33 (24) = happyShift action_45
action_33 (41) = happyShift action_46
action_33 (53) = happyShift action_47
action_33 (62) = happyShift action_48
action_33 (63) = happyShift action_49
action_33 (64) = happyShift action_50
action_33 (8) = happyGoto action_39
action_33 (16) = happyGoto action_51
action_33 (18) = happyGoto action_41
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (20) = happyShift action_42
action_34 (21) = happyShift action_43
action_34 (22) = happyShift action_44
action_34 (24) = happyShift action_45
action_34 (41) = happyShift action_46
action_34 (53) = happyShift action_47
action_34 (62) = happyShift action_48
action_34 (63) = happyShift action_49
action_34 (64) = happyShift action_50
action_34 (8) = happyGoto action_39
action_34 (16) = happyGoto action_40
action_34 (18) = happyGoto action_41
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_3

action_36 (20) = happyShift action_16
action_36 (29) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (38) = happyShift action_19
action_36 (39) = happyShift action_20
action_36 (65) = happyShift action_21
action_36 (5) = happyGoto action_38
action_36 (6) = happyGoto action_9
action_36 (7) = happyGoto action_10
action_36 (9) = happyGoto action_11
action_36 (11) = happyGoto action_12
action_36 (14) = happyGoto action_13
action_36 (15) = happyGoto action_14
action_36 (17) = happyGoto action_15
action_36 _ = happyReduce_4

action_37 _ = happyReduce_1

action_38 _ = happyReduce_2

action_39 _ = happyReduce_51

action_40 (40) = happyShift action_66
action_40 (41) = happyShift action_67
action_40 (42) = happyShift action_68
action_40 (43) = happyShift action_69
action_40 (44) = happyShift action_70
action_40 (45) = happyShift action_71
action_40 (46) = happyShift action_72
action_40 (47) = happyShift action_73
action_40 (48) = happyShift action_74
action_40 (49) = happyShift action_75
action_40 (50) = happyShift action_76
action_40 (51) = happyShift action_77
action_40 (52) = happyShift action_78
action_40 _ = happyReduce_33

action_41 _ = happyReduce_50

action_42 _ = happyReduce_54

action_43 _ = happyReduce_55

action_44 _ = happyReduce_56

action_45 (20) = happyShift action_42
action_45 (21) = happyShift action_43
action_45 (22) = happyShift action_44
action_45 (24) = happyShift action_45
action_45 (41) = happyShift action_46
action_45 (53) = happyShift action_47
action_45 (62) = happyShift action_48
action_45 (63) = happyShift action_49
action_45 (64) = happyShift action_50
action_45 (8) = happyGoto action_39
action_45 (16) = happyGoto action_93
action_45 (18) = happyGoto action_41
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_42
action_46 (21) = happyShift action_43
action_46 (22) = happyShift action_44
action_46 (24) = happyShift action_45
action_46 (41) = happyShift action_46
action_46 (53) = happyShift action_47
action_46 (62) = happyShift action_48
action_46 (63) = happyShift action_49
action_46 (64) = happyShift action_50
action_46 (8) = happyGoto action_39
action_46 (16) = happyGoto action_92
action_46 (18) = happyGoto action_41
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (20) = happyShift action_42
action_47 (21) = happyShift action_43
action_47 (22) = happyShift action_44
action_47 (24) = happyShift action_45
action_47 (41) = happyShift action_46
action_47 (53) = happyShift action_47
action_47 (62) = happyShift action_48
action_47 (63) = happyShift action_49
action_47 (64) = happyShift action_50
action_47 (8) = happyGoto action_39
action_47 (16) = happyGoto action_91
action_47 (18) = happyGoto action_41
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_57

action_49 _ = happyReduce_58

action_50 (24) = happyShift action_90
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (40) = happyShift action_66
action_51 (41) = happyShift action_67
action_51 (42) = happyShift action_68
action_51 (43) = happyShift action_69
action_51 (44) = happyShift action_70
action_51 (45) = happyShift action_71
action_51 (46) = happyShift action_72
action_51 (47) = happyShift action_73
action_51 (48) = happyShift action_74
action_51 (49) = happyShift action_75
action_51 (50) = happyShift action_76
action_51 (51) = happyShift action_77
action_51 (52) = happyShift action_78
action_51 _ = happyReduce_32

action_52 (40) = happyShift action_66
action_52 (41) = happyShift action_67
action_52 (42) = happyShift action_68
action_52 (43) = happyShift action_69
action_52 (44) = happyShift action_70
action_52 (45) = happyShift action_71
action_52 (46) = happyShift action_72
action_52 (47) = happyShift action_73
action_52 (48) = happyShift action_74
action_52 (49) = happyShift action_75
action_52 (50) = happyShift action_76
action_52 (51) = happyShift action_77
action_52 (52) = happyShift action_78
action_52 _ = happyReduce_31

action_53 (40) = happyShift action_66
action_53 (41) = happyShift action_67
action_53 (42) = happyShift action_68
action_53 (43) = happyShift action_69
action_53 (44) = happyShift action_70
action_53 (45) = happyShift action_71
action_53 (46) = happyShift action_72
action_53 (47) = happyShift action_73
action_53 (48) = happyShift action_74
action_53 (49) = happyShift action_75
action_53 (50) = happyShift action_76
action_53 (51) = happyShift action_77
action_53 (52) = happyShift action_78
action_53 _ = happyReduce_30

action_54 (40) = happyShift action_66
action_54 (41) = happyShift action_67
action_54 (42) = happyShift action_68
action_54 (43) = happyShift action_69
action_54 (44) = happyShift action_70
action_54 (45) = happyShift action_71
action_54 (46) = happyShift action_72
action_54 (47) = happyShift action_73
action_54 (48) = happyShift action_74
action_54 (49) = happyShift action_75
action_54 (50) = happyShift action_76
action_54 (51) = happyShift action_77
action_54 (52) = happyShift action_78
action_54 _ = happyReduce_29

action_55 (40) = happyShift action_66
action_55 (41) = happyShift action_67
action_55 (42) = happyShift action_68
action_55 (43) = happyShift action_69
action_55 (44) = happyShift action_70
action_55 (45) = happyShift action_71
action_55 (46) = happyShift action_72
action_55 (47) = happyShift action_73
action_55 (48) = happyShift action_74
action_55 (49) = happyShift action_75
action_55 (50) = happyShift action_76
action_55 (51) = happyShift action_77
action_55 (52) = happyShift action_78
action_55 _ = happyReduce_28

action_56 (25) = happyShift action_89
action_56 (40) = happyShift action_66
action_56 (41) = happyShift action_67
action_56 (42) = happyShift action_68
action_56 (43) = happyShift action_69
action_56 (44) = happyShift action_70
action_56 (45) = happyShift action_71
action_56 (46) = happyShift action_72
action_56 (47) = happyShift action_73
action_56 (48) = happyShift action_74
action_56 (49) = happyShift action_75
action_56 (50) = happyShift action_76
action_56 (51) = happyShift action_77
action_56 (52) = happyShift action_78
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (25) = happyShift action_88
action_57 (40) = happyShift action_66
action_57 (41) = happyShift action_67
action_57 (42) = happyShift action_68
action_57 (43) = happyShift action_69
action_57 (44) = happyShift action_70
action_57 (45) = happyShift action_71
action_57 (46) = happyShift action_72
action_57 (47) = happyShift action_73
action_57 (48) = happyShift action_74
action_57 (49) = happyShift action_75
action_57 (50) = happyShift action_76
action_57 (51) = happyShift action_77
action_57 (52) = happyShift action_78
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (20) = happyShift action_42
action_58 (21) = happyShift action_43
action_58 (22) = happyShift action_44
action_58 (23) = happyShift action_65
action_58 (24) = happyShift action_45
action_58 (41) = happyShift action_46
action_58 (53) = happyShift action_47
action_58 (62) = happyShift action_48
action_58 (63) = happyShift action_49
action_58 (64) = happyShift action_50
action_58 (8) = happyGoto action_39
action_58 (13) = happyGoto action_87
action_58 (16) = happyGoto action_63
action_58 (18) = happyGoto action_41
action_58 (19) = happyGoto action_64
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (32) = happyShift action_81
action_59 (33) = happyShift action_82
action_59 (34) = happyShift action_83
action_59 (35) = happyShift action_84
action_59 (12) = happyGoto action_86
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (20) = happyShift action_42
action_60 (21) = happyShift action_43
action_60 (22) = happyShift action_44
action_60 (23) = happyShift action_65
action_60 (24) = happyShift action_45
action_60 (41) = happyShift action_46
action_60 (53) = happyShift action_47
action_60 (62) = happyShift action_48
action_60 (63) = happyShift action_49
action_60 (64) = happyShift action_50
action_60 (8) = happyGoto action_39
action_60 (13) = happyGoto action_85
action_60 (16) = happyGoto action_63
action_60 (18) = happyGoto action_41
action_60 (19) = happyGoto action_64
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (32) = happyShift action_81
action_61 (33) = happyShift action_82
action_61 (34) = happyShift action_83
action_61 (35) = happyShift action_84
action_61 (12) = happyGoto action_80
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (25) = happyShift action_79
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (40) = happyShift action_66
action_63 (41) = happyShift action_67
action_63 (42) = happyShift action_68
action_63 (43) = happyShift action_69
action_63 (44) = happyShift action_70
action_63 (45) = happyShift action_71
action_63 (46) = happyShift action_72
action_63 (47) = happyShift action_73
action_63 (48) = happyShift action_74
action_63 (49) = happyShift action_75
action_63 (50) = happyShift action_76
action_63 (51) = happyShift action_77
action_63 (52) = happyShift action_78
action_63 _ = happyReduce_22

action_64 _ = happyReduce_23

action_65 _ = happyReduce_60

action_66 (20) = happyShift action_42
action_66 (21) = happyShift action_43
action_66 (22) = happyShift action_44
action_66 (24) = happyShift action_45
action_66 (41) = happyShift action_46
action_66 (53) = happyShift action_47
action_66 (62) = happyShift action_48
action_66 (63) = happyShift action_49
action_66 (64) = happyShift action_50
action_66 (8) = happyGoto action_39
action_66 (16) = happyGoto action_115
action_66 (18) = happyGoto action_41
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (20) = happyShift action_42
action_67 (21) = happyShift action_43
action_67 (22) = happyShift action_44
action_67 (24) = happyShift action_45
action_67 (41) = happyShift action_46
action_67 (53) = happyShift action_47
action_67 (62) = happyShift action_48
action_67 (63) = happyShift action_49
action_67 (64) = happyShift action_50
action_67 (8) = happyGoto action_39
action_67 (16) = happyGoto action_114
action_67 (18) = happyGoto action_41
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (20) = happyShift action_42
action_68 (21) = happyShift action_43
action_68 (22) = happyShift action_44
action_68 (24) = happyShift action_45
action_68 (41) = happyShift action_46
action_68 (53) = happyShift action_47
action_68 (62) = happyShift action_48
action_68 (63) = happyShift action_49
action_68 (64) = happyShift action_50
action_68 (8) = happyGoto action_39
action_68 (16) = happyGoto action_113
action_68 (18) = happyGoto action_41
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (20) = happyShift action_42
action_69 (21) = happyShift action_43
action_69 (22) = happyShift action_44
action_69 (24) = happyShift action_45
action_69 (41) = happyShift action_46
action_69 (53) = happyShift action_47
action_69 (62) = happyShift action_48
action_69 (63) = happyShift action_49
action_69 (64) = happyShift action_50
action_69 (8) = happyGoto action_39
action_69 (16) = happyGoto action_112
action_69 (18) = happyGoto action_41
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (20) = happyShift action_42
action_70 (21) = happyShift action_43
action_70 (22) = happyShift action_44
action_70 (24) = happyShift action_45
action_70 (41) = happyShift action_46
action_70 (53) = happyShift action_47
action_70 (62) = happyShift action_48
action_70 (63) = happyShift action_49
action_70 (64) = happyShift action_50
action_70 (8) = happyGoto action_39
action_70 (16) = happyGoto action_111
action_70 (18) = happyGoto action_41
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (20) = happyShift action_42
action_71 (21) = happyShift action_43
action_71 (22) = happyShift action_44
action_71 (24) = happyShift action_45
action_71 (41) = happyShift action_46
action_71 (53) = happyShift action_47
action_71 (62) = happyShift action_48
action_71 (63) = happyShift action_49
action_71 (64) = happyShift action_50
action_71 (8) = happyGoto action_39
action_71 (16) = happyGoto action_110
action_71 (18) = happyGoto action_41
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (20) = happyShift action_42
action_72 (21) = happyShift action_43
action_72 (22) = happyShift action_44
action_72 (24) = happyShift action_45
action_72 (41) = happyShift action_46
action_72 (53) = happyShift action_47
action_72 (62) = happyShift action_48
action_72 (63) = happyShift action_49
action_72 (64) = happyShift action_50
action_72 (8) = happyGoto action_39
action_72 (16) = happyGoto action_109
action_72 (18) = happyGoto action_41
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (20) = happyShift action_42
action_73 (21) = happyShift action_43
action_73 (22) = happyShift action_44
action_73 (24) = happyShift action_45
action_73 (41) = happyShift action_46
action_73 (53) = happyShift action_47
action_73 (62) = happyShift action_48
action_73 (63) = happyShift action_49
action_73 (64) = happyShift action_50
action_73 (8) = happyGoto action_39
action_73 (16) = happyGoto action_108
action_73 (18) = happyGoto action_41
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (20) = happyShift action_42
action_74 (21) = happyShift action_43
action_74 (22) = happyShift action_44
action_74 (24) = happyShift action_45
action_74 (41) = happyShift action_46
action_74 (53) = happyShift action_47
action_74 (62) = happyShift action_48
action_74 (63) = happyShift action_49
action_74 (64) = happyShift action_50
action_74 (8) = happyGoto action_39
action_74 (16) = happyGoto action_107
action_74 (18) = happyGoto action_41
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (20) = happyShift action_42
action_75 (21) = happyShift action_43
action_75 (22) = happyShift action_44
action_75 (24) = happyShift action_45
action_75 (41) = happyShift action_46
action_75 (53) = happyShift action_47
action_75 (62) = happyShift action_48
action_75 (63) = happyShift action_49
action_75 (64) = happyShift action_50
action_75 (8) = happyGoto action_39
action_75 (16) = happyGoto action_106
action_75 (18) = happyGoto action_41
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (20) = happyShift action_42
action_76 (21) = happyShift action_43
action_76 (22) = happyShift action_44
action_76 (24) = happyShift action_45
action_76 (41) = happyShift action_46
action_76 (53) = happyShift action_47
action_76 (62) = happyShift action_48
action_76 (63) = happyShift action_49
action_76 (64) = happyShift action_50
action_76 (8) = happyGoto action_39
action_76 (16) = happyGoto action_105
action_76 (18) = happyGoto action_41
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (20) = happyShift action_42
action_77 (21) = happyShift action_43
action_77 (22) = happyShift action_44
action_77 (24) = happyShift action_45
action_77 (41) = happyShift action_46
action_77 (53) = happyShift action_47
action_77 (62) = happyShift action_48
action_77 (63) = happyShift action_49
action_77 (64) = happyShift action_50
action_77 (8) = happyGoto action_39
action_77 (16) = happyGoto action_104
action_77 (18) = happyGoto action_41
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (20) = happyShift action_42
action_78 (21) = happyShift action_43
action_78 (22) = happyShift action_44
action_78 (24) = happyShift action_45
action_78 (41) = happyShift action_46
action_78 (53) = happyShift action_47
action_78 (62) = happyShift action_48
action_78 (63) = happyShift action_49
action_78 (64) = happyShift action_50
action_78 (8) = happyGoto action_39
action_78 (16) = happyGoto action_103
action_78 (18) = happyGoto action_41
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_10

action_80 (56) = happyShift action_102
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_18

action_82 _ = happyReduce_19

action_83 _ = happyReduce_20

action_84 _ = happyReduce_21

action_85 _ = happyReduce_24

action_86 (56) = happyShift action_101
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_25

action_88 (20) = happyShift action_16
action_88 (26) = happyShift action_100
action_88 (29) = happyShift action_17
action_88 (31) = happyShift action_18
action_88 (38) = happyShift action_19
action_88 (39) = happyShift action_20
action_88 (65) = happyShift action_21
action_88 (6) = happyGoto action_99
action_88 (7) = happyGoto action_10
action_88 (9) = happyGoto action_11
action_88 (11) = happyGoto action_12
action_88 (14) = happyGoto action_13
action_88 (15) = happyGoto action_14
action_88 (17) = happyGoto action_15
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (20) = happyShift action_16
action_89 (26) = happyShift action_98
action_89 (29) = happyShift action_17
action_89 (31) = happyShift action_18
action_89 (38) = happyShift action_19
action_89 (39) = happyShift action_20
action_89 (65) = happyShift action_21
action_89 (6) = happyGoto action_96
action_89 (7) = happyGoto action_10
action_89 (9) = happyGoto action_11
action_89 (10) = happyGoto action_97
action_89 (11) = happyGoto action_12
action_89 (14) = happyGoto action_13
action_89 (15) = happyGoto action_14
action_89 (17) = happyGoto action_15
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (25) = happyShift action_95
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_48

action_92 _ = happyReduce_49

action_93 (25) = happyShift action_94
action_93 (40) = happyShift action_66
action_93 (41) = happyShift action_67
action_93 (42) = happyShift action_68
action_93 (43) = happyShift action_69
action_93 (44) = happyShift action_70
action_93 (45) = happyShift action_71
action_93 (46) = happyShift action_72
action_93 (47) = happyShift action_73
action_93 (48) = happyShift action_74
action_93 (49) = happyShift action_75
action_93 (50) = happyShift action_76
action_93 (51) = happyShift action_77
action_93 (52) = happyShift action_78
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_59

action_95 _ = happyReduce_11

action_96 _ = happyReduce_14

action_97 (30) = happyShift action_120
action_97 _ = happyReduce_12

action_98 (20) = happyShift action_16
action_98 (29) = happyShift action_17
action_98 (31) = happyShift action_18
action_98 (38) = happyShift action_19
action_98 (39) = happyShift action_20
action_98 (65) = happyShift action_21
action_98 (5) = happyGoto action_119
action_98 (6) = happyGoto action_9
action_98 (7) = happyGoto action_10
action_98 (9) = happyGoto action_11
action_98 (11) = happyGoto action_12
action_98 (14) = happyGoto action_13
action_98 (15) = happyGoto action_14
action_98 (17) = happyGoto action_15
action_98 _ = happyReduce_4

action_99 _ = happyReduce_16

action_100 (20) = happyShift action_16
action_100 (29) = happyShift action_17
action_100 (31) = happyShift action_18
action_100 (38) = happyShift action_19
action_100 (39) = happyShift action_20
action_100 (65) = happyShift action_21
action_100 (5) = happyGoto action_118
action_100 (6) = happyGoto action_9
action_100 (7) = happyGoto action_10
action_100 (9) = happyGoto action_11
action_100 (11) = happyGoto action_12
action_100 (14) = happyGoto action_13
action_100 (15) = happyGoto action_14
action_100 (17) = happyGoto action_15
action_100 _ = happyReduce_4

action_101 (20) = happyShift action_42
action_101 (21) = happyShift action_43
action_101 (22) = happyShift action_44
action_101 (23) = happyShift action_65
action_101 (24) = happyShift action_45
action_101 (41) = happyShift action_46
action_101 (53) = happyShift action_47
action_101 (62) = happyShift action_48
action_101 (63) = happyShift action_49
action_101 (64) = happyShift action_50
action_101 (8) = happyGoto action_39
action_101 (13) = happyGoto action_117
action_101 (16) = happyGoto action_63
action_101 (18) = happyGoto action_41
action_101 (19) = happyGoto action_64
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (20) = happyShift action_42
action_102 (21) = happyShift action_43
action_102 (22) = happyShift action_44
action_102 (23) = happyShift action_65
action_102 (24) = happyShift action_45
action_102 (41) = happyShift action_46
action_102 (53) = happyShift action_47
action_102 (62) = happyShift action_48
action_102 (63) = happyShift action_49
action_102 (64) = happyShift action_50
action_102 (8) = happyGoto action_39
action_102 (13) = happyGoto action_116
action_102 (16) = happyGoto action_63
action_102 (18) = happyGoto action_41
action_102 (19) = happyGoto action_64
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (40) = happyShift action_66
action_103 (41) = happyShift action_67
action_103 (42) = happyShift action_68
action_103 (43) = happyShift action_69
action_103 (44) = happyShift action_70
action_103 (45) = happyShift action_71
action_103 (46) = happyShift action_72
action_103 (47) = happyShift action_73
action_103 (48) = happyShift action_74
action_103 (49) = happyShift action_75
action_103 (50) = happyShift action_76
action_103 (51) = happyShift action_77
action_103 _ = happyReduce_41

action_104 (40) = happyShift action_66
action_104 (41) = happyShift action_67
action_104 (42) = happyShift action_68
action_104 (43) = happyShift action_69
action_104 (44) = happyShift action_70
action_104 (45) = happyShift action_71
action_104 (46) = happyShift action_72
action_104 (47) = happyShift action_73
action_104 (48) = happyShift action_74
action_104 (49) = happyShift action_75
action_104 (50) = happyShift action_76
action_104 _ = happyReduce_40

action_105 (40) = happyShift action_66
action_105 (41) = happyShift action_67
action_105 (42) = happyShift action_68
action_105 (43) = happyShift action_69
action_105 (44) = happyShift action_70
action_105 (45) = happyShift action_71
action_105 (46) = happyShift action_72
action_105 (47) = happyShift action_73
action_105 (48) = happyShift action_74
action_105 (49) = happyFail []
action_105 (50) = happyFail []
action_105 _ = happyReduce_47

action_106 (40) = happyShift action_66
action_106 (41) = happyShift action_67
action_106 (42) = happyShift action_68
action_106 (43) = happyShift action_69
action_106 (44) = happyShift action_70
action_106 (45) = happyShift action_71
action_106 (46) = happyShift action_72
action_106 (47) = happyShift action_73
action_106 (48) = happyShift action_74
action_106 (49) = happyFail []
action_106 (50) = happyFail []
action_106 _ = happyReduce_46

action_107 (40) = happyShift action_66
action_107 (41) = happyShift action_67
action_107 (42) = happyShift action_68
action_107 (43) = happyShift action_69
action_107 (44) = happyShift action_70
action_107 (45) = happyFail []
action_107 (46) = happyFail []
action_107 (47) = happyFail []
action_107 (48) = happyFail []
action_107 _ = happyReduce_45

action_108 (40) = happyShift action_66
action_108 (41) = happyShift action_67
action_108 (42) = happyShift action_68
action_108 (43) = happyShift action_69
action_108 (44) = happyShift action_70
action_108 (45) = happyFail []
action_108 (46) = happyFail []
action_108 (47) = happyFail []
action_108 (48) = happyFail []
action_108 _ = happyReduce_44

action_109 (40) = happyShift action_66
action_109 (41) = happyShift action_67
action_109 (42) = happyShift action_68
action_109 (43) = happyShift action_69
action_109 (44) = happyShift action_70
action_109 (45) = happyFail []
action_109 (46) = happyFail []
action_109 (47) = happyFail []
action_109 (48) = happyFail []
action_109 _ = happyReduce_43

action_110 (40) = happyShift action_66
action_110 (41) = happyShift action_67
action_110 (42) = happyShift action_68
action_110 (43) = happyShift action_69
action_110 (44) = happyShift action_70
action_110 (45) = happyFail []
action_110 (46) = happyFail []
action_110 (47) = happyFail []
action_110 (48) = happyFail []
action_110 _ = happyReduce_42

action_111 _ = happyReduce_39

action_112 _ = happyReduce_38

action_113 _ = happyReduce_37

action_114 (42) = happyShift action_68
action_114 (43) = happyShift action_69
action_114 (44) = happyShift action_70
action_114 _ = happyReduce_36

action_115 (42) = happyShift action_68
action_115 (43) = happyShift action_69
action_115 (44) = happyShift action_70
action_115 _ = happyReduce_35

action_116 _ = happyReduce_26

action_117 _ = happyReduce_27

action_118 (27) = happyShift action_123
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (27) = happyShift action_122
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (20) = happyShift action_16
action_120 (26) = happyShift action_98
action_120 (29) = happyShift action_17
action_120 (31) = happyShift action_18
action_120 (38) = happyShift action_19
action_120 (39) = happyShift action_20
action_120 (65) = happyShift action_21
action_120 (6) = happyGoto action_96
action_120 (7) = happyGoto action_10
action_120 (9) = happyGoto action_11
action_120 (10) = happyGoto action_121
action_120 (11) = happyGoto action_12
action_120 (14) = happyGoto action_13
action_120 (15) = happyGoto action_14
action_120 (17) = happyGoto action_15
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_13

action_122 _ = happyReduce_15

action_123 _ = happyReduce_17

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
		 (ProgramNode happy_var_6
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  5 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

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
happyReduction_5 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintNode happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 _
	_
	_
	 =  HappyAbsSyn8
		 (ReadlnNode
	)

happyReduce_12 = happyReduce 5 9 happyReduction_12
happyReduction_12 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfNode happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 7 9 happyReduction_13
happyReduction_13 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfElseNode happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  10 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 5 11 happyReduction_16
happyReduction_16 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (WhileNode happy_var_3 [happy_var_5]
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 11 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (WhileNode happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn12
		 (IntType
	)

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn12
		 (FloatType
	)

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn12
		 (BoolType
	)

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn12
		 (StringType
	)

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  13 happyReduction_23
happyReduction_23 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 14 happyReduction_24
happyReduction_24 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (VarDecl (IdNode happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 14 happyReduction_25
happyReduction_25 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ValDecl (IdNode happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 14 happyReduction_26
happyReduction_26 ((HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (VarDeclTyped (IdNode happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 14 happyReduction_27
happyReduction_27 ((HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ValDeclTyped (IdNode happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_3  15 happyReduction_28
happyReduction_28 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  15 happyReduction_29
happyReduction_29 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (AddAssignNode happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (SubAssignNode happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (MultAssignNode happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  15 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (DivAssignNode happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  15 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (ModAssignNode happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  16 happyReduction_45
happyReduction_45 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  16 happyReduction_46
happyReduction_46 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  16 happyReduction_47
happyReduction_47 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  16 happyReduction_48
happyReduction_48 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (NotNode happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  16 happyReduction_49
happyReduction_49 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  16 happyReduction_50
happyReduction_50 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  16 happyReduction_51
happyReduction_51 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  17 happyReduction_52
happyReduction_52 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (IncrNode (IdNode happy_var_1)
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_2  17 happyReduction_53
happyReduction_53 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (DecrNode (IdNode happy_var_1)
	)
happyReduction_53 _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  18 happyReduction_54
happyReduction_54 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn18
		 (IdNode happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  18 happyReduction_55
happyReduction_55 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn18
		 (NumNode happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  18 happyReduction_56
happyReduction_56 (HappyTerminal (REAL happy_var_1))
	 =  HappyAbsSyn18
		 (RealNode happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  18 happyReduction_57
happyReduction_57 _
	 =  HappyAbsSyn18
		 (BoolNode True
	)

happyReduce_58 = happySpecReduce_1  18 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn18
		 (BoolNode False
	)

happyReduce_59 = happySpecReduce_3  18 happyReduction_59
happyReduction_59 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  19 happyReduction_60
happyReduction_60 (HappyTerminal (STR happy_var_1))
	 =  HappyAbsSyn19
		 (StringNode happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 67 67 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ID happy_dollar_dollar -> cont 20;
	NUM happy_dollar_dollar -> cont 21;
	REAL happy_dollar_dollar -> cont 22;
	STR happy_dollar_dollar -> cont 23;
	LPAREN -> cont 24;
	RPAREN -> cont 25;
	LBRACE -> cont 26;
	RBRACE -> cont 27;
	SEMICOLON -> cont 28;
	IF -> cont 29;
	ELSE -> cont 30;
	WHILE -> cont 31;
	INT -> cont 32;
	FLOAT -> cont 33;
	BOOLEAN -> cont 34;
	STRING -> cont 35;
	FUN -> cont 36;
	MAIN -> cont 37;
	VAL -> cont 38;
	VAR -> cont 39;
	PLUS -> cont 40;
	MINUS -> cont 41;
	MULT -> cont 42;
	DIV -> cont 43;
	MOD -> cont 44;
	G -> cont 45;
	GEQ -> cont 46;
	L -> cont 47;
	LEQ -> cont 48;
	EQUAL -> cont 49;
	NEQUAL -> cont 50;
	AND -> cont 51;
	OR -> cont 52;
	NOT -> cont 53;
	ICR -> cont 54;
	DCR -> cont 55;
	ATRIB -> cont 56;
	ATRIB_PLUS -> cont 57;
	ATRIB_MINUS -> cont 58;
	ATRIB_MULT -> cont 59;
	ATRIB_DIV -> cont 60;
	ATRIB_MOD -> cont 61;
	TRUE -> cont 62;
	FALSE -> cont 63;
	READLN -> cont 64;
	PRINT -> cont 65;
	COLON -> cont 66;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 67 tk tks = happyError' (tks, explist)
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


-- Estrutura da AST (Árvore Sintática Abstrata) com tipos e nós de operações
data Exp = ProgramNode [Exp]             -- Nó para encapsular a lista principal de comandos
         | NumNode Int
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
         | VarDecl Exp Exp
         | VarDeclTyped Exp Type Exp
         | ValDecl Exp Exp
         | ValDeclTyped Exp Type Exp
         | AssignNode String Exp
         | AddAssignNode String Exp
         | SubAssignNode String Exp
         | MultAssignNode String Exp
         | DivAssignNode String Exp
         | ModAssignNode String Exp
         deriving (Show, Eq)

data Type = IntType | FloatType | BoolType | StringType deriving (Show, Eq)

parseError :: [Token] -> a
parseError toks = error $ "Erro de parsing: " ++ show toks
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
