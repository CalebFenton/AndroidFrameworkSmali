.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothVolumeControl;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothVolumeControl;->$r8$lambda$p7yT_ts8P7j1XV0nXWNLkQXYT1Y(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
