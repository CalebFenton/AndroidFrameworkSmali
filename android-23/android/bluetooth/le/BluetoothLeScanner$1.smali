.class Landroid/bluetooth/le/BluetoothLeScanner$1;
.super Ljava/lang/Object;
.source "BluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeScanner;

.field final synthetic val$callback:Landroid/bluetooth/le/ScanCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeScanner;
    .param p2, "val$callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p3, "val$errorCode"    # I

    #@0
    .prologue
    .line 413
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->this$0:Landroid/bluetooth/le/BluetoothLeScanner;

    #@2
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    #@4
    iput p3, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$errorCode:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    #@2
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$1;->val$errorCode:I

    #@4
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    #@7
    .line 415
    return-void
.end method
