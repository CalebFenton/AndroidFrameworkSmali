.class public final Landroid/net/wifi/aware/SubscribeConfig;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/SubscribeConfig$Builder;,
        Landroid/net/wifi/aware/SubscribeConfig$PeriodicRangingInterval;,
        Landroid/net/wifi/aware/SubscribeConfig$SubscribeTypes;
    }
.end annotation


# static fields
.field private static final blacklist AWARE_BAND_2_DISCOVERY_CHANNEL:I = 0x985

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_RTT_BURST_SIZE:I

.field private static final blacklist MIN_RTT_BURST_SIZE:I

.field public static final whitelist PERIODIC_RANGING_INTERVAL_1024TU:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_128TU:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_2048TU:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_256TU:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_4096TU:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_512TU:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_8192TU:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERIODIC_RANGING_INTERVAL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUBSCRIBE_TYPE_ACTIVE:I = 0x1

.field public static final whitelist SUBSCRIBE_TYPE_PASSIVE:I


# instance fields
.field private final blacklist mBand:I

.field public final blacklist mCenterFrequency0Mhz:I

.field public final blacklist mCenterFrequency1Mhz:I

.field public final blacklist mChannelWidth:I

.field private final blacklist mEnableInstantMode:Z

.field public final greylist-max-o mEnableTerminateNotification:Z

.field public final blacklist mFrequencyMhz:I

.field private final blacklist mIsSuspendable:Z

