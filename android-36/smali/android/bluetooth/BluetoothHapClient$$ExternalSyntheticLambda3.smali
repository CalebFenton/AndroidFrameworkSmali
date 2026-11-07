.class public final synthetic Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/bluetooth/BluetoothUtils$RemoteExceptionIgnoringFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothHapClient;

    return-void
.end method


# virtual methods
.method public final blacklist applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$$ExternalSyntheticLambda3;->f$0:Landroid/bluetooth/BluetoothHapClient;

    check-cast p1, Landroid/bluetooth/IBluetoothHapClient;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothHapClient;->$r8$lambda$IyZNO9fW16fAXNkwrUFMlHM0550(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/IBluetoothHapClient;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
