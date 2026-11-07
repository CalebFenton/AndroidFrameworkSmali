.class Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;
.super Landroid/net/wifi/p2p/IWifiP2pListener$Stub;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnWifiP2pListenerProxy"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$30a96EM1K8YORJnow2H3q3UHcp0(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onGroupCreated$9(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3hQLciKlsD0axEd4lgZq7QRicII(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onPeerClientDisconnected$11(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3k0BUeHwfjS1e76DQZSi77VvdXg(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onPeerClientJoined$10(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$87JWo4hctwT8Xnn_LoQlqN-s6IQ(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onDiscoveryStateChanged$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A9_gsC3UiiEpe_GMDyffP9mkyx8(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onPeerListChanged$4(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AwyFKmmEIVFNO34qq3a6BS1Bok0(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onFrequencyChanged$12(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LL6USCNufjaO_ggkxoGBMqizaYk(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onGroupRemoved$13()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QjfKZihm8J4sDfv6a5U0LQp2ykA(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onP2pStateChanged$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Qtl2fJP3KNFDrJK7WaZarvQORso(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onGroupNegotiationRejectedByUser$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Sz20BKjrsUUOQV-svLAGCHZjLqg(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onListenStateChanged$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$beHr4s8sjgrgvhPT1gdBxz-2OUU(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onGroupCreating$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d4f-uWgmDjwonnDy8pef8Ppge0I(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onDeviceConfigurationChanged$3(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jZqbjqdqlW2DczqVJlU_VnXmflo(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onPersistentGroupsChanged$5(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jz5ZvcOfA1y7NENUK-DckZQ6774(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->lambda$onGroupCreationFailed$8(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    .line 1563
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pListener$Stub;-><init>()V

    .line 1564
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1567
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    .line 1568
    return-void
.end method

.method private synthetic blacklist lambda$onDeviceConfigurationChanged$3(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1591
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onDeviceConfigurationChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDiscoveryStateChanged$1(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1579
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onDiscoveryStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFrequencyChanged$12(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1645
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onFrequencyChanged(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method private synthetic blacklist lambda$onGroupCreated$9(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1627
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onGroupCreated(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method private synthetic blacklist lambda$onGroupCreating$6()V
    .registers 2

    .line 1609
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onGroupCreating()V

    return-void
.end method

.method private synthetic blacklist lambda$onGroupCreationFailed$8(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 1621
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onGroupCreationFailed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onGroupNegotiationRejectedByUser$7()V
    .registers 2

    .line 1615
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onGroupNegotiationRejectedByUser()V

    return-void
.end method

.method private synthetic blacklist lambda$onGroupRemoved$13()V
    .registers 2

    .line 1651
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onGroupRemoved()V

    return-void
.end method

.method private synthetic blacklist lambda$onListenStateChanged$2(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1585
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onListenStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onP2pStateChanged$0(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1573
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onP2pStateChanged(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPeerClientDisconnected$11(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1639
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onPeerClientDisconnected(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPeerClientJoined$10(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 4
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1633
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onPeerClientJoined(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPeerListChanged$4(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 3
    .param p1, "p2pDeviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1597
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onPeerListChanged(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPersistentGroupsChanged$5(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 3
    .param p1, "p2pGroupList"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 1603
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mListener:Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pListener;->onPersistentGroupsChanged(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    return-void
.end method


# virtual methods
.method public blacklist onDeviceConfigurationChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "p2pDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1591
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1592
    return-void
.end method

.method public blacklist onDiscoveryStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1579
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1580
    return-void
.end method

.method public blacklist onFrequencyChanged(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 5
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1645
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda13;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1646
    return-void
.end method

.method public blacklist onGroupCreated(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 5
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1627
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1628
    return-void
.end method

.method public blacklist onGroupCreating()V
    .registers 3

    .line 1608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1609
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda8;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1610
    return-void
.end method

.method public blacklist onGroupCreationFailed(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1621
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda7;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1622
    return-void
.end method

.method public blacklist onGroupNegotiationRejectedByUser()V
    .registers 3

    .line 1614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1615
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda11;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1616
    return-void
.end method

.method public blacklist onGroupRemoved()V
    .registers 3

    .line 1650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1651
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda9;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1652
    return-void
.end method

.method public blacklist onListenStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1585
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda10;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1586
    return-void
.end method

.method public blacklist onP2pStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1573
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1574
    return-void
.end method

.method public blacklist onPeerClientDisconnected(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 5
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1639
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1640
    return-void
.end method

.method public blacklist onPeerClientJoined(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 5
    .param p1, "p2pInfo"    # Landroid/net/wifi/p2p/WifiP2pInfo;
    .param p2, "p2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1633
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda12;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1634
    return-void
.end method

.method public blacklist onPeerListChanged(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 4
    .param p1, "p2pDeviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 1596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1597
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1598
    return-void
.end method

.method public blacklist onPersistentGroupsChanged(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .registers 4
    .param p1, "p2pGroupList"    # Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 1602
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1603
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/p2p/WifiP2pManager$OnWifiP2pListenerProxy;Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1604
    return-void
.end method
