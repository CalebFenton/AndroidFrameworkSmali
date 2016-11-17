.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$1;,
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$TriggerContentUri;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final FLAG_WILL_BE_FOREGROUND:I = 0x1

.field public static final MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field private static final MIN_FLEX_MILLIS:J = 0x493e0L

.field private static final MIN_PERIOD_MILLIS:J = 0xdbba0L

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field public static final PRIORITY_ADJ_ALWAYS_RUNNING:I = -0x50

.field public static final PRIORITY_ADJ_OFTEN_RUNNING:I = -0x28

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_FOREGROUND_APP:I = 0x1e

.field public static final PRIORITY_SYNC_EXPEDITED:I = 0xa

.field public static final PRIORITY_SYNC_INITIALIZATION:I = 0x14

.field public static final PRIORITY_TOP_APP:I = 0x28

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final backoffPolicy:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final flags:I

.field private final flexMillis:J

.field private final hasEarlyConstraint:Z

.field private final hasLateConstraint:Z

.field private final initialBackoffMillis:J

.field private final intervalMillis:J

.field private final isPeriodic:Z

.field private final isPersisted:Z

.field private final jobId:I

.field private final maxExecutionDelayMillis:J

.field private final minLatencyMillis:J

.field private final networkType:I

.field private final priority:I

.field private final requireCharging:Z

.field private final requireDeviceIdle:Z

.field private final service:Landroid/content/ComponentName;

.field private final triggerContentMaxDelay:J

.field private final triggerContentUpdateDelay:J

