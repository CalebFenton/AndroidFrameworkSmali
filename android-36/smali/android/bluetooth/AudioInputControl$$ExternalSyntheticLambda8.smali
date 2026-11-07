.class public final synthetic Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:Landroid/bluetooth/IBluetoothVolumeControl;

.field public final synthetic blacklist f$2:Landroid/content/AttributionSource;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;->f$1:Landroid/bluetooth/IBluetoothVolumeControl;

    iput-object p3, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;->f$2:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;->f$1:Landroid/bluetooth/IBluetoothVolumeControl;

    iget-object v2, p0, Landroid/bluetooth/AudioInputControl$$ExternalSyntheticLambda8;->f$2:Landroid/content/AttributionSource;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/AudioInputControl;->lambda$getAudioInputControlServices$0(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBluetoothVolumeControl;Landroid/content/AttributionSource;I)Landroid/bluetooth/AudioInputControl;

    move-result-object p1

    return-object p1
.end method
