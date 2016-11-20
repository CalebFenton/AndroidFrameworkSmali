.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsClock$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method static synthetic -set0(Landroid/location/GpsClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GpsClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GpsClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GpsClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GpsClock;S)S
    .locals 0

    #@0
    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/location/GpsClock;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GpsClock;S)S
    .locals 0

    #@0
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/location/GpsClock;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    #@2
    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/GpsClock;D)D
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@2
    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GpsClock;B)B
    .locals 0

    #@0
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 397
    new-instance v0, Landroid/location/GpsClock$1;

    #@2
    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    #@5
    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    #@6
    .line 72
    return-void
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-byte v1, p0, Landroid/location/GpsClock;->mType:B

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 120
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 122
    :pswitch_1
    const-string/jumbo v0, "GpsTime"

    #@2a
    return-object v0

    #@2b
    .line 124
    :pswitch_2
    const-string/jumbo v0, "LocalHwClock"

    #@2e
    return-object v0

    #@2f
    .line 118
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 480
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@3
    .line 481
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    #@6
    .line 482
    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    #@9
    .line 483
    const-wide/high16 v0, -0x8000000000000000L

    #@b
    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    #@e
    .line 484
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    #@11
    .line 485
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    #@14
    .line 486
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    #@17
    .line 487
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    #@1a
    .line 488
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    #@1d
    .line 489
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    #@20
    .line 479
    return-void
.end method

.method private isFlagSet(S)Z
    .locals 1
    .param p1, "flag"    # S

    #@0
    .prologue
    .line 501
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

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

.method private resetFlag(S)V
    .locals 2
    .param p1, "flag"    # S

    #@0
    .prologue
    .line 497
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    int-to-short v0, v0

    #@5
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@7
    .line 496
    return-void
.end method

.method private setFlag(S)V
    .locals 1
    .param p1, "flag"    # S

    #@0
    .prologue
    .line 493
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@2
    or-int/2addr v0, p1

    #@3
    int-to-short v0, v0

    #@4
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@6
    .line 492
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 437
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBiasInNs()D
    .locals 2

    #@0
    .prologue
    .line 280
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@2
    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .locals 2

    #@0
    .prologue
    .line 312
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@2
    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .locals 2

    #@0
    .prologue
    .line 346
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@2
    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .locals 2

    #@0
    .prologue
    .line 378
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@2
    return-wide v0
.end method

.method public getFullBiasInNs()J
    .locals 2

    #@0
    .prologue
    .line 247
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@2
    return-wide v0
.end method

.method public getLeapSecond()S
    .locals 1

    #@0
    .prologue
    .line 145
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@2
    return v0
.end method

.method public getTimeInNs()J
    .locals 2

    #@0
    .prologue
    .line 182
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    #@2
    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .locals 2

    #@0
    .prologue
    .line 206
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@2
    return-wide v0
.end method

.method public getType()B
    .locals 1

    #@0
    .prologue
    .line 103
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    #@2
    return v0
.end method

.method public hasBiasInNs()Z
    .locals 1

    #@0
    .prologue
    .line 270
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasBiasUncertaintyInNs()Z
    .locals 1

    #@0
    .prologue
    .line 303
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasDriftInNsPerSec()Z
    .locals 1

    #@0
    .prologue
    .line 335
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .locals 1

    #@0
    .prologue
    .line 369
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasFullBiasInNs()Z
    .locals 1

    #@0
    .prologue
    .line 229
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    #@0
    .prologue
    .line 134
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasTimeUncertaintyInNs()Z
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    #@3
    .line 95
    return-void
.end method

.method public resetBiasInNs()V
    .locals 2

    #@0
    .prologue
    .line 295
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@5
    .line 296
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@9
    .line 294
    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .locals 2

    #@0
    .prologue
    .line 327
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@5
    .line 328
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@9
    .line 326
    return-void
.end method

