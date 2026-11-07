.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;IILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iput p2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iget v1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$2:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$VRTBtqZDqnEUjJ6dG4oR7CSaRH0(Landroid/bluetooth/BluetoothHapClient;IILjava/lang/String;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method
