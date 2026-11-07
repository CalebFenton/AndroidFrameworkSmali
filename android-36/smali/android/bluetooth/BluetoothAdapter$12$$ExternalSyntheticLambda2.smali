.class public final synthetic Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(I[B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;->f$1:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$12$$ExternalSyntheticLambda2;->f$1:[B

    check-cast p1, Landroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;

    invoke-static {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter$12;->lambda$onEvent$2(I[BLandroid/bluetooth/BluetoothAdapter$BluetoothHciVendorSpecificCallback;)V

    return-void
.end method