.method public resetDriftInNsPerSec()V
    .locals 2

    #@0
    .prologue
    .line 361
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@5
    .line 362
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@9
    .line 360
    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .locals 2

    #@0
    .prologue
    .line 393
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@5
    .line 394
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@7
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@9
    .line 392
    return-void
.end method

.method public resetFullBiasInNs()V
    .locals 2

    #@0
    .prologue
    .line 262
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@4
    .line 263
    const-wide/high16 v0, -0x8000000000000000L

    #@6
    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@8
    .line 261
    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    #@0
    .prologue
    .line 160
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@4
    .line 161
    const/16 v0, -0x8000

    #@6
    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@8
    .line 159
    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .locals 2

    #@0
    .prologue
    .line 221
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    #@4
    .line 222
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@8
    .line 220
    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GpsClock;

    #@0
    .prologue
    .line 80
    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    #@2
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@4
    .line 81
    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    #@6
    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@8
    .line 82
    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    #@a
    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    #@c
    .line 83
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    #@e
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    #@10
    .line 84
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@12
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@14
    .line 85
    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@16
    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@18
    .line 86
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    #@1a
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@1c
    .line 87
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@1e
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@20
    .line 88
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@22
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@24
    .line 89
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@26
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@28
    .line 79
    return-void
.end method

.method public setBiasInNs(D)V
    .locals 1
    .param p1, "biasInNs"    # D

    #@0
    .prologue
    .line 287
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@5
    .line 288
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@7
    .line 286
    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .locals 1
    .param p1, "biasUncertaintyInNs"    # D

    #@0
    .prologue
    .line 319
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@5
    .line 320
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@7
    .line 318
    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .locals 1
    .param p1, "driftInNsPerSec"    # D

    #@0
    .prologue
    .line 353
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@5
    .line 354
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@7
    .line 352
    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .locals 1
    .param p1, "driftUncertaintyInNsPerSec"    # D

    #@0
    .prologue
    .line 385
    const/16 v0, 0x40

    #@2
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@5
    .line 386
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@7
    .line 384
    return-void
.end method

