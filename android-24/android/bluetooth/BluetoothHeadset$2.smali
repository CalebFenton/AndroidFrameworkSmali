.class Landroid/bluetooth/BluetoothHeadset$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;
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
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;

    #@0
    .prologue
    .line 973
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@2
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

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
    .line 976
    const-string/jumbo v0, "BluetoothHeadset"

    #@3
    const-string/jumbo v1, "Proxy object connected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 977
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@b
    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->-set0(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    #@12
    .line 978
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@14
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get1(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@1a
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->-get1(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    #@1d
    move-result-object v1

    #@1e
    .line 979
    const/16 v2, 0x64

    #@20
    .line 978
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@27
    .line 975
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 983
    const-string/jumbo v0, "BluetoothHeadset"

    #@3
    const-string/jumbo v1, "Proxy object disconnected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 984
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->-set0(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    #@f
    .line 985
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@11
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get1(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$2;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #@17
    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->-get1(Landroid/bluetooth/BluetoothHeadset;)Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    .line 986
    const/16 v2, 0x65

    #@1d
    .line 985
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 982
    return-void
.end method
