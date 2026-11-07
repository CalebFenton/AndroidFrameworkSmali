.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda6;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda6;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    check-cast p1, Landroid/bluetooth/IBluetoothVolumeControl;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothVolumeControl;->$r8$lambda$ez8w98fv4ppkv2YTHFx7zhW-NxU(Landroid/bluetooth/BluetoothVolumeControl;Landroid/bluetooth/IBluetoothVolumeControl;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
