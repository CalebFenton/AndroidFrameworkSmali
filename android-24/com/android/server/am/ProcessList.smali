.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I = 0x20

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

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

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x2

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String;

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

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
    .line 44
    const-string/jumbo v0, "ActivityManager"

    #@5
    sput-object v0, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    #@7
    .line 153
    const/16 v0, 0x20

    #@9
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    #@c
    move-result v0

    #@d
    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    #@f
    .line 157
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    #@11
    div-int/lit8 v0, v0, 0x2

    #@13
    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    #@15
    .line 161
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    #@17
    rsub-int/lit8 v0, v0, 0x20

    #@19
    div-int/lit8 v0, v0, 0x3

    #@1b
    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    #@1d
    .line 494
    new-array v0, v1, [I

    #@1f
    fill-array-data v0, :array_0

    #@22
    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    #@24
    .line 514
    new-array v0, v1, [J

    #@26
    fill-array-data v0, :array_1

    #@29
    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    #@2b
    .line 534
    new-array v0, v1, [J

    #@2d
    fill-array-data v0, :array_2

    #@30
    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    #@32
    .line 554
    new-array v0, v1, [J

    #@34
    fill-array-data v0, :array_3

    #@37
    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    #@39
    .line 574
    new-array v0, v1, [J

    #@3b
    fill-array-data v0, :array_4

    #@3e
    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    #@40
    .line 43
    return-void

    #@41
    .line 494
    nop

    #@42
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

    #@68
    .line 514
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

    #@b0
    .line 534
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

    #@f8
    .line 554
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

    #@140
    .line 574
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
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 182
    new-array v1, v2, [I

    #@7
    fill-array-data v1, :array_0

    #@a
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@c
    .line 188
    new-array v1, v2, [I

    #@e
    fill-array-data v1, :array_1

    #@11
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    #@13
    .line 194
    new-array v1, v2, [I

    #@15
    fill-array-data v1, :array_2

    #@18
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    #@1a
    .line 199
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@1c
    array-length v1, v1

    #@1d
    new-array v1, v1, [I

    #@1f
    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    #@21
    .line 211
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    #@23
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    #@26
    .line 212
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    #@29
    .line 213
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
    .line 214
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    #@36
    .line 210
    return-void

    #@37
    .line 182
    nop

    #@38
    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    #@48
    .line 188
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
    .line 194
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
    .line 432
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
    .line 433
    int-to-long v2, v0

    #@7
    cmp-long v2, p1, v2

    #@9
    if-gez v2, :cond_0

    #@b
    .line 434
    const/16 v2, 0x20

    #@d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@12
    mul-int/lit8 v0, v0, 0xa

    #@14
    goto :goto_0

    #@15
    .line 437
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    .line 431
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
    .line 326
    if-ne p2, p3, :cond_1

    #@2
    .line 327
    if-nez p1, :cond_0

    #@4
    return-object p0

    #@5
    .line 328
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
    .line 330
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
    .line 322
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
    .line 604
    if-eqz p2, :cond_1

    #@2
    .line 605
    if-eqz p1, :cond_0

    #@4
    .line 606
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    #@6
    .line 611
    .local v0, "table":[J
    :goto_0
    aget-wide v2, v0, p0

    #@8
    add-long/2addr v2, p4

    #@9
    return-wide v2

    #@a
    .line 607
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    #@c
    goto :goto_0

    #@d
    .line 608
    :cond_1
    if-eqz p1, :cond_2

    #@f
    .line 609
    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    #@11
    goto :goto_0

    #@12
    .line 610
    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    #@14
    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    #@0
    .prologue
    const/16 v5, -0x2bc

    #@2
    const/16 v4, -0x320

    #@4
    const/16 v3, -0x384

    #@6
    const/16 v1, -0x3e8

    #@8
    const/4 v2, 0x0

    #@9
    .line 334
    const/16 v0, 0x384

    #@b
    if-lt p0, v0, :cond_0

    #@d
    .line 335
    const-string/jumbo v0, "cch"

    #@10
    const-string/jumbo v1, "  "

    #@13
    const/16 v2, 0x384

    #@15
    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 336
    :cond_0
    const/16 v0, 0x320

    #@1c
    if-lt p0, v0, :cond_1

    #@1e
    .line 337
    const-string/jumbo v0, "svcb "

    #@21
    const/16 v1, 0x320

    #@23
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 338
    :cond_1
    const/16 v0, 0x2bc

    #@2a
    if-lt p0, v0, :cond_2

    #@2c
    .line 339
    const-string/jumbo v0, "prev "

    #@2f
    const/16 v1, 0x2bc

    #@31
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 340
    :cond_2
    const/16 v0, 0x258

    #@38
    if-lt p0, v0, :cond_3

    #@3a
    .line 341
    const-string/jumbo v0, "home "

    #@3d
    const/16 v1, 0x258

    #@3f
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0

    #@44
    .line 342
    :cond_3
    const/16 v0, 0x1f4

    #@46
    if-lt p0, v0, :cond_4

    #@48
    .line 343
    const-string/jumbo v0, "svc  "

    #@4b
    const/16 v1, 0x1f4

    #@4d
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0

    #@52
    .line 344
    :cond_4
    const/16 v0, 0x190

    #@54
    if-lt p0, v0, :cond_5

    #@56
    .line 345
    const-string/jumbo v0, "hvy  "

    #@59
    const/16 v1, 0x190

    #@5b
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    return-object v0

    #@60
    .line 346
    :cond_5
    const/16 v0, 0x12c

    #@62
    if-lt p0, v0, :cond_6

    #@64
    .line 347
    const-string/jumbo v0, "bkup "

    #@67
    const/16 v1, 0x12c

    #@69
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    return-object v0

    #@6e
    .line 348
    :cond_6
    const/16 v0, 0xc8

    #@70
    if-lt p0, v0, :cond_7

    #@72
    .line 349
    const-string/jumbo v0, "prcp "

    #@75
    const/16 v1, 0xc8

    #@77
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 350
    :cond_7
    const/16 v0, 0x64

    #@7e
    if-lt p0, v0, :cond_8

    #@80
    .line 351
    const-string/jumbo v0, "vis  "

    #@83
    const/16 v1, 0x64

    #@85
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    return-object v0

    #@8a
    .line 352
    :cond_8
    if-ltz p0, :cond_9

    #@8c
    .line 353
    const-string/jumbo v0, "fore "

    #@8f
    const/4 v1, 0x0

    #@90
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    return-object v0

    #@95
    .line 354
    :cond_9
    if-lt p0, v5, :cond_a

    #@97
    .line 355
    const-string/jumbo v0, "psvc "

    #@9a
    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    return-object v0

    #@9f
    .line 356
    :cond_a
    if-lt p0, v4, :cond_b

    #@a1
    .line 357
    const-string/jumbo v0, "pers "

    #@a4
    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    return-object v0

    #@a9
    .line 358
    :cond_b
    if-lt p0, v3, :cond_c

    #@ab
    .line 359
    const-string/jumbo v0, "sys  "

    #@ae
    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@b1
    move-result-object v0

    #@b2
    return-object v0

    #@b3
    .line 360
    :cond_c
    if-lt p0, v1, :cond_d

    #@b5
    .line 361
    const-string/jumbo v0, "ntv  "

    #@b8
    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    return-object v0

    #@bd
    .line 363
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    return-object v0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    #@0
    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    #@3
    .line 425
    const-string/jumbo v0, "??"

    #@6
    .line 428
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    #@7
    .line 371
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "N "

    #@a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@b
    .line 374
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "P "

    #@e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@f
    .line 377
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "PU"

    #@12
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@13
    .line 380
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "T "

    #@16
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@17
    .line 383
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "SB"

    #@1a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@1b
    .line 386
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SF"

    #@1e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@1f
    .line 389
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "TS"

    #@22
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@23
    .line 392
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "IF"

    #@26
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 395
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "IB"

    #@2a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 398
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "BU"

    #@2e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 401
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HW"

    #@32
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@33
    .line 404
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "S "

    #@36
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@37
    .line 407
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "R "

    #@3a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@3b
    .line 410
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "HO"

    #@3e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@3f
    .line 413
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "LA"

    #@42
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@43
    .line 416
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "CA"

    #@46
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@47
    .line 419
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "Ca"

    #@4a
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 422
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "CE"

    #@4e
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    #@4f
    .line 369
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
    .line 599
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
    .line 670
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    #@6
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@8
    .line 671
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@a
    .line 672
    new-instance v2, Landroid/net/LocalSocketAddress;

    #@c
    const-string/jumbo v3, "lmkd"

    #@f
    .line 673
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    #@11
    .line 672
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    #@14
    .line 671
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    #@17
    .line 674
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
    .line 681
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 675
    :catch_0
    move-exception v0

    #@22
    .line 676
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    #@24
    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    #@27
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 677
    const/4 v1, 0x0

    #@2b
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@2d
    .line 678
    const/4 v1, 0x0

    #@2e
    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    #@0
    .prologue
    .line 595
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
    .line 662
    const/16 v1, 0x8

    #@2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    .line 663
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@a
    .line 664
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@d
    .line 665
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    #@10
    .line 661
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    #@0
    .prologue
    .line 641
    const/16 v1, 0x3e9

    #@2
    if-ne p2, v1, :cond_0

    #@4
    .line 642
    return-void

    #@5
    .line 644
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v4

    #@9
    .line 645
    .local v4, "start":J
    const/16 v1, 0x10

    #@b
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v0

    #@f
    .line 646
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@13
    .line 647
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@16
    .line 648
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@19
    .line 649
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1c
    .line 650
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    #@1f
    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@22
    move-result-wide v2

    #@23
    .line 652
    .local v2, "now":J
    sub-long v6, v2, v4

    #@25
    const-wide/16 v8, 0xfa

    #@27
    cmp-long v1, v6, v8

    #@29
    if-lez v1, :cond_1

    #@2b
    .line 653
    const-string/jumbo v1, "ActivityManager"

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "SLOW OOM ADJ: "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    sub-long v8, v2, v4

    #@3c
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    const-string/jumbo v7, "ms for pid "

    #@43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    .line 654
    const-string/jumbo v7, " = "

    #@4e
    .line 653
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 640
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
    .line 231
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
    .line 236
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
    .line 243
    .local v15, "scaleDisp":F
    cmpl-float v17, v16, v15

    #@2b
    if-lez v17, :cond_2

    #@2d
    move/from16 v14, v16

    #@2f
    .line 244
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
    .line 246
    :cond_0
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@39
    move-result-object v17

    #@3a
    .line 247
    const v18, 0x10e0009

    #@3d
    .line 246
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    #@40
    move-result v10

    #@41
    .line 248
    .local v10, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@44
    move-result-object v17

    #@45
    .line 249
    const v18, 0x10e0008

    #@48
    .line 248
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    #@4b
    move-result v9

    #@4c
    .line 254
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
    .line 256
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
    .line 257
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    #@6a
    move-object/from16 v17, v0

    #@6c
    aget v8, v17, v6

    #@6e
    .line 258
    .local v8, "low":I
    move-object/from16 v0, p0

    #@70
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    #@72
    move-object/from16 v17, v0

    #@74
    aget v5, v17, v6

    #@76
    .line 259
    .local v5, "high":I
    if-eqz v7, :cond_1

    #@78
    .line 261
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
    .line 264
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
    .line 256
    add-int/lit8 v6, v6, 0x1

    #@9f
    goto :goto_3

    #@a0
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
    .line 243
    goto :goto_0

    #@a2
    .line 245
    .restart local v14    # "scale":F
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
    .line 254
    .restart local v9    # "minfree_abs":I
    .restart local v10    # "minfree_adj":I
    :cond_4
    const/4 v7, 0x0

    #@ac
    .restart local v7    # "is64bit":Z
    goto :goto_2

    #@ad
    .line 262
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
    .line 267
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_6
    if-ltz v9, :cond_7

    #@ba
    .line 268
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
    .line 269
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
    .line 270
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
    .line 269
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
    .line 268
    add-int/lit8 v6, v6, 0x1

    #@107
    goto :goto_5

    #@108
    .line 274
    :cond_7
    if-eqz v10, :cond_9

    #@10a
    .line 275
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
    .line 276
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
    .line 277
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
    .line 276
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
    .line 278
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
    .line 279
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
    .line 275
    :cond_8
    add-int/lit8 v6, v6, 0x1

    #@16f
    goto :goto_6

    #@170
    .line 287
    :cond_9
    const/16 v17, 0x38a

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
    .line 291
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
    .line 292
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
    .line 293
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
    .line 295
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_a

    #@1aa
    .line 296
    move v11, v12

    #@1ab
    .line 299
    :cond_a
    if-eqz v13, :cond_b

    #@1ad
    .line 300
    add-int/2addr v11, v13

    #@1ae
    .line 301
    if-gez v11, :cond_b

    #@1b0
    .line 302
    const/4 v11, 0x0

    #@1b1
    .line 306
    :cond_b
    if-eqz p3, :cond_d

    #@1b3
    .line 307
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
    .line 308
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    #@1ca
    move/from16 v0, v17

    #@1cc
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1cf
    .line 309
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
    .line 310
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
    .line 311
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
    .line 309
    add-int/lit8 v6, v6, 0x1

    #@207
    goto :goto_7

    #@208
    .line 314
    :cond_c
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    #@20b
    .line 315
    const-string/jumbo v17, "sys.sysctl.extra_free_kbytes"

    #@20e
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@211
    move-result-object v18

    #@212
    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@215
    .line 228
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
    .line 686
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    #@3
    if-ge v2, v4, :cond_1

    #@5
    .line 687
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@7
    if-nez v4, :cond_0

    #@9
    .line 688
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    #@c
    move-result v4

    #@d
    if-nez v4, :cond_0

    #@f
    .line 690
    const-wide/16 v4, 0x3e8

    #@11
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 686
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 691
    :catch_0
    move-exception v3

    #@18
    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    #@19
    .line 698
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
    .line 699
    return-void

    #@28
    .line 700
    :catch_1
    move-exception v0

    #@29
    .line 701
    .local v0, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    #@2b
    const-string/jumbo v5, "Error writing to lowmemorykiller socket"

    #@2e
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 704
    :try_start_2
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@33
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@36
    .line 708
    :goto_2
    sput-object v8, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    #@38
    goto :goto_1

    #@39
    .line 684
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    return-void

    #@3a
    .line 705
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@3b
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
    .line 218
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 219
    new-instance v0, Landroid/graphics/Point;

    #@8
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@b
    .line 220
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    #@e
    .line 221
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@10
    if-eqz v1, :cond_0

    #@12
    iget v1, v0, Landroid/graphics/Point;->y:I

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 222
    iget v1, v0, Landroid/graphics/Point;->x:I

    #@18
    iget v2, v0, Landroid/graphics/Point;->y:I

    #@1a
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    #@1d
    .line 223
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    #@1f
    .line 217
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    #@0
    .prologue
    .line 628
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    #@2
    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    #@0
    .prologue
    .line 615
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
    .line 616
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    #@8
    aget v1, v1, v0

    #@a
    if-gt p1, v1, :cond_0

    #@c
    .line 617
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
    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 620
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
