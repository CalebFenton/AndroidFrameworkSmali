.class public final synthetic Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:B

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-byte p3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$2:B

    iput-object p4, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$3:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-byte v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$2:B

    iget-object v3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->$r8$lambda$Aonku7_z_niAgPkpRBdo_LdgmFc(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method
