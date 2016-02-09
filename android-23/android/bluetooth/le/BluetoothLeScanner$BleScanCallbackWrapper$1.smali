.class Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

.field final synthetic val$scanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;
    .param p2, "val$scanResult"    # Landroid/bluetooth/le/ScanResult;

    #@0
    .prologue
    .line 352
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@2
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->this$1:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    #@2
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->-get0(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$1;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    #@c
    .line 354
    return-void
.end method
