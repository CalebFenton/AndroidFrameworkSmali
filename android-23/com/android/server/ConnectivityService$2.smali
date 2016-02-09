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
    .line 1363
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
    .line 1389
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@10
    .line 1391
    const/4 v1, 0x0

    #@11
    array-length v3, p1

    #@12
    :goto_0
    if-ge v1, v3, :cond_0

    #@14
    aget-object v0, p1, v1

    #@16
    .line 1392
    .local v0, "iface":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@18
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get1(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 1391
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    #@23
    .line 1383
    return-void

    #@24
    .line 1389
    :catchall_0
    move-exception v1

    #@25
    monitor-exit v2

    #@26
    throw v1
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 0
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 1398
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    #@0
    .prologue
    .line 1371
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@9
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

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
    .line 1374
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_0

    #@14
    monitor-exit v2

    #@15
    return-void

    #@16
    .line 1376
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #@18
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get9(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit v2

    #@20
    .line 1365
    return-void

    #@21
    .line 1371
    .end local v0    # "oldRules":I
    :catchall_0
    move-exception v1

    #@22
    monitor-exit v2

    #@23
    throw v1
.end method
