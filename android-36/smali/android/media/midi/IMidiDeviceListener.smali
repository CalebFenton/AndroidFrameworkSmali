.class public interface abstract Landroid/media/midi/IMidiDeviceListener;
.super Ljava/lang/Object;
.source "IMidiDeviceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceListener$Stub;,
        Landroid/media/midi/IMidiDeviceListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
