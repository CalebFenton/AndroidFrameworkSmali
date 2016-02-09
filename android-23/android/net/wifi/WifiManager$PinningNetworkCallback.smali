.class Landroid/net/wifi/WifiManager$PinningNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinningNetworkCallback"
.end annotation


# instance fields
.field private mPinnedNetwork:Landroid/net/Network;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;

    #@0
    .prologue
    .line 2072
    iput-object p1, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->this$0:Landroid/net/wifi/WifiManager;

    #@2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$PinningNetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$PinningNetworkCallback;-><init>(Landroid/net/wifi/WifiManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2086
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    #@3
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    #@c
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 2087
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    #@19
    invoke-static {v3}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    #@1c
    .line 2088
    const-string/jumbo v0, "WifiManager"

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Wifi alternate reality disabled on network "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 2089
    iput-object v3, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    #@38
    .line 2090
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->this$0:Landroid/net/wifi/WifiManager;

    #@3a
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->-wrap1(Landroid/net/wifi/WifiManager;)V

    #@3d
    .line 2085
    :cond_0
    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    #@0
    .prologue
    .line 2077
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    #@3
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2078
    invoke-static {}, Landroid/net/wifi/WifiManager;->-get2()Landroid/net/ConnectivityManager;

    #@10
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    #@13
    .line 2079
    iput-object p1, p0, Landroid/net/wifi/WifiManager$PinningNetworkCallback;->mPinnedNetwork:Landroid/net/Network;

    #@15
    .line 2080
    const-string/jumbo v0, "WifiManager"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Wifi alternate reality enabled on network "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 2076
    :cond_0
    return-void
.end method
