.class public interface abstract Landroid/app/IStopUserCallback;
.super Ljava/lang/Object;
.source "IStopUserCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IStopUserCallback$Stub;,
        Landroid/app/IStopUserCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o userStopAborted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-r userStopped(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
