.class Landroid/media/RemoteController$RcDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcDisplay"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/RemoteController;)V
    .locals 1
    .param p1, "rc"    # Landroid/media/RemoteController;

    #@0
    .prologue
    .line 550
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    #@3
    .line 551
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@a
    .line 550
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "artwork"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 666
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/media/RemoteController;

    #@9
    .line 667
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    #@b
    .line 668
    return-void

    #@c
    .line 671
    :cond_0
    if-nez p2, :cond_1

    #@e
    if-nez p3, :cond_1

    #@10
    .line 672
    return-void

    #@11
    .line 674
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    monitor-enter v0

    #@16
    .line 675
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v1

    #@1a
    if-eq v1, p1, :cond_2

    #@1c
    monitor-exit v0

    #@1d
    .line 676
    return-void

    #@1e
    :cond_2
    monitor-exit v0

    #@1f
    .line 679
    if-nez p2, :cond_3

    #@21
    .line 680
    new-instance p2, Landroid/os/Bundle;

    #@23
    .end local p2    # "metadata":Landroid/os/Bundle;
    const/4 v0, 0x1

    #@24
    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(I)V

    #@27
    .line 682
    .restart local p2    # "metadata":Landroid/os/Bundle;
    :cond_3
    if-eqz p3, :cond_4

    #@29
    .line 683
    const/16 v0, 0x64

    #@2b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@32
    .line 686
    :cond_4
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@35
    move-result-object v0

    #@36
    const/4 v1, 0x3

    #@37
    const/4 v2, 0x2

    #@38
    move v3, p1

    #@39
    move-object v5, p2

    #@3a
    move v6, v4

    #@3b
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@3e
    .line 665
    return-void

    #@3f
    .line 674
    :catchall_0
    move-exception v1

    #@40
    monitor-exit v0

    #@41
    throw v1
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 648
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/media/RemoteController;

    #@9
    .line 649
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    #@b
    .line 650
    return-void

    #@c
    .line 653
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    monitor-enter v0

    #@11
    .line 654
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-eq v1, p1, :cond_1

    #@17
    monitor-exit v0

    #@18
    .line 655
    return-void

    #@19
    :cond_1
    monitor-exit v0

    #@1a
    .line 658
    new-instance v5, Landroid/os/Bundle;

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    #@20
    .line 659
    .local v5, "metadata":Landroid/os/Bundle;
    const/16 v0, 0x64

    #@22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@29
    .line 660
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@2c
    move-result-object v0

    #@2d
    const/4 v1, 0x3

    #@2e
    const/4 v2, 0x2

    #@2f
    move v3, p1

    #@30
    move v6, v4

    #@31
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@34
    .line 647
    return-void

    #@35
    .line 653
    .end local v5    # "metadata":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v0

    #@37
    throw v1
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "genId"    # I
    .param p2, "clientMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 556
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v10

    #@8
    check-cast v10, Landroid/media/RemoteController;

    #@a
    .line 557
    .local v10, "rc":Landroid/media/RemoteController;
    if-nez v10, :cond_0

    #@c
    .line 558
    return-void

    #@d
    .line 560
    :cond_0
    const/4 v9, 0x0

    #@e
    .line 561
    .local v9, "isNew":Z
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    monitor-enter v2

    #@13
    .line 562
    :try_start_0
    invoke-static {v10}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I

    #@16
    move-result v0

    #@17
    if-eq v0, p1, :cond_1

    #@19
    .line 563
    invoke-static {v10, p1}, Landroid/media/RemoteController;->-set0(Landroid/media/RemoteController;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 564
    const/4 v9, 0x1

    #@1d
    :cond_1
    monitor-exit v2

    #@1e
    .line 567
    if-eqz p2, :cond_2

    #@20
    .line 568
    invoke-static {v10}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@23
    move-result-object v0

    #@24
    move v2, v1

    #@25
    move v3, p1

    #@26
    move v4, v1

    #@27
    move-object v5, p2

    #@28
    move v6, v1

    #@29
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@2c
    .line 571
    :cond_2
    if-nez v9, :cond_3

    #@2e
    if-eqz p3, :cond_4

    #@30
    .line 572
    :cond_3
    invoke-static {v10}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@33
    move-result-object v2

    #@34
    .line 573
    if-eqz p3, :cond_5

    #@36
    const/4 v6, 0x1

    #@37
    .line 572
    :goto_0
    const/4 v3, 0x4

    #@38
    move v4, v1

    #@39
    move v5, p1

    #@3a
    move v8, v1

    #@3b
    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@3e
    .line 555
    :cond_4
    return-void

    #@3f
    .line 561
    :catchall_0
    move-exception v0

    #@40
    monitor-exit v2

    #@41
    throw v0

    #@42
    :cond_5
    move v6, v1

    #@43
    .line 573
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 578
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    check-cast v7, Landroid/media/RemoteController;

    #@a
    .line 579
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    #@c
    .line 580
    return-void

    #@d
    .line 582
    :cond_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@10
    move-result-object v0

    #@11
    .line 583
    if-eqz p1, :cond_1

    #@13
    const/4 v3, 0x1

    #@14
    .line 582
    :goto_0
    const/4 v1, 0x5

    #@15
    move v4, v2

    #@16
    move v6, v2

    #@17
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@1a
    .line 577
    return-void

    #@1b
    :cond_1
    move v3, v2

    #@1c
    .line 583
    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 629
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    check-cast v7, Landroid/media/RemoteController;

    #@9
    .line 630
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    #@b
    .line 631
    return-void

    #@c
    .line 634
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 635
    return-void

    #@f
    .line 637
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    monitor-enter v0

    #@14
    .line 638
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v1

    #@18
    if-eq v1, p1, :cond_2

    #@1a
    monitor-exit v0

    #@1b
    .line 639
    return-void

    #@1c
    :cond_2
    monitor-exit v0

    #@1d
    .line 642
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@20
    move-result-object v0

    #@21
    const/4 v1, 0x3

    #@22
    const/4 v2, 0x2

    #@23
    move v3, p1

    #@24
    move-object v5, p2

    #@25
    move v6, v4

    #@26
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@29
    .line 628
    return-void

    #@2a
    .line 637
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v0

    #@2c
    throw v1
.end method

.method public setPlaybackState(IIJJF)V
    .locals 9
    .param p1, "genId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    #@0
    .prologue
    .line 588
    iget-object v1, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    check-cast v8, Landroid/media/RemoteController;

    #@8
    .line 589
    .local v8, "rc":Landroid/media/RemoteController;
    if-nez v8, :cond_0

    #@a
    .line 590
    return-void

    #@b
    .line 600
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    monitor-enter v1

    #@10
    .line 601
    :try_start_0
    invoke-static {v8}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v2

    #@14
    if-eq v2, p1, :cond_1

    #@16
    monitor-exit v1

    #@17
    .line 602
    return-void

    #@18
    :cond_1
    monitor-exit v1

    #@19
    .line 606
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    #@1b
    move v1, p2

    #@1c
    move-wide v2, p3

    #@1d
    move-wide v4, p5

    #@1e
    move/from16 v6, p7

    #@20
    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    #@23
    .line 607
    .local v0, "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    invoke-static {v8}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@26
    move-result-object v1

    #@27
    const/4 v2, 0x1

    #@28
    const/4 v3, 0x0

    #@29
    .line 608
    const/4 v5, 0x0

    #@2a
    const/4 v7, 0x0

    #@2b
    move v4, p1

    #@2c
    move-object v6, v0

    #@2d
    .line 607
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@30
    .line 587
    return-void

    #@31
    .line 600
    .end local v0    # "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit v1

    #@33
    throw v2
.end method

.method public setTransportControlInfo(III)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I
    .param p3, "posCapabilities"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 614
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    check-cast v7, Landroid/media/RemoteController;

    #@a
    .line 615
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    #@c
    .line 616
    return-void

    #@d
    .line 618
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    monitor-enter v0

    #@12
    .line 619
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result v1

    #@16
    if-eq v1, p1, :cond_1

    #@18
    monitor-exit v0

    #@19
    .line 620
    return-void

    #@1a
    :cond_1
    monitor-exit v0

    #@1b
    .line 623
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    #@1e
    move-result-object v0

    #@1f
    const/4 v1, 0x2

    #@20
    move v3, p1

    #@21
    move v4, p2

    #@22
    move v6, v2

    #@23
    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@26
    .line 613
    return-void

    #@27
    .line 618
    :catchall_0
    move-exception v1

    #@28
    monitor-exit v0

    #@29
    throw v1
.end method
