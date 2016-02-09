.class Landroid/bluetooth/BluetoothA2dpSink$2;
.super Ljava/lang/Object;
.source "BluetoothA2dpSink.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dpSink;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dpSink;

    #@0
    .prologue
    .line 398
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

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
    .line 400
    const-string/jumbo v0, "BluetoothA2dpSink"

    #@3
    const-string/jumbo v1, "Proxy object connected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 401
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@b
    invoke-static {p2}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpSink;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothA2dpSink;->-set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    #@12
    .line 403
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@14
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 404
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@1c
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1f
    move-result-object v0

    #@20
    .line 405
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@22
    .line 404
    const/16 v2, 0xb

    #@24
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    #@27
    .line 399
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
    .line 409
    const-string/jumbo v0, "BluetoothA2dpSink"

    #@4
    const-string/jumbo v1, "Proxy object disconnected"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 410
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@c
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothA2dpSink;->-set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    #@f
    .line 411
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@11
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 412
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dpSink$2;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    #@19
    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1c
    move-result-object v0

    #@1d
    const/16 v1, 0xb

    #@1f
    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    #@22
    .line 408
    :cond_0
    return-void
.end method
