.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iput p2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iget v1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$k6xbiI6zn_3ihb4b1567ozCF6EA(Landroid/bluetooth/BluetoothHapClient;IILandroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method
