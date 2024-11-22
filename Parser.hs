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
happyExpList = Happy_Data_Array.listArray (0,472) ([0,0,8,0,0,0,64,0,0,0,1024,0,0,0,0,0,0,0,8,0,0,0,128,0,0,0,2048,0,0,0,5888,3082,512,60,0,4,0,0,49152,709,32771,3840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65408,15,0,0,0,0,0,0,0,0,0,0,0,49152,63,0,0,0,0,0,0,0,0,0,736,0,32832,1,4096,0,0,0,32768,0,0,0,16384,0,0,0,0,2,0,0,0,368,0,49184,0,0,0,0,0,0,0,0,0,0,2,0,0,0,16,0,0,0,248,0,57360,0,2048,0,0,0,0,0,0,0,0,0,49152,0,0,0,0,8200,0,0,0,64,1,736,0,32832,1,5888,0,512,12,0,32769,4095,0,0,0,0,0,0,0,0,0,0,368,0,49184,0,2944,0,256,6,23552,0,2048,48,57344,2,16384,384,0,23,0,3074,0,184,0,24592,0,1472,0,128,3,11776,0,1024,24,28672,1,8192,192,32768,11,0,1537,0,92,0,12296,0,736,0,32832,1,5888,0,512,12,47104,0,4096,96,49152,5,32768,768,0,46,0,6148,0,368,0,49184,0,2944,0,256,6,23552,0,2048,48,0,0,0,0,0,2583,12,15362,0,0,0,0,0,0,0,0,0,0,57344,511,0,0,0,2047,0,0,0,4088,0,0,0,32704,0,0,0,15872,0,0,0,61440,1,0,0,32768,15,0,0,0,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,56,0,0,0,65520,1,0,0,65408,15,0,0,64512,127,0,0,57344,1023,0,0,0,8191,0,0,0,65528,0,0,0,0,0,0,1024,65024,63,0,8192,61440,511,0,63488,0,4096,224,0,15360,0,0,0,62,0,14340,0,0,15,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,65520,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,42352,192,49184,3,11136,1541,256,30,0,0,0,0,0,0,0,0,0,2583,12,15362,0,0,0,0,0,34240,770,128,15,15872,0,1024,56,61440,1,8192,448,0,0,0,0,0,0,0,0,0,4096,0,0,0,32768,0,0,0,47104,24658,4096,480,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

action_7 (20) = happyShift action_19
action_7 (21) = happyShift action_20
action_7 (22) = happyShift action_21
action_7 (24) = happyShift action_22
action_7 (29) = happyShift action_23
action_7 (31) = happyShift action_24
action_7 (38) = happyShift action_25
action_7 (39) = happyShift action_26
action_7 (53) = happyShift action_27
action_7 (62) = happyShift action_28
action_7 (63) = happyShift action_29
action_7 (64) = happyShift action_30
action_7 (65) = happyShift action_31
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (7) = happyGoto action_10
action_7 (8) = happyGoto action_11
action_7 (9) = happyGoto action_12
action_7 (11) = happyGoto action_13
action_7 (14) = happyGoto action_14
action_7 (15) = happyGoto action_15
action_7 (16) = happyGoto action_16
action_7 (17) = happyGoto action_17
action_7 (18) = happyGoto action_18
action_7 _ = happyReduce_4

action_8 (27) = happyShift action_64
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (20) = happyShift action_19
action_9 (21) = happyShift action_20
action_9 (22) = happyShift action_21
action_9 (24) = happyShift action_22
action_9 (28) = happyShift action_63
action_9 (29) = happyShift action_23
action_9 (31) = happyShift action_24
action_9 (38) = happyShift action_25
action_9 (39) = happyShift action_26
action_9 (53) = happyShift action_27
action_9 (62) = happyShift action_28
action_9 (63) = happyShift action_29
action_9 (64) = happyShift action_30
action_9 (65) = happyShift action_31
action_9 (5) = happyGoto action_62
action_9 (6) = happyGoto action_9
action_9 (7) = happyGoto action_10
action_9 (8) = happyGoto action_11
action_9 (9) = happyGoto action_12
action_9 (11) = happyGoto action_13
action_9 (14) = happyGoto action_14
action_9 (15) = happyGoto action_15
action_9 (16) = happyGoto action_16
action_9 (17) = happyGoto action_17
action_9 (18) = happyGoto action_18
action_9 _ = happyReduce_4

action_10 _ = happyReduce_10

action_11 _ = happyReduce_11

action_12 _ = happyReduce_8

action_13 _ = happyReduce_9

action_14 _ = happyReduce_5

action_15 _ = happyReduce_6

action_16 (40) = happyShift action_49
action_16 (41) = happyShift action_50
action_16 (42) = happyShift action_51
action_16 (43) = happyShift action_52
action_16 (44) = happyShift action_53
action_16 (45) = happyShift action_54
action_16 (46) = happyShift action_55
action_16 (47) = happyShift action_56
action_16 (48) = happyShift action_57
action_16 (49) = happyShift action_58
action_16 (50) = happyShift action_59
action_16 (51) = happyShift action_60
action_16 (52) = happyShift action_61
action_16 _ = happyReduce_7

action_17 _ = happyReduce_42

action_18 _ = happyReduce_52

action_19 (54) = happyShift action_41
action_19 (55) = happyShift action_42
action_19 (56) = happyShift action_43
action_19 (57) = happyShift action_44
action_19 (58) = happyShift action_45
action_19 (59) = happyShift action_46
action_19 (60) = happyShift action_47
action_19 (61) = happyShift action_48
action_19 _ = happyReduce_55

action_20 _ = happyReduce_56

action_21 _ = happyReduce_57

action_22 (20) = happyShift action_35
action_22 (21) = happyShift action_20
action_22 (22) = happyShift action_21
action_22 (24) = happyShift action_22
action_22 (53) = happyShift action_27
action_22 (62) = happyShift action_28
action_22 (63) = happyShift action_29
action_22 (16) = happyGoto action_40
action_22 (17) = happyGoto action_17
action_22 (18) = happyGoto action_18
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (24) = happyShift action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (24) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (20) = happyShift action_37
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (20) = happyShift action_36
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (20) = happyShift action_35
action_27 (21) = happyShift action_20
action_27 (22) = happyShift action_21
action_27 (24) = happyShift action_22
action_27 (53) = happyShift action_27
action_27 (62) = happyShift action_28
action_27 (63) = happyShift action_29
action_27 (16) = happyGoto action_34
action_27 (17) = happyGoto action_17
action_27 (18) = happyGoto action_18
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_58

action_29 _ = happyReduce_59

action_30 (24) = happyShift action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (24) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (20) = happyShift action_35
action_32 (21) = happyShift action_20
action_32 (22) = happyShift action_21
action_32 (23) = happyShift action_97
action_32 (24) = happyShift action_22
action_32 (53) = happyShift action_27
action_32 (62) = happyShift action_28
action_32 (63) = happyShift action_29
action_32 (64) = happyShift action_30
action_32 (8) = happyGoto action_93
action_32 (13) = happyGoto action_94
action_32 (16) = happyGoto action_95
action_32 (17) = happyGoto action_17
action_32 (18) = happyGoto action_18
action_32 (19) = happyGoto action_96
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (25) = happyShift action_92
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_51

action_35 (54) = happyShift action_41
action_35 (55) = happyShift action_42
action_35 _ = happyReduce_55

action_36 (56) = happyShift action_90
action_36 (66) = happyShift action_91
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (56) = happyShift action_88
action_37 (66) = happyShift action_89
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (20) = happyShift action_35
action_38 (21) = happyShift action_20
action_38 (22) = happyShift action_21
action_38 (24) = happyShift action_22
action_38 (53) = happyShift action_27
action_38 (62) = happyShift action_28
action_38 (63) = happyShift action_29
action_38 (16) = happyGoto action_87
action_38 (17) = happyGoto action_17
action_38 (18) = happyGoto action_18
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (20) = happyShift action_35
action_39 (21) = happyShift action_20
action_39 (22) = happyShift action_21
action_39 (24) = happyShift action_22
action_39 (53) = happyShift action_27
action_39 (62) = happyShift action_28
action_39 (63) = happyShift action_29
action_39 (16) = happyGoto action_86
action_39 (17) = happyGoto action_17
action_39 (18) = happyGoto action_18
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (25) = happyShift action_85
action_40 (40) = happyShift action_49
action_40 (41) = happyShift action_50
action_40 (42) = happyShift action_51
action_40 (43) = happyShift action_52
action_40 (44) = happyShift action_53
action_40 (45) = happyShift action_54
action_40 (46) = happyShift action_55
action_40 (47) = happyShift action_56
action_40 (48) = happyShift action_57
action_40 (49) = happyShift action_58
action_40 (50) = happyShift action_59
action_40 (51) = happyShift action_60
action_40 (52) = happyShift action_61
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_53

action_42 _ = happyReduce_54

action_43 (20) = happyShift action_35
action_43 (21) = happyShift action_20
action_43 (22) = happyShift action_21
action_43 (24) = happyShift action_22
action_43 (53) = happyShift action_27
action_43 (62) = happyShift action_28
action_43 (63) = happyShift action_29
action_43 (16) = happyGoto action_84
action_43 (17) = happyGoto action_17
action_43 (18) = happyGoto action_18
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (20) = happyShift action_35
action_44 (21) = happyShift action_20
action_44 (22) = happyShift action_21
action_44 (24) = happyShift action_22
action_44 (53) = happyShift action_27
action_44 (62) = happyShift action_28
action_44 (63) = happyShift action_29
action_44 (16) = happyGoto action_83
action_44 (17) = happyGoto action_17
action_44 (18) = happyGoto action_18
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (20) = happyShift action_35
action_45 (21) = happyShift action_20
action_45 (22) = happyShift action_21
action_45 (24) = happyShift action_22
action_45 (53) = happyShift action_27
action_45 (62) = happyShift action_28
action_45 (63) = happyShift action_29
action_45 (16) = happyGoto action_82
action_45 (17) = happyGoto action_17
action_45 (18) = happyGoto action_18
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_35
action_46 (21) = happyShift action_20
action_46 (22) = happyShift action_21
action_46 (24) = happyShift action_22
action_46 (53) = happyShift action_27
action_46 (62) = happyShift action_28
action_46 (63) = happyShift action_29
action_46 (16) = happyGoto action_81
action_46 (17) = happyGoto action_17
action_46 (18) = happyGoto action_18
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (20) = happyShift action_35
action_47 (21) = happyShift action_20
action_47 (22) = happyShift action_21
action_47 (24) = happyShift action_22
action_47 (53) = happyShift action_27
action_47 (62) = happyShift action_28
action_47 (63) = happyShift action_29
action_47 (16) = happyGoto action_80
action_47 (17) = happyGoto action_17
action_47 (18) = happyGoto action_18
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (20) = happyShift action_35
action_48 (21) = happyShift action_20
action_48 (22) = happyShift action_21
action_48 (24) = happyShift action_22
action_48 (53) = happyShift action_27
action_48 (62) = happyShift action_28
action_48 (63) = happyShift action_29
action_48 (16) = happyGoto action_79
action_48 (17) = happyGoto action_17
action_48 (18) = happyGoto action_18
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (20) = happyShift action_35
action_49 (21) = happyShift action_20
action_49 (22) = happyShift action_21
action_49 (24) = happyShift action_22
action_49 (53) = happyShift action_27
action_49 (62) = happyShift action_28
action_49 (63) = happyShift action_29
action_49 (16) = happyGoto action_78
action_49 (17) = happyGoto action_17
action_49 (18) = happyGoto action_18
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (20) = happyShift action_35
action_50 (21) = happyShift action_20
action_50 (22) = happyShift action_21
action_50 (24) = happyShift action_22
action_50 (53) = happyShift action_27
action_50 (62) = happyShift action_28
action_50 (63) = happyShift action_29
action_50 (16) = happyGoto action_77
action_50 (17) = happyGoto action_17
action_50 (18) = happyGoto action_18
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (20) = happyShift action_35
action_51 (21) = happyShift action_20
action_51 (22) = happyShift action_21
action_51 (24) = happyShift action_22
action_51 (53) = happyShift action_27
action_51 (62) = happyShift action_28
action_51 (63) = happyShift action_29
action_51 (16) = happyGoto action_76
action_51 (17) = happyGoto action_17
action_51 (18) = happyGoto action_18
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (20) = happyShift action_35
action_52 (21) = happyShift action_20
action_52 (22) = happyShift action_21
action_52 (24) = happyShift action_22
action_52 (53) = happyShift action_27
action_52 (62) = happyShift action_28
action_52 (63) = happyShift action_29
action_52 (16) = happyGoto action_75
action_52 (17) = happyGoto action_17
action_52 (18) = happyGoto action_18
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (20) = happyShift action_35
action_53 (21) = happyShift action_20
action_53 (22) = happyShift action_21
action_53 (24) = happyShift action_22
action_53 (53) = happyShift action_27
action_53 (62) = happyShift action_28
action_53 (63) = happyShift action_29
action_53 (16) = happyGoto action_74
action_53 (17) = happyGoto action_17
action_53 (18) = happyGoto action_18
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (20) = happyShift action_35
action_54 (21) = happyShift action_20
action_54 (22) = happyShift action_21
action_54 (24) = happyShift action_22
action_54 (53) = happyShift action_27
action_54 (62) = happyShift action_28
action_54 (63) = happyShift action_29
action_54 (16) = happyGoto action_73
action_54 (17) = happyGoto action_17
action_54 (18) = happyGoto action_18
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (20) = happyShift action_35
action_55 (21) = happyShift action_20
action_55 (22) = happyShift action_21
action_55 (24) = happyShift action_22
action_55 (53) = happyShift action_27
action_55 (62) = happyShift action_28
action_55 (63) = happyShift action_29
action_55 (16) = happyGoto action_72
action_55 (17) = happyGoto action_17
action_55 (18) = happyGoto action_18
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (20) = happyShift action_35
action_56 (21) = happyShift action_20
action_56 (22) = happyShift action_21
action_56 (24) = happyShift action_22
action_56 (53) = happyShift action_27
action_56 (62) = happyShift action_28
action_56 (63) = happyShift action_29
action_56 (16) = happyGoto action_71
action_56 (17) = happyGoto action_17
action_56 (18) = happyGoto action_18
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (20) = happyShift action_35
action_57 (21) = happyShift action_20
action_57 (22) = happyShift action_21
action_57 (24) = happyShift action_22
action_57 (53) = happyShift action_27
action_57 (62) = happyShift action_28
action_57 (63) = happyShift action_29
action_57 (16) = happyGoto action_70
action_57 (17) = happyGoto action_17
action_57 (18) = happyGoto action_18
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (20) = happyShift action_35
action_58 (21) = happyShift action_20
action_58 (22) = happyShift action_21
action_58 (24) = happyShift action_22
action_58 (53) = happyShift action_27
action_58 (62) = happyShift action_28
action_58 (63) = happyShift action_29
action_58 (16) = happyGoto action_69
action_58 (17) = happyGoto action_17
action_58 (18) = happyGoto action_18
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (20) = happyShift action_35
action_59 (21) = happyShift action_20
action_59 (22) = happyShift action_21
action_59 (24) = happyShift action_22
action_59 (53) = happyShift action_27
action_59 (62) = happyShift action_28
action_59 (63) = happyShift action_29
action_59 (16) = happyGoto action_68
action_59 (17) = happyGoto action_17
action_59 (18) = happyGoto action_18
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (20) = happyShift action_35
action_60 (21) = happyShift action_20
action_60 (22) = happyShift action_21
action_60 (24) = happyShift action_22
action_60 (53) = happyShift action_27
action_60 (62) = happyShift action_28
action_60 (63) = happyShift action_29
action_60 (16) = happyGoto action_67
action_60 (17) = happyGoto action_17
action_60 (18) = happyGoto action_18
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (20) = happyShift action_35
action_61 (21) = happyShift action_20
action_61 (22) = happyShift action_21
action_61 (24) = happyShift action_22
action_61 (53) = happyShift action_27
action_61 (62) = happyShift action_28
action_61 (63) = happyShift action_29
action_61 (16) = happyGoto action_66
action_61 (17) = happyGoto action_17
action_61 (18) = happyGoto action_18
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_3

action_63 (20) = happyShift action_19
action_63 (21) = happyShift action_20
action_63 (22) = happyShift action_21
action_63 (24) = happyShift action_22
action_63 (29) = happyShift action_23
action_63 (31) = happyShift action_24
action_63 (38) = happyShift action_25
action_63 (39) = happyShift action_26
action_63 (53) = happyShift action_27
action_63 (62) = happyShift action_28
action_63 (63) = happyShift action_29
action_63 (64) = happyShift action_30
action_63 (65) = happyShift action_31
action_63 (5) = happyGoto action_65
action_63 (6) = happyGoto action_9
action_63 (7) = happyGoto action_10
action_63 (8) = happyGoto action_11
action_63 (9) = happyGoto action_12
action_63 (11) = happyGoto action_13
action_63 (14) = happyGoto action_14
action_63 (15) = happyGoto action_15
action_63 (16) = happyGoto action_16
action_63 (17) = happyGoto action_17
action_63 (18) = happyGoto action_18
action_63 _ = happyReduce_4

action_64 _ = happyReduce_1

action_65 _ = happyReduce_2

action_66 (40) = happyShift action_49
action_66 (41) = happyShift action_50
action_66 (42) = happyShift action_51
action_66 (43) = happyShift action_52
action_66 (44) = happyShift action_53
action_66 (45) = happyShift action_54
action_66 (46) = happyShift action_55
action_66 (47) = happyShift action_56
action_66 (48) = happyShift action_57
action_66 (49) = happyShift action_58
action_66 (50) = happyShift action_59
action_66 (51) = happyShift action_60
action_66 _ = happyReduce_44

action_67 (40) = happyShift action_49
action_67 (41) = happyShift action_50
action_67 (42) = happyShift action_51
action_67 (43) = happyShift action_52
action_67 (44) = happyShift action_53
action_67 (45) = happyShift action_54
action_67 (46) = happyShift action_55
action_67 (47) = happyShift action_56
action_67 (48) = happyShift action_57
action_67 (49) = happyShift action_58
action_67 (50) = happyShift action_59
action_67 _ = happyReduce_43

action_68 (40) = happyShift action_49
action_68 (41) = happyShift action_50
action_68 (42) = happyShift action_51
action_68 (43) = happyShift action_52
action_68 (44) = happyShift action_53
action_68 (45) = happyShift action_54
action_68 (46) = happyShift action_55
action_68 (47) = happyShift action_56
action_68 (48) = happyShift action_57
action_68 (49) = happyFail []
action_68 (50) = happyFail []
action_68 _ = happyReduce_50

action_69 (40) = happyShift action_49
action_69 (41) = happyShift action_50
action_69 (42) = happyShift action_51
action_69 (43) = happyShift action_52
action_69 (44) = happyShift action_53
action_69 (45) = happyShift action_54
action_69 (46) = happyShift action_55
action_69 (47) = happyShift action_56
action_69 (48) = happyShift action_57
action_69 (49) = happyFail []
action_69 (50) = happyFail []
action_69 _ = happyReduce_49

action_70 (40) = happyShift action_49
action_70 (41) = happyShift action_50
action_70 (42) = happyShift action_51
action_70 (43) = happyShift action_52
action_70 (44) = happyShift action_53
action_70 (45) = happyFail []
action_70 (46) = happyFail []
action_70 (47) = happyFail []
action_70 (48) = happyFail []
action_70 _ = happyReduce_48

action_71 (40) = happyShift action_49
action_71 (41) = happyShift action_50
action_71 (42) = happyShift action_51
action_71 (43) = happyShift action_52
action_71 (44) = happyShift action_53
action_71 (45) = happyFail []
action_71 (46) = happyFail []
action_71 (47) = happyFail []
action_71 (48) = happyFail []
action_71 _ = happyReduce_47

action_72 (40) = happyShift action_49
action_72 (41) = happyShift action_50
action_72 (42) = happyShift action_51
action_72 (43) = happyShift action_52
action_72 (44) = happyShift action_53
action_72 (45) = happyFail []
action_72 (46) = happyFail []
action_72 (47) = happyFail []
action_72 (48) = happyFail []
action_72 _ = happyReduce_46

action_73 (40) = happyShift action_49
action_73 (41) = happyShift action_50
action_73 (42) = happyShift action_51
action_73 (43) = happyShift action_52
action_73 (44) = happyShift action_53
action_73 (45) = happyFail []
action_73 (46) = happyFail []
action_73 (47) = happyFail []
action_73 (48) = happyFail []
action_73 _ = happyReduce_45

action_74 _ = happyReduce_41

action_75 _ = happyReduce_40

action_76 _ = happyReduce_39

action_77 (42) = happyShift action_51
action_77 (43) = happyShift action_52
action_77 (44) = happyShift action_53
action_77 _ = happyReduce_38

action_78 (42) = happyShift action_51
action_78 (43) = happyShift action_52
action_78 (44) = happyShift action_53
action_78 _ = happyReduce_37

action_79 (40) = happyShift action_49
action_79 (41) = happyShift action_50
action_79 (42) = happyShift action_51
action_79 (43) = happyShift action_52
action_79 (44) = happyShift action_53
action_79 (45) = happyShift action_54
action_79 (46) = happyShift action_55
action_79 (47) = happyShift action_56
action_79 (48) = happyShift action_57
action_79 (49) = happyShift action_58
action_79 (50) = happyShift action_59
action_79 (51) = happyShift action_60
action_79 (52) = happyShift action_61
action_79 _ = happyReduce_36

action_80 (40) = happyShift action_49
action_80 (41) = happyShift action_50
action_80 (42) = happyShift action_51
action_80 (43) = happyShift action_52
action_80 (44) = happyShift action_53
action_80 (45) = happyShift action_54
action_80 (46) = happyShift action_55
action_80 (47) = happyShift action_56
action_80 (48) = happyShift action_57
action_80 (49) = happyShift action_58
action_80 (50) = happyShift action_59
action_80 (51) = happyShift action_60
action_80 (52) = happyShift action_61
action_80 _ = happyReduce_35

action_81 (40) = happyShift action_49
action_81 (41) = happyShift action_50
action_81 (42) = happyShift action_51
action_81 (43) = happyShift action_52
action_81 (44) = happyShift action_53
action_81 (45) = happyShift action_54
action_81 (46) = happyShift action_55
action_81 (47) = happyShift action_56
action_81 (48) = happyShift action_57
action_81 (49) = happyShift action_58
action_81 (50) = happyShift action_59
action_81 (51) = happyShift action_60
action_81 (52) = happyShift action_61
action_81 _ = happyReduce_34

action_82 (40) = happyShift action_49
action_82 (41) = happyShift action_50
action_82 (42) = happyShift action_51
action_82 (43) = happyShift action_52
action_82 (44) = happyShift action_53
action_82 (45) = happyShift action_54
action_82 (46) = happyShift action_55
action_82 (47) = happyShift action_56
action_82 (48) = happyShift action_57
action_82 (49) = happyShift action_58
action_82 (50) = happyShift action_59
action_82 (51) = happyShift action_60
action_82 (52) = happyShift action_61
action_82 _ = happyReduce_33

action_83 (40) = happyShift action_49
action_83 (41) = happyShift action_50
action_83 (42) = happyShift action_51
action_83 (43) = happyShift action_52
action_83 (44) = happyShift action_53
action_83 (45) = happyShift action_54
action_83 (46) = happyShift action_55
action_83 (47) = happyShift action_56
action_83 (48) = happyShift action_57
action_83 (49) = happyShift action_58
action_83 (50) = happyShift action_59
action_83 (51) = happyShift action_60
action_83 (52) = happyShift action_61
action_83 _ = happyReduce_32

action_84 (40) = happyShift action_49
action_84 (41) = happyShift action_50
action_84 (42) = happyShift action_51
action_84 (43) = happyShift action_52
action_84 (44) = happyShift action_53
action_84 (45) = happyShift action_54
action_84 (46) = happyShift action_55
action_84 (47) = happyShift action_56
action_84 (48) = happyShift action_57
action_84 (49) = happyShift action_58
action_84 (50) = happyShift action_59
action_84 (51) = happyShift action_60
action_84 (52) = happyShift action_61
action_84 _ = happyReduce_31

action_85 _ = happyReduce_60

action_86 (25) = happyShift action_108
action_86 (40) = happyShift action_49
action_86 (41) = happyShift action_50
action_86 (42) = happyShift action_51
action_86 (43) = happyShift action_52
action_86 (44) = happyShift action_53
action_86 (45) = happyShift action_54
action_86 (46) = happyShift action_55
action_86 (47) = happyShift action_56
action_86 (48) = happyShift action_57
action_86 (49) = happyShift action_58
action_86 (50) = happyShift action_59
action_86 (51) = happyShift action_60
action_86 (52) = happyShift action_61
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (25) = happyShift action_107
action_87 (40) = happyShift action_49
action_87 (41) = happyShift action_50
action_87 (42) = happyShift action_51
action_87 (43) = happyShift action_52
action_87 (44) = happyShift action_53
action_87 (45) = happyShift action_54
action_87 (46) = happyShift action_55
action_87 (47) = happyShift action_56
action_87 (48) = happyShift action_57
action_87 (49) = happyShift action_58
action_87 (50) = happyShift action_59
action_87 (51) = happyShift action_60
action_87 (52) = happyShift action_61
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (20) = happyShift action_35
action_88 (21) = happyShift action_20
action_88 (22) = happyShift action_21
action_88 (23) = happyShift action_97
action_88 (24) = happyShift action_22
action_88 (53) = happyShift action_27
action_88 (62) = happyShift action_28
action_88 (63) = happyShift action_29
action_88 (64) = happyShift action_30
action_88 (8) = happyGoto action_93
action_88 (13) = happyGoto action_106
action_88 (16) = happyGoto action_95
action_88 (17) = happyGoto action_17
action_88 (18) = happyGoto action_18
action_88 (19) = happyGoto action_96
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (32) = happyShift action_100
action_89 (33) = happyShift action_101
action_89 (34) = happyShift action_102
action_89 (35) = happyShift action_103
action_89 (12) = happyGoto action_105
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (20) = happyShift action_35
action_90 (21) = happyShift action_20
action_90 (22) = happyShift action_21
action_90 (23) = happyShift action_97
action_90 (24) = happyShift action_22
action_90 (53) = happyShift action_27
action_90 (62) = happyShift action_28
action_90 (63) = happyShift action_29
action_90 (64) = happyShift action_30
action_90 (8) = happyGoto action_93
action_90 (13) = happyGoto action_104
action_90 (16) = happyGoto action_95
action_90 (17) = happyGoto action_17
action_90 (18) = happyGoto action_18
action_90 (19) = happyGoto action_96
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (32) = happyShift action_100
action_91 (33) = happyShift action_101
action_91 (34) = happyShift action_102
action_91 (35) = happyShift action_103
action_91 (12) = happyGoto action_99
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_13

action_93 _ = happyReduce_26

action_94 (25) = happyShift action_98
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (40) = happyShift action_49
action_95 (41) = happyShift action_50
action_95 (42) = happyShift action_51
action_95 (43) = happyShift action_52
action_95 (44) = happyShift action_53
action_95 (45) = happyShift action_54
action_95 (46) = happyShift action_55
action_95 (47) = happyShift action_56
action_95 (48) = happyShift action_57
action_95 (49) = happyShift action_58
action_95 (50) = happyShift action_59
action_95 (51) = happyShift action_60
action_95 (52) = happyShift action_61
action_95 _ = happyReduce_24

action_96 _ = happyReduce_25

action_97 _ = happyReduce_61

action_98 _ = happyReduce_12

action_99 (56) = happyShift action_115
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_20

action_101 _ = happyReduce_21

action_102 _ = happyReduce_22

action_103 _ = happyReduce_23

action_104 _ = happyReduce_27

action_105 (56) = happyShift action_114
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_28

action_107 (20) = happyShift action_19
action_107 (21) = happyShift action_20
action_107 (22) = happyShift action_21
action_107 (24) = happyShift action_22
action_107 (26) = happyShift action_113
action_107 (29) = happyShift action_23
action_107 (31) = happyShift action_24
action_107 (38) = happyShift action_25
action_107 (39) = happyShift action_26
action_107 (53) = happyShift action_27
action_107 (62) = happyShift action_28
action_107 (63) = happyShift action_29
action_107 (64) = happyShift action_30
action_107 (65) = happyShift action_31
action_107 (6) = happyGoto action_112
action_107 (7) = happyGoto action_10
action_107 (8) = happyGoto action_11
action_107 (9) = happyGoto action_12
action_107 (11) = happyGoto action_13
action_107 (14) = happyGoto action_14
action_107 (15) = happyGoto action_15
action_107 (16) = happyGoto action_16
action_107 (17) = happyGoto action_17
action_107 (18) = happyGoto action_18
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (20) = happyShift action_19
action_108 (21) = happyShift action_20
action_108 (22) = happyShift action_21
action_108 (24) = happyShift action_22
action_108 (26) = happyShift action_111
action_108 (29) = happyShift action_23
action_108 (31) = happyShift action_24
action_108 (38) = happyShift action_25
action_108 (39) = happyShift action_26
action_108 (53) = happyShift action_27
action_108 (62) = happyShift action_28
action_108 (63) = happyShift action_29
action_108 (64) = happyShift action_30
action_108 (65) = happyShift action_31
action_108 (6) = happyGoto action_109
action_108 (7) = happyGoto action_10
action_108 (8) = happyGoto action_11
action_108 (9) = happyGoto action_12
action_108 (10) = happyGoto action_110
action_108 (11) = happyGoto action_13
action_108 (14) = happyGoto action_14
action_108 (15) = happyGoto action_15
action_108 (16) = happyGoto action_16
action_108 (17) = happyGoto action_17
action_108 (18) = happyGoto action_18
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_16

action_110 (30) = happyShift action_120
action_110 _ = happyReduce_14

action_111 (20) = happyShift action_19
action_111 (21) = happyShift action_20
action_111 (22) = happyShift action_21
action_111 (24) = happyShift action_22
action_111 (29) = happyShift action_23
action_111 (31) = happyShift action_24
action_111 (38) = happyShift action_25
action_111 (39) = happyShift action_26
action_111 (53) = happyShift action_27
action_111 (62) = happyShift action_28
action_111 (63) = happyShift action_29
action_111 (64) = happyShift action_30
action_111 (65) = happyShift action_31
action_111 (5) = happyGoto action_119
action_111 (6) = happyGoto action_9
action_111 (7) = happyGoto action_10
action_111 (8) = happyGoto action_11
action_111 (9) = happyGoto action_12
action_111 (11) = happyGoto action_13
action_111 (14) = happyGoto action_14
action_111 (15) = happyGoto action_15
action_111 (16) = happyGoto action_16
action_111 (17) = happyGoto action_17
action_111 (18) = happyGoto action_18
action_111 _ = happyReduce_4

action_112 _ = happyReduce_18

action_113 (20) = happyShift action_19
action_113 (21) = happyShift action_20
action_113 (22) = happyShift action_21
action_113 (24) = happyShift action_22
action_113 (29) = happyShift action_23
action_113 (31) = happyShift action_24
action_113 (38) = happyShift action_25
action_113 (39) = happyShift action_26
action_113 (53) = happyShift action_27
action_113 (62) = happyShift action_28
action_113 (63) = happyShift action_29
action_113 (64) = happyShift action_30
action_113 (65) = happyShift action_31
action_113 (5) = happyGoto action_118
action_113 (6) = happyGoto action_9
action_113 (7) = happyGoto action_10
action_113 (8) = happyGoto action_11
action_113 (9) = happyGoto action_12
action_113 (11) = happyGoto action_13
action_113 (14) = happyGoto action_14
action_113 (15) = happyGoto action_15
action_113 (16) = happyGoto action_16
action_113 (17) = happyGoto action_17
action_113 (18) = happyGoto action_18
action_113 _ = happyReduce_4

action_114 (20) = happyShift action_35
action_114 (21) = happyShift action_20
action_114 (22) = happyShift action_21
action_114 (23) = happyShift action_97
action_114 (24) = happyShift action_22
action_114 (53) = happyShift action_27
action_114 (62) = happyShift action_28
action_114 (63) = happyShift action_29
action_114 (64) = happyShift action_30
action_114 (8) = happyGoto action_93
action_114 (13) = happyGoto action_117
action_114 (16) = happyGoto action_95
action_114 (17) = happyGoto action_17
action_114 (18) = happyGoto action_18
action_114 (19) = happyGoto action_96
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (20) = happyShift action_35
action_115 (21) = happyShift action_20
action_115 (22) = happyShift action_21
action_115 (23) = happyShift action_97
action_115 (24) = happyShift action_22
action_115 (53) = happyShift action_27
action_115 (62) = happyShift action_28
action_115 (63) = happyShift action_29
action_115 (64) = happyShift action_30
action_115 (8) = happyGoto action_93
action_115 (13) = happyGoto action_116
action_115 (16) = happyGoto action_95
action_115 (17) = happyGoto action_17
action_115 (18) = happyGoto action_18
action_115 (19) = happyGoto action_96
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_29

action_117 _ = happyReduce_30

action_118 (27) = happyShift action_123
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (27) = happyShift action_122
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (20) = happyShift action_19
action_120 (21) = happyShift action_20
action_120 (22) = happyShift action_21
action_120 (24) = happyShift action_22
action_120 (26) = happyShift action_111
action_120 (29) = happyShift action_23
action_120 (31) = happyShift action_24
action_120 (38) = happyShift action_25
action_120 (39) = happyShift action_26
action_120 (53) = happyShift action_27
action_120 (62) = happyShift action_28
action_120 (63) = happyShift action_29
action_120 (64) = happyShift action_30
action_120 (65) = happyShift action_31
action_120 (6) = happyGoto action_109
action_120 (7) = happyGoto action_10
action_120 (8) = happyGoto action_11
action_120 (9) = happyGoto action_12
action_120 (10) = happyGoto action_121
action_120 (11) = happyGoto action_13
action_120 (14) = happyGoto action_14
action_120 (15) = happyGoto action_15
action_120 (16) = happyGoto action_16
action_120 (17) = happyGoto action_17
action_120 (18) = happyGoto action_18
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_15

action_122 _ = happyReduce_17

action_123 _ = happyReduce_19

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
happyReduction_7 (HappyAbsSyn16  happy_var_1)
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
happyReduction_9 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  6 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 7 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (PrintNode happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 _
	_
	_
	 =  HappyAbsSyn8
		 (ReadlnNode
	)

happyReduce_14 = happyReduce 5 9 happyReduction_14
happyReduction_14 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (IfNode happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 7 9 happyReduction_15
happyReduction_15 ((HappyAbsSyn10  happy_var_7) `HappyStk`
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

happyReduce_16 = happySpecReduce_1  10 happyReduction_16
happyReduction_16 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 5 11 happyReduction_18
happyReduction_18 ((HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (WhileNode happy_var_3 [happy_var_5]
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 7 11 happyReduction_19
happyReduction_19 (_ `HappyStk`
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

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn12
		 (IntType
	)

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn12
		 (FloatType
	)

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn12
		 (BoolType
	)

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn12
		 (StringType
	)

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn13
		 (ReadlnNode
	)

happyReduce_27 = happyReduce 4 14 happyReduction_27
happyReduction_27 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (VarDecl (IdNode happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 4 14 happyReduction_28
happyReduction_28 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ValDecl (IdNode happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 6 14 happyReduction_29
happyReduction_29 ((HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (VarDeclTyped (IdNode happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 6 14 happyReduction_30
happyReduction_30 ((HappyAbsSyn13  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (ValDeclTyped (IdNode happy_var_2) happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  15 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (AddAssignNode happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  15 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (SubAssignNode happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (MultAssignNode happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  15 happyReduction_35
happyReduction_35 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (DivAssignNode happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 (HappyAbsSyn16  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn15
		 (ModAssignNode happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  16 happyReduction_42
happyReduction_42 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  16 happyReduction_44
happyReduction_44 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  16 happyReduction_45
happyReduction_45 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  16 happyReduction_46
happyReduction_46 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  16 happyReduction_47
happyReduction_47 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  16 happyReduction_48
happyReduction_48 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  16 happyReduction_49
happyReduction_49 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  16 happyReduction_50
happyReduction_50 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn16
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  16 happyReduction_51
happyReduction_51 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (NotNode happy_var_2
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  16 happyReduction_52
happyReduction_52 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_2  17 happyReduction_53
happyReduction_53 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (IncrNode (IdNode happy_var_1)
	)
happyReduction_53 _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_2  17 happyReduction_54
happyReduction_54 _
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn17
		 (DecrNode (IdNode happy_var_1)
	)
happyReduction_54 _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  18 happyReduction_55
happyReduction_55 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn18
		 (IdNode happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  18 happyReduction_56
happyReduction_56 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn18
		 (NumNode happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  18 happyReduction_57
happyReduction_57 (HappyTerminal (REAL happy_var_1))
	 =  HappyAbsSyn18
		 (RealNode happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  18 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn18
		 (BoolNode True
	)

happyReduce_59 = happySpecReduce_1  18 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn18
		 (BoolNode False
	)

happyReduce_60 = happySpecReduce_3  18 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  19 happyReduction_61
happyReduction_61 (HappyTerminal (STR happy_var_1))
	 =  HappyAbsSyn19
		 (StringNode happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

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
