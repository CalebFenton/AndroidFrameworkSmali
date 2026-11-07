.class public final synthetic Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$7;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$7;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$7;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$7$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter$7;

    check-cast p1, Landroid/bluetooth/BluetoothProfile;

    check-cast p2, Landroid/bluetooth/BluetoothAdapter$ProfileConnection;

    invoke-static {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$7;->$r8$lambda$B5IIXcFbc84F3d5lEGZL2UZA3vU(Landroid/bluetooth/BluetoothAdapter$7;Landroid/bluetooth/BluetoothProfile;Landroid/bluetooth/BluetoothAdapter$ProfileConnection;)V

    return-void
.end method
