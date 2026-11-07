.class public final synthetic Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput p3, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget v2, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->lambda$onPresetInfoChanged$3(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;ILandroid/bluetooth/BluetoothHapClient$Callback;)V

    return-void
.end method
