.class public interface abstract Landroid/media/midi/IMidiDeviceOpenCallback;
.super Ljava/lang/Object;
.source "IMidiDeviceOpenCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceOpenCallback$Stub;,
        Landroid/media/midi/IMidiDeviceOpenCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
