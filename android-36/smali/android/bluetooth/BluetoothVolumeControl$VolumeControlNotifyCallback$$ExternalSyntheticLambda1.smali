.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Landroid/bluetooth/BluetoothVolumeControl$Callback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->lambda$onDeviceVolumeChanged$5(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothVolumeControl$Callback;)V

    return-void
.end method
