.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$ResponderConfig;,
        Landroid/net/wifi/RttManager$ResponderCallback;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$WifiInformationElement;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$Capabilities;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist BASE:I = 0x27200

.field public static final whitelist CMD_OP_ABORTED:I = 0x27204

.field public static final whitelist CMD_OP_DISABLE_RESPONDER:I = 0x27206

.field public static final whitelist CMD_OP_ENABLE_RESPONDER:I = 0x27205

.field public static final whitelist CMD_OP_ENALBE_RESPONDER_FAILED:I = 0x27208

.field public static final whitelist CMD_OP_ENALBE_RESPONDER_SUCCEEDED:I = 0x27207

.field public static final whitelist CMD_OP_FAILED:I = 0x27202

.field public static final greylist-max-o CMD_OP_REG_BINDER:I = 0x27209

.field public static final whitelist CMD_OP_START_RANGING:I = 0x27200

.field public static final whitelist CMD_OP_STOP_RANGING:I = 0x27201

.field public static final whitelist CMD_OP_SUCCEEDED:I = 0x27203

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field public static final whitelist PREAMBLE_HT:I = 0x2

.field public static final whitelist PREAMBLE_LEGACY:I = 0x1

.field public static final whitelist PREAMBLE_VHT:I = 0x4

.field public static final whitelist REASON_INITIATOR_NOT_ALLOWED_WHEN_RESPONDER_ON:I = -0x6

.field public static final whitelist REASON_INVALID_LISTENER:I = -0x3

.field public static final whitelist REASON_INVALID_REQUEST:I = -0x4

.field public static final whitelist REASON_NOT_AVAILABLE:I = -0x2

.field public static final whitelist REASON_PERMISSION_DENIED:I = -0x5

.field public static final whitelist REASON_UNSPECIFIED:I = -0x1

.field public static final whitelist RTT_BW_10_SUPPORT:I = 0x2

.field public static final whitelist RTT_BW_160_SUPPORT:I = 0x20

.field public static final whitelist RTT_BW_20_SUPPORT:I = 0x4

.field public static final whitelist RTT_BW_40_SUPPORT:I = 0x8

.field public static final whitelist RTT_BW_5_SUPPORT:I = 0x1

.field public static final whitelist RTT_BW_80_SUPPORT:I = 0x10

.field public static final whitelist RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_PEER_NAN:I = 0x5

.field public static final whitelist RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final whitelist RTT_PEER_P2P_GO:I = 0x3

.field public static final whitelist RTT_PEER_TYPE_AP:I = 0x1

.field public static final whitelist RTT_PEER_TYPE_STA:I = 0x2

.field public static final whitelist RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_STATUS_ABORTED:I = 0x8

.field public static final whitelist RTT_STATUS_FAILURE:I = 0x1

.field public static final whitelist RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final whitelist RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final whitelist RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final whitelist RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final whitelist RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final whitelist RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final whitelist RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final whitelist RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final whitelist RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final whitelist RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final whitelist RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final whitelist RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final whitelist RTT_STATUS_NO_WIFI:I = 0xe

.field public static final whitelist RTT_STATUS_SUCCESS:I = 0x0

.field public static final whitelist RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final whitelist RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final whitelist RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RttManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mNewService:Landroid/net/wifi/rtt/WifiRttManager;

.field private greylist-max-o mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/net/wifi/rtt/WifiRttManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/rtt/WifiRttManager;

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput-object p2, p0, Landroid/net/wifi/RttManager;->mNewService:Landroid/net/wifi/rtt/WifiRttManager;

    .line 1217
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    .line 1219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1222
    .local v0, "rttSupported":Z
    new-instance v1, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {v1}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 1223
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iput-boolean v0, v1, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 1224
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iput-boolean v0, v1, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 1225
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 1226
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iput-boolean v2, v1, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 1227
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    const/4 v3, 0x6

    iput v3, v1, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 1228
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    const/16 v3, 0x18

    iput v3, v1, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 1229
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iput-boolean v2, v1, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    .line 1230
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iput-boolean v2, v1, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    .line 1231
    return-void
.end method


# virtual methods
.method public whitelist disableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/net/wifi/RttManager$ResponderCallback;

    .line 1085
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "disableResponder is not supported in the adaptation layer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/net/wifi/RttManager$ResponderCallback;

    .line 1065
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "enableResponder is not supported in the adaptation layer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getCapabilities is not supported in the adaptation layer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    return-object v0
.end method

.method public whitelist startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .registers 11
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .line 946
    const-string v0, "Send RTT request to RTT Service"

    const-string v1, "RttManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mNewService:Landroid/net/wifi/rtt/WifiRttManager;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/WifiRttManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_16

    .line 949
    const/4 v0, -0x2

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 950
    return-void

    .line 953
    :cond_16
    new-instance v0, Landroid/net/wifi/rtt/RangingRequest$Builder;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;-><init>()V

    .line 954
    .local v0, "builder":Landroid/net/wifi/rtt/RangingRequest$Builder;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1d
    const/4 v4, -0x4

    if-ge v3, v2, :cond_5b

    aget-object v5, p1, v3

    .line 955
    .local v5, "rttParams":Landroid/net/wifi/RttManager$RttParams;
    iget v6, v5, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2d

    .line 956
    const-string v1, "Only AP peers are supported"

    invoke-interface {p2, v4, v1}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 957
    return-void

    .line 960
    :cond_2d
    new-instance v4, Landroid/net/wifi/ScanResult;

    invoke-direct {v4}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 961
    .local v4, "reconstructed":Landroid/net/wifi/ScanResult;
    iget-object v6, v5, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 962
    iget v6, v5, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_40

    .line 963
    const-wide/16 v6, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 965
    :cond_40
    iget v6, v5, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    iput v6, v4, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 966
    iget v6, v5, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    iput v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 967
    iget v6, v5, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    iput v6, v4, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 968
    iget v6, v5, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    iput v6, v4, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 969
    nop

    .line 970
    invoke-static {v4}, Landroid/net/wifi/rtt/ResponderConfig;->fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v6

    .line 969
    invoke-virtual {v0, v6}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    .line 954
    .end local v4    # "reconstructed":Landroid/net/wifi/ScanResult;
    .end local v5    # "rttParams":Landroid/net/wifi/RttManager$RttParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 973
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mNewService:Landroid/net/wifi/rtt/WifiRttManager;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->build()Landroid/net/wifi/rtt/RangingRequest;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    .line 974
    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Landroid/net/wifi/RttManager$1;

    invoke-direct {v6, p0, p2}, Landroid/net/wifi/RttManager$1;-><init>(Landroid/net/wifi/RttManager;Landroid/net/wifi/RttManager$RttListener;)V

    .line 973
    invoke-virtual {v2, v3, v5, v6}, Landroid/net/wifi/rtt/WifiRttManager;->startRanging(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_6f} :catch_90
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_6f} :catch_70

    goto :goto_ae

    .line 1015
    :catch_70
    move-exception v2

    .line 1016
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRanging: security exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v1, -0x5

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    goto :goto_af

    .line 1012
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_90
    move-exception v2

    .line 1013
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRanging: invalid arguments - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 1018
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_ae
    nop

    .line 1019
    :goto_af
    return-void
.end method

.method public whitelist stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .line 1027
    const-string v0, "RttManager"

    const-string v1, "stopRanging: unsupported operation - nop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void
.end method
