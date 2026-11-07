.class public final synthetic Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:B

.field public final synthetic blacklist f$3:B

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-byte p3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$2:B

    iput-byte p4, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$3:B

    iput p5, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$0:Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-byte v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$2:B

    iget-byte v3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$3:B

    iget v4, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->$r8$lambda$TUD99Iz0H4qX7msfng8e7Tfh2Sw(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method
