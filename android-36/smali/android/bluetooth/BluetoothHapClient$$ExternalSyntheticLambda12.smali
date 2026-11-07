.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda12;->f$0:Landroid/bluetooth/BluetoothHapClient;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda12;->f$0:Landroid/bluetooth/BluetoothHapClient;

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$r5BO9Pq96_I2giyUDXBiMiQtipQ(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/IBluetoothHapClient;)V

    return-void
.end method
