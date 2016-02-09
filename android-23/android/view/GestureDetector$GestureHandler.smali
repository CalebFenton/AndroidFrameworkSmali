.class Landroid/view/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/GestureDetector;

    #@0
    .prologue
    .line 277
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@2
    .line 278
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 277
    return-void
.end method

.method constructor <init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/GestureDetector;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 281
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@2
    .line 282
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 308
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
    .line 289
    :pswitch_0
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@21
    invoke-static {v0}, Landroid/view/GestureDetector;->-get2(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@27
    invoke-static {v1}, Landroid/view/GestureDetector;->-get0(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    #@2e
    .line 286
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 293
    :pswitch_1
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@31
    invoke-static {v0}, Landroid/view/GestureDetector;->-wrap0(Landroid/view/GestureDetector;)V

    #@34
    goto :goto_0

    #@35
    .line 298
    :pswitch_2
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@37
    invoke-static {v0}, Landroid/view/GestureDetector;->-get1(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_0

    #@3d
    .line 299
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@3f
    invoke-static {v0}, Landroid/view/GestureDetector;->-get3(Landroid/view/GestureDetector;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_1

    #@45
    .line 300
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@47
    invoke-static {v0}, Landroid/view/GestureDetector;->-get1(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    #@4a
    move-result-object v0

    #@4b
    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@4d
    invoke-static {v1}, Landroid/view/GestureDetector;->-get0(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    #@50
    move-result-object v1

    #@51
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    #@54
    goto :goto_0

    #@55
    .line 302
    :cond_1
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    #@57
    const/4 v1, 0x1

    #@58
    invoke-static {v0, v1}, Landroid/view/GestureDetector;->-set0(Landroid/view/GestureDetector;Z)Z

    #@5b
    goto :goto_0

    #@5c
    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
