.class public interface abstract Landroid/media/tv/ITvInputServiceCallback;
.super Ljava/lang/Object;
.source "ITvInputServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputServiceCallback$Stub;,
        Landroid/media/tv/ITvInputServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o removeHardwareInput(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
