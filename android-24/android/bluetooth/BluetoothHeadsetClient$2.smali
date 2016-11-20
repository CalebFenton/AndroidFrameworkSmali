.class Landroid/bluetooth/BluetoothHeadsetClient$2;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadsetClient;

    #@0
    .prologue
    .line 1166
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

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
    .line 1169
    const-string/jumbo v0, "BluetoothHeadsetClient"

    #@3
    const-string/jumbo v1, "Proxy object connected"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1170
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@b
    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    #@12
    .line 1172
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@14
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1173
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@1c
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1f
    move-result-object v0

    #@20
    .line 1174
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@22
    .line 1173
    const/16 v2, 0x10

    #@24
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    #@27
    .line 1168
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
    .line 1179
    const-string/jumbo v0, "BluetoothHeadsetClient"

    #@4
    const-string/jumbo v1, "Proxy object disconnected"

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 1180
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@c
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->-set0(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;

    #@f
    .line 1181
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@11
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1182
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient$2;->this$0:Landroid/bluetooth/BluetoothHeadsetClient;

    #@19
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->-get3(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@1c
    move-result-object v0

    #@1d
    const/16 v1, 0x10

    #@1f
    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    #@22
    .line 1178
    :cond_0
    return-void
.end method
