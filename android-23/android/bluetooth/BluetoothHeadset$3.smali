.class Landroid/bluetooth/BluetoothHeadset$3;
.super Landroid/os/Handler;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 969
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 972
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 971
    :cond_0
    :goto_0
    return-void

    #@7
    .line 974
    :pswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@9
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 975
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@11
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@14
    move-result-object v0

    #@15
    .line 976
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@17
    .line 975
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    #@1a
    goto :goto_0

    #@1b
    .line 981
    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@1d
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@20
    move-result-object v0

    #@21
    if-eqz v0, :cond_0

    #@23
    .line 982
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@25
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@28
    move-result-object v0

    #@29
    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 972
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
