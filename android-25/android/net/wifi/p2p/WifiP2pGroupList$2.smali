.class Landroid/net/wifi/p2p/WifiP2pGroupList$2;
.super Landroid/util/LruCache;
.source "WifiP2pGroupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "$anonymous0"    # I

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@2
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    #@5
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .param p1, "evicted"    # Z
    .param p2, "netId"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p4, "newValue"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@2
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-get1(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@a
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-get0(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 56
    :cond_0
    :goto_0
    return-void

    #@11
    .line 58
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    #@13
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-get1(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    #@1a
    move-result v1

    #@1b
    invoke-interface {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;->onDeleteGroup(I)V

    #@1e
    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .param p2, "netId"    # Ljava/lang/Object;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 55
    check-cast p2, Ljava/lang/Integer;

    #@2
    .end local p2    # "netId":Ljava/lang/Object;
    check-cast p3, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@4
    .end local p3    # "oldValue":Ljava/lang/Object;
    check-cast p4, Landroid/net/wifi/p2p/WifiP2pGroup;

    #@6
    .end local p4    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    #@9
    return-void
.end method
