.class public Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Default;
.super Ljava/lang/Object;
.source "IBluetoothActivityEnergyInfoListener.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
