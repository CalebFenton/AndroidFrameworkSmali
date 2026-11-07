.class public final synthetic Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothLeAudio;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothLeAudio;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothLeAudio;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothLeAudio;

    check-cast p1, Landroid/bluetooth/IBluetoothLeAudio;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothLeAudio;->$r8$lambda$JSMYALT4cZzppJlA6qcMP17Z8A4(Landroid/bluetooth/BluetoothLeAudio;Landroid/bluetooth/IBluetoothLeAudio;)V

    return-void
.end method
