.class Landroid/bluetooth/BluetoothAvrcpController$2;
.super Ljava/lang/Object;
.source "BluetoothAvrcpController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAvrcpController;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAvrcpController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAvrcpController;

    #@0
    .prologue
    .line 382
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

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
    .line 385
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@2
    invoke-static {p2}, Landroid/bluetooth/IBluetoothAvrcpController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothAvrcpController;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAvrcpController;->-set0(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    #@9
    .line 387
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@b
    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 388
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@13
    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@16
    move-result-object v0

    #@17
    .line 389
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@19
    .line 388
    const/16 v2, 0xc

    #@1b
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    #@1e
    .line 383
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
    .line 394
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@3
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAvrcpController;->-set0(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;

    #@6
    .line 395
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@8
    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 396
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController$2;->this$0:Landroid/bluetooth/BluetoothAvrcpController;

    #@10
    invoke-static {v0}, Landroid/bluetooth/BluetoothAvrcpController;->-get3(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0xc

    #@16
    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    #@19
    .line 392
    :cond_0
    return-void
.end method
