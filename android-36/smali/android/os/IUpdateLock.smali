.class public interface abstract Landroid/os/IUpdateLock;
.super Ljava/lang/Object;
.source "IUpdateLock.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUpdateLock$Stub;,
        Landroid/os/IUpdateLock$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o releaseUpdateLock(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
