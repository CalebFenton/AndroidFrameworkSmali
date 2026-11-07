.class public final synthetic Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->lambda$onBluetoothActivityEnergyInfoAvailable$0(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    return-void
.end method
