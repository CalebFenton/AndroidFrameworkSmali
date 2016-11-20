.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssClock$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssClock;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/location/GnssClock;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@2
    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GnssClock;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/location/GnssClock;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/location/GnssClock;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    #@2
    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GnssClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@2
    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 431
    new-instance v0, Landroid/location/GnssClock$1;

    #@2
    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    #@5
    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    #@6
    .line 57
    return-void
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    .line 518
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@3
    .line 519
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    #@6
    .line 520
    const-wide/high16 v0, -0x8000000000000000L

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    #@b
    .line 521
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    #@e
    .line 522
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    #@11
    .line 523
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    #@14
    .line 524
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    #@17
    .line 525
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    #@1a
    .line 526
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    #@1d
    .line 527
    const/high16 v0, -0x80000000

    #@1f
    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    #@22
    .line 517
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 539
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 535
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@6
    .line 534
    return-void
.end method

.method private setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    #@0
    .prologue
    .line 531
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@5
    .line 530
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 472
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBiasNanos()D
    .locals 2

    #@0
    .prologue
    .line 261
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@2
    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .locals 2

    #@0
    .prologue
    .line 301
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@2
    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .locals 2

    #@0
    .prologue
    .line 342
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@2
    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .locals 2

    #@0
    .prologue
    .line 380
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@2
    return-wide v0
.end method

.method public getFullBiasNanos()J
    .locals 2

    #@0
    .prologue
    .line 219
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@2
    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .locals 1

    #@0
    .prologue
    .line 419
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@2
    return v0
.end method

.method public getLeapSecond()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@2
    return v0
.end method

.method public getTimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 140
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    #@2
    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .locals 2

    #@0
    .prologue
    .line 171
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@2
    return-wide v0
.end method

.method public hasBiasNanos()Z
    .locals 1

    #@0
    .prologue
    .line 246
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .locals 1

    #@0
    .prologue
    .line 289
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .locals 1

    #@0
    .prologue
    .line 329
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    #@0
    .prologue
    .line 370
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasFullBiasNanos()Z
    .locals 1

    #@0
    .prologue
    .line 198
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .locals 1

    #@0
    .prologue
    .line 157
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    #@3
    .line 84
    return-void
.end method

.method public resetBiasNanos()V
    .locals 2

    #@0
    .prologue
    .line 280
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@5
    .line 281
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@9
    .line 279
    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .locals 2

    #@0
    .prologue
    .line 320
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@5
    .line 321
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@9
    .line 319
    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .locals 2

    #@0
    .prologue
    .line 361
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@5
    .line 362
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@9
    .line 360
    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .locals 2

    #@0
    .prologue
    .line 399
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@5
    .line 400
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@9
    .line 398
    return-void
.end method

.method public resetFullBiasNanos()V
    .locals 2

    #@0
    .prologue
    .line 238
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@4
    .line 239
    const-wide/high16 v0, -0x8000000000000000L

    #@6
    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@8
    .line 237
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@4
    .line 125
    const/high16 v0, -0x80000000

    #@6
    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@8
    .line 123
    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .locals 2

    #@0
    .prologue
    .line 190
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    #@4
    .line 191
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@8
    .line 189
    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GnssClock;

    #@0
    .prologue
    .line 67
    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    #@2
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@4
    .line 68
    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    #@6
    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@8
    .line 69
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    #@a
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    #@c
    .line 70
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@e
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@10
    .line 71
    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@12
    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@14
    .line 72
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    #@16
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@18
    .line 73
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@1a
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@1c
    .line 74
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@1e
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@20
    .line 75
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@22
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@24
    .line 76
    iget v0, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@26
    iput v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@28
    .line 66
    return-void
.end method

.method public setBiasNanos(D)V
    .locals 1
    .param p1, "biasNanos"    # D

    #@0
    .prologue
    .line 270
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@5
    .line 271
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@7
    .line 269
    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .locals 1
    .param p1, "biasUncertaintyNanos"    # D

    #@0
    .prologue
    .line 310
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@5
    .line 311
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@7
    .line 309
    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .locals 1
    .param p1, "driftNanosPerSecond"    # D

    #@0
    .prologue
    .line 351
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@5
    .line 352
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@7
    .line 350
    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .locals 1
    .param p1, "driftUncertaintyNanosPerSecond"    # D

    #@0
    .prologue
    .line 389
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@5
    .line 390
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@7
    .line 388
    return-void
.end method

