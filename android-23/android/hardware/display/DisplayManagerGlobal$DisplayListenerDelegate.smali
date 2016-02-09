.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 439
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    :goto_0
    const/4 v1, 0x1

    #@8
    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@b
    .line 440
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@d
    .line 438
    return-void

    #@e
    .line 439
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@11
    move-result-object v0

    #@12
    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    #@0
    .prologue
    .line 449
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    #@4
    .line 448
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 453
    :goto_0
    return-void

    #@6
    .line 456
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@8
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@a
    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    #@d
    goto :goto_0

    #@e
    .line 459
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@10
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@12
    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    #@15
    goto :goto_0

    #@16
    .line 462
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    #@18
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayRemoved(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendDisplayEvent(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 444
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p2, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    #@4
    move-result-object v0

    #@5
    .line 445
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    #@8
    .line 443
    return-void
.end method
