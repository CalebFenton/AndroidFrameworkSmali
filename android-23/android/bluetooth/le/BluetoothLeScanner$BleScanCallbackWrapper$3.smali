.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

.field final synthetic val$onFound:Z

.field final synthetic val$scanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    .param p2, "val$onFound"    # Z
    .param p3, "val$scanResult"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    .line 385
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@2
    iput-boolean p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$onFound:Z

    #@4
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$onFound:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 389
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@6
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-get0(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    #@9
    move-result-object v0

    #@a
    .line 390
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    #@c
    .line 389
    const/4 v2, 0x2

    #@d
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    #@10
    .line 387
    :goto_0
    return-void

    #@11
    .line 392
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@13
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-get0(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    #@16
    move-result-object v0

    #@17
    .line 393
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    #@19
    .line 392
    const/4 v2, 0x4

    #@1a
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    #@1d
    goto :goto_0
.end method
