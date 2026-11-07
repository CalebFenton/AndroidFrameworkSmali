.class public final synthetic Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput-boolean p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$3:Z

    iput p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget-boolean v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$3:Z

    iget v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda6;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->$r8$lambda$OaokU_NEz2ZuT-rCYB1pmF5IX5o(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;ZI)V

    return-void
.end method
