.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    #@0
    .prologue
    .line 1503
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 5
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1533
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1534
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/util/ArraySet;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    #@10
    .line 1535
    const/4 v1, 0x0

    #@11
    array-length v3, p1

    #@12
    :goto_0
    if-ge v1, v3, :cond_0

    #@14
    aget-object v0, p1, v1

    #@16
    .line 1536
    .local v0, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@18
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Landroid/util/ArraySet;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1535
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    #@23
    .line 1527
    return-void

    #@24
    .line 1533
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public onRestrictBackgroundBlacklistChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "blacklisted"    # Z

    #@0
    .prologue
    .line 1567
    return-void
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1549
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->-set0(Lcom/android/server/ConnectivityService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1552
    if-eqz p1, :cond_0

    #@f
    .line 1553
    const-string/jumbo v0, "onRestrictBackgroundChanged(true): disabling tethering"

    #@12
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    #@15
    .line 1554
    iget-object v0, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@17
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-get11(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    #@1e
    .line 1542
    :cond_0
    return-void

    #@1f
    .line 1548
    :catchall_0
    move-exception v0

    #@20
    monitor-exit v1

    #@21
    throw v0
.end method

.method public onRestrictBackgroundWhitelistChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "whitelisted"    # Z

    #@0
    .prologue
    .line 1559
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    #@0
    .prologue
    .line 1511
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get10(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1513
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get12(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@c
    move-result-object v1

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    .line 1514
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_0

    #@14
    monitor-exit v2

    #@15
    return-void

    #@16
    .line 1516
    :cond_0
    if-nez p2, :cond_1

    #@18
    .line 1517
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@1a
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get12(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    :goto_0
    monitor-exit v2

    #@22
    .line 1505
    return-void

    #@23
    .line 1519
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@25
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get12(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 1511
    .end local v0    # "oldRules":I
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method
