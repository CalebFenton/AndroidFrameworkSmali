.class public Landroid/icu/util/IslamicCalendar;
.super Landroid/icu/util/Calendar;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/IslamicCalendar$CalculationType;,
        Landroid/icu/util/IslamicCalendar$Algorithm;,
        Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;,
        Landroid/icu/util/IslamicCalendar$CivilAlgorithm;,
        Landroid/icu/util/IslamicCalendar$TBLAAlgorithm;,
        Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;
    }
.end annotation


# static fields
.field private static final blacklist ASTRONOMICAL_EPOCH:J = 0x1dbb17L

.field private static blacklist CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm; = null

.field private static final blacklist CIVIL_EPOCH:J = 0x1dbb18L

.field public static final whitelist test-api DHU_AL_HIJJAH:I = 0xb

.field public static final whitelist test-api DHU_AL_QIDAH:I = 0xa

.field private static final greylist-max-o HIJRA_MILLIS:J = -0x26ac5419b000L

.field private static blacklist ISLAMIC_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm; = null

.field public static final whitelist test-api JUMADA_1:I = 0x4

.field public static final whitelist test-api JUMADA_2:I = 0x5

.field private static final greylist-max-o LIMITS:[[I

.field public static final whitelist test-api MUHARRAM:I = 0x0

.field public static final whitelist test-api RABI_1:I = 0x2

.field public static final whitelist test-api RABI_2:I = 0x3

.field public static final whitelist test-api RAJAB:I = 0x6

.field public static final whitelist test-api RAMADAN:I = 0x8

.field public static final whitelist test-api SAFAR:I = 0x1

.field public static final whitelist test-api SHABAN:I = 0x7

.field public static final whitelist test-api SHAWWAL:I = 0x9

.field private static blacklist TBLA_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm; = null

.field private static blacklist UMALQURA_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm; = null

.field private static final greylist-max-o UMALQURA_MONTHLENGTH:[I

.field private static final greylist-max-o UMALQURA_YEAR_END:I = 0x640

.field private static final greylist-max-o UMALQURA_YEAR_START:I = 0x514

.field private static final greylist-max-o UMALQURA_YEAR_START_ESTIMATE_FIX:[B

.field private static greylist-max-o cache:Landroid/icu/impl/CalendarCache; = null

.field private static final whitelist serialVersionUID:J = -0x56c86ac454dd7c0dL


# instance fields
.field private transient blacklist algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

.field private greylist-max-o cType:Landroid/icu/util/IslamicCalendar$CalculationType;

.field private greylist-max-o civil:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$2nJgqWYxw5dIDoLSoefGYT-CT7E(Landroid/icu/util/IslamicCalendar;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->lambda$handleComputeFields$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5I5V3gnDJAbYNaxHr4Dordz-DG8(Landroid/icu/util/IslamicCalendar;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->lambda$handleComputeFields$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$I2vCf8WCgoSA5B2aG8IrH5w91Fk(Landroid/icu/util/IslamicCalendar;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->lambda$handleComputeFields$3(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vPhrfZRDAABR3R-V5DoBFSe71K0(Landroid/icu/util/IslamicCalendar;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->lambda$handleComputeFields$0(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCIVIL_ALGORITHM()Landroid/icu/util/IslamicCalendar$Algorithm;
    .registers 1

    sget-object v0, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUMALQURA_MONTHLENGTH()[I
    .registers 1

    sget-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUMALQURA_YEAR_START_ESTIMATE_FIX()[B
    .registers 1

    sget-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcivilLeapYear(I)Z
    .registers 1

    invoke-static {p0}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtrueMonthStart(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 26

    .line 587
    new-instance v0, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar$IslamicAlgorithm;-><init>(Landroid/icu/util/IslamicCalendar-IA;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->ISLAMIC_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 588
    new-instance v0, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar$CivilAlgorithm;-><init>(Landroid/icu/util/IslamicCalendar-IA;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 589
    new-instance v0, Landroid/icu/util/IslamicCalendar$TBLAAlgorithm;

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar$TBLAAlgorithm;-><init>(Landroid/icu/util/IslamicCalendar-IA;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->TBLA_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 590
    new-instance v0, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;

    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar$UmalquraAlgorithm;-><init>(Landroid/icu/util/IslamicCalendar-IA;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 642
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x4c4b40

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v4

    const/16 v5, 0xb

    filled-new-array {v0, v0, v5, v5}, [I

    move-result-object v6

    const/16 v7, 0x32

    const/16 v8, 0x33

    filled-new-array {v2, v2, v7, v8}, [I

    move-result-object v7

    new-array v8, v0, [I

    const/16 v9, 0x1d

    const/16 v10, 0x1e

    filled-new-array {v2, v2, v9, v10}, [I

    move-result-object v9

    const/16 v10, 0x162

    const/16 v11, 0x163

    filled-new-array {v2, v2, v10, v11}, [I

    move-result-object v10

    move-object v11, v8

    new-array v8, v0, [I

    const/4 v12, 0x5

    const/4 v13, 0x5

    const/4 v14, -0x1

    filled-new-array {v14, v14, v12, v13}, [I

    move-result-object v12

    move-object v13, v4

    move-object v4, v7

    move-object v7, v10

    new-array v10, v0, [I

    move-object v14, v11

    new-array v11, v0, [I

    move-object v15, v6

    move-object v6, v9

    move-object v9, v12

    new-array v12, v0, [I

    move-object/from16 v16, v13

    new-array v13, v0, [I

    move-object/from16 v17, v14

    new-array v14, v0, [I

    move-object/from16 v18, v15

    new-array v15, v0, [I

    new-array v5, v0, [I

    move-object/from16 v20, v1

    new-array v1, v0, [I

    move-object/from16 v21, v18

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v18

    move-object/from16 v22, v1

    new-array v1, v0, [I

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v2

    new-array v3, v0, [I

    move-object/from16 v23, v1

    new-array v1, v0, [I

    move-object/from16 v24, v1

    new-array v1, v0, [I

    move-object/from16 v25, v1

    const/16 v1, 0xb

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    move-object/from16 v1, v21

    move-object/from16 v21, v3

    move-object v3, v1

    move-object/from16 v1, v20

    move-object/from16 v19, v23

    move-object/from16 v23, v25

    move-object/from16 v20, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    .line 674
    const/16 v0, 0x12d

    new-array v0, v0, [I

    fill-array-data v0, :array_cc

    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    .line 793
    const/16 v0, 0x12d

    new-array v0, v0, [B

    fill-array-data v0, :array_32a

    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    .line 928
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    return-void

    :array_cc
    .array-data 4
        0xaaa
        0xd54
        0xec9
        0x6d4
        0x6ea
        0x36c
        0xaad
        0x555
        0x6a9
        0x792
        0xba9
        0x5d4
        0xada
        0x55c
        0xd2d
        0x695
        0x74a
        0xb54
        0xb6a
        0x5ad
        0x4ae
        0xa4f
        0x517
        0x68b
        0x6a5
        0xad5
        0x2d6
        0x95b
        0x49d
        0xa4d
        0xd26
        0xd95
        0x5ac
        0x9b6
        0x2ba
        0xa5b
        0x52b
        0xa95
        0x6ca
        0xae9
        0x2f4
        0x976
        0x2b6
        0x956
        0xaca
        0xba4
        0xbd2
        0x5d9
        0x2dc
        0x96d
        0x54d
        0xaa5
        0xb52
        0xba5
        0x5b4
        0x9b6
        0x557
        0x297
        0x54b
        0x6a3
        0x752
        0xb65
        0x56a
        0xaab
        0x52b
        0xc95
        0xd4a
        0xda5
        0x5ca
        0xad6
        0x957
        0x4ab
        0x94b
        0xaa5
        0xb52
        0xb6a
        0x575
        0x276
        0x8b7
        0x45b
        0x555
        0x5a9
        0x5b4
        0x9da
        0x4dd
        0x26e
        0x936
        0xaaa
        0xd54
        0xdb2
        0x5d5
        0x2da
        0x95b
        0x4ab
        0xa55
        0xb49
        0xb64
        0xb71
        0x5b4
        0xab5
        0xa55
        0xd25
        0xe92
        0xec9
        0x6d4
        0xae9
        0x96b
        0x4ab
        0xa93
        0xd49
        0xda4
        0xdb2
        0xab9
        0x4ba
        0xa5b
        0x52b
        0xa95
        0xb2a
        0xb55
        0x55c
        0x4bd
        0x23d
        0x91d
        0xa95
        0xb4a
        0xb5a
        0x56d
        0x2b6
        0x93b
        0x49b
        0x655
        0x6a9
        0x754
        0xb6a
        0x56c
        0xaad
        0x555
        0xb29
        0xb92
        0xba9
        0x5d4
        0xada
        0x55a
        0xaab
        0x595
        0x749
        0x764
        0xbaa
        0x5b5
        0x2b6
        0xa56
        0xe4d
        0xb25
        0xb52
        0xb6a
        0x5ad
        0x2ae
        0x92f
        0x497
        0x64b
        0x6a5
        0x6ac
        0xad6
        0x55d
        0x49d
        0xa4d
        0xd16
        0xd95
        0x5aa
        0x5b5
        0x2da
        0x95b
        0x4ad
        0x595
        0x6ca
        0x6e4
        0xaea
        0x4f5
        0x2b6
        0x956
        0xaaa
        0xb54
        0xbd2
        0x5d9
        0x2ea
        0x96d
        0x4ad
        0xa95
        0xb4a
        0xba5
        0x5b2
        0x9b5
        0x4d6
        0xa97
        0x547
        0x693
        0x749
        0xb55
        0x56a
        0xa6b
        0x52b
        0xa8b
        0xd46
        0xda3
        0x5ca
        0xad6
        0x4db
        0x26b
        0x94b
        0xaa5
        0xb52
        0xb69
        0x575
        0x176
        0x8b7
        0x25b
        0x52b
        0x565
        0x5b4
        0x9da
        0x4ed
        0x16d
        0x8b6
        0xaa6
        0xd52
        0xda9
        0x5d4
        0xada
        0x95b
        0x4ab
        0x653
        0x729
        0x762
        0xba9
        0x5b2
        0xab5
        0x555
        0xb25
        0xd92
        0xec9
        0x6d2
        0xae9
        0x56b
        0x4ab
        0xa55
        0xd29
        0xd54
        0xdaa
        0x9b5
        0x4ba
        0xa3b
        0x49b
        0xa4d
        0xaaa
        0xad5
        0x2da
        0x95d
        0x45e
        0xa2e
        0xc9a
        0xd55
        0x6b2
        0x6b9
        0x4ba
        0xa5d
        0x52d
        0xa95
        0xb52
        0xba8
        0xbb4
        0x5b9
        0x2da
        0x95a
        0xb4a
        0xda4
        0xed1
        0x6e8
        0xb6a
        0x56d
        0x535
        0x695
        0xd4a
        0xda8
        0xdd4
        0x6da
        0x55b
        0x29d
        0x62b
        0xb15
        0xb4a
        0xb95
        0x5aa
        0xaae
        0x92e
        0xc8f
        0x527
        0x695
        0x6aa
        0xad6
        0x55d
        0x29d
    .end array-data

    :array_32a
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 178
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 179
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 264
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 944
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 946
    sget-object v1, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v1, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 265
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 266
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 267
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 268
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 289
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 944
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 946
    sget-object v1, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v1, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 290
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 291
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 292
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 293
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 294
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 295
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/IslamicCalendar;->set(II)V

    .line 296
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 189
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 190
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 944
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 946
    sget-object v0, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 236
    invoke-direct {p0, p2}, Landroid/icu/util/IslamicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    .line 238
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 223
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 224
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 211
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 212
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 248
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 944
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 946
    sget-object v0, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 249
    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setTime(Ljava/util/Date;)V

    .line 250
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 200
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 201
    return-void
.end method

.method private static final greylist-max-o civilLeapYear(I)Z
    .registers 3
    .param p0, "year"    # I

    .line 850
    mul-int/lit8 v0, p0, 0xb

    add-int/lit8 v0, v0, 0xe

    rem-int/lit8 v0, v0, 0x1e

    const/16 v1, 0xb

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic blacklist lambda$handleComputeFields$0(I)V
    .registers 3
    .param p1, "year"    # I

    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    .line 1024
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    .line 1025
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    .line 1026
    return-void
.end method

.method private synthetic blacklist lambda$handleComputeFields$1(I)V
    .registers 3
    .param p1, "month"    # I

    .line 1028
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    .line 1029
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    .line 1030
    return-void
.end method

.method private synthetic blacklist lambda$handleComputeFields$2(I)V
    .registers 3
    .param p1, "dayOfMonth"    # I

    .line 1031
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    return-void
.end method

.method private synthetic blacklist lambda$handleComputeFields$3(I)V
    .registers 3
    .param p1, "dayOfYear"    # I

    .line 1032
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    return-void
.end method

.method static final greylist-max-o moonAge(J)D
    .registers 10
    .param p0, "time"    # J

    .line 914
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    invoke-virtual {v0}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide v0

    .line 916
    .local v0, "age":D
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v4, v0, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 917
    .end local v0    # "age":D
    .local v4, "age":D
    cmpl-double v0, v4, v2

    if-lez v0, :cond_20

    .line 918
    const-wide v0, 0x4076800000000000L    # 360.0

    sub-double/2addr v4, v0

    .line 921
    :cond_20
    return-wide v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1127
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-nez v0, :cond_12

    .line 1130
    iget-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    if-eqz v0, :cond_e

    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    goto :goto_10

    :cond_e
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    :goto_10
    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1132
    :cond_12
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v0}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    .line 1133
    return-void
.end method

.method private greylist-max-o setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1103
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "localeCalType":Ljava/lang/String;
    const-string v1, "islamic-civil"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1105
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_41

    .line 1106
    :cond_12
    const-string v1, "islamic-umalqura"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1107
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_41

    .line 1108
    :cond_20
    const-string v1, "islamic-tbla"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1109
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_41

    .line 1110
    :cond_2e
    const-string v1, "islamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1111
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    goto :goto_41

    .line 1113
    :cond_3c
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    .line 1114
    :goto_41
    return-void
.end method

.method private static final greylist-max-o trueMonthStart(J)J
    .registers 16
    .param p0, "month"    # J

    .line 871
    sget-object v0, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 873
    .local v0, "start":J
    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_4f

    .line 876
    long-to-double v2, p0

    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v2, v4

    .line 877
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    const-wide v6, -0x26ac5419b000L

    add-long/2addr v2, v6

    .line 879
    .local v2, "origin":J
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v8

    .line 881
    .local v8, "age":D
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3a

    .line 884
    :cond_30
    sub-long/2addr v2, v4

    .line 885
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v8

    .line 886
    cmpl-double v10, v8, v12

    if-gez v10, :cond_30

    goto :goto_43

    .line 891
    :cond_3a
    add-long/2addr v2, v4

    .line 892
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    move-result-wide v8

    .line 893
    cmpg-double v10, v8, v12

    if-ltz v10, :cond_3a

    .line 896
    :goto_43
    sub-long v6, v2, v6

    div-long/2addr v6, v4

    const-wide/16 v4, 0x1

    add-long v0, v6, v4

    .line 898
    sget-object v4, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    invoke-virtual {v4, p0, p1, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    .line 900
    .end local v2    # "origin":J
    .end local v8    # "age":D
    :cond_4f
    return-wide v0
.end method

.method private greylist-max-o yearStart(I)J
    .registers 4
    .param p1, "year"    # I

    .line 858
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0, p1}, Landroid/icu/util/IslamicCalendar$Algorithm;->yearStart(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public whitelist test-api getCalculationType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 2

    .line 1096
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0}, Landroid/icu/util/IslamicCalendar$Algorithm;->getType()Landroid/icu/util/IslamicCalendar$CalculationType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 1122
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0}, Landroid/icu/util/IslamicCalendar$Algorithm;->getType()Landroid/icu/util/IslamicCalendar$CalculationType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 11
    .param p1, "julianDay"    # I

    .line 1021
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    int-to-long v1, p1

    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->internalGetTimeInMillis()J

    move-result-wide v3

    new-instance v5, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda0;-><init>(Landroid/icu/util/IslamicCalendar;)V

    new-instance v6, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda1;-><init>(Landroid/icu/util/IslamicCalendar;)V

    new-instance v7, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda2;-><init>(Landroid/icu/util/IslamicCalendar;)V

    new-instance v8, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Landroid/icu/util/IslamicCalendar$$ExternalSyntheticLambda3;-><init>(Landroid/icu/util/IslamicCalendar;)V

    invoke-interface/range {v0 .. v8}, Landroid/icu/util/IslamicCalendar$Algorithm;->compute(JJLjava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    .line 1033
    return-void
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 8
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    .line 984
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0, p1, p2}, Landroid/icu/util/IslamicCalendar$Algorithm;->monthStart(II)J

    move-result-wide v0

    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v2}, Landroid/icu/util/IslamicCalendar$Algorithm;->epoch()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4

    .line 996
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 997
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_12

    .line 999
    .end local v0    # "year":I
    :cond_e
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/IslamicCalendar;->internalGet(II)I

    move-result v0

    .line 1001
    .restart local v0    # "year":I
    :goto_12
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 785
    sget-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 4
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 960
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0, p1, p2}, Landroid/icu/util/IslamicCalendar$Algorithm;->monthLength(II)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api handleGetYearLength(I)I
    .registers 3
    .param p1, "extendedYear"    # I

    .line 968
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0, p1}, Landroid/icu/util/IslamicCalendar$Algorithm;->yearLength(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api inTemporalLeapYear()Z
    .registers 3

    .line 1151
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/IslamicCalendar;->getActualMaximum(I)I

    move-result v0

    const/16 v1, 0x163

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o isCivil()Z
    .registers 2

    .line 632
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0}, Landroid/icu/util/IslamicCalendar$Algorithm;->isCivil()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V
    .registers 3
    .param p1, "type"    # Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1073
    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1074
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {v0}, Landroid/icu/util/IslamicCalendar$CalculationType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 1086
    :pswitch_b
    sget-object v0, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    goto :goto_1f

    .line 1082
    :pswitch_10
    sget-object v0, Landroid/icu/util/IslamicCalendar;->TBLA_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 1083
    goto :goto_1f

    .line 1076
    :pswitch_15
    sget-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 1077
    goto :goto_1f

    .line 1079
    :pswitch_1a
    sget-object v0, Landroid/icu/util/IslamicCalendar;->ISLAMIC_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 1080
    nop

    .line 1089
    :goto_1f
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0}, Landroid/icu/util/IslamicCalendar$Algorithm;->isCivil()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 1090
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_b
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method public greylist-max-o setCivil(Z)V
    .registers 5
    .param p1, "beCivil"    # Z

    .line 604
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_1b

    .line 607
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 608
    .local v0, "m":J
    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 609
    sget-object v2, Landroid/icu/util/IslamicCalendar;->CIVIL_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 610
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->clear()V

    .line 611
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    .end local v0    # "m":J
    goto :goto_36

    .line 612
    :cond_1b
    if-nez p1, :cond_36

    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    if-eq v0, v1, :cond_36

    .line 615
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 616
    .restart local v0    # "m":J
    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 617
    sget-object v2, Landroid/icu/util/IslamicCalendar;->ISLAMIC_ALGORITHM:Landroid/icu/util/IslamicCalendar$Algorithm;

    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    .line 618
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->clear()V

    .line 619
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    goto :goto_37

    .line 612
    .end local v0    # "m":J
    :cond_36
    :goto_36
    nop

    .line 621
    :goto_37
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->algorithm:Landroid/icu/util/IslamicCalendar$Algorithm;

    invoke-interface {v0}, Landroid/icu/util/IslamicCalendar$Algorithm;->isCivil()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    .line 622
    return-void
.end method
