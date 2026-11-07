.class public final synthetic Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-boolean p3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->$r8$lambda$ZSVyiM2ky3Wyn88Rdq_Sudm_Aps(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
