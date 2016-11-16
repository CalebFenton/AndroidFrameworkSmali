.class Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    #@0
    .prologue
    .line 1028
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x50005

    #@9
    .line 1032
    const/4 v2, 0x1

    #@a
    const/4 v3, 0x0

    #@b
    .line 1031
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@e
    .line 1030
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1037
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    #@6
    move-result-object v7

    #@7
    .line 1039
    new-instance v0, Landroid/net/NetworkState;

    #@9
    move-object v2, v1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p1

    #@c
    move-object v5, v1

    #@d
    move-object v6, v1

    #@e
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1037
    const v1, 0x50005

    #@14
    .line 1038
    const/4 v2, 0x2

    #@15
    const/4 v3, 0x0

    #@16
    .line 1037
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@19
    .line 1036
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1044
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    #@3
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    #@6
    move-result-object v7

    #@7
    .line 1046
    new-instance v0, Landroid/net/NetworkState;

    #@9
    move-object v2, p2

    #@a
    move-object v3, v1

    #@b
    move-object v4, p1

    #@c
    move-object v5, v1

    #@d
    move-object v6, v1

    #@e
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 1044
    const v1, 0x50005

    #@14
    .line 1045
    const/4 v2, 0x3

    #@15
    const/4 v3, 0x0

    #@16
    .line 1044
    invoke-virtual {v7, v1, v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@19
    .line 1043
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    #@5
    move-result-object v0

    #@6
    const v1, 0x50005

    #@9
    .line 1052
    const/4 v2, 0x4

    #@a
    const/4 v3, 0x0

    #@b
    .line 1051
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@e
    .line 1050
    return-void
.end method
