.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;,
        Lcom/android/server/display/WifiDisplayController$1;,
        Lcom/android/server/display/WifiDisplayController$2;,
        Lcom/android/server/display/WifiDisplayController$3;,
        Lcom/android/server/display/WifiDisplayController$4;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"


# instance fields
.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private final mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@2
    return v0
.end method

.method static synthetic -get17(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/WifiDisplayController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/display/WifiDisplayController;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/display/WifiDisplayController;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    #@2
    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/display/WifiDisplayController;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 1
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 0
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/WifiDisplayController;Z)V
    .locals 0
    .param p1, "timeoutOccurred"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/WifiDisplayController$Listener;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 106
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@c
    .line 159
    const/4 v3, 0x4

    #@d
    iput v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    #@f
    .line 890
    new-instance v3, Lcom/android/server/display/WifiDisplayController$1;

    #@11
    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@14
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    #@16
    .line 897
    new-instance v3, Lcom/android/server/display/WifiDisplayController$2;

    #@18
    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@1b
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    #@1d
    .line 909
    new-instance v3, Lcom/android/server/display/WifiDisplayController$3;

    #@1f
    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@22
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    #@24
    .line 1053
    new-instance v3, Lcom/android/server/display/WifiDisplayController$4;

    #@26
    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@29
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    #@2b
    .line 164
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    #@2d
    .line 165
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@2f
    .line 166
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    #@31
    .line 168
    const-string/jumbo v3, "wifip2p"

    #@34
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    #@3a
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@3c
    .line 169
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@3e
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, p1, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@45
    move-result-object v3

    #@46
    iput-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@48
    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    #@4a
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@4d
    .line 172
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.p2p.STATE_CHANGED"

    #@50
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@53
    .line 173
    const-string/jumbo v3, "android.net.wifi.p2p.PEERS_CHANGED"

    #@56
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@59
    .line 174
    const-string/jumbo v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    #@5c
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5f
    .line 175
    const-string/jumbo v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    #@62
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@65
    .line 176
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    #@67
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@69
    invoke-virtual {p1, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@6c
    .line 178
    new-instance v2, Lcom/android/server/display/WifiDisplayController$5;

    #@6e
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@70
    invoke-direct {v2, p0, v3}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    #@73
    .line 185
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    #@75
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@78
    move-result-object v1

    #@79
    .line 187
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "wifi_display_on"

    #@7c
    .line 186
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@83
    .line 189
    const-string/jumbo v3, "wifi_display_certification_on"

    #@86
    .line 188
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@8d
    .line 191
    const-string/jumbo v3, "wifi_display_wps_config"

    #@90
    .line 190
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@97
    .line 192
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    #@9a
    .line 163
    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 10
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    #@2
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 948
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    #@a
    if-eq v0, p2, :cond_2

    #@c
    .line 952
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    #@e
    .line 953
    .local v4, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    #@10
    .line 955
    .local v2, "oldSurface":Landroid/view/Surface;
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    #@12
    .line 956
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    #@14
    .line 957
    iput p3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    #@16
    .line 958
    iput p4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    #@18
    .line 959
    iput p5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    #@1a
    .line 961
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@1c
    new-instance v0, Lcom/android/server/display/WifiDisplayController$21;

    #@1e
    move-object v1, p0

    #@1f
    move-object v3, p2

    #@20
    move-object v5, p1

    #@21
    move v6, p3

    #@22
    move v7, p4

    #@23
    move v8, p5

    #@24
    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    #@27
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2a
    .line 946
    .end local v2    # "oldSurface":Landroid/view/Surface;
    .end local v4    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    :cond_1
    return-void

    #@2b
    .line 949
    :cond_2
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    #@2d
    if-ne v0, p3, :cond_0

    #@2f
    .line 950
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    #@31
    if-ne v0, p4, :cond_0

    #@33
    .line 951
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    #@35
    if-eq v0, p5, :cond_1

    #@37
    goto :goto_0
.end method

.method private computeFeatureState()I
    .locals 1

    #@0
    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 355
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    const/4 v0, 0x3

    #@b
    :goto_0
    return v0

    #@c
    .line 358
    :cond_1
    const/4 v0, 0x2

    #@d
    goto :goto_0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 513
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@6
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@8
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 522
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@16
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@18
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 532
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@22
    if-nez v0, :cond_4

    #@24
    .line 533
    const-string/jumbo v0, "WifiDisplayController"

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 534
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@35
    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 535
    return-void

    #@41
    .line 518
    :cond_2
    return-void

    #@42
    .line 523
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@44
    if-nez v0, :cond_1

    #@46
    .line 529
    return-void

    #@47
    .line 538
    :cond_4
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@49
    .line 539
    const/4 v0, 0x3

    #@4a
    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    #@4c
    .line 540
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    #@4f
    .line 511
    return-void
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 7
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 1049
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@6
    .line 1050
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@8
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    #@b
    move-result v5

    #@c
    .line 1049
    const/4 v3, 0x0

    #@d
    .line 1050
    const/4 v4, 0x1

    #@e
    const/4 v6, 0x0

    #@f
    .line 1049
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@12
    return-object v0
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 3
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 1041
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    const/16 v2, 0x2c

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    const-string/jumbo v0, "null"

    #@12
    goto :goto_0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .locals 3
    .param p0, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    #@0
    .prologue
    .line 1045
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    const/16 v2, 0x2c

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    const-string/jumbo v0, "null"

    #@12
    goto :goto_0
.end method

.method private disconnect()V
    .locals 1

    #@0
    .prologue
    .line 544
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3
    .line 545
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    #@6
    .line 543
    return-void
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1000
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 1007
    .local v3, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    #@c
    move-result-object v1

    #@d
    .line 1008
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 1009
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/net/InetAddress;

    #@19
    .line 1010
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet4Address;

    #@1b
    if-eqz v4, :cond_0

    #@1d
    .line 1011
    check-cast v0, Ljava/net/Inet4Address;

    #@1f
    .end local v0    # "addr":Ljava/net/InetAddress;
    return-object v0

    #@20
    .line 1001
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "iface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    #@21
    .line 1002
    .local v2, "ex":Ljava/net/SocketException;
    const-string/jumbo v4, "WifiDisplayController"

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "Could not obtain address of network interface "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    .line 1003
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    .line 1002
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 1004
    return-object v7

    #@40
    .line 1015
    .end local v2    # "ex":Ljava/net/SocketException;
    .restart local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3    # "iface":Ljava/net/NetworkInterface;
    :cond_1
    const-string/jumbo v4, "WifiDisplayController"

    #@43
    new-instance v5, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v6, "Could not obtain address of network interface "

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 1016
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 1015
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 1016
    const-string/jumbo v6, " because it had no IPv4 addresses."

    #@5a
    .line 1015
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 1017
    return-object v7
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 2
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 1021
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "DIRECT-"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1022
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@d
    const-string/jumbo v1, "Broadcom"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    .line 1021
    if-eqz v0, :cond_0

    #@16
    .line 1024
    const/16 v0, 0x216a

    #@18
    return v0

    #@19
    .line 1026
    :cond_0
    const/16 v0, 0x1c44

    #@1b
    return v0
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 789
    if-nez p1, :cond_0

    #@3
    .line 790
    return-object v1

    #@4
    .line 792
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    #@7
    move-result-object v6

    #@8
    .line 793
    .local v6, "addr":Ljava/net/Inet4Address;
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    #@a
    .line 794
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@d
    move-result-object v1

    #@e
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@10
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    const/4 v1, 0x0

    #@1b
    .line 796
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@23
    move-result-object v3

    #@24
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, " "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 797
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    .line 798
    if-eqz v6, :cond_2

    #@43
    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    :goto_1
    move v2, p2

    #@48
    .line 793
    invoke-direct/range {v0 .. v5}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    .line 802
    .local v0, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    return-object v0

    #@4c
    .line 794
    .end local v0    # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_1
    const/4 v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 798
    :cond_2
    const-string/jumbo v5, ""

    #@51
    goto :goto_1
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 817
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@3
    .line 818
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@5
    if-eqz v0, :cond_2

    #@7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_2

    #@d
    .line 819
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@f
    if-nez v0, :cond_0

    #@11
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@17
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@19
    new-instance v2, Lcom/android/server/display/WifiDisplayController$19;

    #@1b
    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    #@21
    .line 816
    :cond_1
    :goto_0
    return-void

    #@22
    .line 874
    :cond_2
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@24
    .line 877
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@26
    if-nez v0, :cond_3

    #@28
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2a
    if-eqz v0, :cond_4

    #@2c
    .line 878
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    #@2f
    .line 884
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 885
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    #@36
    goto :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 6
    .param p1, "timeoutOccurred"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 923
    const-string/jumbo v2, "WifiDisplayController"

    #@4
    const-string/jumbo v3, "Wifi display connection failed!"

    #@7
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 925
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 926
    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    #@10
    if-lez v2, :cond_2

    #@12
    .line 927
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@14
    .line 928
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@16
    new-instance v3, Lcom/android/server/display/WifiDisplayController$20;

    #@18
    invoke-direct {v3, p0, v0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@1b
    .line 938
    if-eqz p1, :cond_1

    #@1d
    :goto_0
    int-to-long v4, v1

    #@1e
    .line 928
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@21
    .line 922
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_1
    return-void

    #@22
    .line 938
    .restart local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    const/16 v1, 0x1f4

    #@24
    goto :goto_0

    #@25
    .line 940
    .end local v0    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    #@28
    goto :goto_1
.end method

.method private handlePeersChanged()V
    .locals 0

    #@0
    .prologue
    .line 813
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    #@3
    .line 810
    return-void
.end method

.method private handleScanFinished()V
    .locals 2

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/display/WifiDisplayController$14;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 485
    return-void
.end method

.method private handleScanResults()V
    .locals 6

    #@0
    .prologue
    .line 469
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 470
    .local v0, "count":I
    sget-object v4, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [Landroid/hardware/display/WifiDisplay;

    #@e
    .line 471
    .local v2, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v3, 0x0

    #@f
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@11
    .line 472
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@19
    .line 473
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    #@1c
    move-result-object v4

    #@1d
    aput-object v4, v2, v3

    #@1f
    .line 474
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@22
    .line 471
    add-int/lit8 v3, v3, 0x1

    #@24
    goto :goto_0

    #@25
    .line 477
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@27
    new-instance v5, Lcom/android/server/display/WifiDisplayController$13;

    #@29
    invoke-direct {v5, p0, v2}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    #@2c
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2f
    .line 468
    return-void
.end method

.method private handleScanStarted()V
    .locals 2

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/display/WifiDisplayController$12;

    #@4
    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 459
    return-void
.end method

.method private handleStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 806
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    #@2
    .line 807
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    #@5
    .line 805
    return-void
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .param p0, "deviceType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1036
    if-eq p0, v0, :cond_0

    #@3
    .line 1037
    const/4 v1, 0x3

    #@4
    if-ne p0, v1, :cond_1

    #@6
    .line 1036
    :cond_0
    :goto_0
    return v0

    #@7
    .line 1037
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 1030
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1031
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@6
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    #@9
    move-result v0

    #@a
    .line 1030
    if-eqz v0, :cond_0

    #@c
    .line 1032
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@e
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    #@15
    move-result v0

    #@16
    .line 1030
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 6
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 992
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    #@2
    .line 993
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    #@4
    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    #@6
    .line 994
    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    #@8
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 992
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@d
    .line 991
    return-void
.end method

.method private reportFeatureState()V
    .locals 3

    #@0
    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    #@3
    move-result v0

    #@4
    .line 345
    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@6
    new-instance v2, Lcom/android/server/display/WifiDisplayController$8;

    #@8
    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 343
    return-void
.end method

.method private requestPeers()V
    .locals 3

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@4
    new-instance v2, Lcom/android/server/display/WifiDisplayController$11;

    #@6
    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    #@c
    .line 433
    return-void
.end method

.method private retryConnection()V
    .locals 2

    #@0
    .prologue
    .line 552
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4
    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@7
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@9
    .line 553
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    #@c
    .line 548
    return-void
.end method

.method private stopPeerDiscovery()V
    .locals 3

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@4
    new-instance v2, Lcom/android/server/display/WifiDisplayController$10;

    #@6
    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@c
    .line 415
    return-void
.end method

.method private tryDiscoverPeers()V
    .locals 4

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@4
    new-instance v2, Lcom/android/server/display/WifiDisplayController$9;

    #@6
    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@c
    .line 412
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@e
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    #@10
    const-wide/16 v2, 0x2710

    #@12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@15
    .line 387
    return-void
.end method

.method private unadvertiseDisplay()V
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v2, v1

    #@4
    move v4, v3

    #@5
    move v5, v3

    #@6
    .line 988
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@9
    .line 987
    return-void
.end method

.method private updateConnection()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 564
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    #@6
    .line 568
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@c
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@e
    if-eq v0, v4, :cond_0

    #@10
    .line 569
    const-string/jumbo v0, "WifiDisplayController"

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Stopped listening for RTSP connection on "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 570
    const-string/jumbo v5, " from Wifi display: "

    #@28
    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 570
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@2e
    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@30
    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 572
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@3d
    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    #@40
    .line 573
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@42
    .line 574
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    #@44
    .line 575
    iput-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    #@46
    .line 576
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@48
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    #@4a
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@4d
    .line 578
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@4f
    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    #@52
    .line 579
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    #@55
    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@57
    if-eqz v0, :cond_1

    #@59
    .line 586
    return-void

    #@5a
    .line 588
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5c
    if-eqz v0, :cond_2

    #@5e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@60
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@62
    if-eq v0, v4, :cond_2

    #@64
    .line 589
    const-string/jumbo v0, "WifiDisplayController"

    #@67
    new-instance v3, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v4, "Disconnecting from Wifi display: "

    #@6f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v3

    #@73
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@75
    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 590
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@84
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@86
    .line 591
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@88
    .line 592
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@8a
    .line 594
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    #@8d
    .line 596
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@8f
    .line 597
    .local v10, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@91
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@93
    new-instance v3, Lcom/android/server/display/WifiDisplayController$15;

    #@95
    invoke-direct {v3, p0, v10}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@98
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@9b
    .line 618
    return-void

    #@9c
    .line 623
    .end local v10    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@9e
    if-eqz v0, :cond_3

    #@a0
    .line 624
    return-void

    #@a1
    .line 626
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a3
    if-eqz v0, :cond_4

    #@a5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a7
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a9
    if-eq v0, v4, :cond_4

    #@ab
    .line 627
    const-string/jumbo v0, "WifiDisplayController"

    #@ae
    new-instance v3, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v4, "Canceling connection to Wifi display: "

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@bc
    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@be
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v3

    #@c6
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 628
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@cb
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@cd
    .line 629
    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@cf
    .line 631
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    #@d2
    .line 632
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@d4
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    #@d6
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@d9
    .line 634
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@db
    .line 635
    .restart local v10    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@dd
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@df
    new-instance v3, Lcom/android/server/display/WifiDisplayController$16;

    #@e1
    invoke-direct {v3, p0, v10}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@e4
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@e7
    .line 656
    return-void

    #@e8
    .line 661
    .end local v10    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@ea
    if-nez v0, :cond_6

    #@ec
    .line 662
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    #@ee
    if-eqz v0, :cond_5

    #@f0
    .line 663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    #@f2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@f4
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    #@f7
    move-result-object v2

    #@f8
    invoke-interface {v0, v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    #@fb
    .line 665
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    #@fe
    .line 666
    return-void

    #@ff
    .line 670
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@101
    if-nez v0, :cond_a

    #@103
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@105
    if-nez v0, :cond_a

    #@107
    .line 671
    const-string/jumbo v0, "WifiDisplayController"

    #@10a
    new-instance v4, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string/jumbo v5, "Connecting to Wifi display: "

    #@112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v4

    #@116
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@118
    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@11a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v4

    #@122
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    .line 673
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@127
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@129
    .line 674
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pConfig;

    #@12b
    invoke-direct {v7}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    #@12e
    .line 675
    .local v7, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v13, Landroid/net/wifi/WpsInfo;

    #@130
    invoke-direct {v13}, Landroid/net/wifi/WpsInfo;-><init>()V

    #@133
    .line 676
    .local v13, "wps":Landroid/net/wifi/WpsInfo;
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    #@135
    const/4 v4, 0x4

    #@136
    if-eq v0, v4, :cond_7

    #@138
    .line 677
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    #@13a
    iput v0, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@13c
    .line 686
    :goto_0
    iput-object v13, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@13e
    .line 687
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@140
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@142
    iput-object v0, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@144
    .line 689
    iput v3, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@146
    .line 691
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@148
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    #@14b
    move-result-object v1

    #@14c
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    move-object v0, p0

    #@14d
    move v4, v3

    #@14e
    move v5, v3

    #@14f
    .line 692
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@152
    .line 694
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@154
    .line 695
    .local v9, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@156
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@158
    new-instance v3, Lcom/android/server/display/WifiDisplayController$17;

    #@15a
    invoke-direct {v3, p0, v9}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@15d
    invoke-virtual {v0, v2, v7, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@160
    .line 716
    return-void

    #@161
    .line 678
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    .end local v9    # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@163
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    #@166
    move-result v0

    #@167
    if-eqz v0, :cond_8

    #@169
    .line 679
    iput v3, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@16b
    goto :goto_0

    #@16c
    .line 680
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@16e
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    #@171
    move-result v0

    #@172
    if-eqz v0, :cond_9

    #@174
    .line 682
    const/4 v0, 0x2

    #@175
    iput v0, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@177
    goto :goto_0

    #@178
    .line 684
    :cond_9
    iput v14, v13, Landroid/net/wifi/WpsInfo;->setup:I

    #@17a
    goto :goto_0

    #@17b
    .line 720
    .end local v7    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v13    # "wps":Landroid/net/wifi/WpsInfo;
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@17d
    if-eqz v0, :cond_c

    #@17f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@181
    if-nez v0, :cond_c

    #@183
    .line 721
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    #@185
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    #@188
    move-result-object v6

    #@189
    .line 722
    .local v6, "addr":Ljava/net/Inet4Address;
    if-nez v6, :cond_b

    #@18b
    .line 723
    const-string/jumbo v0, "WifiDisplayController"

    #@18e
    new-instance v2, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v4, "Failed to get local interface address for communicating with Wifi display: "

    #@196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v2

    #@19a
    .line 724
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@19c
    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@19e
    .line 723
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v2

    #@1a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a5
    move-result-object v2

    #@1a6
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a9
    .line 725
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    #@1ac
    .line 726
    return-void

    #@1ad
    .line 729
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@1af
    invoke-virtual {v0, v14}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    #@1b2
    .line 731
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1b4
    .line 732
    .restart local v10    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1b6
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    #@1b9
    move-result v11

    #@1ba
    .line 733
    .local v11, "port":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@1c2
    move-result-object v2

    #@1c3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v0

    #@1c7
    const-string/jumbo v2, ":"

    #@1ca
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v0

    #@1ce
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v0

    #@1d2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d5
    move-result-object v8

    #@1d6
    .line 734
    .local v8, "iface":Ljava/lang/String;
    iput-object v8, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    #@1d8
    .line 736
    const-string/jumbo v0, "WifiDisplayController"

    #@1db
    new-instance v2, Ljava/lang/StringBuilder;

    #@1dd
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e0
    const-string/jumbo v3, "Listening for RTSP connection on "

    #@1e3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v2

    #@1e7
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v2

    #@1eb
    .line 737
    const-string/jumbo v3, " from Wifi display: "

    #@1ee
    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v2

    #@1f2
    .line 737
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1f4
    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    #@1f6
    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v2

    #@1fa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v2

    #@1fe
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@201
    .line 739
    new-instance v0, Lcom/android/server/display/WifiDisplayController$18;

    #@203
    invoke-direct {v0, p0, v10}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@206
    .line 778
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@208
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    #@20a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@20d
    move-result-object v3

    #@20e
    .line 739
    invoke-static {v8, v0, v2, v3}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    #@211
    move-result-object v0

    #@212
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@214
    .line 781
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    #@216
    if-eqz v0, :cond_d

    #@218
    .line 782
    const/16 v12, 0x78

    #@21a
    .line 784
    .local v12, "rtspTimeout":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@21c
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    #@21e
    mul-int/lit16 v3, v12, 0x3e8

    #@220
    int-to-long v4, v3

    #@221
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@224
    .line 561
    .end local v6    # "addr":Ljava/net/Inet4Address;
    .end local v8    # "iface":Ljava/lang/String;
    .end local v10    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11    # "port":I
    .end local v12    # "rtspTimeout":I
    :cond_c
    return-void

    #@225
    .line 782
    .restart local v6    # "addr":Ljava/net/Inet4Address;
    .restart local v8    # "iface":Ljava/lang/String;
    .restart local v10    # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v11    # "port":I
    :cond_d
    const/16 v12, 0x1e

    #@227
    .restart local v12    # "rtspTimeout":I
    goto :goto_1
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    #@0
    .prologue
    .line 497
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@2
    .line 498
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@8
    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 503
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@15
    .line 504
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 505
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    #@1b
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    .line 504
    if-eqz v1, :cond_0

    #@25
    .line 506
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@27
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    #@2e
    .line 494
    :cond_0
    return-void
.end method

.method private updateScanState()V
    .locals 2

    #@0
    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 363
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    #@e
    if-nez v0, :cond_0

    #@10
    .line 364
    const-string/jumbo v0, "WifiDisplayController"

    #@13
    const-string/jumbo v1, "Starting Wifi display scan."

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 365
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    #@1c
    .line 366
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    #@1f
    .line 367
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    #@22
    .line 361
    :cond_0
    :goto_0
    return-void

    #@23
    .line 370
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 372
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    #@29
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    #@2b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@2e
    .line 377
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@30
    if-eqz v0, :cond_2

    #@32
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@34
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@36
    if-ne v0, v1, :cond_0

    #@38
    .line 378
    :cond_2
    const-string/jumbo v0, "WifiDisplayController"

    #@3b
    const-string/jumbo v1, "Stopping Wifi display scan."

    #@3e
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 379
    const/4 v0, 0x0

    #@42
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    #@44
    .line 380
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    #@47
    .line 381
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    #@4a
    goto :goto_0
.end method

.method private updateSettings()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 196
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v0

    #@9
    .line 198
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_display_on"

    #@c
    .line 197
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    move v1, v2

    #@13
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    #@15
    .line 200
    const-string/jumbo v1, "wifi_display_certification_on"

    #@18
    .line 199
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    #@20
    .line 202
    iput v4, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    #@22
    .line 203
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    #@24
    if-eqz v1, :cond_0

    #@26
    .line 205
    const-string/jumbo v1, "wifi_display_wps_config"

    #@29
    .line 204
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    #@2f
    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    #@32
    .line 195
    return-void

    #@33
    :cond_1
    move v1, v3

    #@34
    .line 197
    goto :goto_0

    #@35
    :cond_2
    move v2, v3

    #@36
    .line 199
    goto :goto_1
.end method

.method private updateWfdEnableState()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 280
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    #@4
    if-eqz v1, :cond_2

    #@6
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 282
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@c
    if-nez v1, :cond_0

    #@e
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 279
    :cond_0
    :goto_0
    return-void

    #@13
    .line 283
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@15
    .line 285
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@17
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    #@1a
    .line 286
    .local v0, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    #@1d
    .line 287
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    #@20
    .line 288
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    #@23
    .line 289
    const/16 v1, 0x1c44

    #@25
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    #@28
    .line 290
    const/16 v1, 0x32

    #@2a
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    #@2d
    .line 291
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@2f
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@31
    new-instance v3, Lcom/android/server/display/WifiDisplayController$6;

    #@33
    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@36
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@39
    goto :goto_0

    #@3a
    .line 316
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@3c
    if-nez v1, :cond_3

    #@3e
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@40
    if-eqz v1, :cond_4

    #@42
    .line 317
    :cond_3
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    #@44
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    #@47
    .line 318
    .restart local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    #@4a
    .line 319
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    #@4c
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #@4e
    new-instance v3, Lcom/android/server/display/WifiDisplayController$7;

    #@50
    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    #@53
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    #@56
    .line 335
    .end local v0    # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@58
    .line 336
    iput-boolean v4, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@5a
    .line 337
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    #@5d
    .line 338
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    #@60
    .line 339
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    #@63
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "mWifiDisplayOnSetting="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "mWifiP2pEnabled="

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@32
    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "mWfdEnabled="

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4b
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, "mWfdEnabling="

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@64
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v3, "mNetworkInfo="

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v3, "mScanRequested="

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v3, "mDiscoverPeersInProgress="

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@af
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v3, "mDesiredDevice="

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@bd
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v2

    #@c5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v2

    #@c9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cc
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v3, "mConnectingDisplay="

    #@d4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v2

    #@d8
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@da
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e9
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    const-string/jumbo v3, "mDisconnectingDisplay="

    #@f1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@f7
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    #@fa
    move-result-object v3

    #@fb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v2

    #@ff
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v2

    #@103
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@106
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v3, "mCancelingDisplay="

    #@10e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v2

    #@112
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@114
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v2

    #@11c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v2

    #@120
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@123
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v3, "mConnectedDevice="

    #@12b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v2

    #@12f
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@131
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    #@134
    move-result-object v3

    #@135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v2

    #@139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v2

    #@13d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@140
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v3, "mConnectionRetriesLeft="

    #@148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v2

    #@14c
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    #@14e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v2

    #@152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v2

    #@156
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@159
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    const-string/jumbo v3, "mRemoteDisplay="

    #@161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v2

    #@165
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v2

    #@16b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v2

    #@16f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@172
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    #@174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string/jumbo v3, "mRemoteDisplayInterface="

    #@17a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v2

    #@17e
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    #@180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v2

    #@184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@187
    move-result-object v2

    #@188
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18b
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    #@18d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@190
    const-string/jumbo v3, "mRemoteDisplayConnected="

    #@193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v2

    #@197
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    #@199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v2

    #@19d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a0
    move-result-object v2

    #@1a1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a4
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string/jumbo v3, "mAdvertisedDisplay="

    #@1ac
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v2

    #@1b0
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    #@1b2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v2

    #@1b6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b9
    move-result-object v2

    #@1ba
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1bd
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    #@1bf
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c2
    const-string/jumbo v3, "mAdvertisedDisplaySurface="

    #@1c5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v2

    #@1c9
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    #@1cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v2

    #@1cf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d2
    move-result-object v2

    #@1d3
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d6
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1db
    const-string/jumbo v3, "mAdvertisedDisplayWidth="

    #@1de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    move-result-object v2

    #@1e2
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    #@1e4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e7
    move-result-object v2

    #@1e8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1eb
    move-result-object v2

    #@1ec
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1ef
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f4
    const-string/jumbo v3, "mAdvertisedDisplayHeight="

    #@1f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fa
    move-result-object v2

    #@1fb
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    #@1fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@200
    move-result-object v2

    #@201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@204
    move-result-object v2

    #@205
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@208
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    #@20a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20d
    const-string/jumbo v3, "mAdvertisedDisplayFlags="

    #@210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@213
    move-result-object v2

    #@214
    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    #@216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@219
    move-result-object v2

    #@21a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21d
    move-result-object v2

    #@21e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@221
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    #@223
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@226
    const-string/jumbo v3, "mAvailableWifiDisplayPeers: size="

    #@229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22c
    move-result-object v2

    #@22d
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@22f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@232
    move-result v3

    #@233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@236
    move-result-object v2

    #@237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23a
    move-result-object v2

    #@23b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@23e
    .line 236
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@240
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@243
    move-result-object v1

    #@244
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@247
    move-result v2

    #@248
    if-eqz v2, :cond_0

    #@24a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24d
    move-result-object v0

    #@24e
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@250
    .line 237
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    #@252
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@255
    const-string/jumbo v3, "  "

    #@258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v2

    #@25c
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    #@25f
    move-result-object v3

    #@260
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v2

    #@264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@267
    move-result-object v2

    #@268
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@26b
    goto :goto_0

    #@26c
    .line 212
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 256
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@12
    .line 257
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 258
    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@1d
    goto :goto_0

    #@1e
    .line 255
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method public requestDisconnect()V
    .locals 0

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    #@3
    .line 275
    return-void
.end method

.method public requestPause()V
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 265
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@6
    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    #@9
    .line 263
    :cond_0
    return-void
.end method

.method public requestResume()V
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 271
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    #@6
    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    #@9
    .line 269
    :cond_0
    return-void
.end method

.method public requestStartScan()V
    .locals 1

    #@0
    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 243
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    #@7
    .line 244
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    #@a
    .line 241
    :cond_0
    return-void
.end method

.method public requestStopScan()V
    .locals 1

    #@0
    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 250
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    #@7
    .line 251
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    #@a
    .line 248
    :cond_0
    return-void
.end method
