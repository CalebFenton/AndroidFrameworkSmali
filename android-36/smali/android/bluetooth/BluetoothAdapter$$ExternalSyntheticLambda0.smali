.class public final synthetic Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/BluetoothAdapter;

    check-cast p1, Landroid/bluetooth/IBluetooth;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->$r8$lambda$3XHpjfefl1OlKAAKHPiI17TaG5s(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)V

    return-void
.end method
