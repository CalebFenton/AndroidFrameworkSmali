.class Lcom/android/server/display/WifiDisplayController$11;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestPeers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    #@0
    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 3
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    #@0
    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get0(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@9
    .line 442
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@1d
    .line 447
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 448
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@25
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get0(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 452
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@2f
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_2

    #@35
    .line 453
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$11;->this$0:Lcom/android/server/display/WifiDisplayController;

    #@37
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-wrap9(Lcom/android/server/display/WifiDisplayController;)V

    #@3a
    .line 436
    :cond_2
    return-void
.end method
