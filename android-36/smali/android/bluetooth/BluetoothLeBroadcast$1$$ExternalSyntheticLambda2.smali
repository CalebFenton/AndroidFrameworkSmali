.class public final synthetic Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/BluetoothLeBroadcastMetadata;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    iput p2, p0, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;->f$2:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    iget v1, p0, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast$1$$ExternalSyntheticLambda2;->f$2:Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothLeBroadcast$1;->lambda$onBroadcastMetadataChanged$8(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method