.method public setFullBiasInNs(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 254
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@4
    .line 255
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@6
    .line 253
    return-void
.end method

.method public setLeapSecond(S)V
    .locals 1
    .param p1, "leapSecond"    # S

    #@0
    .prologue
    .line 152
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@4
    .line 153
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@6
    .line 151
    return-void
.end method

.method public setTimeInNs(J)V
    .locals 1
    .param p1, "timeInNs"    # J

    #@0
    .prologue
    .line 189
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    #@2
    .line 188
    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .locals 1
    .param p1, "timeUncertaintyInNs"    # D

    #@0
    .prologue
    .line 213
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    #@4
    .line 214
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@6
    .line 212
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 110
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    #@2
    .line 109
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
    .line 442
    const-string/jumbo v1, "   %-15s = %s\n"

    #@8
    .line 443
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v2, "   %-15s = %-25s   %-26s = %s\n"

    #@b
    .line 444
    .local v2, "formatWithUncertainty":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    const-string/jumbo v3, "GpsClock:\n"

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 446
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "   %-15s = %s\n"

    #@16
    new-array v5, v11, [Ljava/lang/Object;

    #@18
    const-string/jumbo v6, "Type"

    #@1b
    aput-object v6, v5, v7

    #@1d
    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    aput-object v6, v5, v10

    #@23
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 448
    const-string/jumbo v5, "   %-15s = %s\n"

    #@2d
    new-array v6, v11, [Ljava/lang/Object;

    #@2f
    const-string/jumbo v3, "LeapSecond"

    #@32
    aput-object v3, v6, v7

    #@34
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_1

    #@3a
    iget-short v3, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@3c
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@3f
    move-result-object v3

    #@40
    :goto_0
    aput-object v3, v6, v10

    #@42
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 451
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    #@4c
    .line 450
    const/4 v3, 0x4

    #@4d
    new-array v6, v3, [Ljava/lang/Object;

    #@4f
    .line 452
    const-string/jumbo v3, "TimeInNs"

    #@52
    aput-object v3, v6, v7

    #@54
    .line 453
    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeInNs:J

    #@56
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@59
    move-result-object v3

    #@5a
    aput-object v3, v6, v10

    #@5c
    .line 454
    const-string/jumbo v3, "TimeUncertaintyInNs"

    #@5f
    aput-object v3, v6, v11

    #@61
    .line 455
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_2

    #@67
    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@69
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@6c
    move-result-object v3

    #@6d
    :goto_1
    aput-object v3, v6, v12

    #@6f
    .line 450
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 458
    const-string/jumbo v5, "   %-15s = %s\n"

    #@79
    .line 457
    new-array v6, v11, [Ljava/lang/Object;

    #@7b
    .line 459
    const-string/jumbo v3, "FullBiasInNs"

    #@7e
    aput-object v3, v6, v7

    #@80
    .line 460
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    #@83
    move-result v3

    #@84
    if-eqz v3, :cond_3

    #@86
    iget-wide v8, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8b
    move-result-object v3

    #@8c
    :goto_2
    aput-object v3, v6, v10

    #@8e
    .line 457
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 463
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    #@98
    .line 462
    const/4 v3, 0x4

    #@99
    new-array v6, v3, [Ljava/lang/Object;

    #@9b
    .line 464
    const-string/jumbo v3, "BiasInNs"

    #@9e
    aput-object v3, v6, v7

    #@a0
    .line 465
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    #@a3
    move-result v3

    #@a4
    if-eqz v3, :cond_4

    #@a6
    iget-wide v8, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@a8
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@ab
    move-result-object v3

    #@ac
    :goto_3
    aput-object v3, v6, v10

    #@ae
    .line 466
    const-string/jumbo v3, "BiasUncertaintyInNs"

    #@b1
    aput-object v3, v6, v11

    #@b3
    .line 467
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    #@b6
    move-result v3

    #@b7
    if-eqz v3, :cond_5

    #@b9
    iget-wide v8, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@bb
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@be
    move-result-object v3

    #@bf
    :goto_4
    aput-object v3, v6, v12

    #@c1
    .line 462
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    .line 470
    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    #@cb
    .line 469
    const/4 v3, 0x4

    #@cc
    new-array v6, v3, [Ljava/lang/Object;

    #@ce
    .line 471
    const-string/jumbo v3, "DriftInNsPerSec"

    #@d1
    aput-object v3, v6, v7

    #@d3
    .line 472
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    #@d6
    move-result v3

    #@d7
    if-eqz v3, :cond_6

    #@d9
    iget-wide v8, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@db
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@de
    move-result-object v3

    #@df
    :goto_5
    aput-object v3, v6, v10

    #@e1
    .line 473
    const-string/jumbo v3, "DriftUncertaintyInNsPerSec"

    #@e4
    aput-object v3, v6, v11

    #@e6
    .line 474
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_0

    #@ec
    iget-wide v8, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@ee
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@f1
    move-result-object v4

    #@f2
    :cond_0
    aput-object v4, v6, v12

    #@f4
    .line 469
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v3

    #@ff
    return-object v3

    #@100
    :cond_1
    move-object v3, v4

    #@101
    .line 448
    goto/16 :goto_0

    #@103
    :cond_2
    move-object v3, v4

    #@104
    .line 455
    goto/16 :goto_1

    #@106
    :cond_3
    move-object v3, v4

    #@107
    .line 460
    goto :goto_2

    #@108
    :cond_4
    move-object v3, v4

    #@109
    .line 465
    goto :goto_3

    #@10a
    :cond_5
    move-object v3, v4

    #@10b
    .line 467
    goto :goto_4

    #@10c
    :cond_6
    move-object v3, v4

    #@10d
    .line 472
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 423
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 424
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 425
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@f
    .line 426
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 427
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@19
    .line 428
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    #@1b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1e
    .line 429
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@23
    .line 430
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@28
    .line 431
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@2d
    .line 432
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    #@2f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@32
    .line 422
    return-void
.end method
