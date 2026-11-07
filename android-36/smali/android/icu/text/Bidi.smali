.class public Landroid/icu/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Bidi$InsertPoints;,
        Landroid/icu/text/Bidi$BracketData;,
        Landroid/icu/text/Bidi$IsoRun;,
        Landroid/icu/text/Bidi$Opening;,
        Landroid/icu/text/Bidi$Point;,
        Landroid/icu/text/Bidi$LevState;,
        Landroid/icu/text/Bidi$ImpTabPair;,
        Landroid/icu/text/Bidi$Isolate;
    }
.end annotation


# static fields
.field static final greylist-max-o AL:B = 0xdt

.field static final greylist-max-o AN:B = 0x5t

.field static final greylist-max-o B:B = 0x7t

.field static final greylist-max-o BN:B = 0x12t

.field public static final greylist-max-o CLASS_DEFAULT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o CR:C = '\r'

.field static final greylist-max-o CS:B = 0x6t

.field public static final whitelist test-api DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = 0x7e

.field public static final whitelist test-api DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = 0x7f

.field public static final whitelist test-api DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final whitelist test-api DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final whitelist test-api DO_MIRRORING:S = 0x2s

.field static final greylist-max-o DirPropFlagE:[I

.field static final greylist-max-o DirPropFlagLR:[I

.field static final greylist-max-o DirPropFlagMultiRuns:I

.field static final greylist-max-o DirPropFlagO:[I

.field static final greylist-max-o EN:B = 0x2t

.field static final greylist-max-o ENL:B = 0x17t

.field static final greylist-max-o ENR:B = 0x18t

.field static final greylist-max-o ES:B = 0x3t

.field static final greylist-max-o ET:B = 0x4t

.field static final greylist-max-o FIRSTALLOC:I = 0xa

.field static final greylist-max-o FOUND_L:B

.field static final greylist-max-o FOUND_R:B

.field static final greylist-max-o FSI:B = 0x13t

.field private static final greylist-max-o IMPTABLEVELS_COLUMNS:I = 0x8

.field private static final greylist-max-o IMPTABLEVELS_RES:I = 0x7

.field private static final greylist-max-o IMPTABPROPS_COLUMNS:I = 0x10

.field private static final greylist-max-o IMPTABPROPS_RES:I = 0xf

.field public static final whitelist test-api INSERT_LRM_FOR_NUMERIC:S = 0x4s

.field static final greylist-max-o ISOLATE:I = 0x100

.field public static final whitelist test-api KEEP_BASE_COMBINING:S = 0x1s

.field static final greylist-max-o L:B = 0x0t

.field public static final whitelist test-api LEVEL_DEFAULT_LTR:B = 0x7et

.field public static final whitelist test-api LEVEL_DEFAULT_RTL:B = 0x7ft

.field public static final whitelist test-api LEVEL_OVERRIDE:B = -0x80t

.field private static final greylist-max-o LF:C = '\n'

.field static final greylist-max-o LOOKING_FOR_PDI:I = 0x3

.field static final greylist-max-o LRE:B = 0xbt

.field static final greylist-max-o LRI:B = 0x14t

.field static final greylist-max-o LRM_AFTER:I = 0x2

.field static final greylist-max-o LRM_BEFORE:I = 0x1

.field static final greylist-max-o LRO:B = 0xct

.field public static final whitelist test-api LTR:B = 0x0t

.field public static final whitelist test-api MAP_NOWHERE:I = -0x1

.field static final greylist-max-o MASK_BN_EXPLICIT:I

.field static final greylist-max-o MASK_B_S:I

.field static final greylist-max-o MASK_EMBEDDING:I

.field static final greylist-max-o MASK_EXPLICIT:I

.field static final greylist-max-o MASK_ISO:I

.field static final greylist-max-o MASK_LTR:I

.field static final greylist-max-o MASK_POSSIBLE_N:I

.field static final greylist-max-o MASK_RTL:I

.field static final greylist-max-o MASK_R_AL:I

.field static final greylist-max-o MASK_STRONG_EN_AN:I

.field static final greylist-max-o MASK_WS:I

.field public static final whitelist test-api MAX_EXPLICIT_LEVEL:B = 0x7dt

.field public static final whitelist test-api MIXED:B = 0x2t

.field public static final whitelist test-api NEUTRAL:B = 0x3t

.field static final greylist-max-o NOT_SEEKING_STRONG:I = 0x0

.field static final greylist-max-o NSM:B = 0x11t

.field static final greylist-max-o ON:B = 0xat

.field public static final whitelist test-api OPTION_DEFAULT:I = 0x0

.field public static final whitelist test-api OPTION_INSERT_MARKS:I = 0x1

.field public static final whitelist test-api OPTION_REMOVE_CONTROLS:I = 0x2

.field public static final whitelist test-api OPTION_STREAMING:I = 0x4

.field public static final whitelist test-api OUTPUT_REVERSE:S = 0x10s

.field static final greylist-max-o PDF:B = 0x10t

.field static final greylist-max-o PDI:B = 0x16t

.field static final greylist-max-o R:B = 0x1t

.field public static final whitelist test-api REMOVE_BIDI_CONTROLS:S = 0x8s

.field static final greylist-max-o REORDER_COUNT:S = 0x7s

.field public static final whitelist test-api REORDER_DEFAULT:S = 0x0s

.field public static final whitelist test-api REORDER_GROUP_NUMBERS_WITH_R:S = 0x2s

.field public static final whitelist test-api REORDER_INVERSE_FOR_NUMBERS_SPECIAL:S = 0x6s

.field public static final whitelist test-api REORDER_INVERSE_LIKE_DIRECT:S = 0x5s

.field public static final whitelist test-api REORDER_INVERSE_NUMBERS_AS_L:S = 0x4s

.field static final greylist-max-o REORDER_LAST_LOGICAL_TO_VISUAL:S = 0x1s

.field public static final whitelist test-api REORDER_NUMBERS_SPECIAL:S = 0x1s

.field public static final whitelist test-api REORDER_RUNS_ONLY:S = 0x3s

.field static final greylist-max-o RLE:B = 0xet

.field static final greylist-max-o RLI:B = 0x15t

.field static final greylist-max-o RLM_AFTER:I = 0x8

.field static final greylist-max-o RLM_BEFORE:I = 0x4

.field static final greylist-max-o RLO:B = 0xft

.field public static final whitelist test-api RTL:B = 0x1t

.field static final greylist-max-o S:B = 0x8t

.field static final greylist-max-o SEEKING_STRONG_FOR_FSI:I = 0x2

.field static final greylist-max-o SEEKING_STRONG_FOR_PARA:I = 0x1

.field static final greylist-max-o SIMPLE_OPENINGS_COUNT:I = 0x14

.field static final greylist-max-o SIMPLE_PARAS_COUNT:I = 0xa

.field static final greylist-max-o WS:B = 0x9t

.field private static final greylist-max-o _AN:S = 0x3s

.field private static final greylist-max-o _B:S = 0x6s

.field private static final greylist-max-o _EN:S = 0x2s

.field private static final greylist-max-o _L:S = 0x0s

.field private static final greylist-max-o _ON:S = 0x4s

.field private static final greylist-max-o _R:S = 0x1s

.field private static final greylist-max-o _S:S = 0x5s

.field private static final greylist-max-o groupProp:[S

.field private static final greylist-max-o impAct0:[S

.field private static final greylist-max-o impAct1:[S

.field private static final greylist-max-o impAct2:[S

.field private static final greylist-max-o impAct3:[S

.field private static final greylist-max-o impTabL_DEFAULT:[[B

.field private static final greylist-max-o impTabL_GROUP_NUMBERS_WITH_R:[[B

.field private static final greylist-max-o impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

.field private static final greylist-max-o impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final greylist-max-o impTabL_INVERSE_NUMBERS_AS_L:[[B

.field private static final greylist-max-o impTabL_NUMBERS_SPECIAL:[[B

.field private static final greylist-max-o impTabProps:[[S

.field private static final greylist-max-o impTabR_DEFAULT:[[B

.field private static final greylist-max-o impTabR_GROUP_NUMBERS_WITH_R:[[B

.field private static final greylist-max-o impTabR_INVERSE_LIKE_DIRECT:[[B

.field private static final greylist-max-o impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final greylist-max-o impTabR_INVERSE_NUMBERS_AS_L:[[B

.field private static final greylist-max-o impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final greylist-max-o impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;


# instance fields
.field final greylist-max-o bdp:Landroid/icu/impl/UBiDiProps;

.field greylist-max-o controlCount:I

.field greylist-max-o customClassifier:Landroid/icu/text/BidiClassifier;

.field greylist-max-o defaultParaLevel:B

.field greylist-max-o dirProps:[B

.field greylist-max-o dirPropsMemory:[B

.field greylist-max-o direction:B

.field greylist-max-o epilogue:Ljava/lang/String;

.field greylist-max-o flags:I

.field greylist-max-o impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

.field greylist-max-o insertPoints:Landroid/icu/text/Bidi$InsertPoints;

.field greylist-max-o isGoodLogicalToVisualRunsMap:Z

.field greylist-max-o isInverse:Z

.field greylist-max-o isolateCount:I

.field greylist-max-o isolates:[Landroid/icu/text/Bidi$Isolate;

.field greylist-max-o lastArabicPos:I

.field greylist-max-o length:I

.field greylist-max-o levels:[B

.field greylist-max-o levelsMemory:[B

.field greylist-max-o logicalToVisualRunsMap:[I

.field greylist-max-o mayAllocateRuns:Z

.field greylist-max-o mayAllocateText:Z

.field greylist-max-o orderParagraphsLTR:Z

.field greylist-max-o originalLength:I

.field greylist-max-o paraBidi:Landroid/icu/text/Bidi;

.field greylist-max-o paraCount:I

.field greylist-max-o paraLevel:B

.field greylist-max-o paras_level:[B

.field greylist-max-o paras_limit:[I

.field greylist-max-o prologue:Ljava/lang/String;

.field greylist-max-o reorderingMode:I

.field greylist-max-o reorderingOptions:I

.field greylist-max-o resultLength:I

.field greylist-max-o runCount:I

.field greylist-max-o runs:[Landroid/icu/text/BidiRun;

.field greylist-max-o runsMemory:[Landroid/icu/text/BidiRun;

.field greylist-max-o simpleRuns:[Landroid/icu/text/BidiRun;

.field greylist-max-o text:[C

.field greylist-max-o trailingWSStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 31

    .line 986
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Landroid/icu/text/Bidi;->FOUND_L:B

    .line 987
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    int-to-byte v2, v2

    sput-byte v2, Landroid/icu/text/Bidi;->FOUND_R:B

    .line 1122
    const/16 v2, 0x1f

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    sput v2, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    .line 1125
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sput-object v2, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    .line 1126
    const/16 v2, 0xb

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/16 v3, 0xe

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sput-object v2, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    .line 1127
    const/16 v2, 0xc

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sput-object v2, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    .line 1136
    nop

    .line 1137
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    or-int/2addr v2, v4

    const/16 v4, 0x17

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    or-int/2addr v2, v4

    const/16 v4, 0x18

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    or-int/2addr v2, v4

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v2, v5

    const/16 v5, 0xb

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v2, v5

    const/16 v5, 0xc

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v2, v5

    const/16 v5, 0x14

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v2, v6

    sput v2, Landroid/icu/text/Bidi;->MASK_LTR:I

    .line 1138
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/16 v6, 0xd

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v2, v6

    const/16 v6, 0xe

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v2, v6

    const/16 v6, 0xf

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v2, v6

    const/16 v6, 0x15

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v2, v7

    sput v2, Landroid/icu/text/Bidi;->MASK_RTL:I

    .line 1140
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/16 v7, 0xd

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v2, v7

    sput v2, Landroid/icu/text/Bidi;->MASK_R_AL:I

    .line 1141
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_STRONG_EN_AN:I

    .line 1143
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xe

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v0, v2

    sput v0, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    .line 1144
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sget v2, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    or-int/2addr v0, v2

    sput v0, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    .line 1147
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0x13

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v0, v2

    const/16 v2, 0x16

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v0, v2

    sput v0, Landroid/icu/text/Bidi;->MASK_ISO:I

    .line 1150
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v2, v5

    sput v2, Landroid/icu/text/Bidi;->MASK_B_S:I

    .line 1153
    sget v2, Landroid/icu/text/Bidi;->MASK_B_S:I

    const/16 v5, 0x9

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v2, v5

    sget v5, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    or-int/2addr v2, v5

    sget v5, Landroid/icu/text/Bidi;->MASK_ISO:I

    or-int/2addr v2, v5

    sput v2, Landroid/icu/text/Bidi;->MASK_WS:I

    .line 1156
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    const/4 v5, 0x6

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v2, v6

    const/4 v6, 0x3

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v2, v6

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v2, v7

    sget v7, Landroid/icu/text/Bidi;->MASK_WS:I

    or-int/2addr v2, v7

    sput v2, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    .line 1163
    const/16 v2, 0x11

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    sget v7, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    or-int/2addr v2, v7

    sput v2, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    .line 2747
    const/16 v2, 0x19

    new-array v2, v2, [S

    fill-array-data v2, :array_432

    sput-object v2, Landroid/icu/text/Bidi;->groupProp:[S

    .line 2794
    new-array v7, v1, [S

    fill-array-data v7, :array_450

    new-array v8, v1, [S

    fill-array-data v8, :array_464

    new-array v9, v1, [S

    fill-array-data v9, :array_478

    new-array v10, v1, [S

    fill-array-data v10, :array_48c

    new-array v11, v1, [S

    fill-array-data v11, :array_4a0

    new-array v12, v1, [S

    fill-array-data v12, :array_4b4

    new-array v13, v1, [S

    fill-array-data v13, :array_4c8

    new-array v14, v1, [S

    fill-array-data v14, :array_4dc

    new-array v15, v1, [S

    fill-array-data v15, :array_4f0

    new-array v2, v1, [S

    fill-array-data v2, :array_504

    new-array v5, v1, [S

    fill-array-data v5, :array_518

    new-array v0, v1, [S

    fill-array-data v0, :array_52c

    new-array v6, v1, [S

    fill-array-data v6, :array_540

    new-array v4, v1, [S

    fill-array-data v4, :array_554

    new-array v3, v1, [S

    fill-array-data v3, :array_568

    move-object/from16 v18, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_57c

    move-object/from16 v22, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_590

    move-object/from16 v23, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_5a4

    move-object/from16 v24, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_5b8

    move-object/from16 v25, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_5cc

    move-object/from16 v26, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_5e0

    move-object/from16 v27, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_5f4

    move-object/from16 v28, v0

    new-array v0, v1, [S

    fill-array-data v0, :array_608

    new-array v1, v1, [S

    fill-array-data v1, :array_61c

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    filled-new-array/range {v7 .. v30}, [[S

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabProps:[[S

    .line 2893
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_630

    new-array v2, v0, [B

    fill-array-data v2, :array_638

    new-array v3, v0, [B

    fill-array-data v3, :array_640

    new-array v4, v0, [B

    fill-array-data v4, :array_648

    new-array v5, v0, [B

    fill-array-data v5, :array_650

    new-array v6, v0, [B

    fill-array-data v6, :array_658

    filled-new-array/range {v1 .. v6}, [[B

    move-result-object v1

    sput-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    .line 2907
    new-array v2, v0, [B

    fill-array-data v2, :array_660

    new-array v3, v0, [B

    fill-array-data v3, :array_668

    new-array v4, v0, [B

    fill-array-data v4, :array_670

    new-array v5, v0, [B

    fill-array-data v5, :array_678

    new-array v6, v0, [B

    fill-array-data v6, :array_680

    new-array v7, v0, [B

    fill-array-data v7, :array_688

    filled-new-array/range {v2 .. v7}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    .line 2921
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_690

    sput-object v0, Landroid/icu/text/Bidi;->impAct0:[S

    .line 2923
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    .line 2926
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_69a

    new-array v2, v0, [B

    fill-array-data v2, :array_6a2

    new-array v3, v0, [B

    fill-array-data v3, :array_6aa

    new-array v4, v0, [B

    fill-array-data v4, :array_6b2

    new-array v5, v0, [B

    fill-array-data v5, :array_6ba

    filled-new-array {v1, v2, v3, v4, v5}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    .line 2937
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    .line 2940
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_6c2

    new-array v2, v0, [B

    fill-array-data v2, :array_6ca

    new-array v3, v0, [B

    fill-array-data v3, :array_6d2

    new-array v4, v0, [B

    fill-array-data v4, :array_6da

    new-array v5, v0, [B

    fill-array-data v5, :array_6e2

    new-array v6, v0, [B

    fill-array-data v6, :array_6ea

    filled-new-array/range {v1 .. v6}, [[B

    move-result-object v1

    sput-object v1, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    .line 2952
    new-array v1, v0, [B

    fill-array-data v1, :array_6f2

    new-array v2, v0, [B

    fill-array-data v2, :array_6fa

    new-array v3, v0, [B

    fill-array-data v3, :array_702

    new-array v4, v0, [B

    fill-array-data v4, :array_70a

    new-array v5, v0, [B

    fill-array-data v5, :array_712

    filled-new-array {v1, v2, v3, v4, v5}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    .line 2963
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    .line 2967
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_71a

    new-array v2, v0, [B

    fill-array-data v2, :array_722

    new-array v3, v0, [B

    fill-array-data v3, :array_72a

    new-array v4, v0, [B

    fill-array-data v4, :array_732

    new-array v5, v0, [B

    fill-array-data v5, :array_73a

    new-array v6, v0, [B

    fill-array-data v6, :array_742

    filled-new-array/range {v1 .. v6}, [[B

    move-result-object v1

    sput-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    .line 2979
    new-array v2, v0, [B

    fill-array-data v2, :array_74a

    new-array v3, v0, [B

    fill-array-data v3, :array_752

    new-array v4, v0, [B

    fill-array-data v4, :array_75a

    new-array v5, v0, [B

    fill-array-data v5, :array_762

    new-array v6, v0, [B

    fill-array-data v6, :array_76a

    new-array v7, v0, [B

    fill-array-data v7, :array_772

    filled-new-array/range {v2 .. v7}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    .line 2991
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    .line 2995
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_77a

    new-array v2, v0, [B

    fill-array-data v2, :array_782

    new-array v3, v0, [B

    fill-array-data v3, :array_78a

    new-array v4, v0, [B

    fill-array-data v4, :array_792

    new-array v5, v0, [B

    fill-array-data v5, :array_79a

    new-array v6, v0, [B

    fill-array-data v6, :array_7a2

    new-array v7, v0, [B

    fill-array-data v7, :array_7aa

    filled-new-array/range {v1 .. v7}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    .line 3008
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_7b2

    sput-object v0, Landroid/icu/text/Bidi;->impAct1:[S

    .line 3009
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    .line 3012
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_7ba

    new-array v2, v0, [B

    fill-array-data v2, :array_7c2

    new-array v3, v0, [B

    fill-array-data v3, :array_7ca

    new-array v4, v0, [B

    fill-array-data v4, :array_7d2

    new-array v5, v0, [B

    fill-array-data v5, :array_7da

    new-array v6, v0, [B

    fill-array-data v6, :array_7e2

    new-array v7, v0, [B

    fill-array-data v7, :array_7ea

    filled-new-array/range {v1 .. v7}, [[B

    move-result-object v1

    sput-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    .line 3024
    new-array v2, v0, [B

    fill-array-data v2, :array_7f2

    new-array v3, v0, [B

    fill-array-data v3, :array_7fa

    new-array v4, v0, [B

    fill-array-data v4, :array_802

    new-array v5, v0, [B

    fill-array-data v5, :array_80a

    new-array v6, v0, [B

    fill-array-data v6, :array_812

    new-array v7, v0, [B

    fill-array-data v7, :array_81a

    new-array v8, v0, [B

    fill-array-data v8, :array_822

    filled-new-array/range {v2 .. v8}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    .line 3037
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_82a

    sput-object v0, Landroid/icu/text/Bidi;->impAct2:[S

    .line 3038
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_836

    sput-object v0, Landroid/icu/text/Bidi;->impAct3:[S

    .line 3039
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    .line 3043
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    .line 3046
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_840

    new-array v2, v0, [B

    fill-array-data v2, :array_848

    new-array v3, v0, [B

    fill-array-data v3, :array_850

    new-array v4, v0, [B

    fill-array-data v4, :array_858

    new-array v0, v0, [B

    fill-array-data v0, :array_860

    filled-new-array {v1, v2, v3, v4, v0}, [[B

    move-result-object v0

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    .line 3056
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    return-void

    :array_432
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x7s
        0x8s
        0x3s
        0x9s
        0x6s
        0x5s
        0x4s
        0x4s
        0xas
        0xas
        0xcs
        0xas
        0xas
        0xas
        0xbs
        0xas
        0x4s
        0x4s
        0x4s
        0x4s
        0xds
        0xes
    .end array-data

    nop

    :array_450
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x5s
        0x7s
        0xfs
        0x11s
        0x7s
        0x9s
        0x7s
        0x0s
        0x7s
        0x3s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_464
    .array-data 2
        0x1s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x1s
        0x1s
        0x23s
        0x32s
        0x35s
        0x0s
    .end array-data

    :array_478
    .array-data 2
        0x21s
        0x2s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x2s
        0x2s
        0x23s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_48c
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x28s
        0x3s
        0x3s
        0x3s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_4a0
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x4as
        0xbs
        0x4as
        0x4s
        0x4s
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_4b4
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x5s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x4cs
        0x5s
        0x5s
        0x23s
        0x32s
        0x35s
        0x3s
    .end array-data

    :array_4c8
    .array-data 2
        0x21s
        0x22s
        0x6s
        0x6s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x4ds
        0x6s
        0x6s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_4dc
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x4es
        0x7s
        0x7s
        0x7s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_4f0
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x8s
        0x30s
        0x31s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_504
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x9s
        0x7s
        0x9s
        0x9s
        0x23s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_518
    .array-data 2
        0x61s
        0x62s
        0x4s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xas
        0x87s
        0x63s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_52c
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0xbs
        0x27s
        0xbs
        0xbs
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_540
    .array-data 2
        0x61s
        0x62s
        0x64s
        0x5s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xcs
        0x87s
        0x63s
        0x72s
        0x75s
        0x3s
    .end array-data

    :array_554
    .array-data 2
        0x61s
        0x62s
        0x6s
        0x6s
        0x88s
        0x70s
        0x71s
        0x88s
        0x88s
        0x88s
        0xds
        0x88s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_568
    .array-data 2
        0x21s
        0x22s
        0x84s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0xes
        0x7s
        0xes
        0xes
        0x23s
        0x92s
        0x95s
        0x4s
    .end array-data

    :array_57c
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0xfs
        0x31s
        0x27s
        0x29s
        0x27s
        0xfs
        0x27s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_590
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x10s
        0x31s
        0x28s
        0x28s
        0x28s
        0x10s
        0x28s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_5a4
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x11s
        0x27s
        0x29s
        0x27s
        0x11s
        0x27s
        0x23s
        0x32s
        0x35s
        0x6s
    .end array-data

    :array_5b8
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x53s
        0x14s
        0x53s
        0x12s
        0x12s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_5cc
    .array-data 2
        0x61s
        0x62s
        0x12s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x13s
        0x87s
        0x63s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_5e0
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x14s
        0x27s
        0x14s
        0x14s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_5f4
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x56s
        0x17s
        0x56s
        0x15s
        0x15s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_608
    .array-data 2
        0x61s
        0x62s
        0x15s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x16s
        0x87s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_61c
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x17s
        0x27s
        0x17s
        0x17s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_630
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_638
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_640
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_648
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_650
    .array-data 1
        0x0t
        0x21t
        0x33t
        0x33t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_658
    .array-data 1
        0x0t
        0x21t
        0x0t
        0x32t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_660
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_668
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_670
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_678
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_680
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x3t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_688
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_690
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
    .end array-data

    nop

    :array_69a
    .array-data 1
        0x0t
        0x2t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6a2
    .array-data 1
        0x0t
        0x42t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6aa
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_6b2
    .array-data 1
        0x0t
        0x22t
        0x34t
        0x34t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data

    :array_6ba
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x2t
    .end array-data

    :array_6c2
    .array-data 1
        0x0t
        0x3t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6ca
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x2t
    .end array-data

    :array_6d2
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_6da
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_6e2
    .array-data 1
        0x20t
        0x3t
        0x5t
        0x5t
        0x4t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_6ea
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x2t
    .end array-data

    :array_6f2
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6fa
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_702
    .array-data 1
        0x2t
        0x0t
        0x14t
        0x14t
        0x13t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_70a
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_712
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_71a
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_722
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_72a
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_732
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_73a
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x4t
        0x4t
        0x20t
        0x1t
    .end array-data

    :array_742
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x5t
        0x5t
        0x20t
        0x1t
    .end array-data

    :array_74a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_752
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_75a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_762
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_76a
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x21t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_772
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_77a
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_782
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x2t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_78a
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_792
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x0t
    .end array-data

    :array_79a
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x3t
    .end array-data

    :array_7a2
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x2t
    .end array-data

    :array_7aa
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x1t
    .end array-data

    :array_7b2
    .array-data 2
        0x0s
        0x1s
        0xds
        0xes
    .end array-data

    :array_7ba
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7c2
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x12t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_7ca
    .array-data 1
        0x20t
        0x63t
        0x20t
        0x1t
        0x2t
        0x30t
        0x20t
        0x3t
    .end array-data

    :array_7d2
    .array-data 1
        0x0t
        0x63t
        0x55t
        0x56t
        0x14t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_7da
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x56t
        0x4t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_7e2
    .array-data 1
        0x30t
        0x43t
        0x5t
        0x56t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_7ea
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x6t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_7f2
    .array-data 1
        0x13t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7fa
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_802
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x0t
    .end array-data

    :array_80a
    .array-data 1
        0x3t
        0x0t
        0x3t
        0x36t
        0x14t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_812
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x0t
    .end array-data

    :array_81a
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x1t
    .end array-data

    :array_822
    .array-data 1
        0x53t
        0x40t
        0x6t
        0x6t
        0x4t
        0x40t
        0x40t
        0x3t
    .end array-data

    :array_82a
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    nop

    :array_836
    .array-data 2
        0x0s
        0x1s
        0x9s
        0xas
        0xbs
        0xcs
    .end array-data

    :array_840
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_848
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_850
    .array-data 1
        0x0t
        0x62t
        0x54t
        0x54t
        0x13t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_858
    .array-data 1
        0x30t
        0x42t
        0x54t
        0x54t
        0x3t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_860
    .array-data 1
        0x30t
        0x42t
        0x4t
        0x4t
        0x13t
        0x30t
        0x30t
        0x4t
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 1227
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/icu/text/Bidi;-><init>(II)V

    .line 1228
    return-void
.end method

.method public constructor whitelist test-api <init>(II)V
    .registers 7
    .param p1, "maxLength"    # I
    .param p2, "maxRunCount"    # I

    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    .line 1030
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    .line 1074
    const/16 v1, 0xa

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    .line 1075
    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    .line 1079
    const/4 v1, 0x0

    new-array v2, v1, [Landroid/icu/text/BidiRun;

    iput-object v2, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    .line 1083
    new-array v2, v0, [Landroid/icu/text/BidiRun;

    new-instance v3, Landroid/icu/text/BidiRun;

    invoke-direct {v3}, Landroid/icu/text/BidiRun;-><init>()V

    aput-object v3, v2, v1

    iput-object v2, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    .line 1100
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    .line 1103
    new-instance v1, Landroid/icu/text/Bidi$InsertPoints;

    invoke-direct {v1}, Landroid/icu/text/Bidi$InsertPoints;-><init>()V

    iput-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    .line 1262
    if-ltz p1, :cond_4e

    if-ltz p2, :cond_4e

    .line 1284
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    iput-object v1, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    .line 1287
    if-lez p1, :cond_41

    .line 1288
    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialDirPropsMemory(I)V

    .line 1289
    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialLevelsMemory(I)V

    goto :goto_43

    .line 1291
    :cond_41
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    .line 1294
    :goto_43
    if-lez p2, :cond_4b

    .line 1296
    if-le p2, v0, :cond_4d

    .line 1297
    invoke-direct {p0, p2}, Landroid/icu/text/Bidi;->getInitialRunsMemory(I)V

    goto :goto_4d

    .line 1300
    :cond_4b
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    .line 1302
    :cond_4d
    :goto_4d
    return-void

    .line 1263
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 10
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 5213
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v6, p2

    .end local p2    # "flags":I
    .local v6, "flags":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    .line 5214
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/text/AttributedCharacterIterator;)V
    .registers 2
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .line 5244
    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    .line 5245
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->setPara(Ljava/text/AttributedCharacterIterator;)V

    .line 5246
    return-void
.end method

.method public constructor whitelist test-api <init>([CI[BIII)V
    .registers 12
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    .line 5293
    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    .line 5295
    sparse-switch p6, :sswitch_data_3c

    .line 5298
    const/4 v0, 0x0

    .line 5299
    .local v0, "paraLvl":B
    goto :goto_10

    .line 5307
    .end local v0    # "paraLvl":B
    :sswitch_8
    const/16 v0, 0x7f

    .restart local v0    # "paraLvl":B
    goto :goto_10

    .line 5304
    .end local v0    # "paraLvl":B
    :sswitch_b
    const/16 v0, 0x7e

    .line 5305
    .restart local v0    # "paraLvl":B
    goto :goto_10

    .line 5301
    .end local v0    # "paraLvl":B
    :sswitch_e
    const/4 v0, 0x1

    .line 5302
    .restart local v0    # "paraLvl":B
    nop

    .line 5311
    :goto_10
    if-nez p3, :cond_14

    .line 5312
    const/4 v1, 0x0

    .local v1, "paraEmbeddings":[B
    goto :goto_28

    .line 5319
    .end local v1    # "paraEmbeddings":[B
    :cond_14
    new-array v1, p5, [B

    .line 5321
    .restart local v1    # "paraEmbeddings":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, p5, :cond_28

    .line 5322
    add-int v3, v2, p4

    aget-byte v3, p3, v3

    .line 5323
    .local v3, "lev":B
    if-gez v3, :cond_23

    .line 5324
    neg-int v4, v3

    or-int/lit8 v4, v4, -0x80

    int-to-byte v3, v4

    .line 5327
    :cond_23
    aput-byte v3, v1, v2

    .line 5321
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 5330
    .end local v2    # "i":I
    .end local v3    # "lev":B
    :cond_28
    :goto_28
    if-nez p2, :cond_31

    array-length v2, p1

    if-ne p5, v2, :cond_31

    .line 5331
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_3a

    .line 5333
    :cond_31
    new-array v2, p5, [C

    .line 5334
    .local v2, "paraText":[C
    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5335
    invoke-virtual {p0, v2, v0, v1}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 5337
    .end local v2    # "paraText":[C
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_e
        0x7e -> :sswitch_b
        0x7f -> :sswitch_8
    .end sparse-switch
.end method

.method static final greylist-max-o DirFromStrong(B)B
    .registers 2
    .param p0, "strong"    # B

    .line 1132
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0
.end method

.method static greylist-max-o DirPropFlag(B)I
    .registers 2
    .param p0, "dir"    # B

    .line 1115
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method static final greylist-max-o DirPropFlagE(B)I
    .registers 3
    .param p0, "level"    # B

    .line 1130
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    and-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static final greylist-max-o DirPropFlagLR(B)I
    .registers 3
    .param p0, "level"    # B

    .line 1129
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    and-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static final greylist-max-o DirPropFlagO(B)I
    .registers 3
    .param p0, "level"    # B

    .line 1131
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    and-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private static greylist-max-o GetAction(B)S
    .registers 2
    .param p0, "cell"    # B

    .line 2844
    shr-int/lit8 v0, p0, 0x4

    int-to-short v0, v0

    return v0
.end method

.method private static greylist-max-o GetActionProps(S)S
    .registers 2
    .param p0, "cell"    # S

    .line 2744
    shr-int/lit8 v0, p0, 0x5

    int-to-short v0, v0

    return v0
.end method

.method static greylist-max-o GetLRFromLevel(B)B
    .registers 2
    .param p0, "level"    # B

    .line 1170
    and-int/lit8 v0, p0, 0x1

    int-to-byte v0, v0

    return v0
.end method

.method private static greylist-max-o GetState(B)S
    .registers 2
    .param p0, "cell"    # B

    .line 2843
    and-int/lit8 v0, p0, 0xf

    int-to-short v0, v0

    return v0
.end method

.method private static greylist-max-o GetStateProps(S)S
    .registers 2
    .param p0, "cell"    # S

    .line 2741
    and-int/lit8 v0, p0, 0x1f

    int-to-short v0, v0

    return v0
.end method

.method static greylist-max-o IsBidiControlChar(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 1182
    and-int/lit8 v0, p0, -0x4

    const/16 v1, 0x200c

    if-eq v0, v1, :cond_19

    const/16 v0, 0x202a

    if-lt p0, v0, :cond_e

    const/16 v0, 0x202e

    if-le p0, v0, :cond_19

    :cond_e
    const/16 v0, 0x2066

    if-lt p0, v0, :cond_17

    const/16 v0, 0x2069

    if-gt p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method static greylist-max-o IsDefaultLevel(B)Z
    .registers 3
    .param p0, "level"    # B

    .line 1175
    and-int/lit8 v0, p0, 0x7e

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static final greylist-max-o NoOverride(B)B
    .registers 2
    .param p0, "level"    # B

    .line 1133
    and-int/lit8 v0, p0, 0x7f

    int-to-byte v0, v0

    return v0
.end method

.method private greylist-max-o addPoint(II)V
    .registers 8
    .param p1, "pos"    # I
    .param p2, "flag"    # I

    .line 3080
    new-instance v0, Landroid/icu/text/Bidi$Point;

    invoke-direct {v0}, Landroid/icu/text/Bidi$Point;-><init>()V

    .line 3082
    .local v0, "point":Landroid/icu/text/Bidi$Point;
    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v1, v1, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v1, v1

    .line 3083
    .local v1, "len":I
    if-nez v1, :cond_16

    .line 3084
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    const/16 v3, 0xa

    new-array v3, v3, [Landroid/icu/text/Bidi$Point;

    iput-object v3, v2, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    .line 3085
    const/16 v1, 0xa

    .line 3087
    :cond_16
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v2, v2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lt v2, v1, :cond_30

    .line 3088
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v2, v2, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    .line 3089
    .local v2, "savePoints":[Landroid/icu/text/Bidi$Point;
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    mul-int/lit8 v4, v1, 0x2

    new-array v4, v4, [Landroid/icu/text/Bidi$Point;

    iput-object v4, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    .line 3090
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3092
    .end local v2    # "savePoints":[Landroid/icu/text/Bidi$Point;
    :cond_30
    iput p1, v0, Landroid/icu/text/Bidi$Point;->pos:I

    .line 3093
    iput p2, v0, Landroid/icu/text/Bidi$Point;->flag:I

    .line 3094
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v2, v2, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v3, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    aput-object v0, v2, v3

    .line 3095
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v3, v2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    .line 3096
    return-void
.end method

.method private greylist-max-o adjustWSLevels()V
    .registers 8

    .line 3538
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_72

    .line 3540
    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 3541
    .local v0, "i":I
    :cond_9
    :goto_9
    if-lez v0, :cond_72

    .line 3543
    :goto_b
    const/4 v1, 0x0

    const/4 v2, 0x7

    if-lez v0, :cond_38

    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v3, v0

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    move v4, v3

    .local v4, "flag":I
    sget v5, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_38

    .line 3544
    iget-boolean v3, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v3, :cond_2f

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_2f

    .line 3545
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v1, v2, v0

    goto :goto_b

    .line 3547
    :cond_2f
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    aput-byte v2, v1, v0

    goto :goto_b

    .line 3553
    .end local v4    # "flag":I
    :cond_38
    :goto_38
    if-lez v0, :cond_9

    .line 3554
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v3, v0

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    .line 3555
    .local v3, "flag":I
    sget v4, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_54

    .line 3556
    iget-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v5, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v0

    goto :goto_38

    .line 3557
    :cond_54
    iget-boolean v4, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v4, :cond_64

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_64

    .line 3558
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v1, v2, v0

    .line 3559
    goto :goto_9

    .line 3560
    :cond_64
    sget v4, Landroid/icu/text/Bidi;->MASK_B_S:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_38

    .line 3561
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 3562
    goto :goto_9

    .line 3567
    .end local v0    # "i":I
    .end local v3    # "flag":I
    :cond_72
    return-void
.end method

.method private greylist-max-o bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V
    .registers 10
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "match"    # C
    .param p3, "position"    # I

    .line 2079
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2081
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_29

    .line 2082
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    .line 2085
    .local v1, "saveOpenings":[Landroid/icu/text/Bidi$Opening;
    :try_start_10
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    array-length v2, v2

    .line 2086
    .local v2, "count":I
    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [Landroid/icu/text/Bidi$Opening;

    iput-object v4, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_20

    .line 2089
    nop

    .line 2090
    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    .line 2087
    .end local v2    # "count":I
    :catch_20
    move-exception v2

    .line 2088
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/OutOfMemoryError;

    const-string v4, "Failed to allocate memory for openings"

    invoke-direct {v3, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2092
    .end local v1    # "saveOpenings":[Landroid/icu/text/Bidi$Opening;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v2, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    aget-object v1, v1, v2

    .line 2093
    .local v1, "pOpening":Landroid/icu/text/Bidi$Opening;
    if-nez v1, :cond_3d

    .line 2094
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v4, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    new-instance v5, Landroid/icu/text/Bidi$Opening;

    invoke-direct {v5}, Landroid/icu/text/Bidi$Opening;-><init>()V

    aput-object v5, v2, v4

    move-object v1, v5

    .line 2095
    :cond_3d
    iput p3, v1, Landroid/icu/text/Bidi$Opening;->position:I

    .line 2096
    iput p2, v1, Landroid/icu/text/Bidi$Opening;->match:I

    .line 2097
    iget-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v2, v1, Landroid/icu/text/Bidi$Opening;->contextDir:B

    .line 2098
    iget v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    iput v2, v1, Landroid/icu/text/Bidi$Opening;->contextPos:I

    .line 2099
    iput-short v3, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    .line 2100
    iget-short v2, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2101
    return-void
.end method

.method private greylist-max-o bracketInit(Landroid/icu/text/Bidi$BracketData;)V
    .registers 8
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;

    .line 2018
    const/4 v0, 0x0

    iput v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2019
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    new-instance v2, Landroid/icu/text/Bidi$IsoRun;

    invoke-direct {v2}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v2, v1, v0

    .line 2020
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->start:S

    .line 2021
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2022
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->level:B

    .line 2023
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v3, v3, v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v4, v2, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v4, v1, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2024
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2025
    const/16 v1, 0x14

    new-array v1, v1, [Landroid/icu/text/Bidi$Opening;

    iput-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    .line 2026
    iget v1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    if-eq v1, v5, :cond_50

    iget v1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_51

    :cond_50
    move v0, v5

    :cond_51
    iput-boolean v0, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    .line 2028
    return-void
.end method

.method private greylist-max-o bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V
    .registers 8
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "level"    # B

    .line 2032
    const/4 v0, 0x0

    iput v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2033
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2034
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-byte p2, v1, Landroid/icu/text/Bidi$IsoRun;->level:B

    .line 2035
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v3, v3, v0

    and-int/lit8 v4, p2, 0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v4, v2, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v4, v1, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2036
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2037
    return-void
.end method

.method private greylist-max-o bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V
    .registers 8
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "lastCcPos"    # I
    .param p3, "contextLevel"    # B
    .param p4, "embeddingLevel"    # B

    .line 2042
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2043
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p2

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    sget v2, Landroid/icu/text/Bidi;->MASK_ISO:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 2044
    return-void

    .line 2045
    :cond_14
    invoke-static {p4}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    invoke-static {p3}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v2

    if-le v1, v2, :cond_1f

    .line 2046
    move p3, p4

    .line 2047
    :cond_1f
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    iput-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2048
    iput-byte p4, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    .line 2049
    and-int/lit8 v1, p3, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2050
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2051
    return-void
.end method

.method private greylist-max-o bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V
    .registers 13
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "position"    # I

    .line 2208
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2211
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p2

    .line 2212
    .local v1, "dirProp":B
    const/4 v2, 0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_95

    .line 2217
    iget-object v4, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v4, v4, p2

    .line 2218
    .local v4, "c":C
    iget-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr v5, v2

    .local v5, "idx":I
    :goto_16
    iget-short v6, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-lt v5, v6, :cond_70

    .line 2219
    iget-object v6, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v6, v6, v5

    iget v6, v6, Landroid/icu/text/Bidi$Opening;->match:I

    if-eq v6, v4, :cond_26

    .line 2220
    nop

    .line 2218
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    .line 2222
    :cond_26
    invoke-direct {p0, p1, v5, p2}, Landroid/icu/text/Bidi;->bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B

    move-result v6

    .line 2223
    .local v6, "newProp":B
    if-ne v6, v3, :cond_2e

    .line 2224
    const/4 v4, 0x0

    .line 2225
    goto :goto_70

    .line 2227
    :cond_2e
    iput-byte v3, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2228
    iput-byte v6, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2229
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2230
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v2, v2, p2

    .line 2231
    .local v2, "level":B
    and-int/lit8 v3, v2, -0x80

    if-eqz v3, :cond_60

    .line 2234
    and-int/lit8 v3, v2, 0x1

    int-to-byte v6, v3

    .line 2235
    iput-byte v6, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2236
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    int-to-short v3, v3

    .line 2237
    .local v3, "flag":S
    iget-short v7, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    .local v7, "i":I
    :goto_48
    if-ge v7, v5, :cond_57

    .line 2238
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v8, v8, v7

    iget-short v9, v8, Landroid/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v9, v3

    int-to-short v9, v9

    iput-short v9, v8, Landroid/icu/text/Bidi$Opening;->flags:S

    .line 2237
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 2240
    :cond_57
    iget-object v8, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v9, v8, p2

    and-int/lit8 v9, v9, 0x7f

    int-to-byte v9, v9

    aput-byte v9, v8, p2

    .line 2243
    .end local v3    # "flag":S
    .end local v7    # "i":I
    :cond_60
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v7, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v7, v7, v5

    iget v7, v7, Landroid/icu/text/Bidi$Opening;->position:I

    aget-byte v8, v3, v7

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 2244
    return-void

    .line 2249
    .end local v2    # "level":B
    .end local v6    # "newProp":B
    :cond_70
    :goto_70
    if-eqz v4, :cond_78

    .line 2250
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getBidiPairedBracket(I)I

    move-result v6

    int-to-char v6, v6

    .local v6, "match":C
    goto :goto_79

    .line 2252
    .end local v6    # "match":C
    :cond_78
    const/4 v6, 0x0

    .line 2253
    .restart local v6    # "match":C
    :goto_79
    if-eq v6, v4, :cond_95

    .line 2254
    const/16 v7, 0x1015

    invoke-static {v4, v7}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v7

    if-ne v7, v2, :cond_95

    .line 2258
    const/16 v7, 0x3009

    const/16 v8, 0x232a

    if-ne v6, v8, :cond_8d

    .line 2259
    invoke-direct {p0, p1, v7, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    goto :goto_92

    .line 2261
    :cond_8d
    if-ne v6, v7, :cond_92

    .line 2262
    invoke-direct {p0, p1, v8, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    .line 2264
    :cond_92
    :goto_92
    invoke-direct {p0, p1, v6, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    .line 2267
    .end local v4    # "c":C
    .end local v5    # "idx":I
    .end local v6    # "match":C
    :cond_95
    iget-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v4, v4, p2

    .line 2268
    .local v4, "level":B
    and-int/lit8 v5, v4, -0x80

    const/16 v6, 0xd

    if-eqz v5, :cond_b9

    .line 2269
    and-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    .line 2270
    .local v5, "newProp":B
    const/16 v7, 0x8

    if-eq v1, v7, :cond_b0

    const/16 v7, 0x9

    if-eq v1, v7, :cond_b0

    if-eq v1, v3, :cond_b0

    .line 2271
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v5, v3, p2

    .line 2272
    :cond_b0
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2273
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2274
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2275
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_115

    .line 2277
    .end local v5    # "newProp":B
    :cond_b9
    if-le v1, v2, :cond_109

    if-ne v1, v6, :cond_be

    goto :goto_109

    .line 2284
    :cond_be
    const/4 v5, 0x2

    const/4 v7, 0x5

    if-ne v1, v5, :cond_ee

    .line 2285
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2286
    iget-byte v3, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    if-nez v3, :cond_d9

    .line 2287
    const/4 v5, 0x0

    .line 2288
    .restart local v5    # "newProp":B
    iget-boolean v3, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    if-nez v3, :cond_d3

    .line 2289
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v7, 0x17

    aput-byte v7, v3, p2

    .line 2290
    :cond_d3
    const/4 v3, 0x0

    iput-byte v3, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2291
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_115

    .line 2294
    .end local v5    # "newProp":B
    :cond_d9
    const/4 v5, 0x1

    .line 2295
    .restart local v5    # "newProp":B
    iget-byte v3, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    if-ne v3, v6, :cond_e3

    .line 2296
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v7, v3, p2

    goto :goto_e9

    .line 2298
    :cond_e3
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v7, 0x18

    aput-byte v7, v3, p2

    .line 2299
    :goto_e9
    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2300
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_115

    .line 2303
    .end local v5    # "newProp":B
    :cond_ee
    if-ne v1, v7, :cond_f8

    .line 2304
    const/4 v5, 0x1

    .line 2305
    .restart local v5    # "newProp":B
    iput-byte v7, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2306
    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2307
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_115

    .line 2309
    .end local v5    # "newProp":B
    :cond_f8
    const/16 v5, 0x11

    if-ne v1, v5, :cond_105

    .line 2313
    iget-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2314
    .restart local v5    # "newProp":B
    if-ne v5, v3, :cond_115

    .line 2315
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v5, v3, p2

    goto :goto_115

    .line 2318
    .end local v5    # "newProp":B
    :cond_105
    move v5, v1

    .line 2319
    .restart local v5    # "newProp":B
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    goto :goto_115

    .line 2278
    .end local v5    # "newProp":B
    :cond_109
    :goto_109
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    move-result v5

    .line 2279
    .restart local v5    # "newProp":B
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2280
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2281
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2282
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2321
    :cond_115
    :goto_115
    if-le v5, v2, :cond_119

    if-ne v5, v6, :cond_13d

    .line 2323
    :cond_119
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    move-result v2

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    int-to-short v2, v2

    .line 2324
    .local v2, "flag":S
    iget-short v3, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    .local v3, "i":I
    :goto_124
    iget-short v6, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v3, v6, :cond_13d

    .line 2325
    iget-object v6, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/icu/text/Bidi$Opening;->position:I

    if-le p2, v6, :cond_13a

    .line 2326
    iget-object v6, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v6, v6, v3

    iget-short v7, v6, Landroid/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v7, v2

    int-to-short v7, v7

    iput-short v7, v6, Landroid/icu/text/Bidi$Opening;->flags:S

    .line 2324
    :cond_13a
    add-int/lit8 v3, v3, 0x1

    goto :goto_124

    .line 2328
    .end local v2    # "flag":S
    .end local v3    # "i":I
    :cond_13d
    return-void
.end method

.method private greylist-max-o bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B
    .registers 13
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "openIdx"    # I
    .param p3, "position"    # I

    .line 2131
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2136
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v1, v1, p2

    .line 2137
    .local v1, "pOpening":Landroid/icu/text/Bidi$Opening;
    iget-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    .line 2138
    .local v2, "direction":B
    const/4 v4, 0x1

    .line 2158
    .local v4, "stable":Z
    const/4 v5, 0x0

    if-nez v2, :cond_1a

    iget-short v6, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v7, Landroid/icu/text/Bidi;->FOUND_L:B

    and-int/2addr v6, v7

    if-gtz v6, :cond_23

    :cond_1a
    if-ne v2, v3, :cond_25

    iget-short v6, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v7, Landroid/icu/text/Bidi;->FOUND_R:B

    and-int/2addr v6, v7

    if-lez v6, :cond_25

    .line 2160
    :cond_23
    move v6, v2

    .local v6, "newProp":B
    goto :goto_3f

    .line 2162
    .end local v6    # "newProp":B
    :cond_25
    iget-short v6, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v7, Landroid/icu/text/Bidi;->FOUND_L:B

    sget-byte v8, Landroid/icu/text/Bidi;->FOUND_R:B

    or-int/2addr v7, v8

    and-int/2addr v6, v7

    if-eqz v6, :cond_a3

    .line 2165
    iget-short v6, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-ne p2, v6, :cond_35

    move v6, v3

    goto :goto_36

    :cond_35
    move v6, v5

    :goto_36
    move v4, v6

    .line 2166
    iget-byte v6, v1, Landroid/icu/text/Bidi$Opening;->contextDir:B

    if-eq v2, v6, :cond_3e

    .line 2167
    iget-byte v6, v1, Landroid/icu/text/Bidi$Opening;->contextDir:B

    .restart local v6    # "newProp":B
    goto :goto_3f

    .line 2169
    .end local v6    # "newProp":B
    :cond_3e
    move v6, v2

    .line 2175
    .restart local v6    # "newProp":B
    :goto_3f
    iget-object v7, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget v8, v1, Landroid/icu/text/Bidi$Opening;->position:I

    aput-byte v6, v7, v8

    .line 2176
    iget-object v7, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v6, v7, p3

    .line 2178
    iget v7, v1, Landroid/icu/text/Bidi$Opening;->position:I

    invoke-direct {p0, p1, p2, v7, v6}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    .line 2179
    if-eqz v4, :cond_6d

    .line 2180
    int-to-short v5, p2

    iput-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2182
    :goto_53
    iget-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-short v7, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-le v5, v7, :cond_a2

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v7, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr v7, v3

    aget-object v5, v5, v7

    iget v5, v5, Landroid/icu/text/Bidi$Opening;->position:I

    iget v7, v1, Landroid/icu/text/Bidi$Opening;->position:I

    if-ne v5, v7, :cond_a2

    .line 2184
    iget-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr v5, v3

    int-to-short v5, v5

    iput-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    goto :goto_53

    .line 2187
    :cond_6d
    neg-int v3, p3

    iput v3, v1, Landroid/icu/text/Bidi$Opening;->match:I

    .line 2189
    add-int/lit8 v3, p2, -0x1

    .line 2190
    .local v3, "k":I
    :goto_72
    iget-short v7, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-lt v3, v7, :cond_8a

    iget-object v7, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/icu/text/Bidi$Opening;->position:I

    iget v8, v1, Landroid/icu/text/Bidi$Opening;->position:I

    if-ne v7, v8, :cond_8a

    .line 2192
    iget-object v7, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    add-int/lit8 v8, v3, -0x1

    .end local v3    # "k":I
    .local v8, "k":I
    aget-object v3, v7, v3

    iput v5, v3, Landroid/icu/text/Bidi$Opening;->match:I

    move v3, v8

    goto :goto_72

    .line 2195
    .end local v8    # "k":I
    .restart local v3    # "k":I
    :cond_8a
    add-int/lit8 v3, p2, 0x1

    :goto_8c
    iget-short v7, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v3, v7, :cond_a2

    .line 2196
    iget-object v7, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v7, v7, v3

    .line 2197
    .local v7, "qOpening":Landroid/icu/text/Bidi$Opening;
    iget v8, v7, Landroid/icu/text/Bidi$Opening;->position:I

    if-lt v8, p3, :cond_99

    .line 2198
    goto :goto_a2

    .line 2199
    :cond_99
    iget v8, v7, Landroid/icu/text/Bidi$Opening;->match:I

    if-lez v8, :cond_9f

    .line 2200
    iput v5, v7, Landroid/icu/text/Bidi$Opening;->match:I

    .line 2195
    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 2203
    .end local v3    # "k":I
    .end local v7    # "qOpening":Landroid/icu/text/Bidi$Opening;
    :cond_a2
    :goto_a2
    return v6

    .line 2172
    .end local v6    # "newProp":B
    :cond_a3
    int-to-short v3, p2

    iput-short v3, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2173
    const/16 v3, 0xa

    return v3
.end method

.method private greylist-max-o bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V
    .registers 8
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "level"    # B

    .line 2055
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2057
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    const/16 v1, 0xa

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2058
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2059
    .local v1, "lastLimit":S
    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2060
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v2, v3

    .line 2061
    if-nez v0, :cond_26

    .line 2062
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    new-instance v4, Landroid/icu/text/Bidi$IsoRun;

    invoke-direct {v4}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v4, v2, v3

    move-object v0, v4

    .line 2063
    :cond_26
    iput-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iput-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    .line 2064
    iput-byte p2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    .line 2065
    and-int/lit8 v2, p2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2066
    const/4 v2, 0x0

    iput v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2067
    return-void
.end method

.method private greylist-max-o bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V
    .registers 4
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;

    .line 2072
    iget v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2073
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2074
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    const/16 v1, 0xa

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2075
    return-void
.end method

.method private greylist-max-o checkExplicitLevels()B
    .registers 12

    .line 2660
    const/4 v0, 0x0

    .line 2662
    .local v0, "isolateCount":I
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/text/Bidi;->flags:I

    .line 2663
    iput v1, p0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2665
    const/4 v2, 0x0

    .line 2666
    .local v2, "currentParaIndex":I
    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v3, v1

    .line 2667
    .local v1, "currentParaLimit":I
    iget-byte v3, p0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 2669
    .local v3, "currentParaLevel":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    iget v5, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v4, v5, :cond_a5

    .line 2670
    iget-object v5, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v5, v5, v4

    .line 2671
    .local v5, "level":B
    iget-object v6, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v6, v6, v4

    .line 2672
    .local v6, "dirProp":B
    const/16 v7, 0x14

    const/4 v8, 0x7

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x15

    if-ne v6, v7, :cond_24

    goto :goto_2f

    .line 2677
    :cond_24
    const/16 v7, 0x16

    if-ne v6, v7, :cond_2b

    .line 2678
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    .line 2679
    :cond_2b
    if-ne v6, v8, :cond_37

    .line 2680
    const/4 v0, 0x0

    goto :goto_37

    .line 2673
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    .line 2674
    iget v7, p0, Landroid/icu/text/Bidi;->isolateCount:I

    if-le v0, v7, :cond_37

    .line 2675
    iput v0, p0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2683
    :cond_37
    :goto_37
    iget-byte v7, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v7, :cond_4d

    if-ne v4, v1, :cond_4d

    add-int/lit8 v7, v2, 0x1

    iget v9, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v7, v9, :cond_4d

    .line 2685
    iget-object v7, p0, Landroid/icu/text/Bidi;->paras_level:[B

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v7, v2

    .line 2686
    iget-object v7, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v7, v2

    .line 2689
    :cond_4d
    and-int/lit8 v7, v5, -0x80

    .line 2690
    .local v7, "overrideFlag":I
    and-int/lit8 v9, v5, 0x7f

    int-to-byte v5, v9

    .line 2691
    if-lt v5, v3, :cond_58

    const/16 v9, 0x7d

    if-ge v9, v5, :cond_65

    .line 2692
    :cond_58
    if-nez v5, :cond_82

    .line 2693
    if-ne v6, v8, :cond_5d

    goto :goto_65

    .line 2699
    :cond_5d
    move v5, v3

    .line 2700
    iget-object v8, p0, Landroid/icu/text/Bidi;->levels:[B

    or-int v9, v5, v7

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 2708
    :cond_65
    :goto_65
    if-eqz v7, :cond_71

    .line 2710
    iget v8, p0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v9

    or-int/2addr v8, v9

    iput v8, p0, Landroid/icu/text/Bidi;->flags:I

    goto :goto_7f

    .line 2713
    :cond_71
    iget v8, p0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v9

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v9, v10

    or-int/2addr v8, v9

    iput v8, p0, Landroid/icu/text/Bidi;->flags:I

    .line 2669
    .end local v5    # "level":B
    .end local v6    # "dirProp":B
    .end local v7    # "overrideFlag":I
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 2704
    .restart local v5    # "level":B
    .restart local v6    # "dirProp":B
    .restart local v7    # "overrideFlag":I
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " out of bounds at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2716
    .end local v4    # "i":I
    .end local v5    # "level":B
    .end local v6    # "dirProp":B
    .end local v7    # "overrideFlag":I
    :cond_a5
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    sget v5, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_b7

    .line 2717
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    iget-byte v5, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    .line 2719
    :cond_b7
    invoke-direct {p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v4

    return v4
.end method

.method private greylist-max-o checkParaCount()V
    .registers 8

    .line 1747
    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    .line 1748
    .local v0, "count":I
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    array-length v1, v1

    if-gt v0, v1, :cond_8

    .line 1749
    return-void

    .line 1750
    :cond_8
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    array-length v1, v1

    .line 1751
    .local v1, "oldLength":I
    iget-object v2, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    .line 1752
    .local v2, "saveLimits":[I
    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_level:[B

    .line 1754
    .local v3, "saveLevels":[B
    mul-int/lit8 v4, v0, 0x2

    :try_start_11
    new-array v4, v4, [I

    iput-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    .line 1755
    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    iput-object v4, p0, Landroid/icu/text/Bidi;->paras_level:[B
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_28

    .line 1758
    nop

    .line 1759
    iget-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1760
    iget-object v4, p0, Landroid/icu/text/Bidi;->paras_level:[B

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1761
    return-void

    .line 1756
    :catch_28
    move-exception v4

    .line 1757
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string v6, "Failed to allocate memory for paras"

    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private greylist-max-o directionFromFlags()B
    .registers 3

    .line 2335
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_RTL:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    .line 2336
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1a

    .line 2338
    :cond_18
    const/4 v0, 0x0

    return v0

    .line 2339
    :cond_1a
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_LTR:I

    and-int/2addr v0, v1

    if-nez v0, :cond_23

    .line 2340
    const/4 v0, 0x1

    return v0

    .line 2342
    :cond_23
    const/4 v0, 0x2

    return v0
.end method

.method private greylist-max-o firstL_R_AL()B
    .registers 6

    .line 1723
    const/16 v0, 0xa

    .line 1724
    .local v0, "result":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1725
    iget-object v2, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1726
    .local v2, "uchar":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1727
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v3, v3

    .line 1728
    .local v3, "dirProp":B
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2a

    .line 1729
    if-eqz v3, :cond_28

    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2f

    .line 1730
    :cond_28
    move v0, v3

    goto :goto_2f

    .line 1733
    :cond_2a
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2f

    .line 1734
    const/16 v0, 0xa

    .line 1737
    .end local v2    # "uchar":I
    .end local v3    # "dirProp":B
    :cond_2f
    :goto_2f
    goto :goto_3

    .line 1738
    .end local v1    # "i":I
    :cond_30
    return v0
.end method

.method private greylist-max-o firstL_R_AL_EN_AN()B
    .registers 6

    .line 3349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 3350
    iget-object v1, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 3351
    .local v1, "uchar":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3352
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v2

    int-to-byte v2, v2

    .line 3353
    .local v2, "dirProp":B
    if-nez v2, :cond_1d

    .line 3354
    const/4 v3, 0x0

    return v3

    .line 3356
    :cond_1d
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2f

    const/16 v4, 0xd

    if-ne v2, v4, :cond_25

    goto :goto_2f

    .line 3359
    :cond_25
    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 3360
    return v3

    .line 3362
    :cond_29
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2e

    .line 3363
    const/4 v3, 0x3

    return v3

    .line 3365
    .end local v1    # "uchar":I
    .end local v2    # "dirProp":B
    :cond_2e
    goto :goto_1

    .line 3357
    .restart local v1    # "uchar":I
    .restart local v2    # "dirProp":B
    :cond_2f
    :goto_2f
    return v3

    .line 3366
    .end local v0    # "i":I
    .end local v1    # "uchar":I
    .end local v2    # "dirProp":B
    :cond_30
    const/4 v0, 0x4

    return v0
.end method

.method private greylist-max-o fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V
    .registers 11
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "openingIndex"    # I
    .param p3, "newPropPosition"    # I
    .param p4, "newProp"    # B

    .line 2106
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2109
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    add-int/lit8 v1, p2, 0x1

    .local v1, "k":I
    :goto_8
    iget-short v2, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v1, v2, :cond_3d

    .line 2110
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v2, v2, v1

    .line 2111
    .local v2, "qOpening":Landroid/icu/text/Bidi$Opening;
    iget v3, v2, Landroid/icu/text/Bidi$Opening;->match:I

    if-ltz v3, :cond_15

    .line 2112
    goto :goto_3a

    .line 2113
    :cond_15
    iget v3, v2, Landroid/icu/text/Bidi$Opening;->contextPos:I

    if-ge p3, v3, :cond_1a

    .line 2114
    goto :goto_3d

    .line 2115
    :cond_1a
    iget v3, v2, Landroid/icu/text/Bidi$Opening;->position:I

    if-lt p3, v3, :cond_1f

    .line 2116
    goto :goto_3a

    .line 2117
    :cond_1f
    iget-byte v3, v2, Landroid/icu/text/Bidi$Opening;->contextDir:B

    if-ne p4, v3, :cond_24

    .line 2118
    goto :goto_3d

    .line 2119
    :cond_24
    iget v3, v2, Landroid/icu/text/Bidi$Opening;->position:I

    .line 2120
    .local v3, "openingPosition":I
    iget-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v4, v3

    .line 2121
    iget v4, v2, Landroid/icu/text/Bidi$Opening;->match:I

    neg-int v4, v4

    .line 2122
    .local v4, "closingPosition":I
    iget-object v5, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v5, v4

    .line 2123
    const/4 v5, 0x0

    iput v5, v2, Landroid/icu/text/Bidi$Opening;->match:I

    .line 2124
    invoke-direct {p0, p1, v1, v3, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    .line 2125
    invoke-direct {p0, p1, v1, v4, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    .line 2109
    .end local v3    # "openingPosition":I
    .end local v4    # "closingPosition":I
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2127
    .end local v2    # "qOpening":Landroid/icu/text/Bidi$Opening;
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static whitelist test-api getBaseDirection(Ljava/lang/CharSequence;)B
    .registers 8
    .param p0, "paragraph"    # Ljava/lang/CharSequence;

    .line 1691
    const/4 v0, 0x3

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2c

    .line 1695
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1699
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_2b

    .line 1701
    invoke-static {p0, v2}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1702
    .local v3, "c":I
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getDirectionality(I)B

    move-result v4

    .line 1703
    .local v4, "direction":B
    if-nez v4, :cond_1d

    .line 1704
    const/4 v0, 0x0

    return v0

    .line 1705
    :cond_1d
    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    const/16 v6, 0xd

    if-ne v4, v6, :cond_25

    goto :goto_2a

    .line 1710
    :cond_25
    invoke-static {p0, v2, v5}, Landroid/icu/lang/UCharacter;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    goto :goto_f

    .line 1707
    :cond_2a
    :goto_2a
    return v5

    .line 1712
    .end local v2    # "i":I
    .end local v3    # "c":I
    .end local v4    # "direction":B
    :cond_2b
    return v0

    .line 1692
    .end local v1    # "length":I
    :cond_2c
    :goto_2c
    return v0
.end method

.method private greylist-max-o getDirProps()V
    .registers 27

    .line 1778
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1779
    .local v1, "i":I
    const/4 v2, 0x0

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1782
    const/4 v3, 0x0

    .line 1783
    .local v3, "defaultParaLevel":B
    iget-byte v4, v0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v4}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v4

    .line 1786
    .local v4, "isDefaultLevel":Z
    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    iget v6, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1a

    iget v6, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1c

    :cond_1a
    move v6, v5

    goto :goto_1d

    :cond_1c
    move v6, v2

    .line 1789
    .local v6, "isDefaultLevelInverse":Z
    :goto_1d
    const/4 v7, -0x1

    iput v7, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    .line 1790
    const/4 v8, 0x0

    .line 1791
    .local v8, "controlCount":I
    iget v9, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-eqz v9, :cond_29

    move v9, v5

    goto :goto_2a

    :cond_29
    move v9, v2

    .line 1794
    .local v9, "removeBidiControls":Z
    :goto_2a
    const/16 v11, 0xa

    .line 1803
    .local v11, "lastStrong":B
    const/16 v12, 0x7e

    new-array v13, v12, [I

    .line 1806
    .local v13, "isolateStartStack":[I
    new-array v12, v12, [B

    .line 1807
    .local v12, "previousStateStack":[B
    const/4 v14, -0x1

    .line 1809
    .local v14, "stackLast":I
    iget v15, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_3b

    .line 1810
    iput v2, v0, Landroid/icu/text/Bidi;->length:I

    .line 1811
    :cond_3b
    iget-byte v15, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr v15, v5

    int-to-byte v3, v15

    .line 1813
    const/16 v15, 0xa

    if-eqz v4, :cond_65

    .line 1814
    move/from16 v16, v7

    iget-object v7, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v3, v7, v2

    .line 1815
    move v11, v3

    .line 1816
    iget-object v7, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz v7, :cond_63

    .line 1817
    invoke-direct {v0}, Landroid/icu/text/Bidi;->firstL_R_AL()B

    move-result v7

    move/from16 v17, v7

    .local v17, "dirProp":B
    if-eq v7, v15, :cond_63

    .line 1818
    if-nez v17, :cond_5d

    .line 1819
    iget-object v7, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v2, v7, v2

    goto :goto_61

    .line 1821
    :cond_5d
    iget-object v7, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v5, v7, v2

    .line 1822
    :goto_61
    const/4 v7, 0x0

    .local v7, "state":B
    goto :goto_6e

    .line 1824
    .end local v7    # "state":B
    .end local v17    # "dirProp":B
    :cond_63
    const/4 v7, 0x1

    .restart local v7    # "state":B
    goto :goto_6e

    .line 1827
    .end local v7    # "state":B
    :cond_65
    move/from16 v16, v7

    iget-object v7, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget-byte v15, v0, Landroid/icu/text/Bidi;->paraLevel:B

    aput-byte v15, v7, v2

    .line 1828
    const/4 v7, 0x0

    .line 1837
    .restart local v7    # "state":B
    :goto_6e
    const/4 v1, 0x0

    :goto_6f
    iget v15, v0, Landroid/icu/text/Bidi;->originalLength:I

    const/16 v18, 0x14

    if-ge v1, v15, :cond_219

    .line 1838
    move v15, v1

    .line 1839
    .local v15, "i0":I
    iget-object v10, v0, Landroid/icu/text/Bidi;->text:[C

    iget v5, v0, Landroid/icu/text/Bidi;->originalLength:I

    invoke-static {v10, v2, v5, v1}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v5

    .line 1840
    .local v5, "uchar":I
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v10

    add-int/2addr v1, v10

    .line 1841
    add-int/lit8 v10, v1, -0x1

    .line 1843
    .local v10, "i1":I
    move/from16 v21, v2

    invoke-virtual {v0, v5}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v2

    int-to-byte v2, v2

    .line 1844
    .local v2, "dirProp":B
    move/from16 v22, v3

    .end local v3    # "defaultParaLevel":B
    .local v22, "defaultParaLevel":B
    iget v3, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v23

    or-int v3, v3, v23

    iput v3, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1845
    iget-object v3, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v2, v3, v10

    .line 1846
    if-le v10, v15, :cond_b2

    .line 1847
    iget v3, v0, Landroid/icu/text/Bidi;->flags:I

    const/16 v23, 0x12

    invoke-static/range {v23 .. v23}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v24

    or-int v3, v3, v24

    iput v3, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1849
    :cond_aa
    iget-object v3, v0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v10, v10, -0x1

    aput-byte v23, v3, v10

    .line 1850
    if-gt v10, v15, :cond_aa

    .line 1852
    :cond_b2
    if-eqz v9, :cond_bc

    invoke-static {v5}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 1853
    add-int/lit8 v8, v8, 0x1

    .line 1855
    :cond_bc
    if-nez v2, :cond_eb

    .line 1856
    const/4 v3, 0x1

    if-ne v7, v3, :cond_d0

    .line 1857
    move/from16 v20, v3

    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v3

    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v3, v3, -0x1

    aput-byte v21, v18, v3

    .line 1858
    const/4 v3, 0x0

    move v7, v3

    .end local v7    # "state":B
    .local v3, "state":B
    goto :goto_e3

    .line 1860
    .end local v3    # "state":B
    .restart local v7    # "state":B
    :cond_d0
    const/4 v3, 0x2

    if-ne v7, v3, :cond_e3

    .line 1861
    const/16 v3, 0x7d

    if-gt v14, v3, :cond_e1

    .line 1864
    iget v3, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v18 .. v18}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v18

    or-int v3, v3, v18

    iput v3, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1866
    :cond_e1
    const/4 v3, 0x3

    move v7, v3

    .line 1868
    :cond_e3
    :goto_e3
    const/4 v11, 0x0

    .line 1869
    move/from16 v2, v21

    move/from16 v3, v22

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto :goto_6f

    .line 1871
    :cond_eb
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d9

    const/16 v3, 0xd

    if-ne v2, v3, :cond_f8

    move/from16 v19, v1

    move/from16 v25, v4

    goto/16 :goto_1dd

    .line 1888
    :cond_f8
    const/16 v3, 0x13

    if-lt v2, v3, :cond_128

    const/16 v3, 0x15

    if-gt v2, v3, :cond_128

    .line 1889
    add-int/lit8 v14, v14, 0x1

    .line 1890
    const/16 v3, 0x7d

    if-gt v14, v3, :cond_10c

    .line 1891
    add-int/lit8 v3, v1, -0x1

    aput v3, v13, v14

    .line 1892
    aput-byte v7, v12, v14

    .line 1894
    :cond_10c
    const/16 v3, 0x13

    if-ne v2, v3, :cond_11f

    .line 1895
    iget-object v3, v0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v19, v1, -0x1

    aput-byte v18, v3, v19

    .line 1896
    const/4 v7, 0x2

    move/from16 v2, v21

    move/from16 v3, v22

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_6f

    .line 1899
    :cond_11f
    const/4 v7, 0x3

    .line 1900
    move/from16 v2, v21

    move/from16 v3, v22

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_6f

    .line 1902
    :cond_128
    const/16 v3, 0x16

    if-ne v2, v3, :cond_156

    .line 1903
    const/4 v3, 0x2

    if-ne v7, v3, :cond_13d

    .line 1904
    const/16 v3, 0x7d

    if-gt v14, v3, :cond_13d

    .line 1907
    iget v3, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v18 .. v18}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v18

    or-int v3, v3, v18

    iput v3, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1910
    :cond_13d
    if-ltz v14, :cond_150

    .line 1911
    const/16 v3, 0x7d

    if-gt v14, v3, :cond_146

    .line 1912
    aget-byte v3, v12, v14

    move v7, v3

    .line 1913
    :cond_146
    add-int/lit8 v14, v14, -0x1

    move/from16 v2, v21

    move/from16 v3, v22

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_6f

    .line 1910
    :cond_150
    move/from16 v19, v1

    move/from16 v25, v4

    goto/16 :goto_20d

    .line 1917
    :cond_156
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1d4

    .line 1918
    iget v3, v0, Landroid/icu/text/Bidi;->originalLength:I

    if-ge v1, v3, :cond_16f

    const/16 v3, 0xd

    if-ne v5, v3, :cond_16f

    iget-object v3, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v3, v3, v1

    move/from16 v25, v4

    const/16 v4, 0xa

    .end local v4    # "isDefaultLevel":Z
    .local v25, "isDefaultLevel":Z
    if-ne v3, v4, :cond_173

    .line 1919
    move/from16 v19, v1

    goto/16 :goto_20d

    .line 1918
    .end local v25    # "isDefaultLevel":Z
    .restart local v4    # "isDefaultLevel":Z
    :cond_16f
    move/from16 v25, v4

    const/16 v4, 0xa

    .line 1920
    .end local v4    # "isDefaultLevel":Z
    .restart local v25    # "isDefaultLevel":Z
    :cond_173
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    move-object/from16 v18, v3

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    aput v1, v18, v4

    .line 1921
    if-eqz v6, :cond_18b

    if-ne v11, v3, :cond_18b

    .line 1922
    iget-object v4, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move/from16 v20, v3

    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v3, v3, -0x1

    aput-byte v20, v4, v3

    .line 1923
    :cond_18b
    iget v3, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_195

    .line 1926
    iput v1, v0, Landroid/icu/text/Bidi;->length:I

    .line 1927
    iput v8, v0, Landroid/icu/text/Bidi;->controlCount:I

    .line 1929
    :cond_195
    iget v3, v0, Landroid/icu/text/Bidi;->originalLength:I

    if-ge v1, v3, :cond_1d1

    .line 1930
    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    const/16 v20, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    .line 1931
    invoke-direct {v0}, Landroid/icu/text/Bidi;->checkParaCount()V

    .line 1932
    if-eqz v25, :cond_1b6

    .line 1933
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v4, v4, -0x1

    aput-byte v22, v3, v4

    .line 1934
    const/4 v3, 0x1

    .line 1935
    .end local v7    # "state":B
    .restart local v3    # "state":B
    move/from16 v4, v22

    move/from16 v19, v1

    move v7, v3

    move v11, v4

    .end local v11    # "lastStrong":B
    .local v4, "lastStrong":B
    goto :goto_1c4

    .line 1937
    .end local v3    # "state":B
    .end local v4    # "lastStrong":B
    .restart local v7    # "state":B
    .restart local v11    # "lastStrong":B
    :cond_1b6
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v19, v1

    .end local v1    # "i":I
    .local v19, "i":I
    iget-byte v1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    aput-byte v1, v3, v4

    .line 1938
    const/4 v1, 0x0

    move v7, v1

    .line 1940
    :goto_1c4
    const/4 v14, -0x1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v25

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_6f

    .line 1929
    .end local v19    # "i":I
    .restart local v1    # "i":I
    :cond_1d1
    move/from16 v19, v1

    .end local v1    # "i":I
    .restart local v19    # "i":I
    goto :goto_20d

    .line 1917
    .end local v19    # "i":I
    .end local v25    # "isDefaultLevel":Z
    .restart local v1    # "i":I
    .local v4, "isDefaultLevel":Z
    :cond_1d4
    move/from16 v19, v1

    move/from16 v25, v4

    .end local v1    # "i":I
    .end local v4    # "isDefaultLevel":Z
    .restart local v19    # "i":I
    .restart local v25    # "isDefaultLevel":Z
    goto :goto_20d

    .line 1871
    .end local v19    # "i":I
    .end local v25    # "isDefaultLevel":Z
    .restart local v1    # "i":I
    .restart local v4    # "isDefaultLevel":Z
    :cond_1d9
    move/from16 v19, v1

    move/from16 v25, v4

    .line 1872
    .end local v1    # "i":I
    .end local v4    # "isDefaultLevel":Z
    .restart local v19    # "i":I
    .restart local v25    # "isDefaultLevel":Z
    :goto_1dd
    const/4 v3, 0x1

    if-ne v7, v3, :cond_1ea

    .line 1873
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v4, v3

    aput-byte v3, v1, v4

    .line 1874
    const/4 v1, 0x0

    move v7, v1

    .end local v7    # "state":B
    .local v1, "state":B
    goto :goto_204

    .line 1876
    .end local v1    # "state":B
    .restart local v7    # "state":B
    :cond_1ea
    const/4 v3, 0x2

    if-ne v7, v3, :cond_204

    .line 1877
    const/16 v3, 0x7d

    if-gt v14, v3, :cond_202

    .line 1878
    iget-object v1, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget v3, v13, v14

    const/16 v23, 0x15

    aput-byte v23, v1, v3

    .line 1879
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v23 .. v23}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1881
    :cond_202
    const/4 v1, 0x3

    move v7, v1

    .line 1883
    :cond_204
    :goto_204
    const/4 v11, 0x1

    .line 1884
    const/16 v3, 0xd

    if-ne v2, v3, :cond_20d

    .line 1885
    add-int/lit8 v1, v19, -0x1

    iput v1, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    .line 1837
    .end local v2    # "dirProp":B
    .end local v5    # "uchar":I
    .end local v10    # "i1":I
    .end local v15    # "i0":I
    :cond_20d
    :goto_20d
    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v25

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_6f

    .line 1946
    .end local v19    # "i":I
    .end local v22    # "defaultParaLevel":B
    .end local v25    # "isDefaultLevel":Z
    .local v1, "i":I
    .local v3, "defaultParaLevel":B
    .restart local v4    # "isDefaultLevel":Z
    :cond_219
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v25, v4

    .end local v3    # "defaultParaLevel":B
    .end local v4    # "isDefaultLevel":Z
    .restart local v22    # "defaultParaLevel":B
    .restart local v25    # "isDefaultLevel":Z
    const/16 v3, 0x7d

    if-le v14, v3, :cond_226

    .line 1947
    const/16 v14, 0x7d

    .line 1948
    const/4 v7, 0x2

    .line 1951
    :cond_226
    :goto_226
    if-ltz v14, :cond_23a

    .line 1952
    const/4 v3, 0x2

    if-ne v7, v3, :cond_235

    .line 1955
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v18 .. v18}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1956
    goto :goto_23a

    .line 1958
    :cond_235
    aget-byte v7, v12, v14

    .line 1959
    add-int/lit8 v14, v14, -0x1

    goto :goto_226

    .line 1962
    :cond_23a
    :goto_23a
    iget v2, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_24f

    .line 1963
    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    iget v3, v0, Landroid/icu/text/Bidi;->originalLength:I

    if-ge v2, v3, :cond_24d

    .line 1964
    iget v2, v0, Landroid/icu/text/Bidi;->paraCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/icu/text/Bidi;->paraCount:I

    goto :goto_25b

    .line 1963
    :cond_24d
    const/4 v3, 0x1

    goto :goto_25b

    .line 1966
    :cond_24f
    const/4 v3, 0x1

    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v4, v3

    iget v5, v0, Landroid/icu/text/Bidi;->originalLength:I

    aput v5, v2, v4

    .line 1967
    iput v8, v0, Landroid/icu/text/Bidi;->controlCount:I

    .line 1971
    :goto_25b
    if-eqz v6, :cond_266

    if-ne v11, v3, :cond_266

    .line 1972
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v4, v3

    aput-byte v3, v2, v4

    .line 1974
    :cond_266
    if-eqz v25, :cond_26e

    .line 1975
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v2, v2, v21

    iput-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 1979
    :cond_26e
    const/4 v1, 0x0

    :goto_26f
    iget v2, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v1, v2, :cond_283

    .line 1980
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v3, v1

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1979
    add-int/lit8 v1, v1, 0x1

    goto :goto_26f

    .line 1982
    :cond_283
    iget-boolean v2, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v2, :cond_29b

    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    const/16 v19, 0x7

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_29b

    .line 1983
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v21 .. v21}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1985
    :cond_29b
    return-void
.end method

.method private greylist-max-o getDirPropsMemory(ZI)V
    .registers 9
    .param p1, "mayAllocate"    # Z
    .param p2, "len"    # I

    .line 1342
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v1, "DirProps"

    move-object v0, p0

    move v4, p1

    move v5, p2

    .end local p1    # "mayAllocate":Z
    .end local p2    # "len":I
    .local v4, "mayAllocate":Z
    .local v5, "len":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1343
    .local p1, "array":Ljava/lang/Object;
    move-object p2, p1

    check-cast p2, [B

    iput-object p2, v0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    .line 1344
    return-void
.end method

.method private greylist-max-o getInitialDirPropsMemory(I)V
    .registers 3
    .param p1, "len"    # I

    .line 1376
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    .line 1377
    return-void
.end method

.method private greylist-max-o getInitialLevelsMemory(I)V
    .registers 3
    .param p1, "len"    # I

    .line 1381
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    .line 1382
    return-void
.end method

.method private greylist-max-o getInitialRunsMemory(I)V
    .registers 3
    .param p1, "len"    # I

    .line 1386
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    .line 1387
    return-void
.end method

.method private greylist-max-o getLevelsMemory(ZI)V
    .registers 9
    .param p1, "mayAllocate"    # Z
    .param p2, "len"    # I

    .line 1353
    iget-object v2, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v1, "Levels"

    move-object v0, p0

    move v4, p1

    move v5, p2

    .end local p1    # "mayAllocate":Z
    .end local p2    # "len":I
    .local v4, "mayAllocate":Z
    .local v5, "len":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1354
    .local p1, "array":Ljava/lang/Object;
    move-object p2, p1

    check-cast p2, [B

    iput-object p2, v0, Landroid/icu/text/Bidi;->levelsMemory:[B

    .line 1355
    return-void
.end method

.method private greylist-max-o getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "array"    # Ljava/lang/Object;
    .param p4, "mayAllocate"    # Z
    .param p5, "sizeNeeded"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1314
    .local p3, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1317
    .local v0, "len":I
    if-ne p5, v0, :cond_7

    .line 1318
    return-object p2

    .line 1320
    :cond_7
    const-string v1, "Failed to allocate memory for "

    if-nez p4, :cond_25

    .line 1322
    if-gt p5, v0, :cond_e

    .line 1323
    return-object p2

    .line 1325
    :cond_e
    new-instance v2, Ljava/lang/OutOfMemoryError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1332
    :cond_25
    :try_start_25
    invoke-static {p3, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2a

    return-object v1

    .line 1333
    :catch_2a
    move-exception v2

    .line 1334
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/OutOfMemoryError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private greylist-max-o getRunsMemory(ZI)V
    .registers 9
    .param p1, "mayAllocate"    # Z
    .param p2, "len"    # I

    .line 1364
    iget-object v2, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    const-class v3, Landroid/icu/text/BidiRun;

    const-string v1, "Runs"

    move-object v0, p0

    move v4, p1

    move v5, p2

    .end local p1    # "mayAllocate":Z
    .end local p2    # "len":I
    .local v4, "mayAllocate":Z
    .local v5, "len":I
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1365
    .local p1, "array":Ljava/lang/Object;
    move-object p2, p1

    check-cast p2, [Landroid/icu/text/BidiRun;

    iput-object p2, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    .line 1366
    return-void
.end method

.method public static whitelist test-api invertMap([I)[I
    .registers 2
    .param p0, "srcMap"    # [I

    .line 5161
    if-nez p0, :cond_4

    .line 5162
    const/4 v0, 0x0

    return-object v0

    .line 5164
    :cond_4
    invoke-static {p0}, Landroid/icu/text/BidiLine;->invertMap([I)[I

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o lastL_R_AL()B
    .registers 7

    .line 3327
    iget-object v0, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_6
    const/4 v1, 0x4

    if-lez v0, :cond_2b

    .line 3328
    iget-object v2, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v2

    .line 3329
    .local v2, "uchar":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 3330
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v3, v3

    .line 3331
    .local v3, "dirProp":B
    if-nez v3, :cond_1d

    .line 3332
    const/4 v1, 0x0

    return v1

    .line 3334
    :cond_1d
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    const/16 v5, 0xd

    if-ne v3, v5, :cond_25

    goto :goto_2a

    .line 3337
    :cond_25
    const/4 v4, 0x7

    if-ne v3, v4, :cond_29

    .line 3338
    return v1

    .line 3340
    .end local v2    # "uchar":I
    .end local v3    # "dirProp":B
    :cond_29
    goto :goto_6

    .line 3335
    .restart local v2    # "uchar":I
    .restart local v3    # "dirProp":B
    :cond_2a
    :goto_2a
    return v4

    .line 3341
    .end local v0    # "i":I
    .end local v2    # "uchar":I
    .end local v3    # "dirProp":B
    :cond_2b
    return v1
.end method

.method private greylist-max-o processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V
    .registers 25
    .param p1, "levState"    # Landroid/icu/text/Bidi$LevState;
    .param p2, "_prop"    # S
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 3131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    iget-object v4, v1, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    .line 3132
    .local v4, "impTab":[[B
    iget-object v5, v1, Landroid/icu/text/Bidi$LevState;->impAct:[S

    .line 3137
    .local v5, "impAct":[S
    move/from16 v6, p3

    .line 3138
    .local v6, "start0":I
    iget-short v7, v1, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3139
    .local v7, "oldStateSeq":S
    aget-object v8, v4, v7

    aget-byte v8, v8, v2

    .line 3140
    .local v8, "cell":B
    invoke-static {v8}, Landroid/icu/text/Bidi;->GetState(B)S

    move-result v9

    iput-short v9, v1, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3141
    invoke-static {v8}, Landroid/icu/text/Bidi;->GetAction(B)S

    move-result v9

    aget-short v9, v5, v9

    .line 3142
    .local v9, "actionSeq":S
    iget-short v10, v1, Landroid/icu/text/Bidi$LevState;->state:S

    aget-object v10, v4, v10

    const/4 v11, 0x7

    aget-byte v10, v10, v11

    .line 3144
    .local v10, "addLevel":B
    if-eqz v9, :cond_1ed

    .line 3145
    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x2

    move/from16 v16, v11

    const/4 v11, -0x1

    const/4 v12, 0x1

    packed-switch v9, :pswitch_data_20a

    .line 3307
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Internal ICU error in processPropertySeq"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 3298
    :pswitch_3b
    iget-byte v11, v1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr v11, v12

    int-to-byte v11, v11

    .line 3299
    .local v11, "level":B
    add-int/lit8 v12, v6, -0x1

    .local v12, "k":I
    :goto_41
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lt v12, v13, :cond_1ed

    .line 3300
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v12

    if-le v13, v11, :cond_53

    .line 3301
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v14, v13, v12

    sub-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v13, v12

    .line 3299
    :cond_53
    add-int/lit8 v12, v12, -0x1

    goto :goto_41

    .line 3279
    .end local v11    # "level":B
    .end local v12    # "k":I
    :pswitch_56
    iget-byte v11, v1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    .line 3280
    .restart local v11    # "level":B
    add-int/lit8 v12, v6, -0x1

    .restart local v12    # "k":I
    :goto_5a
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lt v12, v13, :cond_1ed

    .line 3281
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v12

    add-int/lit8 v14, v11, 0x3

    if-ne v13, v14, :cond_8a

    .line 3282
    :goto_66
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v12

    add-int/lit8 v14, v11, 0x3

    if-ne v13, v14, :cond_7f

    .line 3283
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v14, v12, -0x1

    .end local v12    # "k":I
    .local v14, "k":I
    aget-byte v16, v13, v12

    move/from16 v18, v15

    add-int/lit8 v15, v16, -0x2

    int-to-byte v15, v15

    aput-byte v15, v13, v12

    move v12, v14

    move/from16 v15, v18

    goto :goto_66

    .line 3282
    .end local v14    # "k":I
    .restart local v12    # "k":I
    :cond_7f
    move/from16 v18, v15

    .line 3285
    :goto_81
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v12

    if-ne v13, v11, :cond_8c

    .line 3286
    add-int/lit8 v12, v12, -0x1

    goto :goto_81

    .line 3281
    :cond_8a
    move/from16 v18, v15

    .line 3289
    :cond_8c
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v12

    add-int/lit8 v14, v11, 0x2

    if-ne v13, v14, :cond_99

    .line 3290
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v13, v12

    .line 3291
    goto :goto_a0

    .line 3293
    :cond_99
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v14, v11, 0x1

    int-to-byte v14, v14

    aput-byte v14, v13, v12

    .line 3280
    :goto_a0
    add-int/lit8 v12, v12, -0x1

    move/from16 v15, v18

    goto :goto_5a

    .line 3268
    .end local v11    # "level":B
    .end local v12    # "k":I
    :pswitch_a5
    iget-byte v11, v1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr v11, v10

    int-to-byte v11, v11

    .line 3269
    .restart local v11    # "level":B
    iget v12, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .restart local v12    # "k":I
    :goto_ab
    if-ge v12, v6, :cond_ba

    .line 3270
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v12

    if-ge v13, v11, :cond_b7

    .line 3271
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v13, v12

    .line 3269
    :cond_b7
    add-int/lit8 v12, v12, 0x1

    goto :goto_ab

    .line 3274
    :cond_ba
    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v14, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v14, v14, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v14, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3275
    iput v6, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3276
    goto/16 :goto_1ed

    .line 3260
    .end local v11    # "level":B
    .end local v12    # "k":I
    :pswitch_c6
    iget-object v11, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v12, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v12, v11, Landroid/icu/text/Bidi$InsertPoints;->size:I

    .line 3261
    if-ne v2, v14, :cond_1ed

    .line 3262
    invoke-direct {v0, v6, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3263
    iget-object v11, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v12, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v12, v11, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto/16 :goto_1ed

    .line 3254
    :pswitch_dd
    move/from16 v18, v15

    invoke-direct {v0, v6, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3255
    move/from16 v11, v18

    invoke-direct {v0, v6, v11}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3256
    goto/16 :goto_1ed

    .line 3242
    :pswitch_e9
    add-int/lit8 v11, v6, -0x1

    .local v11, "k":I
    :goto_eb
    if-ltz v11, :cond_f7

    iget-object v14, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v14, v14, v11

    and-int/2addr v14, v12

    if-nez v14, :cond_f7

    add-int/lit8 v11, v11, -0x1

    goto :goto_eb

    .line 3244
    :cond_f7
    if-ltz v11, :cond_104

    .line 3245
    invoke-direct {v0, v11, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3246
    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3248
    :cond_104
    iput v6, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3249
    goto/16 :goto_1ed

    .line 3236
    .end local v11    # "k":I
    :pswitch_108
    add-int/lit8 v12, v3, -0x1

    iput v12, v1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3237
    iput v11, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3238
    goto/16 :goto_1ed

    .line 3212
    :pswitch_110
    const/4 v13, 0x3

    if-ne v2, v13, :cond_139

    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v13, v13, v6

    if-ne v13, v14, :cond_139

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_139

    .line 3216
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ne v13, v11, :cond_128

    .line 3218
    add-int/lit8 v11, v3, -0x1

    iput v11, v1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3219
    goto/16 :goto_1ed

    .line 3221
    :cond_128
    iget v11, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz v11, :cond_134

    .line 3222
    iget v11, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    invoke-direct {v0, v11, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3223
    const/4 v11, -0x2

    iput v11, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3226
    :cond_134
    invoke-direct {v0, v6, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3227
    goto/16 :goto_1ed

    .line 3230
    :cond_139
    iget v12, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ne v12, v11, :cond_1ed

    .line 3231
    iput v6, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    goto/16 :goto_1ed

    .line 3202
    :pswitch_141
    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v12, v12, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v12, v12

    if-lez v12, :cond_150

    .line 3204
    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    .line 3205
    :cond_150
    iput v11, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3206
    iput v11, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3207
    add-int/lit8 v11, v3, -0x1

    iput v11, v1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3208
    goto/16 :goto_1ed

    .line 3166
    :pswitch_15a
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz v13, :cond_163

    .line 3167
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    invoke-direct {v0, v13, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3169
    :cond_163
    iput v11, v1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3171
    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, v13, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v13, v13

    if-eqz v13, :cond_1aa

    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iget-object v15, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v15, v15, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    if-gt v13, v15, :cond_177

    goto :goto_1aa

    .line 3187
    :cond_177
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    add-int/2addr v13, v12

    .local v13, "k":I
    :goto_17a
    if-ge v13, v6, :cond_191

    .line 3189
    iget-object v15, v0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v12, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v13

    const/16 v18, 0x2

    add-int/lit8 v12, v12, -0x2

    const/16 v17, -0x2

    and-int/lit8 v12, v12, -0x2

    int-to-byte v12, v12

    aput-byte v12, v15, v13

    .line 3187
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x1

    goto :goto_17a

    .line 3192
    :cond_191
    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v15, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v15, v15, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v15, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3193
    iput v11, v1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3194
    if-ne v2, v14, :cond_1ed

    .line 3195
    const/4 v11, 0x1

    invoke-direct {v0, v6, v11}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3196
    iget-object v11, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v12, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v12, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v12, v11, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto :goto_1ed

    .line 3174
    .end local v13    # "k":I
    :cond_1aa
    :goto_1aa
    iput v11, v1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3176
    aget-object v11, v4, v7

    aget-byte v11, v11, v16

    .line 3177
    .local v11, "level":B
    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_1bb

    iget v12, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lez v12, :cond_1bb

    .line 3178
    iget v12, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .end local p3    # "start":I
    .local v12, "start":I
    goto :goto_1bd

    .line 3180
    .end local v12    # "start":I
    .restart local p3    # "start":I
    :cond_1bb
    move/from16 v12, p3

    .end local p3    # "start":I
    .restart local v12    # "start":I
    :goto_1bd
    if-ne v2, v14, :cond_1cb

    .line 3181
    const/4 v13, 0x1

    invoke-direct {v0, v6, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3182
    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v14, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v14, v14, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v14, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3310
    .end local v11    # "level":B
    :cond_1cb
    move v11, v12

    goto :goto_1ef

    .line 3160
    .end local v12    # "start":I
    .restart local p3    # "start":I
    :pswitch_1cd
    iget-byte v11, v1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    const/16 v18, 0x2

    add-int/lit8 v11, v11, 0x2

    int-to-byte v11, v11

    .line 3161
    .restart local v11    # "level":B
    iget v12, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    invoke-direct {v0, v12, v6, v11}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    .line 3162
    goto :goto_1ed

    .line 3155
    .end local v11    # "level":B
    :pswitch_1da
    iget-byte v11, v1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    const/16 v19, 0x1

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    .line 3156
    .restart local v11    # "level":B
    iget v12, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    invoke-direct {v0, v12, v6, v11}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    .line 3157
    goto :goto_1ed

    .line 3151
    .end local v11    # "level":B
    :pswitch_1e7
    iget v11, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3152
    .end local p3    # "start":I
    .local v11, "start":I
    goto :goto_1ef

    .line 3147
    .end local v11    # "start":I
    .restart local p3    # "start":I
    :pswitch_1ea
    iput v6, v1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3148
    nop

    .line 3310
    :cond_1ed
    :goto_1ed
    move/from16 v11, p3

    .end local p3    # "start":I
    .restart local v11    # "start":I
    :goto_1ef
    if-nez v10, :cond_1f3

    if-ge v11, v6, :cond_208

    .line 3311
    :cond_1f3
    iget-byte v12, v1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr v12, v10

    int-to-byte v12, v12

    .line 3312
    .local v12, "level":B
    iget v13, v1, Landroid/icu/text/Bidi$LevState;->runStart:I

    if-lt v11, v13, :cond_205

    .line 3313
    move v13, v11

    .restart local v13    # "k":I
    :goto_1fc
    if-ge v13, v3, :cond_208

    .line 3314
    iget-object v14, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v12, v14, v13

    .line 3313
    add-int/lit8 v13, v13, 0x1

    goto :goto_1fc

    .line 3317
    .end local v13    # "k":I
    :cond_205
    invoke-direct {v0, v11, v3, v12}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    .line 3320
    .end local v12    # "level":B
    :cond_208
    return-void

    nop

    :pswitch_data_20a
    .packed-switch 0x1
        :pswitch_1ea
        :pswitch_1e7
        :pswitch_1da
        :pswitch_1cd
        :pswitch_15a
        :pswitch_141
        :pswitch_110
        :pswitch_108
        :pswitch_e9
        :pswitch_dd
        :pswitch_c6
        :pswitch_a5
        :pswitch_56
        :pswitch_3b
    .end packed-switch
.end method

.method public static whitelist test-api reorderLogical([B)[I
    .registers 2
    .param p0, "levels"    # [B

    .line 5102
    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderLogical([B)[I

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api reorderVisual([B)[I
    .registers 2
    .param p0, "levels"    # [B

    .line 5123
    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderVisual([B)[I

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api reorderVisually([BI[Ljava/lang/Object;II)V
    .registers 11
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    .line 5591
    new-array v0, p4, [B

    .line 5592
    .local v0, "reorderLevels":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5593
    invoke-static {v0}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object v2

    .line 5594
    .local v2, "indexMap":[I
    new-array v3, p4, [Ljava/lang/Object;

    .line 5595
    .local v3, "temp":[Ljava/lang/Object;
    invoke-static {p2, p3, v3, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5596
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, p4, :cond_1d

    .line 5597
    add-int v4, p3, v1

    aget v5, v2, v1

    aget-object v5, v3, v5

    aput-object v5, p2, v4

    .line 5596
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 5599
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method public static whitelist test-api requiresBidi([CII)Z
    .registers 8
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 5555
    const v0, 0xe022

    .line 5561
    .local v0, "RTLMask":I
    move v1, p1

    .local v1, "i":I
    :goto_4
    if-ge v1, p2, :cond_19

    .line 5562
    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    const v4, 0xe022

    and-int/2addr v2, v4

    if-eqz v2, :cond_16

    .line 5563
    return v3

    .line 5561
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5566
    .end local v1    # "i":I
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o resolveExplicitLevels()B
    .registers 26

    .line 2398
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2400
    .local v1, "i":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    .line 2402
    .local v3, "level":B
    iput v2, v0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2405
    invoke-direct {v0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v4

    .line 2408
    .local v4, "dirct":B
    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    .line 2410
    return v4

    .line 2412
    :cond_12
    iget v5, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_3c

    .line 2416
    const/4 v2, 0x0

    .local v2, "paraIndex":I
    :goto_18
    iget v5, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v2, v5, :cond_3b

    .line 2417
    if-nez v2, :cond_20

    .line 2418
    const/4 v5, 0x0

    .local v5, "start":I
    goto :goto_26

    .line 2420
    .end local v5    # "start":I
    :cond_20
    iget-object v5, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    .line 2421
    .restart local v5    # "start":I
    :goto_26
    iget-object v6, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v6, v6, v2

    .line 2422
    .local v6, "limit":I
    iget-object v7, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v7, v2

    .line 2423
    move v1, v5

    :goto_2f
    if-ge v1, v6, :cond_38

    .line 2424
    iget-object v7, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v3, v7, v1

    .line 2423
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 2416
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2426
    .end local v5    # "start":I
    .end local v6    # "limit":I
    :cond_3b
    return v4

    .line 2428
    .end local v2    # "paraIndex":I
    :cond_3c
    iget v5, v0, Landroid/icu/text/Bidi;->flags:I

    sget v7, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    sget v8, Landroid/icu/text/Bidi;->MASK_ISO:I

    or-int/2addr v7, v8

    and-int/2addr v5, v7

    const/16 v7, 0xd

    const/4 v8, 0x7

    const/16 v9, 0xa

    const/16 v10, 0x12

    if-nez v5, :cond_9f

    .line 2432
    new-instance v2, Landroid/icu/text/Bidi$BracketData;

    invoke-direct {v2}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    .line 2433
    .local v2, "bracketData":Landroid/icu/text/Bidi$BracketData;
    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    .line 2434
    const/4 v5, 0x0

    .local v5, "paraIndex":I
    :goto_56
    iget v6, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v5, v6, :cond_9e

    .line 2435
    if-nez v5, :cond_5e

    .line 2436
    const/4 v6, 0x0

    .local v6, "start":I
    goto :goto_64

    .line 2438
    .end local v6    # "start":I
    :cond_5e
    iget-object v6, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v11, v5, -0x1

    aget v6, v6, v11

    .line 2439
    .restart local v6    # "start":I
    :goto_64
    iget-object v11, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v11, v11, v5

    .line 2440
    .local v11, "limit":I
    iget-object v12, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v12, v5

    .line 2441
    move v1, v6

    :goto_6d
    if-ge v1, v11, :cond_9b

    .line 2442
    iget-object v12, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v3, v12, v1

    .line 2443
    iget-object v12, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v12, v12, v1

    .line 2444
    .local v12, "dirProp":B
    if-ne v12, v10, :cond_7a

    .line 2445
    goto :goto_98

    .line 2446
    :cond_7a
    if-ne v12, v8, :cond_95

    .line 2447
    add-int/lit8 v13, v1, 0x1

    iget v14, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v13, v14, :cond_98

    .line 2448
    iget-object v13, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v13, v13, v1

    if-ne v13, v7, :cond_91

    iget-object v13, v0, Landroid/icu/text/Bidi;->text:[C

    add-int/lit8 v14, v1, 0x1

    aget-char v13, v13, v14

    if-ne v13, v9, :cond_91

    .line 2449
    goto :goto_98

    .line 2450
    :cond_91
    invoke-direct {v0, v2, v3}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    goto :goto_98

    .line 2454
    :cond_95
    invoke-direct {v0, v2, v1}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    .line 2441
    :cond_98
    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 2434
    .end local v12    # "dirProp":B
    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 2457
    .end local v6    # "start":I
    .end local v11    # "limit":I
    :cond_9e
    return v4

    .line 2463
    .end local v2    # "bracketData":Landroid/icu/text/Bidi$BracketData;
    .end local v5    # "paraIndex":I
    :cond_9f
    move v5, v3

    .line 2464
    .local v5, "embeddingLevel":B
    move v11, v3

    .line 2465
    .local v11, "previousLevel":B
    const/4 v12, 0x0

    .line 2469
    .local v12, "lastCcPos":I
    const/16 v13, 0x7f

    new-array v13, v13, [S

    .line 2471
    .local v13, "stack":[S
    const/4 v14, 0x0

    .line 2472
    .local v14, "stackLast":I
    const/4 v15, 0x0

    .line 2473
    .local v15, "overflowIsolateCount":I
    const/16 v16, 0x0

    .line 2474
    .local v16, "overflowEmbeddingCount":I
    const/16 v17, 0x0

    .line 2475
    .local v17, "validIsolateCount":I
    new-instance v18, Landroid/icu/text/Bidi$BracketData;

    invoke-direct/range {v18 .. v18}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    move-object/from16 v19, v18

    .line 2476
    .local v19, "bracketData":Landroid/icu/text/Bidi$BracketData;
    move/from16 v18, v6

    move-object/from16 v6, v19

    .end local v19    # "bracketData":Landroid/icu/text/Bidi$BracketData;
    .local v6, "bracketData":Landroid/icu/text/Bidi$BracketData;
    invoke-direct {v0, v6}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    .line 2477
    move/from16 v19, v8

    int-to-short v8, v3

    aput-short v8, v13, v2

    .line 2480
    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2482
    const/4 v1, 0x0

    :goto_c2
    iget v8, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v1, v8, :cond_2d9

    .line 2483
    iget-object v8, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v8, v8, v1

    .line 2484
    .local v8, "dirProp":B
    move/from16 v20, v2

    const/16 v2, 0x7d

    move/from16 v21, v10

    const/16 v10, 0x100

    const/16 v22, 0x9

    packed-switch v8, :pswitch_data_308

    .line 2620
    :pswitch_d7
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v2

    invoke-static {v11}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    if-eq v2, v7, :cond_2b9

    .line 2621
    invoke-direct {v0, v6, v12, v11, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    .line 2623
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    sget v7, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v2, v7

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2624
    and-int/lit8 v2, v5, -0x80

    if-eqz v2, :cond_2b0

    .line 2625
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v7

    or-int/2addr v2, v7

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    goto/16 :goto_2b9

    .line 2570
    :pswitch_fa
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v2

    move/from16 v23, v9

    invoke-static {v11}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v9

    if-eq v2, v9, :cond_110

    .line 2571
    invoke-direct {v0, v6, v12, v11, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    .line 2573
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    sget v9, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v2, v9

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2576
    :cond_110
    if-lez v15, :cond_119

    .line 2577
    add-int/lit8 v15, v15, -0x1

    .line 2579
    iget-object v2, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v22, v2, v1

    goto :goto_13c

    .line 2581
    :cond_119
    if-lez v17, :cond_138

    .line 2582
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    const/16 v9, 0x16

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2583
    move v12, v1

    .line 2584
    const/16 v16, 0x0

    .line 2585
    :goto_129
    aget-short v2, v13, v14

    if-ge v2, v10, :cond_130

    .line 2586
    add-int/lit8 v14, v14, -0x1

    goto :goto_129

    .line 2587
    :cond_130
    add-int/lit8 v14, v14, -0x1

    .line 2588
    add-int/lit8 v17, v17, -0x1

    .line 2589
    invoke-direct {v0, v6}, Landroid/icu/text/Bidi;->bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V

    goto :goto_13c

    .line 2592
    :cond_138
    iget-object v2, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v22, v2, v1

    .line 2593
    :goto_13c
    aget-short v2, v13, v14

    and-int/lit16 v2, v2, -0x101

    int-to-byte v2, v2

    .line 2594
    .end local v5    # "embeddingLevel":B
    .local v2, "embeddingLevel":B
    iget v5, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v23 .. v23}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v10

    or-int/2addr v9, v10

    or-int/2addr v5, v9

    iput v5, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2595
    move v5, v2

    .line 2596
    .end local v11    # "previousLevel":B
    .local v5, "previousLevel":B
    iget-object v9, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v2}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v10

    aput-byte v10, v9, v1

    .line 2597
    move v11, v5

    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2535
    .end local v2    # "embeddingLevel":B
    .local v5, "embeddingLevel":B
    .restart local v11    # "previousLevel":B
    :pswitch_15d
    move/from16 v23, v9

    iget v9, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v23 .. v23}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v24

    or-int v10, v10, v24

    or-int/2addr v9, v10

    iput v9, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2536
    iget-object v9, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v10

    aput-byte v10, v9, v1

    .line 2537
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v9

    invoke-static {v11}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v10

    if-eq v9, v10, :cond_18a

    .line 2538
    invoke-direct {v0, v6, v12, v11, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    .line 2540
    iget v9, v0, Landroid/icu/text/Bidi;->flags:I

    sget v10, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v9, v10

    iput v9, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2542
    :cond_18a
    move v9, v5

    .line 2544
    .end local v11    # "previousLevel":B
    .local v9, "previousLevel":B
    const/16 v10, 0x14

    if-ne v8, v10, :cond_195

    .line 2546
    add-int/lit8 v10, v5, 0x2

    and-int/lit8 v10, v10, 0x7e

    int-to-byte v10, v10

    .local v10, "newLevel":B
    goto :goto_19e

    .line 2549
    .end local v10    # "newLevel":B
    :cond_195
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v10

    add-int/lit8 v10, v10, 0x1

    or-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    .line 2550
    .restart local v10    # "newLevel":B
    :goto_19e
    if-gt v10, v2, :cond_1c9

    if-nez v15, :cond_1c9

    if-nez v16, :cond_1c9

    .line 2552
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v2, v11

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2553
    move v2, v1

    .line 2554
    .end local v12    # "lastCcPos":I
    .local v2, "lastCcPos":I
    add-int/lit8 v11, v17, 0x1

    .line 2555
    .end local v17    # "validIsolateCount":I
    .local v11, "validIsolateCount":I
    iget v12, v0, Landroid/icu/text/Bidi;->isolateCount:I

    if-le v11, v12, :cond_1b6

    .line 2556
    iput v11, v0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2557
    :cond_1b6
    move v5, v10

    .line 2560
    add-int/lit8 v14, v14, 0x1

    .line 2561
    add-int/lit16 v12, v5, 0x100

    int-to-short v12, v12

    aput-short v12, v13, v14

    .line 2562
    invoke-direct {v0, v6, v5}, Landroid/icu/text/Bidi;->bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V

    move v12, v2

    move/from16 v17, v11

    move v11, v9

    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2565
    .end local v2    # "lastCcPos":I
    .end local v11    # "validIsolateCount":I
    .restart local v12    # "lastCcPos":I
    .restart local v17    # "validIsolateCount":I
    :cond_1c9
    iget-object v2, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v22, v2, v1

    .line 2566
    add-int/lit8 v15, v15, 0x1

    .line 2568
    move v11, v9

    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2615
    .end local v9    # "previousLevel":B
    .end local v10    # "newLevel":B
    .local v11, "previousLevel":B
    :pswitch_1d4
    move/from16 v23, v9

    iget-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v2, v1

    .line 2616
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v21 .. v21}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2617
    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2517
    :pswitch_1e7
    move/from16 v23, v9

    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v21 .. v21}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2518
    iget-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v2, v1

    .line 2520
    if-lez v15, :cond_1fc

    .line 2521
    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2523
    :cond_1fc
    if-lez v16, :cond_204

    .line 2524
    add-int/lit8 v16, v16, -0x1

    .line 2525
    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2527
    :cond_204
    if-lez v14, :cond_215

    aget-short v2, v13, v14

    if-ge v2, v10, :cond_215

    .line 2528
    move v2, v1

    .line 2529
    .end local v12    # "lastCcPos":I
    .restart local v2    # "lastCcPos":I
    add-int/lit8 v14, v14, -0x1

    .line 2530
    aget-short v9, v13, v14

    int-to-byte v5, v9

    move v12, v2

    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2527
    .end local v2    # "lastCcPos":I
    .restart local v12    # "lastCcPos":I
    :cond_215
    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2490
    :pswitch_219
    move/from16 v23, v9

    iget v9, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v21 .. v21}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2491
    iget-object v9, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v9, v1

    .line 2492
    const/16 v9, 0xb

    const/16 v10, 0xc

    if-eq v8, v9, :cond_23b

    if-ne v8, v10, :cond_231

    goto :goto_23b

    .line 2497
    :cond_231
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v9

    add-int/lit8 v9, v9, 0x1

    or-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    .local v9, "newLevel":B
    goto :goto_240

    .line 2494
    .end local v9    # "newLevel":B
    :cond_23b
    :goto_23b
    add-int/lit8 v9, v5, 0x2

    and-int/lit8 v9, v9, 0x7e

    int-to-byte v9, v9

    .line 2498
    .restart local v9    # "newLevel":B
    :goto_240
    if-gt v9, v2, :cond_25b

    if-nez v15, :cond_25b

    if-nez v16, :cond_25b

    .line 2500
    move v2, v1

    .line 2501
    .end local v12    # "lastCcPos":I
    .restart local v2    # "lastCcPos":I
    move v5, v9

    .line 2502
    if-eq v8, v10, :cond_24e

    const/16 v10, 0xf

    if-ne v8, v10, :cond_251

    .line 2503
    :cond_24e
    or-int/lit8 v10, v5, -0x80

    int-to-byte v5, v10

    .line 2504
    :cond_251
    add-int/lit8 v14, v14, 0x1

    .line 2505
    int-to-short v10, v5

    aput-short v10, v13, v14

    move v12, v2

    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2511
    .end local v2    # "lastCcPos":I
    .restart local v12    # "lastCcPos":I
    :cond_25b
    if-nez v15, :cond_263

    .line 2512
    add-int/lit8 v16, v16, 0x1

    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2511
    :cond_263
    move/from16 v9, v23

    goto/16 :goto_2cf

    .line 2599
    .end local v9    # "newLevel":B
    :pswitch_267
    move/from16 v23, v9

    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v2, v9

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2600
    iget-object v2, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v9

    aput-byte v9, v2, v1

    .line 2601
    add-int/lit8 v2, v1, 0x1

    iget v9, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v9, :cond_2ad

    .line 2602
    iget-object v2, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v2, v2, v1

    if-ne v2, v7, :cond_291

    iget-object v2, v0, Landroid/icu/text/Bidi;->text:[C

    add-int/lit8 v9, v1, 0x1

    aget-char v2, v2, v9

    move/from16 v9, v23

    if-ne v2, v9, :cond_293

    .line 2603
    goto :goto_2cf

    .line 2602
    :cond_291
    move/from16 v9, v23

    .line 2604
    :cond_293
    move/from16 v2, v20

    .end local v15    # "overflowIsolateCount":I
    .local v2, "overflowIsolateCount":I
    move/from16 v10, v20

    .line 2605
    .end local v16    # "overflowEmbeddingCount":I
    .local v10, "overflowEmbeddingCount":I
    const/4 v15, 0x0

    .line 2606
    .end local v17    # "validIsolateCount":I
    .local v15, "validIsolateCount":I
    const/4 v14, 0x0

    .line 2607
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v7

    move v5, v7

    .line 2608
    .end local v11    # "previousLevel":B
    .local v7, "previousLevel":B
    int-to-short v11, v5

    aput-short v11, v13, v20

    .line 2609
    invoke-direct {v0, v6, v5}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    move v11, v7

    move/from16 v16, v10

    move/from16 v17, v15

    move v15, v2

    goto :goto_2cf

    .line 2601
    .end local v2    # "overflowIsolateCount":I
    .end local v7    # "previousLevel":B
    .end local v10    # "overflowEmbeddingCount":I
    .restart local v11    # "previousLevel":B
    .local v15, "overflowIsolateCount":I
    .restart local v16    # "overflowEmbeddingCount":I
    .restart local v17    # "validIsolateCount":I
    :cond_2ad
    move/from16 v9, v23

    goto :goto_2cf

    .line 2627
    :cond_2b0
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v7

    or-int/2addr v2, v7

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2629
    :cond_2b9
    :goto_2b9
    move v2, v5

    .line 2630
    .end local v11    # "previousLevel":B
    .local v2, "previousLevel":B
    iget-object v7, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v5, v7, v1

    .line 2631
    invoke-direct {v0, v6, v1}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    .line 2633
    iget v7, v0, Landroid/icu/text/Bidi;->flags:I

    iget-object v10, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v10, v10, v1

    invoke-static {v10}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v7, v10

    iput v7, v0, Landroid/icu/text/Bidi;->flags:I

    move v11, v2

    .line 2482
    .end local v2    # "previousLevel":B
    .restart local v11    # "previousLevel":B
    :goto_2cf
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v20

    move/from16 v10, v21

    const/16 v7, 0xd

    goto/16 :goto_c2

    .line 2637
    .end local v8    # "dirProp":B
    :cond_2d9
    move/from16 v20, v2

    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    sget v7, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_2ed

    .line 2638
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    iget-byte v7, v0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v7

    or-int/2addr v2, v7

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2640
    :cond_2ed
    iget-boolean v2, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v2, :cond_303

    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    and-int/2addr v2, v7

    if-eqz v2, :cond_303

    .line 2641
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v2, v7

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2644
    :cond_303
    invoke-direct {v0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v2

    .line 2646
    .end local v4    # "dirct":B
    .local v2, "dirct":B
    return v2

    :pswitch_data_308
    .packed-switch 0x7
        :pswitch_267
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_219
        :pswitch_219
        :pswitch_d7
        :pswitch_219
        :pswitch_219
        :pswitch_1e7
        :pswitch_d7
        :pswitch_1d4
        :pswitch_d7
        :pswitch_15d
        :pswitch_15d
        :pswitch_fa
    .end packed-switch
.end method

.method private greylist-max-o resolveImplicitLevels(IISS)V
    .registers 26
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "sor"    # S
    .param p4, "eor"    # S

    .line 3372
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/icu/text/Bidi$LevState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/text/Bidi$LevState;-><init>(Landroid/icu/text/Bidi-IA;)V

    .line 3377
    .local v3, "levState":Landroid/icu/text/Bidi$LevState;
    const/4 v4, 0x1

    .line 3378
    .local v4, "nextStrongProp":S
    const/4 v5, -0x1

    .line 3387
    .local v5, "nextStrongPos":I
    iget v6, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v1, v6, :cond_27

    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v6

    and-int/2addr v6, v8

    if-lez v6, :cond_27

    iget v6, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v9, 0x5

    if-eq v6, v9, :cond_25

    iget v6, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v9, 0x6

    if-ne v6, v9, :cond_27

    :cond_25
    move v6, v8

    goto :goto_28

    :cond_27
    move v6, v7

    .line 3391
    .local v6, "inverseRTL":Z
    :goto_28
    const/4 v9, -0x1

    iput v9, v3, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3392
    iput v9, v3, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3393
    iput v1, v3, Landroid/icu/text/Bidi$LevState;->runStart:I

    .line 3394
    iget-object v10, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v10, v10, v1

    iput-byte v10, v3, Landroid/icu/text/Bidi$LevState;->runLevel:B

    .line 3395
    iget-object v10, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    iget-object v10, v10, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    iget-byte v11, v3, Landroid/icu/text/Bidi$LevState;->runLevel:B

    and-int/2addr v11, v8

    aget-object v10, v10, v11

    iput-object v10, v3, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    .line 3396
    iget-object v10, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    iget-object v10, v10, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    iget-byte v11, v3, Landroid/icu/text/Bidi$LevState;->runLevel:B

    and-int/2addr v11, v8

    aget-object v10, v10, v11

    iput-object v10, v3, Landroid/icu/text/Bidi$LevState;->impAct:[S

    .line 3397
    const/4 v10, 0x4

    if-nez v1, :cond_5a

    iget-object v11, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz v11, :cond_5a

    .line 3398
    invoke-direct {v0}, Landroid/icu/text/Bidi;->lastL_R_AL()B

    move-result v11

    .line 3399
    .local v11, "lastStrong":B
    if-eq v11, v10, :cond_5a

    .line 3400
    int-to-short v12, v11

    .end local p3    # "sor":S
    .local v12, "sor":S
    goto :goto_5c

    .line 3406
    .end local v11    # "lastStrong":B
    .end local v12    # "sor":S
    .restart local p3    # "sor":S
    :cond_5a
    move/from16 v12, p3

    .end local p3    # "sor":S
    .restart local v12    # "sor":S
    :goto_5c
    iget-object v11, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v11, v11, v1

    const/16 v13, 0x16

    if-ne v11, v13, :cond_8e

    .line 3407
    iget-object v7, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v11, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v7, v7, v11

    iget v7, v7, Landroid/icu/text/Bidi$Isolate;->startON:I

    iput v7, v3, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3408
    iget-object v7, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v11, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v7, v7, v11

    iget v7, v7, Landroid/icu/text/Bidi$Isolate;->start1:I

    .line 3409
    .local v7, "start1":I
    iget-object v11, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v11, v11, v13

    iget-short v11, v11, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    .line 3410
    .local v11, "stateImp":S
    iget-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v14, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v13, v13, v14

    iget-short v13, v13, Landroid/icu/text/Bidi$Isolate;->state:S

    iput-short v13, v3, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3411
    iget v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    sub-int/2addr v13, v8

    iput v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    goto :goto_a6

    .line 3413
    .end local v7    # "start1":I
    .end local v11    # "stateImp":S
    :cond_8e
    iput v9, v3, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3414
    move/from16 v11, p1

    .line 3415
    .local v11, "start1":I
    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v13, v13, v1

    const/16 v14, 0x11

    if-ne v13, v14, :cond_9e

    .line 3416
    add-int/lit8 v13, v12, 0x1

    int-to-short v13, v13

    .local v13, "stateImp":S
    goto :goto_9f

    .line 3418
    .end local v13    # "stateImp":S
    :cond_9e
    const/4 v13, 0x0

    .line 3419
    .restart local v13    # "stateImp":S
    :goto_9f
    iput-short v7, v3, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3420
    invoke-direct {v0, v3, v12, v1, v1}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    move v7, v11

    move v11, v13

    .line 3422
    .end local v13    # "stateImp":S
    .restart local v7    # "start1":I
    .local v11, "stateImp":S
    :goto_a6
    move/from16 v13, p1

    .line 3424
    .local v13, "start2":I
    move/from16 v14, p1

    .local v14, "i":I
    :goto_aa
    const/16 v15, 0x15

    const/16 v10, 0x14

    if-gt v14, v2, :cond_177

    .line 3425
    if-lt v14, v2, :cond_d7

    .line 3427
    add-int/lit8 v17, v2, -0x1

    move/from16 v8, v17

    .line 3428
    .local v8, "k":I
    :goto_b6
    if-le v8, v1, :cond_ca

    iget-object v9, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v8

    .line 3429
    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    sget v19, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int v9, v9, v19

    if-eqz v9, :cond_ca

    .line 3430
    add-int/lit8 v8, v8, -0x1

    const/4 v9, -0x1

    goto :goto_b6

    .line 3431
    :cond_ca
    iget-object v9, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v8

    .line 3432
    .local v9, "dirProp":B
    if-eq v9, v10, :cond_177

    if-ne v9, v15, :cond_d4

    .line 3433
    goto/16 :goto_177

    .line 3434
    :cond_d4
    move/from16 v8, p4

    .line 3435
    .local v8, "gprop":S
    goto :goto_118

    .line 3437
    .end local v8    # "gprop":S
    .end local v9    # "dirProp":B
    :cond_d7
    iget-object v8, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v8, v8, v14

    .line 3438
    .local v8, "prop":B
    const/4 v9, 0x7

    if-ne v8, v9, :cond_e2

    .line 3439
    const/4 v9, -0x1

    iput v9, v0, Landroid/icu/text/Bidi;->isolateCount:I

    goto :goto_e3

    .line 3438
    :cond_e2
    const/4 v9, -0x1

    .line 3440
    :goto_e3
    if-eqz v6, :cond_113

    .line 3441
    const/16 v10, 0xd

    if-ne v8, v10, :cond_eb

    .line 3443
    const/4 v8, 0x1

    goto :goto_113

    .line 3444
    :cond_eb
    const/4 v15, 0x2

    if-ne v8, v15, :cond_113

    .line 3445
    if-gt v5, v14, :cond_10e

    .line 3448
    const/4 v4, 0x1

    .line 3449
    move/from16 v5, p2

    .line 3450
    add-int/lit8 v15, v14, 0x1

    .local v15, "j":I
    :goto_f5
    if-ge v15, v2, :cond_10e

    .line 3451
    iget-object v9, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v15

    .line 3452
    .local v9, "prop1":B
    if-eqz v9, :cond_10b

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10b

    const/16 v10, 0xd

    if-ne v9, v10, :cond_105

    goto :goto_10b

    .line 3450
    :cond_105
    add-int/lit8 v15, v15, 0x1

    const/4 v9, -0x1

    const/16 v10, 0xd

    goto :goto_f5

    .line 3453
    :cond_10b
    :goto_10b
    int-to-short v4, v9

    .line 3454
    move v5, v15

    .line 3455
    nop

    .line 3459
    .end local v9    # "prop1":B
    .end local v15    # "j":I
    :cond_10e
    const/16 v10, 0xd

    if-ne v4, v10, :cond_113

    .line 3460
    const/4 v8, 0x5

    .line 3464
    :cond_113
    :goto_113
    sget-object v9, Landroid/icu/text/Bidi;->groupProp:[S

    aget-short v9, v9, v8

    move v8, v9

    .line 3466
    .local v8, "gprop":S
    :goto_118
    move v9, v11

    .line 3467
    .local v9, "oldStateImp":S
    sget-object v10, Landroid/icu/text/Bidi;->impTabProps:[[S

    aget-object v10, v10, v9

    aget-short v10, v10, v8

    .line 3468
    .local v10, "cell":S
    invoke-static {v10}, Landroid/icu/text/Bidi;->GetStateProps(S)S

    move-result v11

    .line 3469
    invoke-static {v10}, Landroid/icu/text/Bidi;->GetActionProps(S)S

    move-result v15

    .line 3470
    .local v15, "actionImp":S
    if-ne v14, v2, :cond_12c

    if-nez v15, :cond_12c

    .line 3472
    const/4 v15, 0x1

    .line 3474
    :cond_12c
    if-eqz v15, :cond_168

    .line 3475
    sget-object v19, Landroid/icu/text/Bidi;->impTabProps:[[S

    aget-object v19, v19, v9

    const/16 v20, 0xf

    move/from16 p3, v4

    .end local v4    # "nextStrongProp":S
    .local p3, "nextStrongProp":S
    aget-short v4, v19, v20

    .line 3476
    .local v4, "resProp":S
    packed-switch v15, :pswitch_data_1f0

    .line 3495
    move/from16 v19, v5

    .end local v5    # "nextStrongPos":I
    .local v19, "nextStrongPos":I
    new-instance v5, Ljava/lang/IllegalStateException;

    move/from16 v20, v4

    .end local v4    # "resProp":S
    .local v20, "resProp":S
    const-string v4, "Internal ICU error in resolveImplicitLevels"

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3490
    .end local v19    # "nextStrongPos":I
    .end local v20    # "resProp":S
    .restart local v4    # "resProp":S
    .restart local v5    # "nextStrongPos":I
    :pswitch_147
    invoke-direct {v0, v3, v4, v7, v13}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    .line 3491
    move v7, v13

    .line 3492
    move v13, v14

    .line 3493
    move/from16 v19, v5

    goto :goto_16c

    .line 3485
    :pswitch_14f
    invoke-direct {v0, v3, v4, v7, v13}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    .line 3486
    move/from16 v19, v5

    const/4 v5, 0x4

    .end local v5    # "nextStrongPos":I
    .restart local v19    # "nextStrongPos":I
    invoke-direct {v0, v3, v5, v13, v14}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    .line 3487
    move v5, v14

    .line 3488
    .end local v7    # "start1":I
    .local v5, "start1":I
    move v7, v5

    goto :goto_16c

    .line 3482
    .end local v19    # "nextStrongPos":I
    .local v5, "nextStrongPos":I
    .restart local v7    # "start1":I
    :pswitch_15b
    move/from16 v19, v5

    .end local v5    # "nextStrongPos":I
    .restart local v19    # "nextStrongPos":I
    move v5, v14

    .line 3483
    .end local v13    # "start2":I
    .local v5, "start2":I
    move v13, v5

    goto :goto_16c

    .line 3478
    .end local v19    # "nextStrongPos":I
    .local v5, "nextStrongPos":I
    .restart local v13    # "start2":I
    :pswitch_160
    move/from16 v19, v5

    .end local v5    # "nextStrongPos":I
    .restart local v19    # "nextStrongPos":I
    invoke-direct {v0, v3, v4, v7, v14}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    .line 3479
    move v5, v14

    .line 3480
    .end local v7    # "start1":I
    .local v5, "start1":I
    move v7, v5

    goto :goto_16c

    .line 3474
    .end local v19    # "nextStrongPos":I
    .end local p3    # "nextStrongProp":S
    .local v4, "nextStrongProp":S
    .local v5, "nextStrongPos":I
    .restart local v7    # "start1":I
    :cond_168
    move/from16 p3, v4

    move/from16 v19, v5

    .line 3424
    .end local v4    # "nextStrongProp":S
    .end local v5    # "nextStrongPos":I
    .restart local v19    # "nextStrongPos":I
    .restart local p3    # "nextStrongProp":S
    :goto_16c
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, p3

    move/from16 v5, v19

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x4

    goto/16 :goto_aa

    .line 3501
    .end local v8    # "gprop":S
    .end local v9    # "oldStateImp":S
    .end local v10    # "cell":S
    .end local v15    # "actionImp":S
    .end local v19    # "nextStrongPos":I
    .end local p3    # "nextStrongProp":S
    .restart local v4    # "nextStrongProp":S
    .restart local v5    # "nextStrongPos":I
    :cond_177
    :goto_177
    iget v8, v0, Landroid/icu/text/Bidi;->length:I

    if-ne v2, v8, :cond_188

    iget-object v8, v0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    if-eqz v8, :cond_188

    .line 3502
    invoke-direct {v0}, Landroid/icu/text/Bidi;->firstL_R_AL_EN_AN()B

    move-result v8

    .line 3503
    .local v8, "firstStrong":B
    const/4 v9, 0x4

    if-eq v8, v9, :cond_188

    .line 3504
    int-to-short v9, v8

    .end local p4    # "eor":S
    .local v9, "eor":S
    goto :goto_18a

    .line 3509
    .end local v8    # "firstStrong":B
    .end local v9    # "eor":S
    .restart local p4    # "eor":S
    :cond_188
    move/from16 v9, p4

    .end local p4    # "eor":S
    .restart local v9    # "eor":S
    :goto_18a
    add-int/lit8 v8, v2, -0x1

    .line 3510
    .end local v14    # "i":I
    .local v8, "i":I
    :goto_18c
    if-le v8, v1, :cond_19f

    iget-object v14, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v14, v14, v8

    .line 3511
    invoke-static {v14}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    sget v16, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int v14, v14, v16

    if-eqz v14, :cond_19f

    .line 3512
    add-int/lit8 v8, v8, -0x1

    goto :goto_18c

    .line 3513
    :cond_19f
    iget-object v14, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v14, v14, v8

    .line 3514
    .local v14, "dirProp":B
    if-eq v14, v10, :cond_1a7

    if-ne v14, v15, :cond_1eb

    :cond_1a7
    iget v10, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v10, :cond_1eb

    .line 3515
    iget v10, v0, Landroid/icu/text/Bidi;->isolateCount:I

    const/16 v18, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 3516
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v15, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v15

    if-nez v10, :cond_1c6

    .line 3517
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v15, v0, Landroid/icu/text/Bidi;->isolateCount:I

    new-instance v16, Landroid/icu/text/Bidi$Isolate;

    invoke-direct/range {v16 .. v16}, Landroid/icu/text/Bidi$Isolate;-><init>()V

    aput-object v16, v10, v15

    .line 3518
    :cond_1c6
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v15, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v15

    iput-short v11, v10, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    .line 3519
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v15, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v15

    iget-short v15, v3, Landroid/icu/text/Bidi$LevState;->state:S

    iput-short v15, v10, Landroid/icu/text/Bidi$Isolate;->state:S

    .line 3520
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v15, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v15

    iput v7, v10, Landroid/icu/text/Bidi$Isolate;->start1:I

    .line 3521
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v15, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v15

    iget v15, v3, Landroid/icu/text/Bidi$LevState;->startON:I

    iput v15, v10, Landroid/icu/text/Bidi$Isolate;->startON:I

    goto :goto_1ee

    .line 3524
    :cond_1eb
    invoke-direct {v0, v3, v9, v2, v2}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    .line 3525
    :goto_1ee
    return-void

    nop

    :pswitch_data_1f0
    .packed-switch 0x1
        :pswitch_160
        :pswitch_15b
        :pswitch_14f
        :pswitch_147
    .end packed-switch
.end method

.method private greylist-max-o setLevelsOutsideIsolates(IIB)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "level"    # B

    .line 3101
    const/4 v0, 0x0

    .line 3102
    .local v0, "isolateCount":I
    move v1, p1

    .local v1, "k":I
    :goto_2
    if-ge v1, p2, :cond_21

    .line 3103
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v2, v2, v1

    .line 3104
    .local v2, "dirProp":B
    const/16 v3, 0x16

    if-ne v2, v3, :cond_e

    .line 3105
    add-int/lit8 v0, v0, -0x1

    .line 3106
    :cond_e
    if-nez v0, :cond_14

    .line 3107
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte p3, v3, v1

    .line 3108
    :cond_14
    const/16 v3, 0x14

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1e

    .line 3109
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 3102
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3111
    .end local v2    # "dirProp":B
    :cond_21
    return-void
.end method

.method private greylist-max-o setParaSuccess()V
    .registers 2

    .line 3642
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    .line 3643
    iput-object v0, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    .line 3644
    iput-object p0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 3645
    return-void
.end method

.method public static whitelist test-api writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I

    .line 5707
    if-eqz p0, :cond_10

    .line 5711
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 5712
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5715
    :cond_d
    const-string v0, ""

    return-object v0

    .line 5708
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method greylist-max-o Bidi_Abs(I)I
    .registers 3
    .param p1, "x"    # I

    .line 3652
    if-ltz p1, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    neg-int v0, p1

    :goto_5
    return v0
.end method

.method greylist-max-o Bidi_Min(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 3648
    if-ge p1, p2, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    return v0
.end method

.method greylist-max-o GetParaLevelAt(I)B
    .registers 4
    .param p1, "pindex"    # I

    .line 1990
    iget-byte v0, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_c

    goto :goto_28

    .line 1993
    :cond_c
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_d
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v0, v1, :cond_1b

    .line 1994
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_18

    .line 1995
    goto :goto_1b

    .line 1993
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1996
    :cond_1b
    :goto_1b
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-lt v0, v1, :cond_23

    .line 1997
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v0, v1, -0x1

    .line 1998
    :cond_23
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v1, v1, v0

    return v1

    .line 1991
    .end local v0    # "i":I
    :cond_28
    :goto_28
    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    return v0
.end method

.method public whitelist test-api baseIsLeftToRight()Z
    .registers 2

    .line 5415
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api countParagraphs()I
    .registers 2

    .line 4526
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4527
    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    return v0
.end method

.method public whitelist test-api countRuns()I
    .registers 2

    .line 4817
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4818
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 4819
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    return v0
.end method

.method public whitelist test-api createLineBidi(II)Landroid/icu/text/Bidi;
    .registers 4
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    .line 5357
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Bidi;->setLine(II)Landroid/icu/text/Bidi;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBaseLevel()I
    .registers 2

    .line 5428
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public whitelist test-api getCustomClassifier()Landroid/icu/text/BidiClassifier;
    .registers 2

    .line 4652
    iget-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    return-object v0
.end method

.method public whitelist test-api getCustomizedClass(I)I
    .registers 5
    .param p1, "c"    # I

    .line 4671
    iget-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    const/16 v1, 0x17

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    .line 4672
    invoke-virtual {v0, p1}, Landroid/icu/text/BidiClassifier;->classify(I)I

    move-result v0

    move v2, v0

    .local v2, "dir":I
    if-ne v0, v1, :cond_15

    .line 4673
    .end local v2    # "dir":I
    :cond_f
    iget-object v0, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v2

    .line 4675
    .restart local v2    # "dir":I
    :cond_15
    if-lt v2, v1, :cond_19

    .line 4676
    const/16 v2, 0xa

    .line 4677
    :cond_19
    return v2
.end method

.method greylist-max-o getDirPropsMemory(I)V
    .registers 3
    .param p1, "len"    # I

    .line 1348
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    .line 1349
    return-void
.end method

.method public whitelist test-api getDirection()B
    .registers 2

    .line 4360
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4361
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 4411
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4412
    iget v0, p0, Landroid/icu/text/Bidi;->originalLength:I

    return v0
.end method

.method public whitelist test-api getLevelAt(I)B
    .registers 4
    .param p1, "charIndex"    # I

    .line 4746
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4747
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4748
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLevelAt(Landroid/icu/text/Bidi;I)B

    move-result v0

    return v0
.end method

.method public whitelist test-api getLevels()[B
    .registers 2

    .line 4765
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4766
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-gtz v0, :cond_b

    .line 4767
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 4769
    :cond_b
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLevels(Landroid/icu/text/Bidi;)[B

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getLevelsMemory(I)V
    .registers 3
    .param p1, "len"    # I

    .line 1359
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    .line 1360
    return-void
.end method

.method public whitelist test-api getLogicalIndex(I)I
    .registers 4
    .param p1, "visualIndex"    # I

    .line 4980
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4981
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->resultLength:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4983
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-nez v0, :cond_22

    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-nez v0, :cond_22

    .line 4984
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    if-nez v0, :cond_18

    .line 4985
    return p1

    .line 4987
    :cond_18
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 4988
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    .line 4991
    :cond_22
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 4992
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLogicalMap()[I
    .registers 2

    .line 5036
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    .line 5037
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-gtz v0, :cond_b

    .line 5038
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 5040
    :cond_b
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLogicalMap(Landroid/icu/text/Bidi;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLogicalRun(I)Landroid/icu/text/BidiRun;
    .registers 4
    .param p1, "logicalPosition"    # I

    .line 4797
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4798
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4799
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getLogicalToVisualRunsMap()V
    .registers 9

    .line 5449
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    if-eqz v0, :cond_5

    .line 5450
    return-void

    .line 5452
    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 5453
    .local v0, "count":I
    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    array-length v1, v1

    if-ge v1, v0, :cond_16

    .line 5455
    :cond_12
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    .line 5458
    :cond_16
    new-array v1, v0, [J

    .line 5459
    .local v1, "keys":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v0, :cond_2c

    .line 5460
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/icu/text/BidiRun;->start:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 5459
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5462
    :cond_2c
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 5463
    const/4 v2, 0x0

    :goto_30
    if-ge v2, v0, :cond_3f

    .line 5464
    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget-wide v4, v1, v2

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v3, v2

    .line 5463
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 5466
    :cond_3f
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    .line 5467
    return-void
.end method

.method public whitelist test-api getParaLevel()B
    .registers 2

    .line 4512
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4513
    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    return v0
.end method

.method public whitelist test-api getParagraph(I)Landroid/icu/text/BidiRun;
    .registers 5
    .param p1, "charIndex"    # I

    .line 4595
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4596
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 4597
    .local v0, "bidi":Landroid/icu/text/Bidi;
    const/4 v1, 0x0

    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4599
    const/4 v1, 0x0

    .local v1, "paraIndex":I
    :goto_c
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4601
    :cond_15
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphByIndex(I)Landroid/icu/text/BidiRun;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getParagraphByIndex(I)Landroid/icu/text/BidiRun;
    .registers 6
    .param p1, "paraIndex"    # I

    .line 4553
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4554
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4556
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 4558
    .local v0, "bidi":Landroid/icu/text/Bidi;
    if-nez p1, :cond_f

    .line 4559
    const/4 v1, 0x0

    .local v1, "paraStart":I
    goto :goto_15

    .line 4561
    .end local v1    # "paraStart":I
    :cond_f
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    .line 4563
    .restart local v1    # "paraStart":I
    :goto_15
    new-instance v2, Landroid/icu/text/BidiRun;

    invoke-direct {v2}, Landroid/icu/text/BidiRun;-><init>()V

    .line 4564
    .local v2, "bidiRun":Landroid/icu/text/BidiRun;
    iput v1, v2, Landroid/icu/text/BidiRun;->start:I

    .line 4565
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v3, v3, p1

    iput v3, v2, Landroid/icu/text/BidiRun;->limit:I

    .line 4566
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/text/BidiRun;->level:B

    .line 4567
    return-object v2
.end method

.method public whitelist test-api getParagraphIndex(I)I
    .registers 5
    .param p1, "charIndex"    # I

    .line 4622
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4623
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 4624
    .local v0, "bidi":Landroid/icu/text/Bidi;
    const/4 v1, 0x0

    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4626
    const/4 v1, 0x0

    .local v1, "paraIndex":I
    :goto_c
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4628
    :cond_15
    return v1
.end method

.method public whitelist test-api getProcessedLength()I
    .registers 2

    .line 4455
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4456
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    return v0
.end method

.method public whitelist test-api getReorderingMode()I
    .registers 2

    .line 1638
    iget v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    return v0
.end method

.method public whitelist test-api getReorderingOptions()I
    .registers 2

    .line 1672
    iget v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    return v0
.end method

.method public whitelist test-api getResultLength()I
    .registers 2

    .line 4488
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4489
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    return v0
.end method

.method public whitelist test-api getRunCount()I
    .registers 2

    .line 5441
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getRunLevel(I)I
    .registers 4
    .param p1, "run"    # I

    .line 5483
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5484
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 5485
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 5486
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5487
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-byte v0, v0, Landroid/icu/text/BidiRun;->level:B

    return v0
.end method

.method public whitelist test-api getRunLimit(I)I
    .registers 6
    .param p1, "run"    # I

    .line 5528
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5529
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 5530
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 5531
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5532
    iget-object v0, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget v0, v0, p1

    .line 5533
    .local v0, "idx":I
    if-nez v0, :cond_1c

    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/text/BidiRun;->limit:I

    goto :goto_2b

    .line 5534
    :cond_1c
    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/text/BidiRun;->limit:I

    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v1, v2

    :goto_2b
    nop

    .line 5535
    .local v1, "len":I
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/text/BidiRun;->start:I

    add-int/2addr v2, v1

    return v2
.end method

.method public whitelist test-api getRunStart(I)I
    .registers 4
    .param p1, "run"    # I

    .line 5505
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5506
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 5507
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 5508
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5509
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    return v0
.end method

.method greylist-max-o getRunsMemory(I)V
    .registers 3
    .param p1, "len"    # I

    .line 1370
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    .line 1371
    return-void
.end method

.method public whitelist test-api getText()[C
    .registers 2

    .line 4396
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4397
    iget-object v0, p0, Landroid/icu/text/Bidi;->text:[C

    return-object v0
.end method

.method public whitelist test-api getTextAsString()Ljava/lang/String;
    .registers 3

    .line 4378
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4379
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/Bidi;->text:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public whitelist test-api getVisualIndex(I)I
    .registers 4
    .param p1, "logicalIndex"    # I

    .line 4936
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4937
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4938
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualIndex(Landroid/icu/text/Bidi;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getVisualMap()[I
    .registers 2

    .line 5077
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    .line 5078
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    if-gtz v0, :cond_b

    .line 5079
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 5081
    :cond_b
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getVisualMap(Landroid/icu/text/Bidi;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVisualRun(I)Landroid/icu/text/BidiRun;
    .registers 4
    .param p1, "runIndex"    # I

    .line 4887
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4888
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 4889
    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/Bidi;->runCount:I

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4890
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isInverse()Z
    .registers 2

    .line 1457
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    return v0
.end method

.method public whitelist test-api isLeftToRight()Z
    .registers 3

    .line 5387
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v0

    if-nez v0, :cond_d

    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public whitelist test-api isMixed()Z
    .registers 2

    .line 5372
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api isOrderParagraphsLTR()Z
    .registers 2

    .line 4340
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    return v0
.end method

.method public whitelist test-api isRightToLeft()Z
    .registers 3

    .line 5402
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public whitelist test-api orderParagraphsLTR(Z)V
    .registers 2
    .param p1, "ordarParaLTR"    # Z

    .line 4329
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    .line 4330
    return-void
.end method

.method public whitelist test-api setContext(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prologue"    # Ljava/lang/String;
    .param p2, "epilogue"    # Ljava/lang/String;

    .line 3637
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    move-object v1, p1

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    iput-object v1, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    .line 3638
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    move-object v0, p2

    :cond_17
    iput-object v0, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    .line 3639
    return-void
.end method

.method public whitelist test-api setCustomClassifier(Landroid/icu/text/BidiClassifier;)V
    .registers 2
    .param p1, "classifier"    # Landroid/icu/text/BidiClassifier;

    .line 4640
    iput-object p1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    .line 4641
    return-void
.end method

.method public whitelist test-api setInverse(Z)V
    .registers 3
    .param p1, "isInverse"    # Z

    .line 1435
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->isInverse:Z

    .line 1436
    if-eqz p1, :cond_6

    const/4 v0, 0x4

    goto :goto_7

    .line 1437
    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 1438
    return-void
.end method

.method public whitelist test-api setLine(II)Landroid/icu/text/Bidi;
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 4720
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidPara()V

    .line 4721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4722
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4723
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 4727
    invoke-static {p0, p1, p2}, Landroid/icu/text/BidiLine;->setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;

    move-result-object v0

    return-object v0

    .line 4725
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setPara(Ljava/lang/String;B[B)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paraLevel"    # B
    .param p3, "embeddingLevels"    # [B

    .line 3886
    if-nez p1, :cond_9

    .line 3887
    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_10

    .line 3889
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 3891
    :goto_10
    return-void
.end method

.method public whitelist test-api setPara(Ljava/text/AttributedCharacterIterator;)V
    .registers 14
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    .line 4271
    sget-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4272
    .local v0, "runDirection":Ljava/lang/Boolean;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 4273
    const/16 v2, 0x7e

    .local v2, "paraLvl":B
    goto :goto_19

    .line 4275
    .end local v2    # "paraLvl":B
    :cond_e
    sget-object v2, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4276
    move v2, v1

    goto :goto_19

    :cond_18
    const/4 v2, 0x1

    .line 4279
    .restart local v2    # "paraLvl":B
    :goto_19
    const/4 v3, 0x0

    .line 4280
    .local v3, "lvls":[B
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v4

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v5

    sub-int/2addr v4, v5

    .line 4281
    .local v4, "len":I
    new-array v5, v4, [B

    .line 4282
    .local v5, "embeddingLevels":[B
    new-array v6, v4, [C

    .line 4283
    .local v6, "txt":[C
    const/4 v7, 0x0

    .line 4284
    .local v7, "i":I
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v8

    .line 4285
    .local v8, "ch":C
    :goto_2c
    const v9, 0xffff

    if-eq v8, v9, :cond_5a

    .line 4286
    aput-char v8, v6, v7

    .line 4287
    sget-object v9, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v9}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 4288
    .local v9, "embedding":Ljava/lang/Integer;
    if-eqz v9, :cond_52

    .line 4289
    invoke-virtual {v9}, Ljava/lang/Integer;->byteValue()B

    move-result v10

    .line 4290
    .local v10, "level":B
    if-nez v10, :cond_44

    goto :goto_52

    .line 4292
    :cond_44
    if-gez v10, :cond_4f

    .line 4293
    move-object v3, v5

    .line 4294
    rsub-int/lit8 v11, v10, 0x0

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    goto :goto_52

    .line 4296
    :cond_4f
    move-object v3, v5

    .line 4297
    aput-byte v10, v5, v7

    .line 4300
    .end local v10    # "level":B
    :cond_52
    :goto_52
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v8

    .line 4301
    nop

    .end local v9    # "embedding":Ljava/lang/Integer;
    add-int/lit8 v7, v7, 0x1

    .line 4302
    goto :goto_2c

    .line 4304
    :cond_5a
    sget-object v9, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v9}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/awt/font/NumericShaper;

    .line 4305
    .local v9, "shaper":Ljava/awt/font/NumericShaper;
    if-eqz v9, :cond_67

    .line 4306
    invoke-virtual {v9, v6, v1, v4}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 4308
    :cond_67
    invoke-virtual {p0, v6, v2, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 4309
    return-void
.end method

.method public whitelist test-api setPara([CB[B)V
    .registers 16
    .param p1, "chars"    # [C
    .param p2, "paraLevel"    # B
    .param p3, "embeddingLevels"    # [B

    .line 3971
    const/4 v0, 0x0

    const/16 v1, 0x7e

    if-ge p2, v1, :cond_8

    .line 3972
    invoke-virtual {p0, p2, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 3974
    :cond_8
    if-nez p1, :cond_c

    .line 3975
    new-array p1, v0, [C

    .line 3979
    :cond_c
    iget v1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 3980
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Bidi;->setParaRunsOnly([CB)V

    .line 3981
    return-void

    .line 3985
    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 3986
    iput-object p1, p0, Landroid/icu/text/Bidi;->text:[C

    .line 3987
    iget-object v1, p0, Landroid/icu/text/Bidi;->text:[C

    array-length v1, v1

    iput v1, p0, Landroid/icu/text/Bidi;->resultLength:I

    iput v1, p0, Landroid/icu/text/Bidi;->originalLength:I

    iput v1, p0, Landroid/icu/text/Bidi;->length:I

    .line 3988
    iput-byte p2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 3989
    and-int/lit8 v1, p2, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/icu/text/Bidi;->direction:B

    .line 3990
    const/4 v1, 0x1

    iput v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    .line 3995
    new-array v3, v0, [B

    iput-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 3996
    new-array v3, v0, [B

    iput-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 3997
    new-array v3, v0, [Landroid/icu/text/BidiRun;

    iput-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 3998
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    .line 3999
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iput v0, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    .line 4000
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iput v0, v3, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 4005
    invoke-static {p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v3

    if-eqz v3, :cond_4b

    move v3, p2

    goto :goto_4c

    :cond_4b
    move v3, v0

    :goto_4c
    iput-byte v3, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    .line 4007
    iget v3, p0, Landroid/icu/text/Bidi;->length:I

    if-nez v3, :cond_6e

    .line 4013
    invoke-static {p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 4014
    iget-byte v2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 4015
    iput-byte v0, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    .line 4017
    :cond_60
    invoke-static {p2}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v1

    iput v1, p0, Landroid/icu/text/Bidi;->flags:I

    .line 4018
    iput v0, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 4019
    iput v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    .line 4020
    invoke-direct {p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    .line 4021
    return-void

    .line 4024
    :cond_6e
    const/4 v3, -0x1

    iput v3, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 4031
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    .line 4032
    iget-object v4, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    iput-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 4033
    invoke-direct {p0}, Landroid/icu/text/Bidi;->getDirProps()V

    .line 4035
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    iput v4, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 4038
    if-nez p3, :cond_93

    .line 4040
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    .line 4041
    iget-object v4, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    iput-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 4042
    invoke-direct {p0}, Landroid/icu/text/Bidi;->resolveExplicitLevels()B

    move-result v4

    iput-byte v4, p0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_9b

    .line 4045
    :cond_93
    iput-object p3, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 4046
    invoke-direct {p0}, Landroid/icu/text/Bidi;->checkExplicitLevels()B

    move-result v4

    iput-byte v4, p0, Landroid/icu/text/Bidi;->direction:B

    .line 4050
    :goto_9b
    iget v4, p0, Landroid/icu/text/Bidi;->isolateCount:I

    if-lez v4, :cond_b1

    .line 4051
    iget-object v4, p0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    if-eqz v4, :cond_aa

    iget-object v4, p0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    array-length v4, v4

    iget v5, p0, Landroid/icu/text/Bidi;->isolateCount:I

    if-ge v4, v5, :cond_b1

    .line 4052
    :cond_aa
    iget v4, p0, Landroid/icu/text/Bidi;->isolateCount:I

    add-int/2addr v4, v2

    new-array v2, v4, [Landroid/icu/text/Bidi$Isolate;

    iput-object v2, p0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    .line 4054
    :cond_b1
    iput v3, p0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 4060
    iget-byte v2, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v3, 0x7

    packed-switch v2, :pswitch_data_224

    .line 4073
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    packed-switch v2, :pswitch_data_22c

    goto :goto_101

    .line 4067
    :pswitch_bf
    iput v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 4068
    goto/16 :goto_1b2

    .line 4063
    :pswitch_c3
    iput v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 4064
    goto/16 :goto_1b2

    .line 4098
    :pswitch_c7
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_d1

    .line 4099
    sget-object v2, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_101

    .line 4101
    :cond_d1
    sget-object v2, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_101

    .line 4091
    :pswitch_d6
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_e0

    .line 4092
    sget-object v2, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_101

    .line 4094
    :cond_e0
    sget-object v2, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    .line 4096
    goto :goto_101

    .line 4088
    :pswitch_e5
    sget-object v2, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    .line 4089
    goto :goto_101

    .line 4085
    :pswitch_ea
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Internal ICU error in setPara"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4081
    :pswitch_f2
    sget-object v2, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    .line 4082
    goto :goto_101

    .line 4078
    :pswitch_f7
    sget-object v2, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    .line 4079
    goto :goto_101

    .line 4075
    :pswitch_fc
    sget-object v2, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object v2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    .line 4076
    nop

    .line 4116
    :goto_101
    if-nez p3, :cond_12a

    iget v2, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-gt v2, v1, :cond_12a

    iget v2, p0, Landroid/icu/text/Bidi;->flags:I

    sget v4, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    and-int/2addr v2, v4

    if-nez v2, :cond_12a

    .line 4118
    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    .line 4119
    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    invoke-static {v4}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v4

    int-to-short v4, v4

    iget v5, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v5, v1

    .line 4120
    invoke-virtual {p0, v5}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v5

    invoke-static {v5}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v5

    int-to-short v5, v5

    .line 4118
    invoke-direct {p0, v0, v2, v4, v5}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    goto/16 :goto_1af

    .line 4123
    :cond_12a
    const/4 v2, 0x0

    .line 4128
    .local v2, "limit":I
    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    .line 4129
    .local v4, "level":B
    iget-object v5, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v5, v5, v0

    .line 4130
    .local v5, "nextLevel":B
    if-ge v4, v5, :cond_13b

    .line 4131
    invoke-static {v5}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v6

    int-to-short v6, v6

    .local v6, "eor":S
    goto :goto_140

    .line 4133
    .end local v6    # "eor":S
    :cond_13b
    invoke-static {v4}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v6

    int-to-short v6, v6

    .line 4140
    .restart local v6    # "eor":S
    :cond_140
    :goto_140
    move v7, v2

    .line 4141
    .local v7, "start":I
    move v4, v5

    .line 4142
    if-lez v7, :cond_156

    iget-object v8, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v9, v7, -0x1

    aget-byte v8, v8, v9

    if-ne v8, v3, :cond_156

    .line 4144
    invoke-virtual {p0, v7}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v8

    invoke-static {v8}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v8

    int-to-short v8, v8

    .local v8, "sor":S
    goto :goto_157

    .line 4146
    .end local v8    # "sor":S
    :cond_156
    move v8, v6

    .line 4150
    .restart local v8    # "sor":S
    :cond_157
    :goto_157
    add-int/2addr v2, v1

    iget v9, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v9, :cond_170

    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v9, v9, v2

    if-eq v9, v4, :cond_157

    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v2

    .line 4152
    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    sget v10, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_170

    goto :goto_157

    .line 4155
    :cond_170
    iget v9, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v9, :cond_179

    .line 4156
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v5, v9, v2

    goto :goto_180

    .line 4158
    :cond_179
    iget v9, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v5

    .line 4162
    :goto_180
    invoke-static {v4}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v9

    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v10

    if-ge v9, v10, :cond_190

    .line 4163
    invoke-static {v5}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v9

    int-to-short v6, v9

    goto :goto_195

    .line 4165
    :cond_190
    invoke-static {v4}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v9

    int-to-short v6, v9

    .line 4170
    :goto_195
    and-int/lit8 v9, v4, -0x80

    if-nez v9, :cond_19d

    .line 4171
    invoke-direct {p0, v7, v2, v8, v6}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    goto :goto_1ab

    .line 4175
    :cond_19d
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "start":I
    .local v10, "start":I
    aget-byte v11, v9, v7

    and-int/lit8 v11, v11, 0x7f

    int-to-byte v11, v11

    aput-byte v11, v9, v7

    .line 4176
    move v7, v10

    if-lt v10, v2, :cond_19d

    .line 4178
    .end local v10    # "start":I
    .restart local v7    # "start":I
    :goto_1ab
    iget v9, p0, Landroid/icu/text/Bidi;->length:I

    if-lt v2, v9, :cond_140

    .line 4182
    .end local v2    # "limit":I
    .end local v4    # "level":B
    .end local v5    # "nextLevel":B
    .end local v6    # "eor":S
    .end local v7    # "start":I
    .end local v8    # "sor":S
    :goto_1af
    invoke-direct {p0}, Landroid/icu/text/Bidi;->adjustWSLevels()V

    .line 4189
    :goto_1b2
    iget-byte v2, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-lez v2, :cond_209

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_209

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1c5

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_209

    .line 4196
    :cond_1c5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c6
    iget v4, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v2, v4, :cond_209

    .line 4197
    iget-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v4, v4, v2

    sub-int/2addr v4, v1

    .line 4198
    .local v4, "last":I
    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v5, v5, v2

    .line 4199
    .local v5, "level":B
    if-nez v5, :cond_1d6

    .line 4200
    goto :goto_206

    .line 4201
    :cond_1d6
    if-nez v2, :cond_1da

    move v6, v0

    goto :goto_1e0

    :cond_1da
    iget-object v6, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    .line 4202
    .local v6, "start":I
    :goto_1e0
    move v7, v4

    .local v7, "j":I
    :goto_1e1
    if-lt v7, v6, :cond_206

    .line 4203
    iget-object v8, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v8, v8, v7

    .line 4204
    .local v8, "dirProp":B
    if-nez v8, :cond_1f9

    .line 4205
    if-ge v7, v4, :cond_1f4

    .line 4206
    :goto_1eb
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v4

    if-ne v9, v3, :cond_1f4

    .line 4207
    add-int/lit8 v4, v4, -0x1

    goto :goto_1eb

    .line 4210
    :cond_1f4
    const/4 v9, 0x4

    invoke-direct {p0, v4, v9}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 4211
    goto :goto_206

    .line 4213
    :cond_1f9
    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    sget v10, Landroid/icu/text/Bidi;->MASK_R_AL:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_203

    .line 4214
    goto :goto_206

    .line 4202
    :cond_203
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e1

    .line 4196
    .end local v6    # "start":I
    .end local v7    # "j":I
    .end local v8    # "dirProp":B
    :cond_206
    :goto_206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c6

    .line 4220
    .end local v2    # "i":I
    .end local v4    # "last":I
    .end local v5    # "level":B
    :cond_209
    iget v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_217

    .line 4221
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    iget v1, p0, Landroid/icu/text/Bidi;->controlCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    goto :goto_220

    .line 4223
    :cond_217
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, v1, Landroid/icu/text/Bidi$InsertPoints;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    .line 4225
    :goto_220
    invoke-direct {p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    .line 4226
    return-void

    :pswitch_data_224
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_bf
    .end packed-switch

    :pswitch_data_22c
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_f7
        :pswitch_f2
        :pswitch_ea
        :pswitch_e5
        :pswitch_d6
        :pswitch_c7
    .end packed-switch
.end method

.method greylist-max-o setParaRunsOnly([CB)V
    .registers 36
    .param p1, "parmText"    # [C
    .param p2, "parmParaLevel"    # B

    .line 3667
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    iput v3, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 3668
    array-length v4, v1

    .line 3669
    .local v4, "parmLength":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v4, :cond_14

    .line 3670
    invoke-virtual {v0, v1, v2, v6}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 3671
    iput v5, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 3672
    return-void

    .line 3675
    :cond_14
    iget v7, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 3676
    .local v7, "saveOptions":I
    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x2

    if-lez v8, :cond_26

    .line 3677
    iget v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 3678
    iget v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    or-int/2addr v8, v9

    iput v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 3680
    :cond_26
    and-int/lit8 v8, v2, 0x1

    int-to-byte v2, v8

    .line 3681
    .end local p2    # "parmParaLevel":B
    .local v2, "parmParaLevel":B
    invoke-virtual {v0, v1, v2, v6}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 3685
    iget v8, v0, Landroid/icu/text/Bidi;->length:I

    new-array v8, v8, [B

    .line 3686
    .local v8, "saveLevels":[B
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getLevels()[B

    move-result-object v10

    iget v11, v0, Landroid/icu/text/Bidi;->length:I

    invoke-static {v10, v3, v8, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3687
    iget v10, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 3695
    .local v10, "saveTrailingWSStart":I
    invoke-virtual {v0, v9}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v11

    .line 3696
    .local v11, "visualText":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getVisualMap()[I

    move-result-object v12

    .line 3697
    .local v12, "visualMap":[I
    iput v7, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 3698
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    .line 3699
    .local v13, "saveLength":I
    iget-byte v14, v0, Landroid/icu/text/Bidi;->direction:B

    .line 3701
    .local v14, "saveDirection":B
    const/4 v15, 0x5

    iput v15, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 3702
    xor-int/lit8 v15, v2, 0x1

    int-to-byte v2, v15

    .line 3703
    invoke-virtual {v0, v11, v2, v6}, Landroid/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    .line 3704
    invoke-static {v0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 3706
    const/4 v6, 0x0

    .line 3707
    .local v6, "addedRuns":I
    iget v15, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 3708
    .local v15, "oldRunCount":I
    const/16 v16, 0x0

    .line 3709
    .local v16, "visualStart":I
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "i":I
    :goto_5e
    move/from16 v18, v3

    if-ge v5, v15, :cond_b1

    .line 3710
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    sub-int v3, v3, v16

    .line 3711
    .local v3, "runLength":I
    if-ge v3, v9, :cond_71

    .line 3712
    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_a7

    .line 3714
    :cond_71
    iget-object v9, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    .line 3715
    .local v9, "logicalStart":I
    add-int/lit8 v19, v9, 0x1

    move/from16 v32, v19

    move/from16 v19, v2

    move/from16 v2, v32

    .local v2, "j":I
    .local v19, "parmParaLevel":B
    :goto_7f
    move/from16 v20, v3

    .end local v3    # "runLength":I
    .local v20, "runLength":I
    add-int v3, v9, v20

    if-ge v2, v3, :cond_a5

    .line 3716
    aget v3, v12, v2

    .line 3717
    .local v3, "index":I
    add-int/lit8 v21, v2, -0x1

    aget v21, v12, v21

    .line 3718
    .local v21, "index1":I
    move/from16 v22, v2

    .end local v2    # "j":I
    .local v22, "j":I
    sub-int v2, v3, v21

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v2

    move/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "index":I
    .local v23, "index":I
    if-ne v2, v3, :cond_9e

    aget-byte v2, v8, v23

    aget-byte v3, v8, v21

    if-eq v2, v3, :cond_a0

    .line 3719
    :cond_9e
    add-int/lit8 v6, v6, 0x1

    .line 3715
    :cond_a0
    add-int/lit8 v2, v22, 0x1

    move/from16 v3, v20

    .end local v22    # "j":I
    .restart local v2    # "j":I
    goto :goto_7f

    .end local v21    # "index1":I
    .end local v23    # "index":I
    :cond_a5
    move/from16 v22, v2

    .line 3709
    .end local v2    # "j":I
    .end local v9    # "logicalStart":I
    :goto_a7
    add-int/lit8 v5, v5, 0x1

    add-int v16, v16, v20

    move/from16 v3, v18

    move/from16 v2, v19

    const/4 v9, 0x2

    goto :goto_5e

    .line 3723
    .end local v19    # "parmParaLevel":B
    .end local v20    # "runLength":I
    .local v2, "parmParaLevel":B
    :cond_b1
    move/from16 v19, v2

    .end local v2    # "parmParaLevel":B
    .restart local v19    # "parmParaLevel":B
    if-lez v6, :cond_f9

    .line 3724
    add-int v2, v15, v6

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    .line 3725
    iget v2, v0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ca

    .line 3727
    iget-object v2, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v18

    aput-object v3, v2, v18

    move/from16 v20, v5

    goto :goto_d7

    .line 3729
    :cond_ca
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v3, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    iget v9, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v20, v5

    move/from16 v5, v18

    .end local v5    # "i":I
    .local v20, "i":I
    invoke-static {v2, v5, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3731
    :goto_d7
    iget-object v2, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    iput-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 3732
    iget v2, v0, Landroid/icu/text/Bidi;->runCount:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/icu/text/Bidi;->runCount:I

    .line 3733
    move v2, v15

    move v5, v2

    .end local v20    # "i":I
    .restart local v5    # "i":I
    :goto_e2
    iget v2, v0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v5, v2, :cond_fb

    .line 3734
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v5

    if-nez v2, :cond_f6

    .line 3735
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    new-instance v3, Landroid/icu/text/BidiRun;

    const/4 v9, 0x0

    invoke-direct {v3, v9, v9, v9}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v3, v2, v5

    .line 3733
    :cond_f6
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    .line 3723
    :cond_f9
    move/from16 v20, v5

    .line 3741
    :cond_fb
    add-int/lit8 v2, v15, -0x1

    .end local v5    # "i":I
    .local v2, "i":I
    :goto_fd
    if-ltz v2, :cond_23a

    .line 3742
    add-int v3, v2, v6

    .line 3743
    .local v3, "newI":I
    if-nez v2, :cond_10c

    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/16 v18, 0x0

    aget-object v5, v5, v18

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    goto :goto_11d

    .line 3744
    :cond_10c
    const/16 v18, 0x0

    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    iget-object v9, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v20, v2, -0x1

    aget-object v9, v9, v20

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v9

    :goto_11d
    nop

    .line 3745
    .local v5, "runLength":I
    iget-object v9, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v9, v9, v2

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    .line 3746
    .restart local v9    # "logicalStart":I
    move/from16 v20, v2

    .end local v2    # "i":I
    .restart local v20    # "i":I
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v20

    iget-byte v2, v2, Landroid/icu/text/BidiRun;->level:B

    const/16 v21, 0x1

    and-int/lit8 v2, v2, 0x1

    .line 3747
    .local v2, "indexOddBit":I
    move/from16 v21, v2

    const/4 v2, 0x2

    .end local v2    # "indexOddBit":I
    .local v21, "indexOddBit":I
    if-ge v5, v2, :cond_164

    .line 3748
    if-lez v6, :cond_145

    .line 3749
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v3

    move/from16 v22, v3

    .end local v3    # "newI":I
    .local v22, "newI":I
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v20

    invoke-virtual {v2, v3}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    goto :goto_147

    .line 3748
    .end local v22    # "newI":I
    .restart local v3    # "newI":I
    :cond_145
    move/from16 v22, v3

    .line 3751
    .end local v3    # "newI":I
    .restart local v22    # "newI":I
    :goto_147
    aget v2, v12, v9

    .line 3752
    .local v2, "logicalPos":I
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v22

    iput v2, v3, Landroid/icu/text/BidiRun;->start:I

    .line 3753
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v22

    aget-byte v23, v8, v2

    move/from16 v24, v2

    .end local v2    # "logicalPos":I
    .local v24, "logicalPos":I
    xor-int v2, v23, v21

    int-to-byte v2, v2

    iput-byte v2, v3, Landroid/icu/text/BidiRun;->level:B

    .line 3754
    move/from16 v28, v5

    move/from16 v2, v24

    move/from16 v3, v22

    goto/16 :goto_235

    .line 3756
    .end local v22    # "newI":I
    .end local v24    # "logicalPos":I
    .restart local v3    # "newI":I
    :cond_164
    move/from16 v22, v3

    .end local v3    # "newI":I
    .restart local v22    # "newI":I
    if-lez v21, :cond_172

    .line 3757
    move v2, v9

    .line 3758
    .local v2, "start":I
    add-int v3, v9, v5

    const/16 v23, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 3759
    .local v3, "limit":I
    const/16 v24, 0x1

    .local v24, "step":I
    goto :goto_17b

    .line 3761
    .end local v2    # "start":I
    .end local v3    # "limit":I
    .end local v24    # "step":I
    :cond_172
    const/16 v23, 0x1

    add-int v2, v9, v5

    add-int/lit8 v2, v2, -0x1

    .line 3762
    .restart local v2    # "start":I
    move v3, v9

    .line 3763
    .restart local v3    # "limit":I
    const/16 v24, -0x1

    .line 3765
    .restart local v24    # "step":I
    :goto_17b
    move/from16 v23, v2

    move/from16 v32, v23

    move/from16 v2, v32

    .local v2, "j":I
    .local v23, "start":I
    :goto_181
    if-eq v2, v3, :cond_207

    .line 3766
    move/from16 v25, v2

    .end local v2    # "j":I
    .local v25, "j":I
    aget v2, v12, v25

    .line 3767
    .local v2, "index":I
    add-int v26, v25, v24

    aget v26, v12, v26

    .line 3768
    .local v26, "index1":I
    move/from16 v27, v3

    .end local v3    # "limit":I
    .local v27, "limit":I
    sub-int v3, v2, v26

    invoke-virtual {v0, v3}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v3

    move/from16 v28, v5

    const/4 v5, 0x1

    .end local v5    # "runLength":I
    .local v28, "runLength":I
    if-ne v3, v5, :cond_1a2

    aget-byte v3, v8, v2

    aget-byte v5, v8, v26

    if-eq v3, v5, :cond_19f

    goto :goto_1a2

    :cond_19f
    move/from16 v30, v2

    goto :goto_1ff

    .line 3769
    :cond_1a2
    :goto_1a2
    aget v3, v12, v23

    invoke-virtual {v0, v3, v2}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    move-result v3

    .line 3770
    .local v3, "logicalPos":I
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v22

    iput v3, v5, Landroid/icu/text/BidiRun;->start:I

    .line 3771
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v22

    aget-byte v29, v8, v3

    move/from16 v30, v2

    .end local v2    # "index":I
    .local v30, "index":I
    xor-int v2, v29, v21

    int-to-byte v2, v2

    iput-byte v2, v5, Landroid/icu/text/BidiRun;->level:B

    .line 3772
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v22

    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v20

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    iput v5, v2, Landroid/icu/text/BidiRun;->limit:I

    .line 3773
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v20

    iget v5, v2, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v29, v3

    .end local v3    # "logicalPos":I
    .local v29, "logicalPos":I
    sub-int v3, v25, v23

    invoke-virtual {v0, v3}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v3

    const/16 v31, 0x1

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/icu/text/BidiRun;->limit:I

    .line 3774
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v20

    iget v2, v2, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v2, v2, 0xa

    .line 3775
    .local v2, "insertRemove":I
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v22

    iput v2, v3, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 3776
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v20

    iget v5, v3, Landroid/icu/text/BidiRun;->insertRemove:I

    move/from16 v31, v5

    not-int v5, v2

    and-int v5, v31, v5

    iput v5, v3, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 3777
    add-int v3, v25, v24

    .line 3778
    .end local v23    # "start":I
    .local v3, "start":I
    add-int/lit8 v6, v6, -0x1

    .line 3779
    add-int/lit8 v22, v22, -0x1

    move/from16 v23, v3

    .line 3765
    .end local v2    # "insertRemove":I
    .end local v3    # "start":I
    .end local v29    # "logicalPos":I
    .restart local v23    # "start":I
    :goto_1ff
    add-int v2, v25, v24

    move/from16 v3, v27

    move/from16 v5, v28

    .end local v25    # "j":I
    .local v2, "j":I
    goto/16 :goto_181

    .line 3782
    .end local v26    # "index1":I
    .end local v27    # "limit":I
    .end local v28    # "runLength":I
    .end local v30    # "index":I
    .local v3, "limit":I
    .restart local v5    # "runLength":I
    :cond_207
    move/from16 v25, v2

    move/from16 v27, v3

    move/from16 v28, v5

    .end local v2    # "j":I
    .end local v3    # "limit":I
    .end local v5    # "runLength":I
    .restart local v25    # "j":I
    .restart local v27    # "limit":I
    .restart local v28    # "runLength":I
    if-lez v6, :cond_21a

    .line 3783
    iget-object v2, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v22

    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v20

    invoke-virtual {v2, v3}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    .line 3785
    :cond_21a
    aget v2, v12, v23

    aget v3, v12, v27

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    move-result v2

    .line 3786
    .local v2, "logicalPos":I
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v22

    iput v2, v3, Landroid/icu/text/BidiRun;->start:I

    .line 3787
    iget-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v22

    aget-byte v5, v8, v2

    xor-int v5, v5, v21

    int-to-byte v5, v5

    iput-byte v5, v3, Landroid/icu/text/BidiRun;->level:B

    move/from16 v3, v22

    .line 3741
    .end local v22    # "newI":I
    .end local v23    # "start":I
    .end local v24    # "step":I
    .end local v25    # "j":I
    .end local v27    # "limit":I
    .local v3, "newI":I
    :goto_235
    add-int/lit8 v5, v20, -0x1

    move v2, v5

    .end local v20    # "i":I
    .local v5, "i":I
    goto/16 :goto_fd

    .line 3792
    .end local v3    # "newI":I
    .end local v5    # "i":I
    .end local v9    # "logicalStart":I
    .end local v21    # "indexOddBit":I
    .end local v28    # "runLength":I
    .local v2, "i":I
    :cond_23a
    move/from16 v20, v2

    .end local v2    # "i":I
    .restart local v20    # "i":I
    iget-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 3795
    iput-object v1, v0, Landroid/icu/text/Bidi;->text:[C

    .line 3796
    iput v13, v0, Landroid/icu/text/Bidi;->length:I

    .line 3797
    iput v4, v0, Landroid/icu/text/Bidi;->originalLength:I

    .line 3798
    iput-byte v14, v0, Landroid/icu/text/Bidi;->direction:B

    .line 3799
    iput-object v8, v0, Landroid/icu/text/Bidi;->levels:[B

    .line 3800
    iput v10, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 3801
    iget v2, v0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_257

    .line 3802
    const/4 v2, 0x2

    iput-byte v2, v0, Landroid/icu/text/Bidi;->direction:B

    .line 3805
    :cond_257
    const/4 v2, 0x3

    iput v2, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 3806
    return-void
.end method

.method public whitelist test-api setReorderingMode(I)V
    .registers 3
    .param p1, "reorderingMode"    # I

    .line 1622
    if-ltz p1, :cond_11

    const/4 v0, 0x7

    if-lt p1, v0, :cond_6

    goto :goto_11

    .line 1625
    :cond_6
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 1626
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    .line 1628
    return-void

    .line 1624
    :cond_11
    :goto_11
    return-void
.end method

.method public whitelist test-api setReorderingOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .line 1657
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    .line 1658
    and-int/lit8 v0, p1, -0x2

    iput v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    goto :goto_b

    .line 1660
    :cond_9
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 1662
    :goto_b
    return-void
.end method

.method greylist-max-o testDirPropFlagAt(II)Z
    .registers 4
    .param p1, "flag"    # I
    .param p2, "index"    # I

    .line 1119
    iget-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v0, v0, p2

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o verifyRange(III)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 1208
    if-lt p1, p2, :cond_5

    if-ge p1, p3, :cond_5

    .line 1212
    return-void

    .line 1209
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o verifyValidPara()V
    .registers 2

    .line 1188
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-ne p0, v0, :cond_5

    .line 1191
    return-void

    .line 1189
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method greylist-max-o verifyValidParaOrLine()V
    .registers 3

    .line 1195
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 1197
    .local v0, "para":Landroid/icu/text/Bidi;
    if-ne p0, v0, :cond_5

    .line 1198
    return-void

    .line 1201
    :cond_5
    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-ne v0, v1, :cond_c

    .line 1204
    return-void

    .line 1202
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public whitelist test-api writeReordered(I)Ljava/lang/String;
    .registers 3
    .param p1, "options"    # I

    .line 5660
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5661
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-nez v0, :cond_a

    .line 5663
    const-string v0, ""

    return-object v0

    .line 5665
    :cond_a
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
