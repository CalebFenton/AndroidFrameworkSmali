.class public final synthetic Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/ParcelUuid;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    iput p2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$2:Landroid/os/ParcelUuid;

    iput-object p4, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$2:Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->$r8$lambda$vUXCVktmhUF0tPWOTOowenXNsjw(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    return-void
.end method
