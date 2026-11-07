.class public interface abstract Landroid/print/IWriteResultCallback;
.super Ljava/lang/Object;
.source "IWriteResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IWriteResultCallback$Stub;,
        Landroid/print/IWriteResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onWriteCanceled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onWriteFailed(Ljava/lang/CharSequence;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onWriteFinished([Landroid/print/PageRange;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onWriteStarted(Landroid/os/ICancellationSignal;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