.field private final triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/job/JobInfo;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-string/jumbo v0, "JobInfo"

    #@3
    sput-object v0, Landroid/app/job/JobInfo;->TAG:Ljava/lang/String;

    #@5
    .line 441
    new-instance v0, Landroid/app/job/JobInfo$1;

    #@7
    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    #@a
    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 386
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get10(Landroid/app/job/JobInfo$Builder;)I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/app/job/JobInfo;->jobId:I

    #@a
    .line 387
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get1(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@10
    .line 388
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get11(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@16
    .line 389
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get16(Landroid/app/job/JobInfo$Builder;)Z

    #@19
    move-result v1

    #@1a
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@1c
    .line 390
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get17(Landroid/app/job/JobInfo$Builder;)Z

    #@1f
    move-result v1

    #@20
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@22
    .line 391
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    #@25
    move-result-object v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 392
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v1

    #@34
    new-array v1, v1, [Landroid/app/job/JobInfo$TriggerContentUri;

    #@36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    #@3c
    .line 391
    :cond_0
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    #@3e
    .line 394
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get19(Landroid/app/job/JobInfo$Builder;)J

    #@41
    move-result-wide v0

    #@42
    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    #@44
    .line 395
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get18(Landroid/app/job/JobInfo$Builder;)J

    #@47
    move-result-wide v0

    #@48
    iput-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    #@4a
    .line 396
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get14(Landroid/app/job/JobInfo$Builder;)I

    #@4d
    move-result v0

    #@4e
    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@50
    .line 397
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get13(Landroid/app/job/JobInfo$Builder;)J

    #@53
    move-result-wide v0

    #@54
    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@56
    .line 398
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get12(Landroid/app/job/JobInfo$Builder;)J

    #@59
    move-result-wide v0

    #@5a
    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@5c
    .line 399
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get8(Landroid/app/job/JobInfo$Builder;)Z

    #@5f
    move-result v0

    #@60
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@62
    .line 400
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get9(Landroid/app/job/JobInfo$Builder;)Z

    #@65
    move-result v0

    #@66
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@68
    .line 401
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get7(Landroid/app/job/JobInfo$Builder;)J

    #@6b
    move-result-wide v0

    #@6c
    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@6e
    .line 402
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get3(Landroid/app/job/JobInfo$Builder;)J

    #@71
    move-result-wide v0

    #@72
    iput-wide v0, p0, Landroid/app/job/JobInfo;->flexMillis:J

    #@74
    .line 403
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get6(Landroid/app/job/JobInfo$Builder;)J

    #@77
    move-result-wide v0

    #@78
    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@7a
    .line 404
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get0(Landroid/app/job/JobInfo$Builder;)I

    #@7d
    move-result v0

    #@7e
    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@80
    .line 405
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get4(Landroid/app/job/JobInfo$Builder;)Z

    #@83
    move-result v0

    #@84
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@86
    .line 406
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get5(Landroid/app/job/JobInfo$Builder;)Z

    #@89
    move-result v0

    #@8a
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@8c
    .line 407
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get15(Landroid/app/job/JobInfo$Builder;)I

    #@8f
    move-result v0

    #@90
    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    #@92
    .line 408
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get2(Landroid/app/job/JobInfo$Builder;)I

    #@95
    move-result v0

    #@96
    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    #@98
    .line 385
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@b
    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@11
    .line 364
    const/4 v0, 0x0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/content/ComponentName;

    #@18
    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@1a
    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_0

    #@20
    move v0, v1

    #@21
    :goto_0
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@23
    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-ne v0, v1, :cond_1

    #@29
    move v0, v1

    #@2a
    :goto_1
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@2c
    .line 367
    sget-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, [Landroid/app/job/JobInfo$TriggerContentUri;

    #@34
    iput-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    #@36
    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@39
    move-result-wide v4

    #@3a
    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    #@3c
    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3f
    move-result-wide v4

    #@40
    iput-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    #@42
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@48
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@4b
    move-result-wide v4

    #@4c
    iput-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@4e
    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@51
    move-result-wide v4

    #@52
    iput-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@54
    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    if-ne v0, v1, :cond_2

    #@5a
    move v0, v1

    #@5b
    :goto_2
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@5d
    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v0

    #@61
    if-ne v0, v1, :cond_3

    #@63
    move v0, v1

    #@64
    :goto_3
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@66
    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@69
    move-result-wide v4

    #@6a
    iput-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@6c
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6f
    move-result-wide v4

    #@70
    iput-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    #@72
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@75
    move-result-wide v4

    #@76
    iput-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@78
    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v0

    #@7c
    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@7e
    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v0

    #@82
    if-ne v0, v1, :cond_4

    #@84
    move v0, v1

    #@85
    :goto_4
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@87
    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8a
    move-result v0

    #@8b
    if-ne v0, v1, :cond_5

    #@8d
    :goto_5
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@8f
    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v0

    #@93
    iput v0, p0, Landroid/app/job/JobInfo;->priority:I

    #@95
    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@98
    move-result v0

    #@99
    iput v0, p0, Landroid/app/job/JobInfo;->flags:I

    #@9b
    .line 361
    return-void

    #@9c
    :cond_0
    move v0, v2

    #@9d
    .line 365
    goto :goto_0

    #@9e
    :cond_1
    move v0, v2

    #@9f
    .line 366
    goto :goto_1

    #@a0
    :cond_2
    move v0, v2

    #@a1
    .line 373
    goto :goto_2

    #@a2
    :cond_3
    move v0, v2

    #@a3
    .line 374
    goto :goto_3

    #@a4
    :cond_4
    move v0, v2

    #@a5
    .line 379
    goto :goto_4

    #@a6
    :cond_5
    move v1, v2

    #@a7
    .line 380
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static final getMinFlexMillis()J
    .locals 2

    #@0
    .prologue
    .line 104
    const-wide/32 v0, 0x493e0

    #@3
    return-wide v0
.end method

.method public static final getMinPeriodMillis()J
    .locals 2

    #@0
    .prologue
    .line 93
    const-wide/32 v0, 0xdbba0

    #@3
    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBackoffPolicy()I
    .locals 1

    #@0
    .prologue
    .line 340
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 224
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    #@2
    return v0
.end method

.method public getFlexMillis()J
    .locals 10

    #@0
    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 320
    .local v2, "interval":J
    const-wide/16 v6, 0x5

    #@6
    mul-long/2addr v6, v2

    #@7
    const-wide/16 v8, 0x64

    #@9
    div-long v4, v6, v8

    #@b
    .line 321
    .local v4, "percentClamp":J
    iget-wide v6, p0, Landroid/app/job/JobInfo;->flexMillis:J

    #@d
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    #@10
    move-result-wide v8

    #@11
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    #@14
    move-result-wide v8

    #@15
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    #@18
    move-result-wide v0

    #@19
    .line 322
    .local v0, "clampedFlex":J
    cmp-long v6, v0, v2

    #@1b
    if-gtz v6, :cond_0

    #@1d
    .end local v0    # "clampedFlex":J
    :goto_0
    return-wide v0

    #@1e
    .restart local v0    # "clampedFlex":J
    :cond_0
    move-wide v0, v2

    #@1f
    goto :goto_0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 200
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@2
    return v0
.end method

.method public getInitialBackoffMillis()J
    .locals 2

    #@0
    .prologue
    .line 331
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@2
    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 4

    #@0
    .prologue
    .line 311
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@2
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    #@5
    move-result-wide v2

    #@6
    cmp-long v0, v0, v2

    #@8
    if-ltz v0, :cond_0

    #@a
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@c
    :goto_0
    return-wide v0

    #@d
    :cond_0
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    #@10
    move-result-wide v0

    #@11
    goto :goto_0
.end method

.method public getMaxExecutionDelayMillis()J
    .locals 2

    #@0
    .prologue
    .line 289
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@2
    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .locals 2

    #@0
    .prologue
    .line 281
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@2
    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 273
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@2
    return v0
.end method

.method public getPriority()I
    .locals 1

    #@0
    .prologue
    .line 219
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    #@2
    return v0
.end method

.method public getService()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 2

    #@0
    .prologue
    .line 263
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    #@2
    return-wide v0
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 2

    #@0
    .prologue
    .line 255
    iget-wide v0, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    #@2
    return-wide v0
.end method

.method public getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    #@2
    return-object v0
.end method

.method public hasEarlyConstraint()Z
    .locals 1

    #@0
    .prologue
    .line 349
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@2
    return v0
.end method

.method public hasLateConstraint()Z
    .locals 1

    #@0
    .prologue
    .line 358
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@2
    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    #@0
    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@2
    return v0
.end method

.method public isPersisted()Z
    .locals 1

    #@0
    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@2
    return v0
.end method

.method public isRequireCharging()Z
    .locals 1

    #@0
    .prologue
    .line 231
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@2
    return v0
.end method

.method public isRequireDeviceIdle()Z
    .locals 1

    #@0
    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "(job:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@1b
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, ")"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 418
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 419
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@c
    .line 420
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@11
    .line 421
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 422
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    move v0, v1

    #@1e
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 423
    iget-object v0, p0, Landroid/app/job/JobInfo;->triggerContentUris:[Landroid/app/job/JobInfo$TriggerContentUri;

    #@23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@26
    .line 424
    iget-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentUpdateDelay:J

    #@28
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2b
    .line 425
    iget-wide v4, p0, Landroid/app/job/JobInfo;->triggerContentMaxDelay:J

    #@2d
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@30
    .line 426
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 427
    iget-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@37
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@3a
    .line 428
    iget-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@3c
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@3f
    .line 429
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@41
    if-eqz v0, :cond_2

    #@43
    move v0, v1

    #@44
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@47
    .line 430
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@49
    if-eqz v0, :cond_3

    #@4b
    move v0, v1

    #@4c
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 431
    iget-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@51
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@54
    .line 432
    iget-wide v4, p0, Landroid/app/job/JobInfo;->flexMillis:J

    #@56
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@59
    .line 433
    iget-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@5b
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@5e
    .line 434
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 435
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@65
    if-eqz v0, :cond_4

    #@67
    move v0, v1

    #@68
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 436
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@6d
    if-eqz v0, :cond_5

    #@6f
    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@72
    .line 437
    iget v0, p0, Landroid/app/job/JobInfo;->priority:I

    #@74
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    .line 438
    iget v0, p0, Landroid/app/job/JobInfo;->flags:I

    #@79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7c
    .line 417
    return-void

    #@7d
    :cond_0
    move v0, v2

    #@7e
    .line 421
    goto :goto_0

    #@7f
    :cond_1
    move v0, v2

    #@80
    .line 422
    goto :goto_1

    #@81
    :cond_2
    move v0, v2

    #@82
    .line 429
    goto :goto_2

    #@83
    :cond_3
    move v0, v2

    #@84
    .line 430
    goto :goto_3

    #@85
    :cond_4
    move v0, v2

    #@86
    .line 435
    goto :goto_4

    #@87
    :cond_5
    move v1, v2

    #@88
    .line 436
    goto :goto_5
.end method
