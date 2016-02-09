.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private mFrame:I

.field private mHavePendingVsync:Z

.field private mTimestampNanos:J

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Choreographer;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 791
    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    #@2
    .line 792
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    #@5
    .line 791
    return-void
.end method


# virtual methods
.method public onVsync(JII)V
    .locals 9
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 805
    if-eqz p3, :cond_0

    #@3
    .line 806
    const-string/jumbo v1, "Choreographer"

    #@6
    const-string/jumbo v4, "Received vsync from secondary display, but we don\'t support this case yet.  Choreographer needs a way to explicitly request vsync for a specific display to ensure it doesn\'t lose track of its scheduled vsync."

    #@9
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 810
    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    #@f
    .line 811
    return-void

    #@10
    .line 819
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@13
    move-result-wide v2

    #@14
    .line 820
    .local v2, "now":J
    cmp-long v1, p1, v2

    #@16
    if-lez v1, :cond_1

    #@18
    .line 821
    const-string/jumbo v1, "Choreographer"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Frame time is "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    sub-long v6, p1, v2

    #@29
    long-to-float v5, v6

    #@2a
    const v6, 0x358637bd    # 1.0E-6f

    #@2d
    mul-float/2addr v5, v6

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 822
    const-string/jumbo v5, " ms in the future!  Check that graphics HAL is generating vsync "

    #@35
    .line 821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    .line 823
    const-string/jumbo v5, "timestamps using the correct timebase."

    #@3c
    .line 821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 824
    move-wide p1, v2

    #@48
    .line 827
    :cond_1
    iget-boolean v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 828
    const-string/jumbo v1, "Choreographer"

    #@4f
    const-string/jumbo v4, "Already have a pending vsync event.  There should only be one at a time."

    #@52
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 834
    :goto_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    #@57
    .line 835
    iput p4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    #@59
    .line 836
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    #@5b
    invoke-static {v1}, Landroid/view/Choreographer;->-get1(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@62
    move-result-object v0

    #@63
    .line 837
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    #@66
    .line 838
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    #@68
    invoke-static {v1}, Landroid/view/Choreographer;->-get1(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    #@6b
    move-result-object v1

    #@6c
    const-wide/32 v4, 0xf4240

    #@6f
    div-long v4, p1, v4

    #@71
    invoke-virtual {v1, v0, v4, v5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@74
    .line 796
    return-void

    #@75
    .line 831
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iput-boolean v8, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    #@77
    goto :goto_0
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 843
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    #@3
    .line 844
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    #@5
    iget-wide v2, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    #@7
    iget v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    #@9
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->doFrame(JI)V

    #@c
    .line 842
    return-void
.end method
