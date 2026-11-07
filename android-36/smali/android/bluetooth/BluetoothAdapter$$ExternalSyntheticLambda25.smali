.class public final synthetic Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    new-instance v0, Landroid/bluetooth/BluetoothHidHost;

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHidHost;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    return-object v0
.end method
