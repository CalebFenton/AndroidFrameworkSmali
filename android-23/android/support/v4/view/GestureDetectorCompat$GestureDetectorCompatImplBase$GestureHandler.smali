.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@2
    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 103
    return-void
.end method

.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$1"    # Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@2
    .line 108
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 107
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unknown message "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 115
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@21
    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-get2(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnGestureListener;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@27
    invoke-static {v1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-get0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    #@2e
    .line 112
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 119
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@31
    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-wrap0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    #@34
    goto :goto_0

    #@35
    .line 124
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@37
    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-get1(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_0

    #@3d
    .line 125
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@3f
    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-get3(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_1

    #@45
    .line 126
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@47
    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-get1(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;

    #@4a
    move-result-object v0

    #@4b
    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@4d
    invoke-static {v1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-get0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;

    #@50
    move-result-object v1

    #@51
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    #@54
    goto :goto_0

    #@55
    .line 128
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$1:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    #@57
    const/4 v1, 0x1

    #@58
    invoke-static {v0, v1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->-set0(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Z)Z

    #@5b
    goto :goto_0

    #@5c
    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