.method public setFullBiasNanos(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 228
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@4
    .line 229
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@6
    .line 227
    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 428
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@2
    .line 427
    return-void
.end method

.method public setLeapSecond(I)V
    .locals 1
    .param p1, "leapSecond"    # I

    #@0
    .prologue
    .line 114
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@4
    .line 115
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@6
    .line 113
    return-void
.end method

.method public setTimeNanos(J)V
    .locals 1
    .param p1, "timeNanos"    # J

    #@0
    .prologue
    .line 149
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    #@2
    .line 148
    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .locals 1
    .param p1, "timeUncertaintyNanos"    # D

    #@0
    .prologue
    .line 180
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    #@4
    .line 181
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@6
    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v11, 0x2

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 477
    const-string/jumbo v1, "   %-15s = %s\n"

    #@8
    .line 478
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-15s = %-25s   %-26s = %s\n"

    #@b
    .line 479
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v3, "GnssClock:\n"

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 481
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "   %-15s = %s\n"

    #@16
    new-array v6, v11, [Ljava/lang/Object;

    #@18
    const-string/jumbo v3, "LeapSecond"

    #@1b
    aput-object v3, v6, v7

    #@1d
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    iget v3, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    :goto_0
    aput-object v3, v6, v10

    #@2b
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 484
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    #@35
    .line 483
    const/4 v3, 0x4

    #@36
    new-array v6, v3, [Ljava/lang/Object;

    #@38
    .line 485
    const-string/jumbo v3, "TimeNanos"

    #@3b
    aput-object v3, v6, v7

    #@3d
    .line 486
    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeNanos:J

    #@3f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@42
    move-result-object v3

    #@43
    aput-object v3, v6, v10

    #@45
    .line 487
    const-string/jumbo v3, "TimeUncertaintyNanos"

    #@48
    aput-object v3, v6, v11

    #@4a
    .line 488
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_2

    #@50
    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@52
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@55
    move-result-object v3

    #@56
    :goto_1
    aput-object v3, v6, v12

    #@58
    .line 483
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 491
    const-string/jumbo v5, "   %-15s = %s\n"

    #@62
    .line 490
    new-array v6, v11, [Ljava/lang/Object;

    #@64
    .line 492
    const-string/jumbo v3, "FullBiasNanos"

    #@67
    aput-object v3, v6, v7

    #@69
    .line 493
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    #@6c
    move-result v3

    #@6d
    if-eqz v3, :cond_3

    #@6f
    iget-wide v8, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@74
    move-result-object v3

    #@75
    :goto_2
    aput-object v3, v6, v10

    #@77
    .line 490
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    .line 496
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    #@81
    .line 495
    const/4 v3, 0x4

    #@82
    new-array v6, v3, [Ljava/lang/Object;

    #@84
    .line 497
    const-string/jumbo v3, "BiasNanos"

    #@87
    aput-object v3, v6, v7

    #@89
    .line 498
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_4

    #@8f
    iget-wide v8, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@91
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@94
    move-result-object v3

    #@95
    :goto_3
    aput-object v3, v6, v10

    #@97
    .line 499
    const-string/jumbo v3, "BiasUncertaintyNanos"

    #@9a
    aput-object v3, v6, v11

    #@9c
    .line 500
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    #@9f
    move-result v3

    #@a0
    if-eqz v3, :cond_5

    #@a2
    iget-wide v8, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@a4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@a7
    move-result-object v3

    #@a8
    :goto_4
    aput-object v3, v6, v12

    #@aa
    .line 495
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 503
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    #@b4
    .line 502
    const/4 v3, 0x4

    #@b5
    new-array v6, v3, [Ljava/lang/Object;

    #@b7
    .line 504
    const-string/jumbo v3, "DriftNanosPerSecond"

    #@ba
    aput-object v3, v6, v7

    #@bc
    .line 505
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    #@bf
    move-result v3

    #@c0
    if-eqz v3, :cond_6

    #@c2
    iget-wide v8, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@c4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@c7
    move-result-object v3

    #@c8
    :goto_5
    aput-object v3, v6, v10

    #@ca
    .line 506
    const-string/jumbo v3, "DriftUncertaintyNanosPerSecond"

    #@cd
    aput-object v3, v6, v11

    #@cf
    .line 507
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    #@d2
    move-result v3

    #@d3
    if-eqz v3, :cond_0

    #@d5
    iget-wide v8, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@d7
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@da
    move-result-object v4

    #@db
    :cond_0
    aput-object v4, v6, v12

    #@dd
    .line 502
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    .line 510
    const-string/jumbo v3, "   %-15s = %s\n"

    #@e7
    .line 509
    new-array v4, v11, [Ljava/lang/Object;

    #@e9
    .line 511
    const-string/jumbo v5, "HardwareClockDiscontinuityCount"

    #@ec
    aput-object v5, v4, v7

    #@ee
    .line 512
    iget v5, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@f0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f3
    move-result-object v5

    #@f4
    aput-object v5, v4, v10

    #@f6
    .line 509
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f9
    move-result-object v3

    #@fa
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    return-object v3

    #@102
    :cond_1
    move-object v3, v4

    #@103
    .line 481
    goto/16 :goto_0

    #@105
    :cond_2
    move-object v3, v4

    #@106
    .line 488
    goto/16 :goto_1

    #@108
    :cond_3
    move-object v3, v4

    #@109
    .line 493
    goto/16 :goto_2

    #@10b
    :cond_4
    move-object v3, v4

    #@10c
    .line 498
    goto :goto_3

    #@10d
    :cond_5
    move-object v3, v4

    #@10e
    .line 500
    goto :goto_4

    #@10f
    :cond_6
    move-object v3, v4

    #@110
    .line 505
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 458
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 459
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 460
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 461
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@14
    .line 462
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 463
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@1e
    .line 464
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@23
    .line 465
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@28
    .line 466
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@2d
    .line 467
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 457
    return-void
.end method
