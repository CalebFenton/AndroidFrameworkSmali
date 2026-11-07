.class public interface abstract Landroid/media/tv/ITvInputHardware;
.super Ljava/lang/Object;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub;,
        Landroid/media/tv/ITvInputHardware$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o overrideAudioSink(ILjava/lang/String;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setStreamVolume(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
