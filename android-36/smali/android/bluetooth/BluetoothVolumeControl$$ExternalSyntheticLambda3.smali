.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothVolumeControl;

.field public final synthetic blacklist f$1:[I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;[I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    iput-object p2, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;->f$1:[I

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda3;->f$1:[I

    check-cast p1, Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothVolumeControl;->$r8$lambda$pd-scjgyGCkbzsqeSEsD3vvQJZg(Landroid/bluetooth/BluetoothVolumeControl;[ILandroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
