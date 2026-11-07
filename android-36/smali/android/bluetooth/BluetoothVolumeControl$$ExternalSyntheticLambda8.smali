.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothVolumeControl;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$2:I

    iput-boolean p4, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$2:I

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda8;->f$3:Z

    check-cast p1, Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/bluetooth/BluetoothVolumeControl;->$r8$lambda$5APjpWu7BFXjgaO4Auc57AAQcjw(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/BluetoothDevice;IZLandroid/bluetooth/IBluetoothVolumeControl;)V

    return-void
.end method
