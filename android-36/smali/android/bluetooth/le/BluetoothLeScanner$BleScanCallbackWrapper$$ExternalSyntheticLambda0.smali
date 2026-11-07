.class public final synthetic Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/bluetooth/le/ScanResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/le/ScanResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/le/ScanResult;

    invoke-static {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;->$r8$lambda$ta6PTcFwkn2YJinnfgkq2Y57mQw(Landroid/bluetooth/le/BluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
