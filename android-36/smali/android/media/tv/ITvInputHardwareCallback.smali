.class public interface abstract Landroid/media/tv/ITvInputHardwareCallback;
.super Ljava/lang/Object;
.source "ITvInputHardwareCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardwareCallback$Stub;,
        Landroid/media/tv/ITvInputHardwareCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
