.class public interface abstract Landroid/media/midi/IBluetoothMidiService;
.super Ljava/lang/Object;
.source "IBluetoothMidiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IBluetoothMidiService$Stub;,
        Landroid/media/midi/IBluetoothMidiService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
