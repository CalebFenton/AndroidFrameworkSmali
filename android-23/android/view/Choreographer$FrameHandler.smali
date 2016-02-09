.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Choreographer;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 765
    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    #@2
    .line 766
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 765
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 771
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 770
    :goto_0
    return-void

    #@6
    .line 773
    :pswitch_0
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    #@8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@b
    move-result-wide v2

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->doFrame(JI)V

    #@10
    goto :goto_0

    #@11
    .line 776
    :pswitch_1
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    #@13
    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    #@16
    goto :goto_0

    #@17
    .line 779
    :pswitch_2
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    #@19
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1b
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 771
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
