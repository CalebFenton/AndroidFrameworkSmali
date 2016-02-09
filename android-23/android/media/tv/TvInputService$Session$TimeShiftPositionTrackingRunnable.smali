.class final Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeShiftPositionTrackingRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService$Session;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    #@0
    .prologue
    .line 1404
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    #@0
    .prologue
    .line 1407
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@2
    invoke-virtual {v4}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetStartPosition()J

    #@5
    move-result-wide v2

    #@6
    .line 1408
    .local v2, "startPositionMs":J
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@8
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->-get4(Landroid/media/tv/TvInputService$Session;)J

    #@b
    move-result-wide v4

    #@c
    cmp-long v4, v4, v2

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 1409
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@12
    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->-set2(Landroid/media/tv/TvInputService$Session;J)J

    #@15
    .line 1410
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@17
    invoke-static {v4, v2, v3}, Landroid/media/tv/TvInputService$Session;->-wrap2(Landroid/media/tv/TvInputService$Session;J)V

    #@1a
    .line 1412
    :cond_0
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@1c
    invoke-virtual {v4}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetCurrentPosition()J

    #@1f
    move-result-wide v0

    #@20
    .line 1413
    .local v0, "currentPositionMs":J
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@22
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->-get4(Landroid/media/tv/TvInputService$Session;)J

    #@25
    move-result-wide v4

    #@26
    cmp-long v4, v0, v4

    #@28
    if-gez v4, :cond_1

    #@2a
    .line 1414
    const-string/jumbo v4, "TvInputService"

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Current position ("

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    const-string/jumbo v6, ") cannot be earlier than"

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    .line 1415
    const-string/jumbo v6, " start position ("

    #@47
    .line 1414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    .line 1415
    iget-object v6, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@4d
    invoke-static {v6}, Landroid/media/tv/TvInputService$Session;->-get4(Landroid/media/tv/TvInputService$Session;)J

    #@50
    move-result-wide v6

    #@51
    .line 1414
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    .line 1415
    const-string/jumbo v6, "). Reset to the start "

    #@58
    .line 1414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    .line 1416
    const-string/jumbo v6, "position."

    #@5f
    .line 1414
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v5

    #@67
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1417
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@6c
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->-get4(Landroid/media/tv/TvInputService$Session;)J

    #@6f
    move-result-wide v0

    #@70
    .line 1419
    :cond_1
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@72
    invoke-static {v4}, Landroid/media/tv/TvInputService$Session;->-get0(Landroid/media/tv/TvInputService$Session;)J

    #@75
    move-result-wide v4

    #@76
    cmp-long v4, v4, v0

    #@78
    if-eqz v4, :cond_2

    #@7a
    .line 1420
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@7c
    invoke-static {v4, v0, v1}, Landroid/media/tv/TvInputService$Session;->-set0(Landroid/media/tv/TvInputService$Session;J)J

    #@7f
    .line 1421
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@81
    invoke-static {v4, v0, v1}, Landroid/media/tv/TvInputService$Session;->-wrap1(Landroid/media/tv/TvInputService$Session;J)V

    #@84
    .line 1423
    :cond_2
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@86
    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@88
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@8a
    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->-get5(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@91
    .line 1424
    iget-object v4, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@93
    iget-object v4, v4, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    #@95
    iget-object v5, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$1:Landroid/media/tv/TvInputService$Session;

    #@97
    invoke-static {v5}, Landroid/media/tv/TvInputService$Session;->-get5(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    #@9a
    move-result-object v5

    #@9b
    .line 1425
    const-wide/16 v6, 0x3e8

    #@9d
    .line 1424
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@a0
    .line 1406
    return-void
.end method
