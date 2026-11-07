.class public final synthetic Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$9$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothAdapter$9;->lambda$onDeviceConnected$0(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)V

    return-void
.end method
