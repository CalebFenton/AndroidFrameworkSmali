.class Landroid/bluetooth/BluetoothPbap$2;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPbap;

    #@0
    .prologue
    .line 302
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 304
    const-string/jumbo v0, "Proxy object connected"

    #@3
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 305
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@8
    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbap$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbap;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->-set0(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    #@f
    .line 306
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@11
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->-get3(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 307
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@19
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->-get3(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@1f
    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceConnected(Landroid/bluetooth/BluetoothPbap;)V

    #@22
    .line 303
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 311
    const-string/jumbo v0, "Proxy object disconnected"

    #@4
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->-wrap0(Ljava/lang/String;)V

    #@7
    .line 312
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@9
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbap;->-set0(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    #@c
    .line 313
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@e
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->-get3(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 314
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap$2;->this$0:Landroid/bluetooth/BluetoothPbap;

    #@16
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->-get3(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Landroid/bluetooth/BluetoothPbap$ServiceListener;->onServiceDisconnected()V

    #@1d
    .line 310
    :cond_0
    return-void
.end method
