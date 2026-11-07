.class Landroid/net/wifi/p2p/WifiP2pGroupList$1;
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
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/p2p/WifiP2pGroupList;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/wifi/p2p/WifiP2pGroupList;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected blacklist entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 7
    .param p1, "evicted"    # Z
    .param p2, "netId"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p4, "newValue"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 66
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-$$Nest$fgetmListener(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-$$Nest$fgetisClearCalled(Landroid/net/wifi/p2p/WifiP2pGroupList;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 67
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->this$0:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->-$$Nest$fgetmListener(Landroid/net/wifi/p2p/WifiP2pGroupList;)Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;->onDeleteGroup(I)V

    .line 69
    :cond_1d
    return-void
.end method

.method protected bridge synthetic whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 62
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Landroid/net/wifi/p2p/WifiP2pGroup;

    check-cast p4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/WifiP2pGroupList$1;->entryRemoved(ZLjava/lang/Integer;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
