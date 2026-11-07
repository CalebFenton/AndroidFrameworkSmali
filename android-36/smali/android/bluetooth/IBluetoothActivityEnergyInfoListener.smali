.class public interface abstract Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
.super Ljava/lang/Object;
.source "IBluetoothActivityEnergyInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;,
        Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothActivityEnergyInfoListener"


# virtual methods
.method public abstract blacklist onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
