{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
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
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,365) ([0,0,8,0,0,0,64,0,0,0,1024,0,0,0,0,0,0,0,16,0,0,0,256,0,0,0,4096,0,0,0,11264,3082,0,32,0,8,0,0,0,651,3,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,496,0,0,0,0,0,0,0,0,768,0,0,0,57344,7,0,0,0,0,0,22,0,0,0,128,0,0,0,1024,0,0,0,1024,0,0,0,8192,0,0,0,0,8,0,0,0,120,0,14340,0,0,0,256,4,0,0,2048,32,45056,0,2048,48,32768,5,16384,384,0,64,496,0,0,0,0,0,0,2816,0,0,0,22528,0,0,0,49152,2,0,0,0,22,0,0,0,176,0,0,0,1408,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,88,0,0,0,704,0,0,0,5632,0,0,0,45056,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,28,0,0,0,224,0,0,0,1984,0,0,0,15872,0,0,0,61440,1,0,0,32768,15,0,0,0,124,0,0,0,992,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,4094,0,0,0,32768,1,0,0,0,0,0,2816,0,128,3,22528,0,1024,24,0,0,0,0,0,0,0,0,0,256,0,0,0,1920,0,32832,3,0,240,0,0,57344,1,4096,224,0,15360,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,512,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,63488,63,0,0,1,0,0,0,8,4094,0,0,36,0,3072,0,288,0,24576,0,2816,0,0,0,22528,0,0,0,49152,2,0,0,0,22,0,0,0,176,0,0,0,1408,0,0,0,32768,0,0,0,24576,24657,0,256,0,0,124,0,0,0,992,0,0,0,7936,0,0,0,63488,0,0,0,49152,7,0,0,0,62,0,0,0,0,0,0,0,0,0,0,2816,0,128,3,0,0,0,0,0,0,0,0,0,1302,6,4096,0,240,0,28680,0,1920,0,32832,3,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,4096,0,0,0,0,2,0,0,0,0,0,0,0,16,0,0,0,2604,12,8192,0,2048,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Fun","Commands","Command","Readln","Print","If","While","Type","InitExp","Decl","Assign","Expr","BoolExpr","Aexp","PostIncDecExp","AtomicBool","AtomicAexp","Sexp","id","num","str","'('","')'","'{'","'}'","if","else","while","int","float","boolean","string","fun","main","val","var","'+'","'-'","'*'","'/'","'%'","'>'","\">=\"","'<'","\"<=\"","\"==\"","\"!=\"","\"&&\"","\"||\"","'!'","\"++\"","\"--\"","'='","\"+=\"","\"-=\"","\"*=\"","\"/=\"","\"%=\"","true","false","readln","print","':'","%eof"]
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
action_0 _ = happyReduce_2

action_1 (36) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (37) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (67) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (25) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (26) = happyShift action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (27) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (22) = happyShift action_18
action_7 (23) = happyShift action_19
action_7 (25) = happyShift action_20
action_7 (29) = happyShift action_21
action_7 (31) = happyShift action_22
action_7 (38) = happyShift action_23
action_7 (39) = happyShift action_24
action_7 (65) = happyShift action_25
action_7 (5) = happyGoto action_8
action_7 (6) = happyGoto action_9
action_7 (8) = happyGoto action_10
action_7 (9) = happyGoto action_11
action_7 (10) = happyGoto action_12
action_7 (13) = happyGoto action_13
action_7 (14) = happyGoto action_14
action_7 (17) = happyGoto action_15
action_7 (18) = happyGoto action_16
action_7 (20) = happyGoto action_17
action_7 _ = happyReduce_4

action_8 (28) = happyShift action_47
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (22) = happyShift action_18
action_9 (23) = happyShift action_19
action_9 (25) = happyShift action_20
action_9 (29) = happyShift action_21
action_9 (31) = happyShift action_22
action_9 (38) = happyShift action_23
action_9 (39) = happyShift action_24
action_9 (65) = happyShift action_25
action_9 (5) = happyGoto action_46
action_9 (6) = happyGoto action_9
action_9 (8) = happyGoto action_10
action_9 (9) = happyGoto action_11
action_9 (10) = happyGoto action_12
action_9 (13) = happyGoto action_13
action_9 (14) = happyGoto action_14
action_9 (17) = happyGoto action_15
action_9 (18) = happyGoto action_16
action_9 (20) = happyGoto action_17
action_9 _ = happyReduce_4

action_10 _ = happyReduce_10

action_11 _ = happyReduce_8

action_12 _ = happyReduce_9

action_13 _ = happyReduce_5

action_14 _ = happyReduce_6

action_15 (40) = happyShift action_41
action_15 (41) = happyShift action_42
action_15 (42) = happyShift action_43
action_15 (43) = happyShift action_44
action_15 (44) = happyShift action_45
action_15 _ = happyReduce_7

action_16 _ = happyReduce_50

action_17 (54) = happyShift action_39
action_17 (55) = happyShift action_40
action_17 _ = happyReduce_51

action_18 (56) = happyShift action_33
action_18 (57) = happyShift action_34
action_18 (58) = happyShift action_35
action_18 (59) = happyShift action_36
action_18 (60) = happyShift action_37
action_18 (61) = happyShift action_38
action_18 _ = happyReduce_59

action_19 _ = happyReduce_58

action_20 (22) = happyShift action_32
action_20 (23) = happyShift action_19
action_20 (25) = happyShift action_20
action_20 (17) = happyGoto action_31
action_20 (18) = happyGoto action_16
action_20 (20) = happyGoto action_17
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (25) = happyShift action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (25) = happyShift action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (22) = happyShift action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (22) = happyShift action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (25) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (22) = happyShift action_64
action_26 (23) = happyShift action_19
action_26 (24) = happyShift action_78
action_26 (25) = happyShift action_65
action_26 (53) = happyShift action_66
action_26 (62) = happyShift action_67
action_26 (63) = happyShift action_68
action_26 (64) = happyShift action_79
action_26 (7) = happyGoto action_74
action_26 (12) = happyGoto action_75
action_26 (15) = happyGoto action_76
action_26 (16) = happyGoto action_61
action_26 (17) = happyGoto action_62
action_26 (18) = happyGoto action_16
action_26 (19) = happyGoto action_63
action_26 (20) = happyGoto action_17
action_26 (21) = happyGoto action_77
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (56) = happyShift action_72
action_27 (66) = happyShift action_73
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (56) = happyShift action_70
action_28 (66) = happyShift action_71
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (22) = happyShift action_64
action_29 (23) = happyShift action_19
action_29 (25) = happyShift action_65
action_29 (53) = happyShift action_66
action_29 (62) = happyShift action_67
action_29 (63) = happyShift action_68
action_29 (15) = happyGoto action_69
action_29 (16) = happyGoto action_61
action_29 (17) = happyGoto action_62
action_29 (18) = happyGoto action_16
action_29 (19) = happyGoto action_63
action_29 (20) = happyGoto action_17
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (22) = happyShift action_64
action_30 (23) = happyShift action_19
action_30 (25) = happyShift action_65
action_30 (53) = happyShift action_66
action_30 (62) = happyShift action_67
action_30 (63) = happyShift action_68
action_30 (15) = happyGoto action_60
action_30 (16) = happyGoto action_61
action_30 (17) = happyGoto action_62
action_30 (18) = happyGoto action_16
action_30 (19) = happyGoto action_63
action_30 (20) = happyGoto action_17
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (26) = happyShift action_59
action_31 (40) = happyShift action_41
action_31 (41) = happyShift action_42
action_31 (42) = happyShift action_43
action_31 (43) = happyShift action_44
action_31 (44) = happyShift action_45
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_59

action_33 (22) = happyShift action_32
action_33 (23) = happyShift action_19
action_33 (25) = happyShift action_20
action_33 (17) = happyGoto action_58
action_33 (18) = happyGoto action_16
action_33 (20) = happyGoto action_17
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (22) = happyShift action_32
action_34 (23) = happyShift action_19
action_34 (25) = happyShift action_20
action_34 (17) = happyGoto action_57
action_34 (18) = happyGoto action_16
action_34 (20) = happyGoto action_17
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (22) = happyShift action_32
action_35 (23) = happyShift action_19
action_35 (25) = happyShift action_20
action_35 (17) = happyGoto action_56
action_35 (18) = happyGoto action_16
action_35 (20) = happyGoto action_17
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (22) = happyShift action_32
action_36 (23) = happyShift action_19
action_36 (25) = happyShift action_20
action_36 (17) = happyGoto action_55
action_36 (18) = happyGoto action_16
action_36 (20) = happyGoto action_17
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_32
action_37 (23) = happyShift action_19
action_37 (25) = happyShift action_20
action_37 (17) = happyGoto action_54
action_37 (18) = happyGoto action_16
action_37 (20) = happyGoto action_17
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (22) = happyShift action_32
action_38 (23) = happyShift action_19
action_38 (25) = happyShift action_20
action_38 (17) = happyGoto action_53
action_38 (18) = happyGoto action_16
action_38 (20) = happyGoto action_17
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_52

action_40 _ = happyReduce_53

action_41 (22) = happyShift action_32
action_41 (23) = happyShift action_19
action_41 (25) = happyShift action_20
action_41 (17) = happyGoto action_52
action_41 (18) = happyGoto action_16
action_41 (20) = happyGoto action_17
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (22) = happyShift action_32
action_42 (23) = happyShift action_19
action_42 (25) = happyShift action_20
action_42 (17) = happyGoto action_51
action_42 (18) = happyGoto action_16
action_42 (20) = happyGoto action_17
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (22) = happyShift action_32
action_43 (23) = happyShift action_19
action_43 (25) = happyShift action_20
action_43 (17) = happyGoto action_50
action_43 (18) = happyGoto action_16
action_43 (20) = happyGoto action_17
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_32
action_44 (23) = happyShift action_19
action_44 (25) = happyShift action_20
action_44 (17) = happyGoto action_49
action_44 (18) = happyGoto action_16
action_44 (20) = happyGoto action_17
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (22) = happyShift action_32
action_45 (23) = happyShift action_19
action_45 (25) = happyShift action_20
action_45 (17) = happyGoto action_48
action_45 (18) = happyGoto action_16
action_45 (20) = happyGoto action_17
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_3

action_47 _ = happyReduce_1

action_48 _ = happyReduce_49

action_49 _ = happyReduce_48

action_50 _ = happyReduce_47

action_51 (42) = happyShift action_43
action_51 (43) = happyShift action_44
action_51 (44) = happyShift action_45
action_51 _ = happyReduce_46

action_52 (42) = happyShift action_43
action_52 (43) = happyShift action_44
action_52 (44) = happyShift action_45
action_52 _ = happyReduce_45

action_53 (40) = happyShift action_41
action_53 (41) = happyShift action_42
action_53 (42) = happyShift action_43
action_53 (43) = happyShift action_44
action_53 (44) = happyShift action_45
action_53 _ = happyReduce_32

action_54 (40) = happyShift action_41
action_54 (41) = happyShift action_42
action_54 (42) = happyShift action_43
action_54 (43) = happyShift action_44
action_54 (44) = happyShift action_45
action_54 _ = happyReduce_31

action_55 (40) = happyShift action_41
action_55 (41) = happyShift action_42
action_55 (42) = happyShift action_43
action_55 (43) = happyShift action_44
action_55 (44) = happyShift action_45
action_55 _ = happyReduce_30

action_56 (40) = happyShift action_41
action_56 (41) = happyShift action_42
action_56 (42) = happyShift action_43
action_56 (43) = happyShift action_44
action_56 (44) = happyShift action_45
action_56 _ = happyReduce_29

action_57 (40) = happyShift action_41
action_57 (41) = happyShift action_42
action_57 (42) = happyShift action_43
action_57 (43) = happyShift action_44
action_57 (44) = happyShift action_45
action_57 _ = happyReduce_28

action_58 (40) = happyShift action_41
action_58 (41) = happyShift action_42
action_58 (42) = happyShift action_43
action_58 (43) = happyShift action_44
action_58 (44) = happyShift action_45
action_58 _ = happyReduce_27

action_59 _ = happyReduce_60

action_60 (26) = happyShift action_103
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_33

action_62 (40) = happyShift action_41
action_62 (41) = happyShift action_42
action_62 (42) = happyShift action_43
action_62 (43) = happyShift action_44
action_62 (44) = happyShift action_45
action_62 (45) = happyShift action_97
action_62 (46) = happyShift action_98
action_62 (47) = happyShift action_99
action_62 (48) = happyShift action_100
action_62 (49) = happyShift action_101
action_62 (50) = happyShift action_102
action_62 _ = happyReduce_34

action_63 (51) = happyShift action_95
action_63 (52) = happyShift action_96
action_63 _ = happyReduce_44

action_64 (22) = happyReduce_59
action_64 (23) = happyReduce_59
action_64 (25) = happyReduce_59
action_64 (26) = happyReduce_59
action_64 (28) = happyReduce_59
action_64 (29) = happyReduce_59
action_64 (31) = happyReduce_59
action_64 (38) = happyReduce_59
action_64 (39) = happyReduce_59
action_64 (51) = happyReduce_56
action_64 (52) = happyReduce_56
action_64 (65) = happyReduce_59
action_64 _ = happyReduce_59

action_65 (22) = happyShift action_64
action_65 (23) = happyShift action_19
action_65 (25) = happyShift action_65
action_65 (53) = happyShift action_66
action_65 (62) = happyShift action_67
action_65 (63) = happyShift action_68
action_65 (16) = happyGoto action_93
action_65 (17) = happyGoto action_94
action_65 (18) = happyGoto action_16
action_65 (19) = happyGoto action_63
action_65 (20) = happyGoto action_17
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (22) = happyShift action_64
action_66 (23) = happyShift action_19
action_66 (25) = happyShift action_65
action_66 (53) = happyShift action_66
action_66 (62) = happyShift action_67
action_66 (63) = happyShift action_68
action_66 (16) = happyGoto action_91
action_66 (17) = happyGoto action_92
action_66 (18) = happyGoto action_16
action_66 (19) = happyGoto action_63
action_66 (20) = happyGoto action_17
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_54

action_68 _ = happyReduce_55

action_69 (26) = happyShift action_90
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (22) = happyShift action_64
action_70 (23) = happyShift action_19
action_70 (24) = happyShift action_78
action_70 (25) = happyShift action_65
action_70 (53) = happyShift action_66
action_70 (62) = happyShift action_67
action_70 (63) = happyShift action_68
action_70 (64) = happyShift action_79
action_70 (7) = happyGoto action_74
action_70 (12) = happyGoto action_89
action_70 (15) = happyGoto action_76
action_70 (16) = happyGoto action_61
action_70 (17) = happyGoto action_62
action_70 (18) = happyGoto action_16
action_70 (19) = happyGoto action_63
action_70 (20) = happyGoto action_17
action_70 (21) = happyGoto action_77
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (32) = happyShift action_83
action_71 (33) = happyShift action_84
action_71 (34) = happyShift action_85
action_71 (35) = happyShift action_86
action_71 (11) = happyGoto action_88
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_64
action_72 (23) = happyShift action_19
action_72 (24) = happyShift action_78
action_72 (25) = happyShift action_65
action_72 (53) = happyShift action_66
action_72 (62) = happyShift action_67
action_72 (63) = happyShift action_68
action_72 (64) = happyShift action_79
action_72 (7) = happyGoto action_74
action_72 (12) = happyGoto action_87
action_72 (15) = happyGoto action_76
action_72 (16) = happyGoto action_61
action_72 (17) = happyGoto action_62
action_72 (18) = happyGoto action_16
action_72 (19) = happyGoto action_63
action_72 (20) = happyGoto action_17
action_72 (21) = happyGoto action_77
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (32) = happyShift action_83
action_73 (33) = happyShift action_84
action_73 (34) = happyShift action_85
action_73 (35) = happyShift action_86
action_73 (11) = happyGoto action_82
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_22

action_75 (26) = happyShift action_81
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_20

action_77 _ = happyReduce_21

action_78 _ = happyReduce_61

action_79 (25) = happyShift action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (26) = happyShift action_119
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_12

action_82 (56) = happyShift action_118
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_16

action_84 _ = happyReduce_17

action_85 _ = happyReduce_18

action_86 _ = happyReduce_19

action_87 _ = happyReduce_23

action_88 (56) = happyShift action_117
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_24

action_90 (27) = happyShift action_116
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_43

action_92 (40) = happyShift action_41
action_92 (41) = happyShift action_42
action_92 (42) = happyShift action_43
action_92 (43) = happyShift action_44
action_92 (44) = happyShift action_45
action_92 (45) = happyShift action_97
action_92 (46) = happyShift action_98
action_92 (47) = happyShift action_99
action_92 (48) = happyShift action_100
action_92 (49) = happyShift action_101
action_92 (50) = happyShift action_102
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (26) = happyShift action_115
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (26) = happyShift action_59
action_94 (40) = happyShift action_41
action_94 (41) = happyShift action_42
action_94 (42) = happyShift action_43
action_94 (43) = happyShift action_44
action_94 (44) = happyShift action_45
action_94 (45) = happyShift action_97
action_94 (46) = happyShift action_98
action_94 (47) = happyShift action_99
action_94 (48) = happyShift action_100
action_94 (49) = happyShift action_101
action_94 (50) = happyShift action_102
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (22) = happyShift action_112
action_95 (25) = happyShift action_113
action_95 (62) = happyShift action_67
action_95 (63) = happyShift action_68
action_95 (19) = happyGoto action_114
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (22) = happyShift action_112
action_96 (25) = happyShift action_113
action_96 (62) = happyShift action_67
action_96 (63) = happyShift action_68
action_96 (19) = happyGoto action_111
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (22) = happyShift action_32
action_97 (23) = happyShift action_19
action_97 (25) = happyShift action_20
action_97 (17) = happyGoto action_110
action_97 (18) = happyGoto action_16
action_97 (20) = happyGoto action_17
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (22) = happyShift action_32
action_98 (23) = happyShift action_19
action_98 (25) = happyShift action_20
action_98 (17) = happyGoto action_109
action_98 (18) = happyGoto action_16
action_98 (20) = happyGoto action_17
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (22) = happyShift action_32
action_99 (23) = happyShift action_19
action_99 (25) = happyShift action_20
action_99 (17) = happyGoto action_108
action_99 (18) = happyGoto action_16
action_99 (20) = happyGoto action_17
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (22) = happyShift action_32
action_100 (23) = happyShift action_19
action_100 (25) = happyShift action_20
action_100 (17) = happyGoto action_107
action_100 (18) = happyGoto action_16
action_100 (20) = happyGoto action_17
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (22) = happyShift action_32
action_101 (23) = happyShift action_19
action_101 (25) = happyShift action_20
action_101 (17) = happyGoto action_106
action_101 (18) = happyGoto action_16
action_101 (20) = happyGoto action_17
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (22) = happyShift action_32
action_102 (23) = happyShift action_19
action_102 (25) = happyShift action_20
action_102 (17) = happyGoto action_105
action_102 (18) = happyGoto action_16
action_102 (20) = happyGoto action_17
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (27) = happyShift action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (22) = happyShift action_18
action_104 (23) = happyShift action_19
action_104 (25) = happyShift action_20
action_104 (29) = happyShift action_21
action_104 (31) = happyShift action_22
action_104 (38) = happyShift action_23
action_104 (39) = happyShift action_24
action_104 (65) = happyShift action_25
action_104 (5) = happyGoto action_123
action_104 (6) = happyGoto action_9
action_104 (8) = happyGoto action_10
action_104 (9) = happyGoto action_11
action_104 (10) = happyGoto action_12
action_104 (13) = happyGoto action_13
action_104 (14) = happyGoto action_14
action_104 (17) = happyGoto action_15
action_104 (18) = happyGoto action_16
action_104 (20) = happyGoto action_17
action_104 _ = happyReduce_4

action_105 (40) = happyShift action_41
action_105 (41) = happyShift action_42
action_105 (42) = happyShift action_43
action_105 (43) = happyShift action_44
action_105 (44) = happyShift action_45
action_105 _ = happyReduce_42

action_106 (40) = happyShift action_41
action_106 (41) = happyShift action_42
action_106 (42) = happyShift action_43
action_106 (43) = happyShift action_44
action_106 (44) = happyShift action_45
action_106 _ = happyReduce_41

action_107 (40) = happyShift action_41
action_107 (41) = happyShift action_42
action_107 (42) = happyShift action_43
action_107 (43) = happyShift action_44
action_107 (44) = happyShift action_45
action_107 _ = happyReduce_40

action_108 (40) = happyShift action_41
action_108 (41) = happyShift action_42
action_108 (42) = happyShift action_43
action_108 (43) = happyShift action_44
action_108 (44) = happyShift action_45
action_108 _ = happyReduce_39

action_109 (40) = happyShift action_41
action_109 (41) = happyShift action_42
action_109 (42) = happyShift action_43
action_109 (43) = happyShift action_44
action_109 (44) = happyShift action_45
action_109 _ = happyReduce_38

action_110 (40) = happyShift action_41
action_110 (41) = happyShift action_42
action_110 (42) = happyShift action_43
action_110 (43) = happyShift action_44
action_110 (44) = happyShift action_45
action_110 _ = happyReduce_37

action_111 _ = happyReduce_36

action_112 _ = happyReduce_56

action_113 (22) = happyShift action_64
action_113 (23) = happyShift action_19
action_113 (25) = happyShift action_65
action_113 (53) = happyShift action_66
action_113 (62) = happyShift action_67
action_113 (63) = happyShift action_68
action_113 (16) = happyGoto action_93
action_113 (17) = happyGoto action_92
action_113 (18) = happyGoto action_16
action_113 (19) = happyGoto action_63
action_113 (20) = happyGoto action_17
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_35

action_115 _ = happyReduce_57

action_116 (22) = happyShift action_18
action_116 (23) = happyShift action_19
action_116 (25) = happyShift action_20
action_116 (29) = happyShift action_21
action_116 (31) = happyShift action_22
action_116 (38) = happyShift action_23
action_116 (39) = happyShift action_24
action_116 (65) = happyShift action_25
action_116 (5) = happyGoto action_122
action_116 (6) = happyGoto action_9
action_116 (8) = happyGoto action_10
action_116 (9) = happyGoto action_11
action_116 (10) = happyGoto action_12
action_116 (13) = happyGoto action_13
action_116 (14) = happyGoto action_14
action_116 (17) = happyGoto action_15
action_116 (18) = happyGoto action_16
action_116 (20) = happyGoto action_17
action_116 _ = happyReduce_4

action_117 (22) = happyShift action_64
action_117 (23) = happyShift action_19
action_117 (24) = happyShift action_78
action_117 (25) = happyShift action_65
action_117 (53) = happyShift action_66
action_117 (62) = happyShift action_67
action_117 (63) = happyShift action_68
action_117 (64) = happyShift action_79
action_117 (7) = happyGoto action_74
action_117 (12) = happyGoto action_121
action_117 (15) = happyGoto action_76
action_117 (16) = happyGoto action_61
action_117 (17) = happyGoto action_62
action_117 (18) = happyGoto action_16
action_117 (19) = happyGoto action_63
action_117 (20) = happyGoto action_17
action_117 (21) = happyGoto action_77
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (22) = happyShift action_64
action_118 (23) = happyShift action_19
action_118 (24) = happyShift action_78
action_118 (25) = happyShift action_65
action_118 (53) = happyShift action_66
action_118 (62) = happyShift action_67
action_118 (63) = happyShift action_68
action_118 (64) = happyShift action_79
action_118 (7) = happyGoto action_74
action_118 (12) = happyGoto action_120
action_118 (15) = happyGoto action_76
action_118 (16) = happyGoto action_61
action_118 (17) = happyGoto action_62
action_118 (18) = happyGoto action_16
action_118 (19) = happyGoto action_63
action_118 (20) = happyGoto action_17
action_118 (21) = happyGoto action_77
action_118 _ = happyFail (happyExpListPerState 118)

action_119 _ = happyReduce_11

action_120 _ = happyReduce_25

action_121 _ = happyReduce_26

action_122 (28) = happyShift action_125
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (28) = happyShift action_124
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (30) = happyShift action_126
action_124 _ = happyReduce_13

action_125 _ = happyReduce_15

action_126 (27) = happyShift action_127
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (22) = happyShift action_18
action_127 (23) = happyShift action_19
action_127 (25) = happyShift action_20
action_127 (29) = happyShift action_21
action_127 (31) = happyShift action_22
action_127 (38) = happyShift action_23
action_127 (39) = happyShift action_24
action_127 (65) = happyShift action_25
action_127 (5) = happyGoto action_128
action_127 (6) = happyGoto action_9
action_127 (8) = happyGoto action_10
action_127 (9) = happyGoto action_11
action_127 (10) = happyGoto action_12
action_127 (13) = happyGoto action_13
action_127 (14) = happyGoto action_14
action_127 (17) = happyGoto action_15
action_127 (18) = happyGoto action_16
action_127 (20) = happyGoto action_17
action_127 _ = happyReduce_4

action_128 (28) = happyShift action_129
action_128 _ = happyFail (happyExpListPerState 128)

action_129 _ = happyReduce_14

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
happyReduction_7 (HappyAbsSyn17  happy_var_1)
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
happyReduction_21 (HappyAbsSyn21  happy_var_1)
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
happyReduction_27 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (AssignNode happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (AddAssignNode happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (SubAssignNode happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (MultAssignNode happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (DivAssignNode happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn17  happy_var_3)
	_
	(HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn14
		 (ModAssignNode happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn16
		 (AndNode happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  16 happyReduction_36
happyReduction_36 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn16
		 (OrNode happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (GtNode happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (GeNode happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  16 happyReduction_39
happyReduction_39 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (LtNode happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  16 happyReduction_40
happyReduction_40 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (LeNode happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  16 happyReduction_41
happyReduction_41 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (EqNode happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (NeNode happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  16 happyReduction_43
happyReduction_43 (HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (NotNode happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn16
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  17 happyReduction_45
happyReduction_45 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AddNode happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (SubNode happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  17 happyReduction_47
happyReduction_47 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (MultNode happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  17 happyReduction_48
happyReduction_48 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (DivNode happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  17 happyReduction_49
happyReduction_49 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (ModNode happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  17 happyReduction_50
happyReduction_50 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  17 happyReduction_51
happyReduction_51 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_2  18 happyReduction_52
happyReduction_52 _
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn18
		 (IncrNode happy_var_1
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_2  18 happyReduction_53
happyReduction_53 _
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn18
		 (DecrNode happy_var_1
	)
happyReduction_53 _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  19 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn19
		 (BoolNode True
	)

happyReduce_55 = happySpecReduce_1  19 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn19
		 (BoolNode False
	)

happyReduce_56 = happySpecReduce_1  19 happyReduction_56
happyReduction_56 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn19
		 (IdNode happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  19 happyReduction_57
happyReduction_57 _
	(HappyAbsSyn16  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  20 happyReduction_58
happyReduction_58 (HappyTerminal (NUM happy_var_1))
	 =  HappyAbsSyn20
		 (NumNode happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  20 happyReduction_59
happyReduction_59 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn20
		 (IdNode happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  20 happyReduction_60
happyReduction_60 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn20
		 (happy_var_2
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  21 happyReduction_61
happyReduction_61 (HappyTerminal (STR happy_var_1))
	 =  HappyAbsSyn21
		 (StringNode happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 67 67 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	ID happy_dollar_dollar -> cont 22;
	NUM happy_dollar_dollar -> cont 23;
	STR happy_dollar_dollar -> cont 24;
	LPAREN -> cont 25;
	RPAREN -> cont 26;
	LBRACE -> cont 27;
	RBRACE -> cont 28;
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


-- AST Nodes
data Exp = NumNode Int
         -- | RealNode Float
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
