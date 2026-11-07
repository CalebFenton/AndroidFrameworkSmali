.class public Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o INVALID_LISTENER_KEY:I


# instance fields
.field private greylist mAsyncChannel:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

.field final greylist-max-o mBinder:Landroid/os/Binder;

.field private greylist-max-o mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

.field private greylist-max-o mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

.field private greylist-max-o mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

.field private greylist-max-o mListenerKey:I

.field private greylist-max-o mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mListenerMapLock:Ljava/lang/Object;

.field private final greylist-max-o mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private greylist-max-o mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

.field private greylist-max-o mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAsyncChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDnsSdServRspListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDnsSdTxtListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServRspListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpnpServRspListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleServiceResponse(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->removeListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Binder;Landroid/net/wifi/p2p/WifiP2pManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "l"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .param p4, "binder"    # Landroid/os/Binder;
    .param p5, "p2pManager"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1740
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    .line 1741
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    .line 1742
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    .line 1744
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Landroid/util/CloseGuard;

    .line 1724
    new-instance v0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    .line 1725
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    .line 1726
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 1727
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    .line 1728
    iput-object p4, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    .line 1729
    iput-object p5, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1731
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method private greylist-max-o getListener(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .line 2085
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2086
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2088
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private greylist-max-o handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V
    .registers 6
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    .line 2052
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1e

    .line 2053
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    if-eqz v0, :cond_54

    .line 2054
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    .line 2055
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getInstanceName()Ljava/lang/String;

    move-result-object v1

    .line 2056
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v2

    .line 2057
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 2054
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;->onDnsSdServiceAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_54

    .line 2059
    :cond_1e
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    .line 2060
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    if-eqz v0, :cond_54

    .line 2061
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 2062
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    move-result-object v1

    .line 2063
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getTxtRecord()Ljava/util/Map;

    move-result-object v2

    .line 2064
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 2061
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;->onDnsSdTxtRecordAvailable(Ljava/lang/String;Ljava/util/Map;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_54

    .line 2067
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled resp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiP2pManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    :cond_54
    :goto_54
    return-void
.end method

.method private greylist-max-o handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .registers 6
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 2027
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    if-eqz v0, :cond_b

    .line 2028
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V

    goto :goto_49

    .line 2029
    :cond_b
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    if-eqz v0, :cond_1a

    .line 2030
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    if-eqz v0, :cond_49

    .line 2031
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V

    goto :goto_49

    .line 2034
    :cond_1a
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    if-eqz v0, :cond_49

    .line 2035
    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getWifiP2pUsdBasedServiceResponse()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2036
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 2037
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getWifiP2pUsdBasedServiceResponse()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    move-result-object v2

    .line 2036
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;->onUsdBasedServiceAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;)V

    goto :goto_49

    .line 2039
    :cond_38
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getServiceType()I

    move-result v1

    .line 2040
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getRawData()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    .line 2039
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;->onServiceAvailable(I[BLandroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2044
    :cond_49
    :goto_49
    return-void
.end method

.method private greylist-max-o handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V
    .registers 5
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    .line 2047
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getUniqueServiceNames()Ljava/util/List;

    move-result-object v1

    .line 2048
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 2047
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;->onUpnpServiceAvailable(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2049
    return-void
.end method

.method private greylist-max-r putListener(Ljava/lang/Object;)I
    .registers 6
    .param p1, "listener"    # Ljava/lang/Object;

    .line 2073
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 2075
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2077
    :cond_7
    :try_start_7
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    .line 2078
    .local v1, "key":I
    if-eqz v1, :cond_7

    .line 2079
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    monitor-exit v0

    .line 2081
    return v1

    .line 2080
    .end local v1    # "key":I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private blacklist removeListener(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .line 2092
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2093
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2094
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2095
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 1759
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_c

    .line 1760
    const-string v0, "WifiP2pManager"

    const-string v1, "Channel.close(): Null mP2pManager!?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1763
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->close(Landroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_24

    .line 1766
    nop

    .line 1769
    :goto_16
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->disconnect()V

    .line 1770
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 1771
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 1772
    return-void

    .line 1764
    :catch_24
    move-exception v0

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1778
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 1779
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 1782
    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 1784
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1785
    nop

    .line 1786
    return-void

    .line 1784
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1785
    throw v0
.end method

.method public blacklist getBinder()Landroid/os/Binder;
    .registers 2

    .line 1751
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mBinder:Landroid/os/Binder;

    return-object v0
.end method
