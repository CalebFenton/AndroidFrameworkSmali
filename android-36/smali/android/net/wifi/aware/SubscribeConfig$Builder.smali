.class public final Landroid/net/wifi/aware/SubscribeConfig$Builder;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/SubscribeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBand:I

.field private blacklist mCenterFrequency0Mhz:I

.field private blacklist mCenterFrequency1Mhz:I

.field private blacklist mChannelWidth:I

.field private blacklist mEnableInstantMode:Z

.field private greylist-max-o mEnableTerminateNotification:Z

.field private blacklist mFrequencyMhz:I

.field private blacklist mIsSuspendable:Z

.field private greylist-max-o mMatchFilter:[B

.field private greylist-max-o mMaxDistanceMm:I

.field private greylist-max-o mMaxDistanceMmSet:Z

.field private greylist-max-o mMinDistanceMm:I

.field private greylist-max-o mMinDistanceMmSet:Z

.field private blacklist mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

.field private blacklist mPeriodicRangingEnabled:Z

.field private blacklist mPeriodicRangingInterval:I

.field private blacklist mPreamble:I

.field private blacklist mRttBurstSize:I

.field private greylist-max-o mServiceName:[B

.field private greylist-max-o mServiceSpecificInfo:[B

.field private greylist-max-o mSubscribeType:I

.field private greylist-max-o mTtlSec:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    .line 720
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    .line 721
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    .line 722
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMmSet:Z

    .line 724
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMmSet:Z

    .line 727
    iput v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mBand:I

    .line 729
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mIsSuspendable:Z

    .line 730
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mVendorData:Ljava/util/List;

    .line 731
    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPeriodicRangingEnabled:Z

    .line 732
    const/16 v2, 0x200

    iput v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPeriodicRangingInterval:I

    .line 733
    invoke-static {}, Landroid/net/wifi/rtt/RangingRequest;->getDefaultRttBurstSize()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mRttBurstSize:I

    .line 734
    const/16 v2, 0x985

    iput v2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mFrequencyMhz:I

    .line 735
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mCenterFrequency0Mhz:I

    .line 736
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mCenterFrequency1Mhz:I

    .line 737
    iput v1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPreamble:I

    .line 738
    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mChannelWidth:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/aware/SubscribeConfig;
    .registers 27

    .line 1236
    move-object/from16 v0, p0

    new-instance v1, Landroid/net/wifi/aware/SubscribeConfig;

    iget-object v2, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    iget-object v3, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    iget-object v4, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    iget v5, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    iget v6, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    iget-boolean v7, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    iget-boolean v8, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMmSet:Z

    iget v9, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMm:I

    iget-boolean v10, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMmSet:Z

    iget v11, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMm:I

    iget-boolean v12, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableInstantMode:Z

    iget v13, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mBand:I

    iget-object v14, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    iget-boolean v15, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mIsSuspendable:Z

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mVendorData:Ljava/util/List;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPeriodicRangingInterval:I

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPeriodicRangingEnabled:Z

    move/from16 v19, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mRttBurstSize:I

    move/from16 v20, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mFrequencyMhz:I

    move/from16 v21, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mCenterFrequency0Mhz:I

    move/from16 v22, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mCenterFrequency1Mhz:I

    move/from16 v23, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPreamble:I

    move/from16 v24, v1

    iget v1, v0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mChannelWidth:I

    move/from16 v25, v24

    move/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v25

    invoke-direct/range {v1 .. v24}, Landroid/net/wifi/aware/SubscribeConfig;-><init>([B[B[BIIZZIZIZILandroid/net/wifi/aware/AwarePairingConfig;ZLjava/util/List;IZIIIIII)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setCenterFreq0Mhz(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2
    .param p1, "centerFreq0"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1164
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mCenterFrequency0Mhz:I

    .line 1165
    return-object p0
.end method

.method public whitelist setCenterFreq1Mhz(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2
    .param p1, "centerFreq1"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1185
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mCenterFrequency1Mhz:I

    .line 1186
    return-object p0
.end method

.method public whitelist setChannelWidth(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 3
    .param p1, "channelWidth"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1226
    nop

    .line 1227
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromScanResultToLocalChannelWidth(I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mChannelWidth:I

    .line 1228
    return-object p0
.end method

.method public whitelist setFrequencyMhz(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2
    .param p1, "frequency"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1143
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mFrequencyMhz:I

    .line 1144
    return-object p0
.end method

.method public whitelist setInstantCommunicationModeEnabled(ZI)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "band"    # I

    .line 960
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 963
    const/4 v0, 0x1

    if-eq p2, v0, :cond_13

    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    goto :goto_13

    .line 964
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 966
    :cond_13
    :goto_13
    iput p2, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mBand:I

    .line 967
    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableInstantMode:Z

    .line 968
    return-object p0

    .line 961
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setMatchFilter(Ljava/util/List;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/net/wifi/aware/SubscribeConfig$Builder;"
        }
    .end annotation

    .line 797
    .local p1, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->allocateAndPut(Ljava/util/List;)Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;->getArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMatchFilter:[B

    .line 799
    return-object p0
.end method

.method public whitelist setMaxDistanceMm(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 3
    .param p1, "maxDistanceMm"    # I

    .line 936
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMm:I

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMaxDistanceMmSet:Z

    .line 938
    return-object p0
.end method

.method public whitelist setMinDistanceMm(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 3
    .param p1, "minDistanceMm"    # I

    .line 897
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMm:I

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mMinDistanceMmSet:Z

    .line 899
    return-object p0
.end method

.method public whitelist setPairingConfig(Landroid/net/wifi/aware/AwarePairingConfig;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/aware/AwarePairingConfig;

    .line 982
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 985
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPairingConfig:Landroid/net/wifi/aware/AwarePairingConfig;

    .line 986
    return-object p0

    .line 983
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setPeriodicRangingEnabled(Z)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1096
    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPeriodicRangingEnabled:Z

    .line 1097
    return-object p0
.end method

.method public whitelist setPeriodicRangingInterval(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 5
    .param p1, "interval"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1061
    if-eqz p1, :cond_38

    const/16 v0, 0x80

    if-eq p1, v0, :cond_38

    const/16 v0, 0x100

    if-eq p1, v0, :cond_38

    const/16 v0, 0x200

    if-eq p1, v0, :cond_38

    const/16 v0, 0x400

    if-eq p1, v0, :cond_38

    const/16 v0, 0x800

    if-eq p1, v0, :cond_38

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_38

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_1f

    goto :goto_38

    .line 1069
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Ranging interval - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_38
    :goto_38
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPeriodicRangingInterval:I

    .line 1072
    return-object p0
.end method

.method public whitelist setPreamble(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 3
    .param p1, "preamble"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1205
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromScanResultToLocalPreamble(I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mPreamble:I

    .line 1206
    return-object p0
.end method

.method public whitelist setRttBurstSize(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4
    .param p1, "burstSize"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1119
    invoke-static {}, Landroid/net/wifi/aware/SubscribeConfig;->-$$Nest$sfgetMIN_RTT_BURST_SIZE()I

    move-result v0

    if-lt p1, v0, :cond_f

    invoke-static {}, Landroid/net/wifi/aware/SubscribeConfig;->-$$Nest$sfgetMAX_RTT_BURST_SIZE()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 1122
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mRttBurstSize:I

    .line 1123
    return-object p0

    .line 1120
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RTT burst size out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceName(Ljava/lang/String;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 757
    if-eqz p1, :cond_b

    .line 760
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceName:[B

    .line 761
    return-object p0

    .line 758
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid service name - must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceSpecificInfo([B)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2
    .param p1, "serviceSpecificInfo"    # [B

    .line 780
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mServiceSpecificInfo:[B

    .line 781
    return-object p0
.end method

.method public whitelist setSubscribeType(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 5
    .param p1, "subscribeType"    # I

    .line 816
    if-ltz p1, :cond_8

    const/4 v0, 0x1

    if-gt p1, v0, :cond_8

    .line 819
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mSubscribeType:I

    .line 820
    return-object p0

    .line 817
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subscribeType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSuspendable(Z)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 3
    .param p1, "isSuspendable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1013
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1016
    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mIsSuspendable:Z

    .line 1017
    return-object p0

    .line 1014
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setTerminateNotificationEnabled(Z)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 2
    .param p1, "enable"    # Z

    .line 859
    iput-boolean p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mEnableTerminateNotification:Z

    .line 860
    return-object p0
.end method

.method public whitelist setTtlSec(I)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4
    .param p1, "ttlSec"    # I

    .line 840
    if-ltz p1, :cond_5

    .line 843
    iput p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mTtlSec:I

    .line 844
    return-object p0

    .line 841
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVendorData(Ljava/util/List;)Landroid/net/wifi/aware/SubscribeConfig$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)",
            "Landroid/net/wifi/aware/SubscribeConfig$Builder;"
        }
    .end annotation

    .line 1033
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1036
    if-eqz p1, :cond_b

    .line 1039
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig$Builder;->mVendorData:Ljava/util/List;

    .line 1040
    return-object p0

    .line 1037
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
