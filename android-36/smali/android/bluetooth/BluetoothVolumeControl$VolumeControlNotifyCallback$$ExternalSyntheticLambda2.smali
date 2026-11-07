.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/BluetoothVolumeControl$Callback;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->lambda$onVolumeOffsetAudioDescriptionChanged$4(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    return-void
.end method
