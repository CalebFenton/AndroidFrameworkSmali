.class public final synthetic Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/bluetooth/BluetoothProfile;

    check-cast p2, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;->lambda$onBluetoothOff$2(Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V

    return-void
.end method
