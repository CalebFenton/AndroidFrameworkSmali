.class Lcom/google/android/maps/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/GestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/maps/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/maps/GestureDetector;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@2
    .line 248
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 247
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/GestureDetector;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/maps/GestureDetector;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@2
    .line 252
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 251
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 274
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
    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@21
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->-get2(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnGestureListener;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@27
    invoke-static {v1}, Lcom/google/android/maps/GestureDetector;->-get0(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    #@2e
    .line 256
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@31
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->-wrap0(Lcom/google/android/maps/GestureDetector;)V

    #@34
    goto :goto_0

    #@35
    .line 268
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@37
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->-get1(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_0

    #@3d
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@3f
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->-get3(Lcom/google/android/maps/GestureDetector;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_0

    #@45
    .line 269
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@47
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->-get1(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    #@4a
    move-result-object v0

    #@4b
    iget-object v1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #@4d
    invoke-static {v1}, Lcom/google/android/maps/GestureDetector;->-get0(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;

    #@50
    move-result-object v1

    #@51
    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    #@54
    goto :goto_0

    #@55
    .line 257
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
