.class final Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
.super Landroid/os/Handler;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/input/InputManager$InputDeviceListener;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 821
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    .line 822
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    #@b
    .line 820
    return-void

    #@c
    .line 821
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 827
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 826
    :goto_0
    return-void

    #@6
    .line 829
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    #@8
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@a
    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    #@d
    goto :goto_0

    #@e
    .line 832
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    #@10
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@12
    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceRemoved(I)V

    #@15
    goto :goto_0

    #@16
    .line 835
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    #@18
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@1a
    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceChanged(I)V

    #@1d
    goto :goto_0

    #@1e
    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
