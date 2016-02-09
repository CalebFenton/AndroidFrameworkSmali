.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaSync;

    #@0
    .prologue
    .line 525
    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, -0x1

    #@2
    .line 527
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@4
    invoke-static {v6}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    #@7
    move-result-object v7

    #@8
    monitor-enter v7

    #@9
    .line 528
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@b
    invoke-static {v6}, Landroid/media/MediaSync;->-get6(Landroid/media/MediaSync;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v6

    #@f
    float-to-double v8, v6

    #@10
    const-wide/16 v10, 0x0

    #@12
    cmpl-double v6, v8, v10

    #@14
    if-nez v6, :cond_0

    #@16
    monitor-exit v7

    #@17
    .line 529
    return-void

    #@18
    .line 532
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@1a
    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    #@1d
    move-result-object v6

    #@1e
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_1

    #@24
    monitor-exit v7

    #@25
    .line 533
    return-void

    #@26
    .line 536
    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@28
    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    #@2b
    move-result-object v6

    #@2c
    const/4 v8, 0x0

    #@2d
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    #@33
    .line 537
    .local v0, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    iget-object v6, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@35
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@38
    move-result v4

    #@39
    .line 539
    .local v4, "size":I
    if-lez v4, :cond_2

    #@3b
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@3d
    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@44
    move-result v6

    #@45
    const/4 v8, 0x3

    #@46
    if-eq v6, v8, :cond_2

    #@48
    .line 541
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@4a
    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    .line 546
    :cond_2
    :goto_0
    :try_start_4
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@53
    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    #@56
    move-result-object v6

    #@57
    .line 547
    iget-object v8, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@59
    .line 549
    const/4 v9, 0x1

    #@5a
    .line 546
    invoke-virtual {v6, v8, v4, v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    #@5d
    move-result v5

    #@5e
    .line 550
    .local v5, "sizeWritten":I
    if-lez v5, :cond_5

    #@60
    .line 551
    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    #@62
    cmp-long v6, v8, v12

    #@64
    if-eqz v6, :cond_3

    #@66
    .line 552
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@68
    .line 553
    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    #@6a
    .line 552
    invoke-static {v6, v4, v8, v9}, Landroid/media/MediaSync;->-wrap1(Landroid/media/MediaSync;IJ)V

    #@6d
    .line 554
    const-wide/16 v8, -0x1

    #@6f
    iput-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    #@71
    .line 557
    :cond_3
    if-ne v5, v4, :cond_5

    #@73
    .line 558
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@75
    invoke-static {v6, v0}, Landroid/media/MediaSync;->-wrap3(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    #@78
    .line 559
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@7a
    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    #@7d
    move-result-object v6

    #@7e
    const/4 v8, 0x0

    #@7f
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@82
    .line 560
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@84
    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    #@87
    move-result-object v6

    #@88
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@8b
    move-result v6

    #@8c
    if-nez v6, :cond_4

    #@8e
    .line 561
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@90
    const-wide/16 v8, 0x0

    #@92
    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@95
    :cond_4
    monitor-exit v7

    #@96
    .line 563
    return-void

    #@97
    .line 542
    .end local v5    # "sizeWritten":I
    :catch_0
    move-exception v1

    #@98
    .line 543
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string/jumbo v6, "MediaSync"

    #@9b
    const-string/jumbo v8, "could not start audio track"

    #@9e
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a1
    goto :goto_0

    #@a2
    .line 527
    .end local v0    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    #@a3
    monitor-exit v7

    #@a4
    throw v6

    #@a5
    .line 566
    .restart local v0    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .restart local v4    # "size":I
    .restart local v5    # "sizeWritten":I
    :cond_5
    :try_start_6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    #@a7
    .line 567
    iget-object v8, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@a9
    invoke-static {v8}, Landroid/media/MediaSync;->-wrap0(Landroid/media/MediaSync;)J

    #@ac
    move-result-wide v8

    #@ad
    .line 566
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@b0
    move-result-wide v2

    #@b1
    .line 568
    .local v2, "pendingTimeMs":J
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    #@b3
    const-wide/16 v8, 0x2

    #@b5
    div-long v8, v2, v8

    #@b7
    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ba
    monitor-exit v7

    #@bb
    .line 526
    return-void
.end method
