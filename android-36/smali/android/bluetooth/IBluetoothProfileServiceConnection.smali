.class public interface abstract Landroid/bluetooth/IBluetoothProfileServiceConnection;
.super Ljava/lang/Object;
.source "IBluetoothProfileServiceConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;,
        Landroid/bluetooth/IBluetoothProfileServiceConnection$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onServiceDisconnected(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
