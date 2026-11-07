.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda20;->f$2:I

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$t4j-gLVuolmcxY6IaMdCvfl1JeM(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/IBluetoothHapClient;)Landroid/bluetooth/BluetoothHapPresetInfo;

    move-result-object p1

    return-object p1
.end method
