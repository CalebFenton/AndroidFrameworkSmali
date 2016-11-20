.class Lcom/android/server/display/WifiDisplayAdapter$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    #@0
    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@10
    move-result-object p1

    #@11
    .line 553
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@13
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 554
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@1b
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    #@22
    move-result v0

    #@23
    .line 553
    if-eqz v0, :cond_0

    #@25
    .line 555
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@27
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1

    #@31
    :cond_0
    :goto_0
    monitor-exit v1

    #@32
    .line 550
    return-void

    #@33
    .line 556
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@35
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@38
    .line 557
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@3a
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap4(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    #@41
    .line 558
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@43
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    goto :goto_0

    #@47
    .line 551
    :catchall_0
    move-exception v0

    #@48
    monitor-exit v1

    #@49
    throw v0
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    .line 527
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@3
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@6
    move-result-object v6

    #@7
    monitor-enter v6

    #@8
    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@a
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@11
    move-result-object p1

    #@12
    .line 529
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@14
    move-object v1, p1

    #@15
    move-object v2, p2

    #@16
    move v3, p3

    #@17
    move v4, p4

    #@18
    move v5, p5

    #@19
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    #@1c
    .line 531
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@1e
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@21
    move-result v0

    #@22
    if-ne v0, v7, :cond_0

    #@24
    .line 532
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@26
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@29
    move-result-object v0

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2e
    const/4 v1, 0x2

    #@2f
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@32
    .line 535
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@34
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@37
    .line 536
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@39
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    :goto_0
    monitor-exit v6

    #@3d
    .line 526
    return-void

    #@3e
    .line 533
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@40
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_0

    #@4a
    goto :goto_0

    #@4b
    .line 527
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit v6

    #@4d
    throw v0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .locals 3
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 499
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@3
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@a
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@11
    move-result-object p1

    #@12
    .line 502
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@14
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@17
    move-result v0

    #@18
    if-ne v0, v2, :cond_0

    #@1a
    .line 503
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@1c
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@1f
    move-result-object v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@28
    .line 506
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2a
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@2d
    .line 507
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2f
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    :goto_0
    monitor-exit v1

    #@33
    .line 498
    return-void

    #@34
    .line 504
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@36
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_0

    #@40
    goto :goto_0

    #@41
    .line 499
    :catchall_0
    move-exception v0

    #@42
    monitor-exit v1

    #@43
    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 516
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@11
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@1d
    .line 518
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@23
    .line 519
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@25
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_1
    monitor-exit v1

    #@29
    .line 513
    return-void

    #@2a
    .line 514
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method public onDisplayDisconnected()V
    .locals 3

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap3(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@c
    .line 569
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@e
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get1(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 570
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@16
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get0(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set1(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@22
    .line 572
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@24
    const/4 v2, 0x0

    #@25
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set0(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@28
    .line 573
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2a
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    :cond_1
    monitor-exit v1

    #@2e
    .line 564
    return-void

    #@2f
    .line 566
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method

.method public onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    #@0
    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set6(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;

    #@c
    .line 545
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@e
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 542
    return-void

    #@13
    .line 543
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .locals 2
    .param p1, "featureState"    # I

    #@0
    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get5(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@c
    move-result v0

    #@d
    if-eq v0, p1, :cond_0

    #@f
    .line 448
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@11
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set4(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@14
    .line 449
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@16
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 445
    return-void

    #@1b
    .line 446
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public onScanFinished()V
    .locals 3

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 491
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@15
    .line 492
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@17
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 488
    return-void

    #@1c
    .line 489
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method public onScanResults([Landroid/hardware/display/WifiDisplay;)V
    .locals 5
    .param p1, "availableDisplays"    # [Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@9
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get7(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    #@10
    move-result-object p1

    #@11
    .line 470
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@13
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    #@16
    move-result-object v2

    #@17
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    const/4 v0, 0x0

    #@1e
    .line 473
    .local v0, "changed":Z
    :goto_0
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_1
    if-nez v0, :cond_2

    #@21
    array-length v2, p1

    #@22
    if-ge v1, v2, :cond_2

    #@24
    .line 474
    aget-object v2, p1, v1

    #@26
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    #@29
    move-result v2

    #@2a
    .line 475
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2c
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->-get2(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    #@2f
    move-result-object v4

    #@30
    aget-object v4, v4, v1

    #@32
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    #@35
    move-result v4

    #@36
    .line 474
    if-eq v2, v4, :cond_1

    #@38
    const/4 v0, 0x1

    #@39
    .line 473
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 470
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x1

    #@3d
    .restart local v0    # "changed":Z
    goto :goto_0

    #@3e
    .line 474
    .restart local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@3f
    goto :goto_2

    #@40
    .line 478
    :cond_2
    if-eqz v0, :cond_3

    #@42
    .line 479
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@44
    invoke-static {v2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-set2(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    #@47
    .line 480
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@49
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@4c
    .line 481
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@4e
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V

    #@51
    .line 482
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@53
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    :cond_3
    monitor-exit v3

    #@57
    .line 465
    return-void

    #@58
    .line 466
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    #@59
    monitor-exit v3

    #@5a
    throw v2
.end method

.method public onScanStarted()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 456
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@3
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@a
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get8(Lcom/android/server/display/WifiDisplayAdapter;)I

    #@d
    move-result v0

    #@e
    if-eq v0, v2, :cond_0

    #@10
    .line 458
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@12
    const/4 v2, 0x1

    #@13
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->-set5(Lcom/android/server/display/WifiDisplayAdapter;I)I

    #@16
    .line 459
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@18
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v1

    #@1c
    .line 455
    return-void

    #@1d
    .line 456
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
