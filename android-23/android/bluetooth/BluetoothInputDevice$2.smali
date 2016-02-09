.class Landroid/bluetooth/BluetoothInputDevice$2;
.super Ljava/lang/Object;
.source "BluetoothInputDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothInputDevice;

    #@0
    .prologue
    .line 479
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 481
    const-string/jumbo v0, "BluetoothInputDevice"

    #@3
    const-string/jumbo v1, "Proxy object connected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 482
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@b
    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothInputDevice;->-set0(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    #@12
    .line 484
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@14
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 485
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@1c
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@22
    const/4 v2, 0x4

    #@23
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    #@26
    .line 480
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 489
    const-string/jumbo v0, "BluetoothInputDevice"

    #@4
    const-string/jumbo v1, "Proxy object disconnected"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 490
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@c
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->-set0(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    #@f
    .line 491
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@11
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    #@19
    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1c
    move-result-object v0

    #@1d
    const/4 v1, 0x4

    #@1e
    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    #@21
    .line 488
    :cond_0
    return-void
.end method
