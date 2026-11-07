.class public interface abstract Landroid/media/IRemoteVolumeObserver;
.super Ljava/lang/Object;
.source "IRemoteVolumeObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteVolumeObserver$Stub;,
        Landroid/media/IRemoteVolumeObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o dispatchRemoteVolumeUpdate(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
