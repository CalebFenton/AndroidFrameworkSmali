.class public Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


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
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

.field mContext:Landroid/content/Context;

.field private mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

.field private mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

.field private mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;

.field private mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

.field private mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I
    .locals 1
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "l"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@0
    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 677
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@a
    .line 678
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@11
    .line 679
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    #@14
    .line 666
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@16
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@19
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    #@1b
    .line 667
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    #@1d
    invoke-direct {v0, p0, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V

    #@20
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    #@22
    .line 668
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    #@24
    .line 669
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    #@26
    .line 665
    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    .line 850
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 851
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 852
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 851
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V
    .locals 4
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    #@0
    .prologue
    .line 818
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xc

    #@6
    if-ne v0, v1, :cond_1

    #@8
    .line 819
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 820
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    #@e
    .line 821
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getInstanceName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 822
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 823
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@19
    move-result-object v3

    #@1a
    .line 820
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;->onDnsSdServiceAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@1d
    .line 817
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 825
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsType()I

    #@21
    move-result v0

    #@22
    const/16 v1, 0x10

    #@24
    if-ne v0, v1, :cond_2

    #@26
    .line 826
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 827
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    #@2c
    .line 828
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getDnsQueryName()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 829
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getTxtRecord()Ljava/util/Map;

    #@33
    move-result-object v2

    #@34
    .line 830
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@37
    move-result-object v3

    #@38
    .line 827
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;->onDnsSdTxtRecordAvailable(Ljava/lang/String;Ljava/util/Map;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@3b
    goto :goto_0

    #@3c
    .line 833
    :cond_2
    const-string/jumbo v0, "WifiP2pManager"

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v2, "Unhandled resp "

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    goto :goto_0
.end method

.method private handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 4
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    #@0
    .prologue
    .line 798
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 799
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    #@6
    .end local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleDnsSdServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;)V

    #@9
    .line 797
    :cond_0
    :goto_0
    return-void

    #@a
    .line 800
    .restart local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_1
    instance-of v0, p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 801
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 802
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    #@14
    .end local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V

    #@17
    goto :goto_0

    #@18
    .line 805
    .restart local p1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 806
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    #@1e
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getServiceType()I

    #@21
    move-result v1

    #@22
    .line 807
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getRawData()[B

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@29
    move-result-object v3

    #@2a
    .line 806
    invoke-interface {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;->onServiceAvailable(I[BLandroid/net/wifi/p2p/WifiP2pDevice;)V

    #@2d
    goto :goto_0
.end method

.method private handleUpnpServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;)V
    .locals 3
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    #@0
    .prologue
    .line 813
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    #@2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getUniqueServiceNames()Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    .line 814
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    #@9
    move-result-object v2

    #@a
    .line 813
    invoke-interface {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;->onUpnpServiceAvailable(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    #@d
    .line 812
    return-void
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 838
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 840
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 842
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    #@9
    add-int/lit8 v1, v0, 0x1

    #@b
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerKey:I

    #@d
    .line 843
    .local v0, "key":I
    if-eqz v0, :cond_1

    #@f
    .line 844
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;

    #@11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v2

    #@19
    .line 846
    return v0

    #@1a
    .line 840
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method
