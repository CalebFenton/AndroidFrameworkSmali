.class public interface abstract Landroid/bluetooth/IBluetoothConnectionCallback;
.super Ljava/lang/Object;
.source "IBluetoothConnectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothConnectionCallback$Stub;,
        Landroid/bluetooth/IBluetoothConnectionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothConnectionCallback"


# virtual methods
.method public abstract blacklist onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
