.class public final synthetic Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    iput p2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/ParcelUuid;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->$r8$lambda$7oIvK-u6KOZAy6TZ9WELalz-vm4(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    return-void
.end method
