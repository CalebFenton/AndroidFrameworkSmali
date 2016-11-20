.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$Capabilities;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$ResponderCallback;,
        Landroid/net/wifi/RttManager$ResponderConfig;,
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$ServiceHandler;,
        Landroid/net/wifi/RttManager$WifiInformationElement;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x27200

.field public static final CMD_OP_ABORTED:I = 0x27204

.field public static final CMD_OP_DISABLE_RESPONDER:I = 0x27206

.field public static final CMD_OP_ENABLE_RESPONDER:I = 0x27205

.field public static final CMD_OP_ENALBE_RESPONDER_FAILED:I = 0x27208

.field public static final CMD_OP_ENALBE_RESPONDER_SUCCEEDED:I = 0x27207

.field public static final CMD_OP_FAILED:I = 0x27202

.field public static final CMD_OP_START_RANGING:I = 0x27200

.field public static final CMD_OP_STOP_RANGING:I = 0x27201

.field public static final CMD_OP_SUCCEEDED:I = 0x27203

.field private static final DBG:Z = false

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field private static final INVALID_KEY:I = 0x0

.field public static final PREAMBLE_HT:I = 0x2

.field public static final PREAMBLE_LEGACY:I = 0x1

.field public static final PREAMBLE_VHT:I = 0x4

.field public static final REASON_INITIATOR_NOT_ALLOWED_WHEN_RESPONDER_ON:I = -0x6

.field public static final REASON_INVALID_LISTENER:I = -0x3

.field public static final REASON_INVALID_REQUEST:I = -0x4

.field public static final REASON_NOT_AVAILABLE:I = -0x2

.field public static final REASON_PERMISSION_DENIED:I = -0x5

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final RTT_BW_10_SUPPORT:I = 0x2

.field public static final RTT_BW_160_SUPPORT:I = 0x20

.field public static final RTT_BW_20_SUPPORT:I = 0x4

.field public static final RTT_BW_40_SUPPORT:I = 0x8

.field public static final RTT_BW_5_SUPPORT:I = 0x1

.field public static final RTT_BW_80_SUPPORT:I = 0x10

.field public static final RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_PEER_NAN:I = 0x5

.field public static final RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final RTT_PEER_P2P_GO:I = 0x3

.field public static final RTT_PEER_TYPE_AP:I = 0x1

.field public static final RTT_PEER_TYPE_STA:I = 0x2

.field public static final RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_STATUS_ABORTED:I = 0x8

.field public static final RTT_STATUS_FAILURE:I = 0x1

.field public static final RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final RTT_STATUS_NO_WIFI:I = 0xe

.field public static final RTT_STATUS_SUCCESS:I = 0x0

.field public static final RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RttManager"


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mCapabilitiesLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

.field private final mService:Landroid/net/wifi/IRttManager;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IRttManager;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1114
    new-instance v3, Landroid/util/SparseArray;

    #@5
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v3, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@a
    .line 1115
    new-instance v3, Ljava/lang/Object;

    #@c
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v3, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@11
    .line 1116
    new-instance v3, Ljava/lang/Object;

    #@13
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@16
    iput-object v3, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    #@18
    .line 1119
    const/4 v3, 0x1

    #@19
    iput v3, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    #@1b
    .line 1134
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    #@1d
    .line 1135
    iput-object p2, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@1f
    .line 1136
    const/4 v2, 0x0

    #@20
    .line 1138
    .local v2, "messenger":Landroid/os/Messenger;
    :try_start_0
    const-string/jumbo v3, "RttManager"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Get the messenger from "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    iget-object v5, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1139
    iget-object v3, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@3e
    invoke-interface {v3}, Landroid/net/wifi/IRttManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v2

    #@42
    .line 1144
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_0

    #@44
    .line 1145
    new-instance v3, Ljava/lang/IllegalStateException;

    #@46
    const-string/jumbo v4, "getMessenger() returned null!  This is invalid."

    #@49
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 1140
    .local v2, "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    #@4e
    .line 1141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@51
    move-result-object v3

    #@52
    throw v3

    #@53
    .line 1148
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v2, "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    #@55
    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@58
    iput-object v3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5a
    .line 1150
    new-instance v1, Landroid/net/wifi/RttManager$ServiceHandler;

    #@5c
    invoke-direct {v1, p0, p3}, Landroid/net/wifi/RttManager$ServiceHandler;-><init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V

    #@5f
    .line 1151
    .local v1, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@61
    iget-object v4, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    #@63
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    #@66
    .line 1154
    iget-object v3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@68
    const v4, 0x11001

    #@6b
    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    #@6e
    .line 1133
    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 1192
    if-nez p1, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 1193
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1194
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    #@e
    .line 1195
    return-object v0

    #@f
    .line 1193
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit v2

    #@11
    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1200
    if-nez p1, :cond_0

    #@3
    return v3

    #@4
    .line 1201
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1202
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    .line 1203
    .local v0, "index":I
    const/4 v1, -0x1

    #@e
    if-ne v0, v1, :cond_1

    #@10
    monitor-exit v2

    #@11
    .line 1204
    return v3

    #@12
    .line 1206
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    move-result v1

    #@18
    monitor-exit v2

    #@19
    return v1

    #@1a
    .line 1201
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1163
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 1165
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1167
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    #@d
    .line 1168
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@f
    .line 1169
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 1171
    return v0

    #@16
    .line 1165
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method

