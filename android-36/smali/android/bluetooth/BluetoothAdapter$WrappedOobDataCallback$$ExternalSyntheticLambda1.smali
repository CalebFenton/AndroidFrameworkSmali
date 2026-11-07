.class public final synthetic Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/OobData;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;ILandroid/bluetooth/OobData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;->f$2:Landroid/bluetooth/OobData;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback$$ExternalSyntheticLambda1;->f$2:Landroid/bluetooth/OobData;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;->$r8$lambda$-qu8vMBMPXpcxEYsgWbUiq7-6Hw(Landroid/bluetooth/BluetoothAdapter$WrappedOobDataCallback;ILandroid/bluetooth/OobData;)V

    return-void
.end method