.field public final greylist-max-o mMatchFilter:[B

.field public final greylist-max-o mMaxDistanceMm:I

.field public final greylist-max-o mMaxDistanceMmSet:Z

.field public final greylist-max-o mMinDistanceMm:I

.field public final greylist-max-o mMinDistanceMmSet:Z

.field private final blacklist mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

.field public final blacklist mPeriodicRangingEnabled:Z

.field public final blacklist mPeriodicRangingInterval:I

.field public final blacklist mPreamble:I

.field public final blacklist mRttBurstSize:I

.field public final greylist-max-o mServiceName:[B

.field public final greylist-max-o mServiceSpecificInfo:[B

.field public final greylist-max-o mSubscribeType:I

.field public final greylist-max-o mTtlSec:I

.field private final blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetMAX_RTT_BURST_SIZE()I
    .registers 1

    sget v0, Landroid/net/wifi/aware/SubscribeConfig;->MAX_RTT_BURST_SIZE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMIN_RTT_BURST_SIZE()I
    .registers 1

    sget v0, Landroid/net/wifi/aware/SubscribeConfig;->MIN_RTT_BURST_SIZE:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    invoke-static {}, Landroid/net/wifi/rtt/RangingRequest;->getMinRttBurstSize()I

    move-result v0

    sput v0, Landroid/net/wifi/aware/SubscribeConfig;->MIN_RTT_BURST_SIZE:I

    .line 87
    invoke-static {}, Landroid/net/wifi/rtt/RangingRequest;->getMaxRttBurstSize()I

    move-result v0

    sput v0, Landroid/net/wifi/aware/SubscribeConfig;->MAX_RTT_BURST_SIZE:I

    .line 339
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/SubscribeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>([B[B[BIIZZIZIZILandroid/net/wifi/aware/AwarePairingConfig;ZLjava/util/List;IZIIIIII)V
    .registers 40
    .param p1, "serviceName"    # [B
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B
    .param p4, "subscribeType"    # I
    .param p5, "ttlSec"    # I
    .param p6, "enableTerminateNotification"    # Z
    .param p7, "minDistanceMmSet"    # Z
    .param p8, "minDistanceMm"    # I
    .param p9, "maxDistanceMmSet"    # Z
    .param p10, "maxDistanceMm"    # I
    .param p11, "enableInstantMode"    # Z
    .param p12, "band"    # I
    .param p13, "pairingConfig"    # Landroid/net/wifi/aware/AwarePairingConfig;
    .param p14, "isSuspendable"    # Z
    .param p16, "rangingInterval"    # I
    .param p17, "enablePeriodicRanging"    # Z
    .param p18, "rttBurstSize"    # I
    .param p19, "frequencyMhz"    # I
    .param p20, "centerFrequency0Mhz"    # I
    .param p21, "centerFrequency1Mhz"    # I
    .param p22, "preamble"    # I
    .param p23, "channelWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[BIIZZIZIZI",
            "Landroid/net/wifi/aware/AwarePairingConfig;",
            "Z",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;IZIIIIII)V"
        }
    .end annotation

    .line 248
    .local p15, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 249
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    .line 250
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 251
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 252
    move/from16 v4, p4

    iput v4, v0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 253
    move/from16 v5, p5

    iput v5, v0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 254
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    .line 255
    move/from16 v7, p8

    iput v7, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    .line 256
    move/from16 v8, p7

    iput-boolean v8, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    .line 257
    move/from16 v9, p10

    iput v9, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    .line 258
    move/from16 v10, p9

    iput-boolean v10, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    .line 259
    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    .line 260
    move/from16 v12, p12

    iput v12, v0, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    .line 261
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 262
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    .line 263
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    .line 264
    move/from16 v1, p16

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    .line 265
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    .line 266
    move/from16 v1, p18

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    .line 267
    move/from16 v1, p19

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    .line 268
    move/from16 v1, p20

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    .line 269
    move/from16 v1, p21

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    .line 270
    move/from16 v1, p22

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    .line 271
    move/from16 v1, p23

    iput v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    .line 272
    return-void
.end method


# virtual methods
.method public greylist-max-o assertValid(Landroid/net/wifi/aware/Characteristics;Z)V
    .registers 8
    .param p1, "characteristics"    # Landroid/net/wifi/aware/Characteristics;
    .param p2, "rttSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    .line 459
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 463
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ltz v0, :cond_17e

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-gt v0, v2, :cond_17e

    .line 466
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ltz v0, :cond_176

    .line 470
    if-eqz p1, :cond_a0

    .line 471
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v0

    .line 472
    .local v0, "maxServiceNameLength":I
    if-eqz v0, :cond_31

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v1, v1

    if-gt v1, v0, :cond_29

    goto :goto_31

    .line 473
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service name longer than supported by device characteristics"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_31
    :goto_31
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v1

    .line 477
    .local v1, "maxServiceSpecificInfoLength":I
    if-eqz v1, :cond_49

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v2, v2

    if-gt v2, v1, :cond_41

    goto :goto_49

    .line 479
    :cond_41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Service specific info longer than supported by device characteristics"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_49
    :goto_49
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result v2

    .line 483
    .local v2, "maxMatchFilterLength":I
    if-eqz v2, :cond_61

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-eqz v3, :cond_61

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v3, v3

    if-gt v3, v2, :cond_59

    goto :goto_61

    .line 485
    :cond_59
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Match filter longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    :cond_61
    :goto_61
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    if-eqz v3, :cond_7a

    .line 489
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 490
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isInstantCommunicationModeSupported()Z

    move-result v3

    if-eqz v3, :cond_72

    goto :goto_7a

    .line 493
    :cond_72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "instant mode is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 496
    :cond_7a
    :goto_7a
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    if-eqz v3, :cond_8d

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isSuspensionSupported()Z

    move-result v3

    if-eqz v3, :cond_85

    goto :goto_8d

    .line 497
    :cond_85
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Aware Suspension is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    :cond_8d
    :goto_8d
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    if-eqz v3, :cond_a0

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isAwarePairingSupported()Z

    move-result v3

    if-eqz v3, :cond_98

    goto :goto_a0

    .line 500
    :cond_98
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Aware Pairing is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 504
    .end local v0    # "maxServiceNameLength":I
    .end local v1    # "maxServiceSpecificInfoLength":I
    .end local v2    # "maxMatchFilterLength":I
    :cond_a0
    :goto_a0
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v0, :cond_b1

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-ltz v0, :cond_a9

    goto :goto_b1

    .line 505
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_b1
    :goto_b1
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v0, :cond_c2

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-ltz v0, :cond_ba

    goto :goto_c2

    .line 508
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_c2
    :goto_c2
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_d7

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez v0, :cond_cf

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-nez v0, :cond_cf

    goto :goto_d7

    .line 512
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either Periodic Ranging or Min/Max distance is allowed. Not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_d7
    :goto_d7
    if-nez p2, :cond_ea

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-nez v0, :cond_e2

    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-nez v0, :cond_e2

    goto :goto_ea

    .line 517
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_ea
    :goto_ea
    if-eqz p2, :cond_f2

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->isPeriodicRangingSupported()Z

    move-result v0

    if-nez v0, :cond_f6

    :cond_f2
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-nez v0, :cond_16e

    .line 523
    :cond_f6
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_107

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    if-ltz v0, :cond_ff

    goto :goto_107

    .line 524
    :cond_ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Periodic ranging interval must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_107
    :goto_107
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_118

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    if-ltz v0, :cond_110

    goto :goto_118

    .line 527
    :cond_110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rtt Burst size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_118
    :goto_118
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_129

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    if-ltz v0, :cond_121

    goto :goto_129

    .line 530
    :cond_121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Frequency must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_129
    :goto_129
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    if-ltz v0, :cond_132

    goto :goto_13a

    .line 533
    :cond_132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Center Frequency0 must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_13a
    :goto_13a
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_14b

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    if-ltz v0, :cond_143

    goto :goto_14b

    .line 536
    :cond_143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Center Frequency1 must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_14b
    :goto_14b
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_15c

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    if-ltz v0, :cond_154

    goto :goto_15c

    .line 539
    :cond_154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preamble must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_15c
    :goto_15c
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v0, :cond_16d

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    if-ltz v0, :cond_165

    goto :goto_16d

    .line 542
    :cond_165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel width must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_16d
    :goto_16d
    return-void

    .line 521
    :cond_16e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Periodic ranging is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_17e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscribeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid matchFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 383
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 384
    return v0

    .line 387
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/SubscribeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 388
    return v2

    .line 391
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/SubscribeConfig;

    .line 393
    .local v1, "lhs":Landroid/net/wifi/aware/SubscribeConfig;
    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 394
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ne v3, v4, :cond_b2

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-ne v3, v4, :cond_b2

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-ne v3, v4, :cond_b2

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-ne v3, v4, :cond_b2

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    if-ne v3, v4, :cond_b2

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    if-ne v3, v4, :cond_b2

    iget-object v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    .line 402
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    if-ne v3, v4, :cond_b2

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    if-eq v3, v4, :cond_90

    goto :goto_b2

    .line 413
    :cond_90
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v3, :cond_9b

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-eq v3, v4, :cond_9b

    .line 414
    return v2

    .line 417
    :cond_9b
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v3, :cond_a6

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-eq v3, v4, :cond_a6

    .line 418
    return v2

    .line 421
    :cond_a6
    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v3, :cond_b1

    iget v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    iget v4, v1, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    if-eq v3, v4, :cond_b1

    .line 422
    return v2

    .line 424
    :cond_b1
    return v0

    .line 410
    :cond_b2
    :goto_b2
    return v2
.end method

.method public whitelist getCenterFreq0Mhz()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 669
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    return v0
.end method

.method public whitelist getCenterFreq1Mhz()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 682
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    return v0
.end method

.method public whitelist getChannelWidth()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 709
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    invoke-static {v0}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromLocalToScanResultChannelWidth(I)I

    move-result v0

    return v0
.end method

.method public whitelist getFrequencyMhz()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 656
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    return v0
.end method

.method public whitelist getInstantCommunicationBand()I
    .registers 2

    .line 564
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    return v0
.end method

.method public whitelist getPairingConfig()Landroid/net/wifi/aware/AwarePairingConfig;
    .registers 2

    .line 574
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    return-object v0
.end method

.method public whitelist getPeriodicRangingInterval()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 631
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    return v0
.end method

.method public whitelist getPreamble()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 694
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    invoke-static {v0}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromLocalToScanResultPreamble(I)I

    move-result v0

    return v0
.end method

.method public whitelist getRttBurstSize()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 643
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    return v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 607
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_11
    return-object v0

    .line 605
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 22

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 430
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    .line 432
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v13, v0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    .line 433
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    filled-new-array/range {v2 .. v20}, [Ljava/lang/Object;

    move-result-object v1

    .line 429
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 436
    .local v1, "result":I
    iget-boolean v2, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v2, :cond_9a

    .line 437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 439
    :cond_9a
    iget-boolean v2, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v2, :cond_b0

    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 442
    :cond_b0
    iget-boolean v2, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    if-eqz v2, :cond_c6

    .line 443
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 446
    :cond_c6
    return v1
.end method

.method public whitelist isInstantCommunicationModeEnabled()Z
    .registers 2

    .line 552
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    return v0
.end method

.method public whitelist isPeriodicRangingEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 619
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    return v0
.end method

.method public whitelist isSuspendable()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 586
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 589
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    return v0

    .line 587
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribeConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const-string v2, "<null>"

    if-nez v1, :cond_13

    move-object v1, v2

    goto :goto_1d

    .line 277
    :cond_13
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const/4 v3, 0x0

    if-nez v1, :cond_2e

    move v1, v3

    goto :goto_31

    :cond_2e
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    array-length v1, v1

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_40

    goto :goto_4a

    :cond_40
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 280
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 279
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_5a

    move v1, v3

    goto :goto_5d

    .line 282
    :cond_5a
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    array-length v1, v1

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-direct {v1, v3, v2, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    .line 283
    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-nez v1, :cond_82

    goto :goto_85

    :cond_82
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    array-length v3, v1

    :goto_85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubscribeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mEnableInstantMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPairingConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSuspendable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVendorData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mPeriodicRangingInterval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeriodicRangingEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRttBurstSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyMhz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCenterFrequency0Mhz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCenterFrequency1Mhz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreamble"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelWidth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 313
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 314
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 315
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 316
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableInstantMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 324
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 326
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mIsSuspendable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 327
    iget-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 328
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPeriodicRangingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mRttBurstSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mFrequencyMhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency0Mhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mCenterFrequency1Mhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mPreamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mChannelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return-void
.end method
