.class public final synthetic Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/le/AdvertisingSetCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda3;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->$r8$lambda$vDeUxNjPjfTxeS_lqT10aDkPy60(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;)V

    return-void
.end method
