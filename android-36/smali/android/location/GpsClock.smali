.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o HAS_BIAS:S = 0x8s

.field private static final greylist-max-o HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final greylist-max-o HAS_DRIFT:S = 0x20s

.field private static final greylist-max-o HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final greylist-max-o HAS_FULL_BIAS:S = 0x4s

.field private static final greylist-max-o HAS_LEAP_SECOND:S = 0x1s

.field private static final greylist-max-o HAS_NO_FLAGS:S = 0x0s

.field private static final greylist-max-o HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final whitelist TYPE_GPS_TIME:B = 0x2t

.field public static final whitelist TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final whitelist TYPE_UNKNOWN:B


# instance fields
.field private greylist-max-o mBiasInNs:D

.field private greylist-max-o mBiasUncertaintyInNs:D

.field private greylist-max-o mDriftInNsPerSec:D

.field private greylist-max-o mDriftUncertaintyInNsPerSec:D

.field private greylist-max-o mFlags:S

.field private greylist-max-o mFullBiasInNs:J

.field private greylist-max-o mLeapSecond:S

.field private greylist-max-o mTimeInNs:J

.field private greylist-max-o mTimeUncertaintyInNs:D

.field private greylist-max-o mType:B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBiasInNs(Landroid/location/GpsClock;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBiasUncertaintyInNs(Landroid/location/GpsClock;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDriftInNsPerSec(Landroid/location/GpsClock;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDriftUncertaintyInNsPerSec(Landroid/location/GpsClock;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/location/GpsClock;S)V
    .registers 2

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullBiasInNs(Landroid/location/GpsClock;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeapSecond(Landroid/location/GpsClock;S)V
    .registers 2

    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeInNs(Landroid/location/GpsClock;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeUncertaintyInNs(Landroid/location/GpsClock;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/location/GpsClock;B)V
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 401
    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 78
    return-void
.end method

.method private greylist-max-o getTypeString()Ljava/lang/String;
    .registers 3

    .line 122
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    packed-switch v0, :pswitch_data_2a

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_21
    const-string v0, "GpsTime"

    return-object v0

    .line 128
    :pswitch_24
    const-string v0, "LocalHwClock"

    return-object v0

    .line 124
    :pswitch_27
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private greylist-max-o initialize()V
    .registers 3

    .line 485
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 486
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    .line 487
    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    .line 488
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    .line 489
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    .line 490
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    .line 491
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    .line 492
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    .line 493
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    .line 494
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    .line 495
    return-void
.end method

.method private greylist-max-o isFlagSet(S)Z
    .registers 3
    .param p1, "flag"    # S

    .line 506
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o resetFlag(S)V
    .registers 4
    .param p1, "flag"    # S

    .line 502
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    not-int v1, p1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 503
    return-void
.end method

.method private greylist-max-o setFlag(S)V
    .registers 3
    .param p1, "flag"    # S

    .line 498
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 499
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBiasInNs()D
    .registers 3

    .line 284
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public whitelist getBiasUncertaintyInNs()D
    .registers 3

    .line 316
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public whitelist getDriftInNsPerSec()D
    .registers 3

    .line 350
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public whitelist getDriftUncertaintyInNsPerSec()D
    .registers 3

    .line 382
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public whitelist getFullBiasInNs()J
    .registers 3

    .line 251
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public whitelist getLeapSecond()S
    .registers 2

    .line 149
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return v0
.end method

.method public whitelist getTimeInNs()J
    .registers 3

    .line 186
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public whitelist getTimeUncertaintyInNs()D
    .registers 3

    .line 210
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public whitelist getType()B
    .registers 2

    .line 107
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    return v0
.end method

.method public whitelist hasBiasInNs()Z
    .registers 2

    .line 274
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist hasBiasUncertaintyInNs()Z
    .registers 2

    .line 307
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist hasDriftInNsPerSec()Z
    .registers 2

    .line 339
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist hasDriftUncertaintyInNsPerSec()Z
    .registers 2

    .line 373
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFullBiasInNs()Z
    .registers 2

    .line 233
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist hasLeapSecond()Z
    .registers 2

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist hasTimeUncertaintyInNs()Z
    .registers 2

    .line 200
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public whitelist reset()V
    .registers 1

    .line 100
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    .line 101
    return-void
.end method

.method public whitelist resetBiasInNs()V
    .registers 3

    .line 299
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 300
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 301
    return-void
.end method

.method public whitelist resetBiasUncertaintyInNs()V
    .registers 3

    .line 331
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 332
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 333
    return-void
.end method

.method public whitelist resetDriftInNsPerSec()V
    .registers 3

    .line 365
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 366
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 367
    return-void
.end method

.method public whitelist resetDriftUncertaintyInNsPerSec()V
    .registers 3

    .line 397
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 398
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 399
    return-void
.end method

.method public whitelist resetFullBiasInNs()V
    .registers 3

    .line 266
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 267
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 268
    return-void
.end method

.method public whitelist resetLeapSecond()V
    .registers 2

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 165
    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 166
    return-void
.end method

.method public whitelist resetTimeUncertaintyInNs()V
    .registers 3

    .line 225
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    .line 226
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 227
    return-void
.end method

.method public whitelist set(Landroid/location/GpsClock;)V
    .registers 4
    .param p1, "clock"    # Landroid/location/GpsClock;

    .line 84
    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 85
    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 86
    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    .line 87
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 88
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 89
    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 90
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 91
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 92
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 93
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 94
    return-void
.end method

.method public whitelist setBiasInNs(D)V
    .registers 4
    .param p1, "biasInNs"    # D

    .line 291
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 292
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 293
    return-void
.end method

.method public whitelist setBiasUncertaintyInNs(D)V
    .registers 4
    .param p1, "biasUncertaintyInNs"    # D

    .line 323
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 324
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 325
    return-void
.end method

.method public whitelist setDriftInNsPerSec(D)V
    .registers 4
    .param p1, "driftInNsPerSec"    # D

    .line 357
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 358
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 359
    return-void
.end method

.method public whitelist setDriftUncertaintyInNsPerSec(D)V
    .registers 4
    .param p1, "driftUncertaintyInNsPerSec"    # D

    .line 389
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 390
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    .line 391
    return-void
.end method

.method public whitelist setFullBiasInNs(J)V
    .registers 4
    .param p1, "value"    # J

    .line 258
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 259
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 260
    return-void
.end method

.method public whitelist setLeapSecond(S)V
    .registers 3
    .param p1, "leapSecond"    # S

    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 157
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 158
    return-void
.end method

.method public whitelist setTimeInNs(J)V
    .registers 3
    .param p1, "timeInNs"    # J

    .line 193
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 194
    return-void
.end method

.method public whitelist setTimeUncertaintyInNs(D)V
    .registers 4
    .param p1, "timeUncertaintyInNs"    # D

    .line 217
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 218
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 219
    return-void
.end method

.method public whitelist setType(B)V
    .registers 2
    .param p1, "value"    # B

    .line 114
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    .line 115
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 447
    const-string v0, "   %-15s = %s\n"

    .line 448
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 449
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GpsClock:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Type"

    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "   %-15s = %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2c

    iget-short v3, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_2d

    :cond_2c
    move-object v3, v5

    :goto_2d
    const-string v6, "LeapSecond"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-wide v6, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 458
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 460
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    move-result v6

    if-eqz v6, :cond_4d

    iget-wide v6, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_4e

    :cond_4d
    move-object v6, v5

    :goto_4e
    const-string v7, "TimeInNs"

    const-string v8, "TimeUncertaintyInNs"

    filled-new-array {v7, v3, v8, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 455
    const-string v6, "   %-15s = %-25s   %-26s = %s\n"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    nop

    .line 465
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-wide v7, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_6e

    :cond_6d
    move-object v3, v5

    :goto_6e
    const-string v7, "FullBiasInNs"

    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 462
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    nop

    .line 470
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    move-result v3

    if-eqz v3, :cond_89

    iget-wide v3, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_8a

    :cond_89
    move-object v3, v5

    .line 472
    :goto_8a
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    move-result v4

    if-eqz v4, :cond_97

    iget-wide v7, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_98

    :cond_97
    move-object v4, v5

    :goto_98
    const-string v7, "BiasInNs"

    const-string v8, "BiasUncertaintyInNs"

    filled-new-array {v7, v3, v8, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 467
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    nop

    .line 477
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    move-result v3

    if-eqz v3, :cond_b5

    iget-wide v3, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_b6

    :cond_b5
    move-object v3, v5

    .line 479
    :goto_b6
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    move-result v4

    if-eqz v4, :cond_c2

    iget-wide v4, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_c2
    const-string v4, "DriftInNsPerSec"

    const-string v7, "DriftUncertaintyInNsPerSec"

    filled-new-array {v4, v3, v7, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 474
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 427
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 430
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 432
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 434
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 435
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 436
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 437
    return-void
.end method
