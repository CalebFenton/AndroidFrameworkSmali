.class public final synthetic Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothVolumeControl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->$r8$lambda$61ZsgW7B0uAza8i1gF2lrc7NGlQ(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v0

    return-object v0
.end method
