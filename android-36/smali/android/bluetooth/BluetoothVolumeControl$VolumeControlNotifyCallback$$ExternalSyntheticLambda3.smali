.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothVolumeControl$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback$$ExternalSyntheticLambda3;->f$1:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothVolumeControl$VolumeControlNotifyCallback;->lambda$forEach$0(Ljava/util/function/Consumer;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    return-void
.end method
