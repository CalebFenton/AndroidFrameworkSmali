.class public final synthetic Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter$9;->lambda$onDeviceDisconnected$1(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)V

    return-void
.end method
