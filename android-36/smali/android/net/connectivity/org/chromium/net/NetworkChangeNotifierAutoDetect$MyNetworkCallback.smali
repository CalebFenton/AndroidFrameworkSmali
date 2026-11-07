.class Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNetworkCallback"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mVpnInPlace:Landroid/net/Network;

.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 723
    const-class v0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 723
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method

.method private blacklist ignoreConnectedInaccessibleVpn(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 768
    if-eqz p2, :cond_18

    .line 769
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    .line 770
    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->vpnAccessible(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 768
    :goto_19
    return v0
.end method

.method private blacklist ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 780
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreNetworkDueToVpn(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 781
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedInaccessibleVpn(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 780
    :goto_10
    return v0
.end method

.method private blacklist ignoreNetworkDueToVpn(Landroid/net/Network;)Z
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 753
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method blacklist initializeVpnInPlace()V
    .registers 6

    .line 730
    nop

    .line 731
    const-string v0, "NetworkChangeNotifierAutoDetect.initializeVpnInPlace"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 733
    .local v0, "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v1

    .line 734
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$smgetAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    .line 735
    .local v1, "networks":[Landroid/net/Network;
    iput-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 737
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 738
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    .line 739
    invoke-virtual {v2, v4}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 740
    .local v2, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_32

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 741
    aget-object v3, v1, v3

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_38

    .line 744
    .end local v1    # "networks":[Landroid/net/Network;
    .end local v2    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_32
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 745
    .end local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_37
    return-void

    .line 730
    .restart local v0    # "event":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_38
    move-exception v1

    if-eqz v0, :cond_43

    :try_start_3b
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw v1
.end method

.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 11
    .param p1, "network"    # Landroid/net/Network;

    .line 786
    const-string v0, "NetworkChangeNotifierCallback::onAvailable"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v1

    .line 787
    .local v1, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_6
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    .line 788
    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 789
    .local v0, "capabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_57

    if-eqz v2, :cond_1c

    .line 817
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 790
    :cond_1b
    return-void

    .line 792
    :cond_1c
    nop

    .line 793
    const/4 v2, 0x4

    :try_start_1e
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 796
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_30
    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    move v8, v2

    .line 797
    .local v8, "makeVpnDefault":Z
    if-eqz v8, :cond_38

    .line 798
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 800
    :cond_38
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v5

    .line 802
    .local v5, "netId":J
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getConnectionType(Landroid/net/Network;)I

    move-result v7

    .line 803
    .local v7, "connectionType":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v3, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$1;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;JIZ)V

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    :try_end_51
    .catchall {:try_start_1e .. :try_end_51} :catchall_57

    .line 817
    .end local v0    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v5    # "netId":J
    .end local v7    # "connectionType":I
    .end local v8    # "makeVpnDefault":Z
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 818
    .end local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_56
    return-void

    .line 786
    .restart local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_57
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_63

    :try_start_5b
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    throw v2
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 823
    nop

    .line 824
    const-string v0, "NetworkChangeNotifierCallback::onCapabilitiesChanged"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 825
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_7
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_31

    if-eqz v1, :cond_13

    .line 839
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 826
    :cond_12
    return-void

    .line 830
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v1

    .line 831
    .local v1, "netId":J
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getConnectionType(Landroid/net/Network;)I

    move-result v3

    .line 832
    .local v3, "connectionType":I
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v5, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$2;

    invoke-direct {v5, p0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$2;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;JI)V

    invoke-static {v4, v5}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_31

    .line 839
    .end local v1    # "netId":J
    .end local v3    # "connectionType":I
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 840
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_30
    return-void

    .line 823
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_31
    move-exception v1

    if-eqz v0, :cond_3c

    :try_start_34
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw v1
.end method

.method public whitelist onLosing(Landroid/net/Network;I)V
    .registers 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .line 844
    const-string v0, "NetworkChangeNotifierCallback::onLosing"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 845
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v1

    .line 846
    invoke-virtual {v1, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 847
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p1, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreConnectedNetwork(Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_30

    if-eqz v2, :cond_1c

    .line 858
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 848
    :cond_1b
    return-void

    .line 850
    :cond_1c
    :try_start_1c
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v2

    .line 851
    .local v2, "netId":J
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v5, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;

    invoke-direct {v5, p0, v2, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$3;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;J)V

    invoke-static {v4, v5}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_30

    .line 858
    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v2    # "netId":J
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 859
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_2f
    return-void

    .line 844
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_30
    move-exception v1

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v1
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .line 863
    const-string v0, "NetworkChangeNotifierCallback::onLost"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 864
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_6
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->ignoreNetworkDueToVpn(Landroid/net/Network;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_59

    if-eqz v1, :cond_12

    .line 895
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 865
    :cond_11
    return-void

    .line 867
    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$4;

    invoke-direct {v2, p0, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$4;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;Landroid/net/Network;)V

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V

    .line 877
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    if-eqz v1, :cond_53

    .line 878
    nop

    .line 879
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->mVpnInPlace:Landroid/net/Network;

    .line 881
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$fgetmConnectivityManagerDelegate(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;)Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$smgetAllNetworksFiltered(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_3a

    aget-object v4, v1, v3

    .line 882
    .local v4, "newNetwork":Landroid/net/Network;
    invoke-virtual {p0, v4}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 881
    .end local v4    # "newNetwork":Landroid/net/Network;
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 884
    :cond_3a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->updateCurrentNetworkState()V

    .line 886
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v1

    .line 887
    .local v1, "newConnectionType":I
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;->this$0:Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v3, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$5;

    invoke-direct {v3, p0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback$5;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$MyNetworkCallback;I)V

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_59

    .line 895
    .end local v1    # "newConnectionType":I
    :cond_53
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 896
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_58
    return-void

    .line 863
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_59
    move-exception v1

    if-eqz v0, :cond_64

    :try_start_5c
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw v1
.end method
