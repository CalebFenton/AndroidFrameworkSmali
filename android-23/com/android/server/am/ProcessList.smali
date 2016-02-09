.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I = 0x20

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x11

    #@2
    .line 142
    const/16 v0, 0x20

    #@4
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    #@7
    move-result v0

    #@8
    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    #@a
    .line 146
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    #@10
    .line 150
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    #@12
    rsub-int/lit8 v0, v0, 0x20

    #@14
    div-int/lit8 v0, v0, 0x3

    #@16
    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    #@18
    .line 483
    new-array v0, v1, [I

    #@1a
    fill-array-data v0, :array_0

    #@1d
    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    #@1f
    .line 503
    new-array v0, v1, [J

    #@21
    fill-array-data v0, :array_1

    #@24
    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    #@26
    .line 523
    new-array v0, v1, [J

    #@28
    fill-array-data v0, :array_2

    #@2b
    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    #@2d
    .line 543
    new-array v0, v1, [J

    #@2f
    fill-array-data v0, :array_3

    #@32
    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    #@34
    .line 563
    new-array v0, v1, [J

    #@36
    fill-array-data v0, :array_4

    #@39
    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    #@3b
    .line 43
    return-void

    #@3c
    .line 483
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    #@62
    .line 503
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    #@aa
    .line 523
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    #@f2
    .line 543
    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    #@13a
    .line 563
    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    const/4 v6, 0x0

    #@2
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 171
    new-array v1, v2, [I

    #@7
    fill-array-data v1, :array_0

    #@a
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@c
    .line 177
    new-array v1, v2, [I

    #@e
    fill-array-data v1, :array_1

    #@11
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    #@13
    .line 183
    new-array v1, v2, [I

    #@15
    fill-array-data v1, :array_2

    #@18
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    #@1a
    .line 188
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@1c
    array-length v1, v1

    #@1d
    new-array v1, v1, [I

    #@1f
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@21
    .line 200
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    #@23
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    #@26
    .line 201
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    #@29
    .line 202
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    #@2c
    move-result-wide v2

    #@2d
    const-wide/32 v4, 0x100000

    #@30
    div-long/2addr v2, v4

    #@31
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    #@33
    .line 203
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    #@36
    .line 199
    return-void

    #@37
    .line 171
    nop

    #@38
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    #@48
    .line 177
    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    #@58
    .line 183
    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    #@0
    .prologue
    .line 421
    const/4 v1, 0x0

    #@1
    .local v1, "j":I
    const/16 v0, 0xa

    #@3
    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 422
    int-to-long v2, v0

    #@7
    cmp-long v2, p1, v2

    #@9
    if-gez v2, :cond_0

    #@b
    .line 423
    const/16 v2, 0x20

    #@d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@12
    mul-int/lit8 v0, v0, 0xa

    #@14
    goto :goto_0

    #@15
    .line 426
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    .line 420
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    #@0
    .prologue
    .line 315
    if-ne p2, p3, :cond_1

    #@2
    .line 316
    if-nez p1, :cond_0

    #@4
    return-object p0

    #@5
    .line 317
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, "  "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 319
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "+"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    sub-int v1, p2, p3

    #@2c
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    #@0
    .prologue
    .line 311
    div-int/lit8 v0, p0, 0x2

    #@2
    return v0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    #@0
    .prologue
    .line 593
    if-eqz p2, :cond_1

    #@2
    .line 594
    if-eqz p1, :cond_0

    #@4
    .line 595
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    #@6
    .line 600
    .local v0, "table":[J
    :goto_0
    aget-wide v2, v0, p0

    #@8
    add-long/2addr v2, p4

    #@9
    return-wide v2

    #@a
    .line 596
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    #@c
    .restart local v0    # "table":[J
    goto :goto_0

    #@d
    .line 597
    .end local v0    # "table":[J
    :cond_1
    if-eqz p1, :cond_2

    #@f
    .line 598
    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    #@11
    .restart local v0    # "table":[J
    goto :goto_0

    #@12
    .line 599
    .end local v0    # "table":[J
    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    #@14
    .restart local v0    # "table":[J
    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    #@0
    .prologue
    const/16 v5, -0xb

    #@2
    const/16 v4, -0xc

    #@4
    const/16 v3, -0x10

    #@6
    const/16 v1, -0x11

    #@8
    const/4 v2, 0x0

    #@9
    .line 323
    const/16 v0, 0x9

    #@b
    if-lt p0, v0, :cond_0

    #@d
    .line 324
    const-string/jumbo v0, "cch"

    #@10
    const-string/jumbo v1, "  "

    #@13
    const/16 v2, 0x9

    #@15
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 325
    :cond_0
    const/16 v0, 0x8

    #@1c
    if-lt p0, v0, :cond_1

    #@1e
    .line 326
    const-string/jumbo v0, "svcb "

    #@21
    const/16 v1, 0x8

    #@23
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 327
    :cond_1
    const/4 v0, 0x7

    #@29
    if-lt p0, v0, :cond_2

    #@2b
    .line 328
    const-string/jumbo v0, "prev "

    #@2e
    const/4 v1, 0x7

    #@2f
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0

    #@34
    .line 329
    :cond_2
    const/4 v0, 0x6

    #@35
    if-lt p0, v0, :cond_3

    #@37
    .line 330
    const-string/jumbo v0, "home "

    #@3a
    const/4 v1, 0x6

    #@3b
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0

    #@40
    .line 331
    :cond_3
    const/4 v0, 0x5

    #@41
    if-lt p0, v0, :cond_4

    #@43
    .line 332
    const-string/jumbo v0, "svc  "

    #@46
    const/4 v1, 0x5

    #@47
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    return-object v0

    #@4c
    .line 333
    :cond_4
    const/4 v0, 0x4

    #@4d
    if-lt p0, v0, :cond_5

    #@4f
    .line 334
    const-string/jumbo v0, "hvy  "

    #@52
    const/4 v1, 0x4

    #@53
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    return-object v0

    #@58
    .line 335
    :cond_5
    const/4 v0, 0x3

    #@59
    if-lt p0, v0, :cond_6

    #@5b
    .line 336
    const-string/jumbo v0, "bkup "

    #@5e
    const/4 v1, 0x3

    #@5f
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    return-object v0

    #@64
    .line 337
    :cond_6
    const/4 v0, 0x2

    #@65
    if-lt p0, v0, :cond_7

    #@67
    .line 338
    const-string/jumbo v0, "prcp "

    #@6a
    const/4 v1, 0x2

    #@6b
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    return-object v0

    #@70
    .line 339
    :cond_7
    const/4 v0, 0x1

    #@71
    if-lt p0, v0, :cond_8

    #@73
    .line 340
    const-string/jumbo v0, "vis  "

    #@76
    const/4 v1, 0x1

    #@77
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 341
    :cond_8
    if-ltz p0, :cond_9

    #@7e
    .line 342
    const-string/jumbo v0, "fore "

    #@81
    const/4 v1, 0x0

    #@82
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    return-object v0

    #@87
    .line 343
    :cond_9
    if-lt p0, v5, :cond_a

    #@89
    .line 344
    const-string/jumbo v0, "psvc "

    #@8c
    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@8f
    move-result-object v0

    #@90
    return-object v0

    #@91
    .line 345
    :cond_a
    if-lt p0, v4, :cond_b

    #@93
    .line 346
    const-string/jumbo v0, "pers "

    #@96
    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    return-object v0

    #@9b
    .line 347
    :cond_b
    if-lt p0, v3, :cond_c

    #@9d
    .line 348
    const-string/jumbo v0, "sys  "

    #@a0
    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    return-object v0

    #@a5
    .line 349
    :cond_c
    if-lt p0, v1, :cond_d

    #@a7
    .line 350
    const-string/jumbo v0, "ntv  "

    #@aa
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    return-object v0

    #@af
    .line 352
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    return-object v0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    #@0
    .prologue
    .line 358
    packed-switch p0, :pswitch_data_0

    #@3
    .line 414
    const-string/jumbo v0, "??"

    #@6
    .line 417
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    #@7
    .line 360
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "N "

    #@a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@b
    .line 363
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "P "

    #@e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@f
    .line 366
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "PU"

    #@12
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@13
    .line 369
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "T "

    #@16
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@17
    .line 372
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "SB"

    #@1a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 375
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SF"

    #@1e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@1f
    .line 378
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "TS"

    #@22
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@23
    .line 381
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "IF"

    #@26
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 384
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "IB"

    #@2a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 387
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "BU"

    #@2e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 390
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HW"

    #@32
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@33
    .line 393
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "S "

    #@36
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@37
    .line 396
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "R "

    #@3a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@3b
    .line 399
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "HO"

    #@3e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 402
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "LA"

    #@42
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 405
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "CA"

    #@46
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@47
    .line 408
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "Ca"

    #@4a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 411
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "CE"

    #@4e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@4f
    .line 358
    nop

    #@50
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    #@0
    .prologue
    .line 588
    if-eqz p0, :cond_0

    #@2
    const/16 v0, 0x2710

    #@4
    :goto_0
    int-to-long v0, v0

    #@5
    return-wide v0

    #@6
    :cond_0
    const/16 v0, 0x3a98

    #@8
    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    #@0
    .prologue
    .line 659
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    #@6
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@8
    .line 660
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@a
    .line 661
    new-instance v2, Landroid/net/LocalSocketAddress;

    #@c
    const-string/jumbo v3, "lmkd"

    #@f
    .line 662
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@11
    .line 661
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@14
    .line 660
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@17
    .line 663
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@19
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    #@1c
    move-result-object v1

    #@1d
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 670
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 664
    :catch_0
    move-exception v0

    #@22
    .line 665
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "ActivityManager"

    #@25
    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    #@28
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 666
    const/4 v1, 0x0

    #@2c
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@2e
    .line 667
    const/4 v1, 0x0

    #@2f
    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    #@0
    .prologue
    .line 584
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    #@2
    aget v0, v0, p0

    #@4
    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    #@6
    aget v1, v1, p1

    #@8
    if-eq v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    #@0
    .prologue
    .line 651
    const/16 v1, 0x8

    #@2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    .line 652
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@a
    .line 653
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@d
    .line 654
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    #@10
    .line 650
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 630
    if-ne p2, v1, :cond_0

    #@4
    .line 631
    return-void

    #@5
    .line 633
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v4

    #@9
    .line 634
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v0

    #@d
    .line 635
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@11
    .line 636
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@14
    .line 637
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@17
    .line 638
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1a
    .line 639
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    #@1d
    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@20
    move-result-wide v2

    #@21
    .line 641
    .local v2, "now":J
    sub-long v6, v2, v4

    #@23
    const-wide/16 v8, 0xfa

    #@25
    cmp-long v1, v6, v8

    #@27
    if-lez v1, :cond_1

    #@29
    .line 642
    const-string/jumbo v1, "ActivityManager"

    #@2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v7, "SLOW OOM ADJ: "

    #@34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    sub-long v8, v2, v4

    #@3a
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, "ms for pid "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    .line 643
    const-string/jumbo v7, " = "

    #@4c
    .line 642
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 629
    :cond_1
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 22
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    #@0
    .prologue
    .line 220
    move-object/from16 v0, p0

    #@2
    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    #@4
    move-wide/from16 v18, v0

    #@6
    const-wide/16 v20, 0x15e

    #@8
    sub-long v18, v18, v20

    #@a
    move-wide/from16 v0, v18

    #@c
    long-to-float v0, v0

    #@d
    move/from16 v17, v0

    #@f
    const/high16 v18, 0x43af0000    # 350.0f

    #@11
    div-float v16, v17, v18

    #@13
    .line 225
    .local v16, "scaleMem":F
    mul-int v17, p1, p2

    #@15
    move/from16 v0, v17

    #@17
    int-to-float v0, v0

    #@18
    move/from16 v17, v0

    #@1a
    const v18, 0x48bb8000    # 384000.0f

    #@1d
    sub-float v17, v17, v18

    #@1f
    const v18, 0x9c400

    #@22
    move/from16 v0, v18

    #@24
    int-to-float v0, v0

    #@25
    move/from16 v18, v0

    #@27
    div-float v15, v17, v18

    #@29
    .line 232
    .local v15, "scaleDisp":F
    cmpl-float v17, v16, v15

    #@2b
    if-lez v17, :cond_2

    #@2d
    move/from16 v14, v16

    #@2f
    .line 233
    .local v14, "scale":F
    :goto_0
    const/16 v17, 0x0

    #@31
    cmpg-float v17, v14, v17

    #@33
    if-gez v17, :cond_3

    #@35
    const/4 v14, 0x0

    #@36
    .line 235
    :cond_0
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@39
    move-result-object v17

    #@3a
    .line 236
    const v18, 0x10e0009

    #@3d
    .line 235
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    #@40
    move-result v10

    #@41
    .line 237
    .local v10, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@44
    move-result-object v17

    #@45
    .line 238
    const v18, 0x10e0008

    #@48
    .line 237
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    #@4b
    move-result v9

    #@4c
    .line 243
    .local v9, "minfree_abs":I
    sget-object v17, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    #@4e
    move-object/from16 v0, v17

    #@50
    array-length v0, v0

    #@51
    move/from16 v17, v0

    #@53
    if-lez v17, :cond_4

    #@55
    const/4 v7, 0x1

    #@56
    .line 245
    .local v7, "is64bit":Z
    :goto_2
    const/4 v6, 0x0

    #@57
    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@5b
    move-object/from16 v17, v0

    #@5d
    move-object/from16 v0, v17

    #@5f
    array-length v0, v0

    #@60
    move/from16 v17, v0

    #@62
    move/from16 v0, v17

    #@64
    if-ge v6, v0, :cond_6

    #@66
    .line 246
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    #@6a
    move-object/from16 v17, v0

    #@6c
    aget v8, v17, v6

    #@6e
    .line 247
    .local v8, "low":I
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    #@72
    move-object/from16 v17, v0

    #@74
    aget v5, v17, v6

    #@76
    .line 248
    .local v5, "high":I
    if-eqz v7, :cond_1

    #@78
    .line 250
    const/16 v17, 0x4

    #@7a
    move/from16 v0, v17

    #@7c
    if-ne v6, v0, :cond_5

    #@7e
    mul-int/lit8 v17, v5, 0x3

    #@80
    div-int/lit8 v5, v17, 0x2

    #@82
    .line 253
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@86
    move-object/from16 v17, v0

    #@88
    int-to-float v0, v8

    #@89
    move/from16 v18, v0

    #@8b
    sub-int v19, v5, v8

    #@8d
    move/from16 v0, v19

    #@8f
    int-to-float v0, v0

    #@90
    move/from16 v19, v0

    #@92
    mul-float v19, v19, v14

    #@94
    add-float v18, v18, v19

    #@96
    move/from16 v0, v18

    #@98
    float-to-int v0, v0

    #@99
    move/from16 v18, v0

    #@9b
    aput v18, v17, v6

    #@9d
    .line 245
    add-int/lit8 v6, v6, 0x1

    #@9f
    goto :goto_3

    #@a0
    .line 232
    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v9    # "minfree_abs":I
    .end local v10    # "minfree_adj":I
    .end local v14    # "scale":F
    :cond_2
    move v14, v15

    #@a1
    .restart local v14    # "scale":F
    goto :goto_0

    #@a2
    .line 234
    :cond_3
    const/high16 v17, 0x3f800000    # 1.0f

    #@a4
    cmpl-float v17, v14, v17

    #@a6
    if-lez v17, :cond_0

    #@a8
    const/high16 v14, 0x3f800000    # 1.0f

    #@aa
    goto :goto_1

    #@ab
    .line 243
    .restart local v9    # "minfree_abs":I
    .restart local v10    # "minfree_adj":I
    :cond_4
    const/4 v7, 0x0

    #@ac
    .restart local v7    # "is64bit":Z
    goto :goto_2

    #@ad
    .line 251
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v8    # "low":I
    :cond_5
    const/16 v17, 0x5

    #@af
    move/from16 v0, v17

    #@b1
    if-ne v6, v0, :cond_1

    #@b3
    mul-int/lit8 v17, v5, 0x7

    #@b5
    div-int/lit8 v5, v17, 0x4

    #@b7
    goto :goto_4

    #@b8
    .line 256
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_6
    if-ltz v9, :cond_7

    #@ba
    .line 257
    const/4 v6, 0x0

    #@bb
    :goto_5
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@bf
    move-object/from16 v17, v0

    #@c1
    move-object/from16 v0, v17

    #@c3
    array-length v0, v0

    #@c4
    move/from16 v17, v0

    #@c6
    move/from16 v0, v17

    #@c8
    if-ge v6, v0, :cond_7

    #@ca
    .line 258
    move-object/from16 v0, p0

    #@cc
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@ce
    move-object/from16 v17, v0

    #@d0
    int-to-float v0, v9

    #@d1
    move/from16 v18, v0

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@d7
    move-object/from16 v19, v0

    #@d9
    aget v19, v19, v6

    #@db
    move/from16 v0, v19

    #@dd
    int-to-float v0, v0

    #@de
    move/from16 v19, v0

    #@e0
    mul-float v18, v18, v19

    #@e2
    .line 259
    move-object/from16 v0, p0

    #@e4
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@e6
    move-object/from16 v19, v0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@ec
    move-object/from16 v20, v0

    #@ee
    move-object/from16 v0, v20

    #@f0
    array-length v0, v0

    #@f1
    move/from16 v20, v0

    #@f3
    add-int/lit8 v20, v20, -0x1

    #@f5
    aget v19, v19, v20

    #@f7
    move/from16 v0, v19

    #@f9
    int-to-float v0, v0

    #@fa
    move/from16 v19, v0

    #@fc
    .line 258
    div-float v18, v18, v19

    #@fe
    move/from16 v0, v18

    #@100
    float-to-int v0, v0

    #@101
    move/from16 v18, v0

    #@103
    aput v18, v17, v6

    #@105
    .line 257
    add-int/lit8 v6, v6, 0x1

    #@107
    goto :goto_5

    #@108
    .line 263
    :cond_7
    if-eqz v10, :cond_9

    #@10a
    .line 264
    const/4 v6, 0x0

    #@10b
    :goto_6
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@10f
    move-object/from16 v17, v0

    #@111
    move-object/from16 v0, v17

    #@113
    array-length v0, v0

    #@114
    move/from16 v17, v0

    #@116
    move/from16 v0, v17

    #@118
    if-ge v6, v0, :cond_9

    #@11a
    .line 265
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@11e
    move-object/from16 v17, v0

    #@120
    aget v18, v17, v6

    #@122
    int-to-float v0, v10

    #@123
    move/from16 v19, v0

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@129
    move-object/from16 v20, v0

    #@12b
    aget v20, v20, v6

    #@12d
    move/from16 v0, v20

    #@12f
    int-to-float v0, v0

    #@130
    move/from16 v20, v0

    #@132
    mul-float v19, v19, v20

    #@134
    .line 266
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@138
    move-object/from16 v20, v0

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@13e
    move-object/from16 v21, v0

    #@140
    move-object/from16 v0, v21

    #@142
    array-length v0, v0

    #@143
    move/from16 v21, v0

    #@145
    add-int/lit8 v21, v21, -0x1

    #@147
    aget v20, v20, v21

    #@149
    move/from16 v0, v20

    #@14b
    int-to-float v0, v0

    #@14c
    move/from16 v20, v0

    #@14e
    .line 265
    div-float v19, v19, v20

    #@150
    move/from16 v0, v19

    #@152
    float-to-int v0, v0

    #@153
    move/from16 v19, v0

    #@155
    add-int v18, v18, v19

    #@157
    aput v18, v17, v6

    #@159
    .line 267
    move-object/from16 v0, p0

    #@15b
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@15d
    move-object/from16 v17, v0

    #@15f
    aget v17, v17, v6

    #@161
    if-gez v17, :cond_8

    #@163
    .line 268
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@167
    move-object/from16 v17, v0

    #@169
    const/16 v18, 0x0

    #@16b
    aput v18, v17, v6

    #@16d
    .line 264
    :cond_8
    add-int/lit8 v6, v6, 0x1

    #@16f
    goto :goto_6

    #@170
    .line 276
    :cond_9
    const/16 v17, 0xf

    #@172
    move-object/from16 v0, p0

    #@174
    move/from16 v1, v17

    #@176
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    #@179
    move-result-wide v18

    #@17a
    const-wide/16 v20, 0x400

    #@17c
    div-long v18, v18, v20

    #@17e
    const-wide/16 v20, 0x3

    #@180
    div-long v18, v18, v20

    #@182
    move-wide/from16 v0, v18

    #@184
    move-object/from16 v2, p0

    #@186
    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    #@188
    .line 280
    mul-int v17, p1, p2

    #@18a
    mul-int/lit8 v17, v17, 0x4

    #@18c
    mul-int/lit8 v17, v17, 0x3

    #@18e
    move/from16 v0, v17

    #@190
    div-int/lit16 v11, v0, 0x400

    #@192
    .line 281
    .local v11, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@195
    move-result-object v17

    #@196
    const v18, 0x10e000b

    #@199
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    #@19c
    move-result v13

    #@19d
    .line 282
    .local v13, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@1a0
    move-result-object v17

    #@1a1
    const v18, 0x10e000a

    #@1a4
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    #@1a7
    move-result v12

    #@1a8
    .line 284
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_a

    #@1aa
    .line 285
    move v11, v12

    #@1ab
    .line 288
    :cond_a
    if-eqz v13, :cond_b

    #@1ad
    .line 289
    add-int/2addr v11, v13

    #@1ae
    .line 290
    if-gez v11, :cond_b

    #@1b0
    .line 291
    const/4 v11, 0x0

    #@1b1
    .line 295
    :cond_b
    if-eqz p3, :cond_d

    #@1b3
    .line 296
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@1b7
    move-object/from16 v17, v0

    #@1b9
    move-object/from16 v0, v17

    #@1bb
    array-length v0, v0

    #@1bc
    move/from16 v17, v0

    #@1be
    mul-int/lit8 v17, v17, 0x2

    #@1c0
    add-int/lit8 v17, v17, 0x1

    #@1c2
    mul-int/lit8 v17, v17, 0x4

    #@1c4
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1c7
    move-result-object v4

    #@1c8
    .line 297
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    #@1ca
    move/from16 v0, v17

    #@1cc
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1cf
    .line 298
    const/4 v6, 0x0

    #@1d0
    :goto_7
    move-object/from16 v0, p0

    #@1d2
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@1d4
    move-object/from16 v17, v0

    #@1d6
    move-object/from16 v0, v17

    #@1d8
    array-length v0, v0

    #@1d9
    move/from16 v17, v0

    #@1db
    move/from16 v0, v17

    #@1dd
    if-ge v6, v0, :cond_c

    #@1df
    .line 299
    move-object/from16 v0, p0

    #@1e1
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@1e3
    move-object/from16 v17, v0

    #@1e5
    aget v17, v17, v6

    #@1e7
    move/from16 v0, v17

    #@1e9
    mul-int/lit16 v0, v0, 0x400

    #@1eb
    move/from16 v17, v0

    #@1ed
    move/from16 v0, v17

    #@1ef
    div-int/lit16 v0, v0, 0x1000

    #@1f1
    move/from16 v17, v0

    #@1f3
    move/from16 v0, v17

    #@1f5
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1f8
    .line 300
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@1fc
    move-object/from16 v17, v0

    #@1fe
    aget v17, v17, v6

    #@200
    move/from16 v0, v17

    #@202
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@205
    .line 298
    add-int/lit8 v6, v6, 0x1

    #@207
    goto :goto_7

    #@208
    .line 303
    :cond_c
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    #@20b
    .line 304
    const-string/jumbo v17, "sys.sysctl.extra_free_kbytes"

    #@20e
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@211
    move-result-object v18

    #@212
    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@215
    .line 217
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 675
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    #@3
    if-ge v2, v4, :cond_1

    #@5
    .line 676
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@7
    if-nez v4, :cond_0

    #@9
    .line 677
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 679
    const-wide/16 v4, 0x3e8

    #@11
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 675
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 680
    :catch_0
    move-exception v3

    #@18
    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    #@19
    .line 687
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    #@1b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@22
    move-result v6

    #@23
    const/4 v7, 0x0

    #@24
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    .line 688
    return-void

    #@28
    .line 689
    :catch_1
    move-exception v0

    #@29
    .line 690
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "ActivityManager"

    #@2c
    const-string/jumbo v5, "Error writing to lowmemorykiller socket"

    #@2f
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 693
    :try_start_2
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@34
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@37
    .line 697
    :goto_2
    sput-object v8, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@39
    goto :goto_1

    #@3a
    .line 673
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    return-void

    #@3b
    .line 694
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@3c
    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 207
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 208
    new-instance v0, Landroid/graphics/Point;

    #@8
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@b
    .line 209
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    #@e
    .line 210
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@10
    if-eqz v1, :cond_0

    #@12
    iget v1, v0, Landroid/graphics/Point;->y:I

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 211
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@18
    iget v2, v0, Landroid/graphics/Point;->y:I

    #@1a
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    #@1d
    .line 212
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    #@1f
    .line 206
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    #@0
    .prologue
    .line 617
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    #@2
    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    #@0
    .prologue
    .line 604
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 605
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@8
    aget v1, v1, v0

    #@a
    if-gt p1, v1, :cond_0

    #@c
    .line 606
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@e
    aget v1, v1, v0

    #@10
    mul-int/lit16 v1, v1, 0x400

    #@12
    int-to-long v2, v1

    #@13
    return-wide v2

    #@14
    .line 604
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 609
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@19
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@1b
    array-length v2, v2

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    aget v1, v1, v2

    #@20
    mul-int/lit16 v1, v1, 0x400

    #@22
    int-to-long v2, v1

    #@23
    return-wide v2
.end method
