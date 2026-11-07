.class public final synthetic Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothActivityEnergyInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;->f$1:Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->lambda$onBluetoothActivityEnergyInfoAvailable$1(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    return-void
.end method
