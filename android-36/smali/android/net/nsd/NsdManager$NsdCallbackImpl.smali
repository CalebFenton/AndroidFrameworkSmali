.class Landroid/net/nsd/NsdManager$NsdCallbackImpl;
.super Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NsdCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mServHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "serviceHandler"    # Landroid/os/Handler;

    .line 744
    invoke-direct {p0}, Landroid/net/connectivity/android/net/nsd/INsdManagerCallback$Stub;-><init>()V

    .line 745
    iput-object p1, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    .line 746
    return-void
.end method

.method private blacklist sendDiscoveryRequest(IILandroid/net/nsd/DiscoveryRequest;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "listenerKey"    # I
    .param p3, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;

    .line 754
    iget-object v0, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    .line 755
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 754
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    return-void
.end method

.method private blacklist sendError(III)V
    .registers 6
    .param p1, "message"    # I
    .param p2, "listenerKey"    # I
    .param p3, "error"    # I

    .line 759
    iget-object v0, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    return-void
.end method

.method private blacklist sendInfo(IILandroid/net/nsd/NsdServiceInfo;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "listenerKey"    # I
    .param p3, "info"    # Landroid/net/nsd/NsdServiceInfo;

    .line 749
    iget-object v0, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void
.end method

.method private blacklist sendNoArg(II)V
    .registers 6
    .param p1, "message"    # I
    .param p2, "listenerKey"    # I

    .line 763
    iget-object v0, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->mServHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    return-void
.end method


# virtual methods
.method public blacklist onDiscoverServicesFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 773
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 774
    return-void
.end method

.method public blacklist onDiscoverServicesStarted(ILandroid/net/nsd/DiscoveryRequest;)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "discoveryRequest"    # Landroid/net/nsd/DiscoveryRequest;

    .line 768
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendDiscoveryRequest(IILandroid/net/nsd/DiscoveryRequest;)V

    .line 769
    return-void
.end method

.method public blacklist onRegisterServiceFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 798
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 799
    return-void
.end method

.method public blacklist onRegisterServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;

    .line 803
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendInfo(IILandroid/net/nsd/NsdServiceInfo;)V

    .line 804
    return-void
.end method

.method public blacklist onResolveServiceFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 818
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 819
    return-void
.end method

.method public blacklist onResolveServiceSucceeded(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;

    .line 823
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendInfo(IILandroid/net/nsd/NsdServiceInfo;)V

    .line 824
    return-void
.end method

.method public blacklist onServiceFound(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;

    .line 778
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendInfo(IILandroid/net/nsd/NsdServiceInfo;)V

    .line 779
    return-void
.end method

.method public blacklist onServiceInfoCallbackRegistrationFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 838
    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 839
    return-void
.end method

.method public blacklist onServiceInfoCallbackUnregistered(I)V
    .registers 3
    .param p1, "listenerKey"    # I

    .line 853
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendNoArg(II)V

    .line 854
    return-void
.end method

.method public blacklist onServiceLost(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;

    .line 783
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendInfo(IILandroid/net/nsd/NsdServiceInfo;)V

    .line 784
    return-void
.end method

.method public blacklist onServiceUpdated(ILandroid/net/nsd/NsdServiceInfo;)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "info"    # Landroid/net/nsd/NsdServiceInfo;

    .line 843
    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendInfo(IILandroid/net/nsd/NsdServiceInfo;)V

    .line 844
    return-void
.end method

.method public blacklist onServiceUpdatedLost(I)V
    .registers 3
    .param p1, "listenerKey"    # I

    .line 848
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendNoArg(II)V

    .line 849
    return-void
.end method

.method public blacklist onStopDiscoveryFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 788
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 789
    return-void
.end method

.method public blacklist onStopDiscoverySucceeded(I)V
    .registers 3
    .param p1, "listenerKey"    # I

    .line 793
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendNoArg(II)V

    .line 794
    return-void
.end method

.method public blacklist onStopResolutionFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 828
    const/16 v0, 0x19

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 829
    return-void
.end method

.method public blacklist onStopResolutionSucceeded(I)V
    .registers 3
    .param p1, "listenerKey"    # I

    .line 833
    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendNoArg(II)V

    .line 834
    return-void
.end method

.method public blacklist onUnregisterServiceFailed(II)V
    .registers 4
    .param p1, "listenerKey"    # I
    .param p2, "error"    # I

    .line 808
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendError(III)V

    .line 809
    return-void
.end method

.method public blacklist onUnregisterServiceSucceeded(I)V
    .registers 3
    .param p1, "listenerKey"    # I

    .line 813
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Landroid/net/nsd/NsdManager$NsdCallbackImpl;->sendNoArg(II)V

    .line 814
    return-void
.end method
