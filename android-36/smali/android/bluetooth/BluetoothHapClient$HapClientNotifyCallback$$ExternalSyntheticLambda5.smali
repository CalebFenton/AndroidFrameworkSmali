.class public final synthetic Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothHapClient$HapClientNotifyCallback;->lambda$onPresetSelected$0(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothHapClient$Callback;)V

    return-void
.end method
