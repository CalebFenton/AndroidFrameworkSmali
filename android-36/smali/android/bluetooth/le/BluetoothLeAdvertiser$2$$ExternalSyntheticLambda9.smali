.class public final synthetic Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda9;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->$r8$lambda$p1m7xjHC86IiqcXXz6cV638mJX8(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void
.end method