.method private putListenerIfAbsent(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1176
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 1177
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1178
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    .line 1179
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@d
    monitor-exit v2

    #@e
    .line 1180
    return v0

    #@f
    .line 1183
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    #@11
    .end local v0    # "key":I
    add-int/lit8 v1, v0, 0x1

    #@13
    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    #@15
    .line 1184
    .restart local v0    # "key":I
    if-eqz v0, :cond_1

    #@17
    .line 1185
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 1186
    return v0

    #@1e
    .line 1177
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1221
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 1222
    .local v0, "key":I
    if-nez v0, :cond_0

    #@6
    return v0

    #@7
    .line 1223
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 1224
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v2

    #@10
    .line 1225
    return v0

    #@11
    .line 1223
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 1212
    if-nez p1, :cond_0

    #@2
    const/4 v1, 0x0

    #@3
    return-object v1

    #@4
    .line 1213
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 1215
    .local v0, "listener":Ljava/lang/Object;
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 1216
    return-object v0

    #@14
    .line 1213
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z
    .locals 5
    .param p1, "params"    # Landroid/net/wifi/RttManager$RttParams;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 850
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 851
    invoke-virtual {p0}, Landroid/net/wifi/RttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 852
    const-string/jumbo v0, "RttManager"

    #@11
    const-string/jumbo v1, "Can not get RTT capabilities"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 853
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string/jumbo v1, "RTT chip is not working"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 857
    :cond_0
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    #@22
    if-eq v0, v2, :cond_1

    #@24
    .line 858
    return v3

    #@25
    .line 859
    :cond_1
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@27
    if-eq v0, v2, :cond_2

    #@29
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@2b
    if-eq v0, v1, :cond_2

    #@2d
    .line 861
    const-string/jumbo v0, "RttManager"

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, "Request "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, ": Illegal Request Type: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 862
    return v3

    #@55
    .line 863
    :cond_2
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@57
    if-ne v0, v2, :cond_3

    #@59
    .line 864
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@5b
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@5d
    if-eqz v0, :cond_6

    #@5f
    .line 867
    :cond_3
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    #@61
    if-ne v0, v1, :cond_4

    #@63
    .line 868
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@65
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@67
    if-eqz v0, :cond_7

    #@69
    .line 871
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@6b
    if-eqz v0, :cond_5

    #@6d
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    #@6f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_8

    #@75
    .line 872
    :cond_5
    const-string/jumbo v0, "RttManager"

    #@78
    const-string/jumbo v1, "No BSSID in params"

    #@7b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 873
    return v3

    #@7f
    .line 865
    :cond_6
    const-string/jumbo v0, "RttManager"

    #@82
    new-instance v1, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v2, "Request "

    #@8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    const-string/jumbo v2, ": One side RTT is not supported"

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 866
    return v3

    #@a1
    .line 869
    :cond_7
    const-string/jumbo v0, "RttManager"

    #@a4
    new-instance v1, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v2, "Request "

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    const-string/jumbo v2, ": two side RTT is not supported"

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c2
    .line 870
    return v3

    #@c3
    .line 874
    :cond_8
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@c5
    if-eqz v0, :cond_9

    #@c7
    .line 875
    const-string/jumbo v0, "RttManager"

    #@ca
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v2, "Request "

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    const-string/jumbo v2, ": Illegal number of burst: "

    #@dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    #@e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ee
    .line 876
    return v3

    #@ef
    .line 877
    :cond_9
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@f1
    if-lez v0, :cond_a

    #@f3
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@f5
    const/16 v1, 0x1f

    #@f7
    if-le v0, v1, :cond_b

    #@f9
    .line 878
    :cond_a
    const-string/jumbo v0, "RttManager"

    #@fc
    new-instance v1, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v2, "Request "

    #@104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v1

    #@10c
    const-string/jumbo v2, ": Illegal sample number per burst: "

    #@10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    .line 879
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    #@115
    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v1

    #@11d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@120
    .line 880
    return v3

    #@121
    .line 881
    :cond_b
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@123
    if-ltz v0, :cond_c

    #@125
    .line 882
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@127
    if-le v0, v4, :cond_d

    #@129
    .line 883
    :cond_c
    const-string/jumbo v0, "RttManager"

    #@12c
    new-instance v1, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v2, "Request "

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    const-string/jumbo v2, ": Illegal measurement frame retry number:"

    #@13f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v1

    #@143
    .line 884
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    #@145
    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@148
    move-result-object v1

    #@149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v1

    #@14d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@150
    .line 885
    return v3

    #@151
    .line 886
    :cond_d
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@153
    if-ltz v0, :cond_e

    #@155
    .line 887
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@157
    if-le v0, v4, :cond_f

    #@159
    .line 888
    :cond_e
    const-string/jumbo v0, "RttManager"

    #@15c
    new-instance v1, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v2, "Request "

    #@164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v1

    #@168
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v1

    #@16c
    const-string/jumbo v2, ": Illegal FTMR frame retry number:"

    #@16f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v1

    #@173
    .line 889
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    #@175
    .line 888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v1

    #@17d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@180
    .line 890
    return v3

    #@181
    .line 891
    :cond_f
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    #@183
    if-eqz v0, :cond_10

    #@185
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@187
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@189
    if-eqz v0, :cond_13

    #@18b
    .line 894
    :cond_10
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    #@18d
    if-eqz v0, :cond_11

    #@18f
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@191
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@193
    if-eqz v0, :cond_14

    #@195
    .line 897
    :cond_11
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@197
    if-lt v0, v2, :cond_12

    #@199
    .line 898
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@19b
    const/16 v1, 0xb

    #@19d
    if-le v0, v1, :cond_15

    #@19f
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@1a1
    const/16 v1, 0xf

    #@1a3
    if-eq v0, v1, :cond_15

    #@1a5
    .line 899
    :cond_12
    const-string/jumbo v0, "RttManager"

    #@1a8
    new-instance v1, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v2, "Request "

    #@1b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v1

    #@1b4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v1

    #@1b8
    const-string/jumbo v2, ": Illegal burst timeout: "

    #@1bb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v1

    #@1bf
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    #@1c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v1

    #@1c9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1cc
    .line 900
    return v3

    #@1cd
    .line 892
    :cond_13
    const-string/jumbo v0, "RttManager"

    #@1d0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    const-string/jumbo v2, "Request "

    #@1d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v1

    #@1dc
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v1

    #@1e0
    const-string/jumbo v2, ": LCI is not supported"

    #@1e3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v1

    #@1e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ea
    move-result-object v1

    #@1eb
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ee
    .line 893
    return v3

    #@1ef
    .line 895
    :cond_14
    const-string/jumbo v0, "RttManager"

    #@1f2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f7
    const-string/jumbo v2, "Request "

    #@1fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v1

    #@1fe
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@201
    move-result-object v1

    #@202
    const-string/jumbo v2, ": LCR is not supported"

    #@205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v1

    #@209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v1

    #@20d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@210
    .line 896
    return v3

    #@211
    .line 901
    :cond_15
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@213
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@215
    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@217
    and-int/2addr v0, v1

    #@218
    if-nez v0, :cond_16

    #@21a
    .line 902
    const-string/jumbo v0, "RttManager"

    #@21d
    new-instance v1, Ljava/lang/StringBuilder;

    #@21f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@222
    const-string/jumbo v2, "Request "

    #@225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@228
    move-result-object v1

    #@229
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v1

    #@22d
    const-string/jumbo v2, ": Do not support this preamble: "

    #@230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v1

    #@234
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    #@236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@239
    move-result-object v1

    #@23a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23d
    move-result-object v1

    #@23e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@241
    .line 903
    return v3

    #@242
    .line 904
    :cond_16
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@244
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    #@246
    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@248
    and-int/2addr v0, v1

    #@249
    if-nez v0, :cond_17

    #@24b
    .line 905
    const-string/jumbo v0, "RttManager"

    #@24e
    new-instance v1, Ljava/lang/StringBuilder;

    #@250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@253
    const-string/jumbo v2, "Request "

    #@256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v1

    #@25a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v1

    #@25e
    const-string/jumbo v2, ": Do not support this bandwidth: "

    #@261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v1

    #@265
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    #@267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26a
    move-result-object v1

    #@26b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26e
    move-result-object v1

    #@26f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@272
    .line 906
    return v3

    #@273
    .line 909
    :cond_17
    return v2
.end method

.method private validateChannel()V
    .locals 2

    #@0
    .prologue
    .line 1158
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 1159
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    #@9
    .line 1158
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1157
    :cond_0
    return-void
.end method


# virtual methods
.method public disableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/net/wifi/RttManager$ResponderCallback;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 989
    if-nez p1, :cond_0

    #@3
    .line 990
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "callback cannot be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 992
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    #@f
    .line 993
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    .line 994
    .local v0, "key":I
    if-nez v0, :cond_1

    #@15
    .line 995
    const-string/jumbo v1, "RttManager"

    #@18
    const-string/jumbo v2, "responder not enabled yet"

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 996
    return-void

    #@1f
    .line 998
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@21
    const v2, 0x27206

    #@24
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@27
    .line 988
    return-void
.end method

.method public enableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/net/wifi/RttManager$ResponderCallback;

    #@0
    .prologue
    .line 970
    if-nez p1, :cond_0

    #@2
    .line 971
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "callback cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 973
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    #@e
    .line 974
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->putListenerIfAbsent(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    .line 975
    .local v0, "key":I
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@14
    const v2, 0x27205

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@1b
    .line 969
    return-void
.end method

.method public getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 171
    new-instance v0, Landroid/net/wifi/RttManager$Capabilities;

    #@2
    invoke-direct {v0, p0}, Landroid/net/wifi/RttManager$Capabilities;-><init>(Landroid/net/wifi/RttManager;)V

    #@5
    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 3

    #@0
    .prologue
    .line 311
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 312
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 314
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    #@9
    invoke-interface {v1}, Landroid/net/wifi/IRttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 319
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11
    monitor-exit v2

    #@12
    return-object v1

    #@13
    .line 315
    :catch_0
    move-exception v0

    #@14
    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@17
    move-result-object v1

    #@18
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@19
    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 7
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 922
    const/4 v0, 0x0

    #@2
    .line 923
    .local v0, "index":I
    array-length v5, p1

    #@3
    move v3, v4

    #@4
    :goto_0
    if-ge v3, v5, :cond_1

    #@6
    aget-object v2, p1, v3

    #@8
    .line 924
    .local v2, "rttParam":Landroid/net/wifi/RttManager$RttParams;
    invoke-direct {p0, v2, v0}, Landroid/net/wifi/RttManager;->rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z

    #@b
    move-result v6

    #@c
    if-nez v6, :cond_0

    #@e
    .line 925
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "RTT Request Parameter Illegal"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 927
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    .line 923
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 929
    .end local v2    # "rttParam":Landroid/net/wifi/RttManager$RttParams;
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    #@1f
    .line 930
    new-instance v1, Landroid/net/wifi/RttManager$ParcelableRttParams;

    #@21
    invoke-direct {v1, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    #@24
    .line 931
    .local v1, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    const-string/jumbo v3, "RttManager"

    #@27
    const-string/jumbo v5, "Send RTT request to RTT Service"

    #@2a
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 932
    iget-object v3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2f
    .line 933
    invoke-direct {p0, p2}, Landroid/net/wifi/RttManager;->putListener(Ljava/lang/Object;)I

    #@32
    move-result v5

    #@33
    .line 932
    const v6, 0x27200

    #@36
    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    #@39
    .line 921
    return-void
.end method

.method public stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    #@0
    .prologue
    .line 937
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    #@3
    .line 938
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    const v2, 0x27201

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    #@10
    .line 936
    return-void
.end method
