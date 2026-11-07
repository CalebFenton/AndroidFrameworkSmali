.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda15;->f$1:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$I6jhDuFKyPUgkp5doYKzJ9j-mBY(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method
