.class Landroid/net/ip/IpManager$2;
.super Lcom/android/server/net/NetlinkTracker;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # Lcom/android/server/net/NetlinkTracker$Callback;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    #@2
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetlinkTracker;-><init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    #@5
    .line 440
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 443
    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceAdded(Ljava/lang/String;)V

    #@3
    .line 444
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    #@5
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 445
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    #@11
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    #@17
    .line 442
    :cond_0
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 451
    invoke-super {p0, p1}, Lcom/android/server/net/NetlinkTracker;->interfaceRemoved(Ljava/lang/String;)V

    #@3
    .line 452
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    #@5
    invoke-static {v0}, Landroid/net/ip/IpManager;->-get1(Landroid/net/ip/IpManager;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 456
    iget-object v0, p0, Landroid/net/ip/IpManager$2;->this$0:Landroid/net/ip/IpManager;

    #@11
    iget-object v0, v0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    #@17
    .line 450
    :cond_0
    return-void
.end method
