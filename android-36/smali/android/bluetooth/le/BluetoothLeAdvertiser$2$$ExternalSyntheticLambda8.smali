.class public final synthetic Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

.field public final synthetic blacklist f$3:Landroid/os/IBinder;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/IBinder;II)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput-object p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    iput p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$4:I

    iput p6, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$5:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget-object v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$3:Landroid/os/IBinder;

    iget v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$4:I

    iget v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda8;->f$5:I

    invoke-static/range {v0 .. v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->$r8$lambda$tBxDxO5RZGoWdOMUcnEmrPKesO0(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/IBinder;II)V

    return-void
.end method
