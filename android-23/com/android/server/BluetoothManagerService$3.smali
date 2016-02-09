.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 463
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    #@a
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-wrap5(Lcom/android/server/BluetoothManagerService;)V

    #@d
    .line 464
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    #@f
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-wrap4(Lcom/android/server/BluetoothManagerService;)V

    #@12
    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    #@14
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1c
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 461
    :cond_0
    :goto_0
    return-void

    #@24
    .line 467
    :catch_0
    move-exception v0

    #@25
    .line 468
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@28
    const-string/jumbo v2, "error when disabling bluetooth"

    #@2b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    goto :goto_0
.end method
