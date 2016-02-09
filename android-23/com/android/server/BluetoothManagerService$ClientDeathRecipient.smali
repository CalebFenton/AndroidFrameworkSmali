.class Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    #@0
    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 429
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()I

    #@3
    move-result v1

    #@4
    if-lez v1, :cond_0

    #@6
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, -0x1

    #@c
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-set1(I)I

    #@f
    .line 431
    :cond_0
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->-get1()I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    #@17
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 435
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1f
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 427
    :cond_1
    :goto_0
    return-void

    #@27
    .line 437
    :catch_0
    move-exception v0

    #@28
    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BluetoothManagerService"

    #@2b
    const-string/jumbo v2, "Unable to call onBrEdrDown"

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method
