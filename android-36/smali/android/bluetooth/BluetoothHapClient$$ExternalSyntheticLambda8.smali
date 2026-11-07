.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iput p2, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;->f$0:Landroid/bluetooth/BluetoothHapClient;

    iget v1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$0PFcd8KgCxzThkkvVo1Vs7urifQ(Landroid/bluetooth/BluetoothHapClient;ILandroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method
