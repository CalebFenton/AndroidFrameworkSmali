.class final Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceListenerDelegate"
.end annotation


# static fields
.field static final blacklist MSG_DEVICE_ADDED:I = 0x1

.field static final blacklist MSG_DEVICE_CHANGED:I = 0x3

.field static final blacklist MSG_DEVICE_REMOVED:I = 0x2


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$InputDeviceListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 350
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 351
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 352
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    .line 364
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceChanged(I)V

    goto :goto_1e

    .line 361
    :pswitch_e
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceRemoved(I)V

    .line 362
    goto :goto_1e

    .line 358
    :pswitch_16
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    .line 359
    nop

    .line 367
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
