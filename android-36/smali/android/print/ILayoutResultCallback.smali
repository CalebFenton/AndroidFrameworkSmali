.class public interface abstract Landroid/print/ILayoutResultCallback;
.super Ljava/lang/Object;
.source "ILayoutResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/ILayoutResultCallback$Stub;,
        Landroid/print/ILayoutResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onLayoutCanceled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onLayoutFailed(Ljava/lang/CharSequence;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onLayoutStarted(Landroid/os/ICancellationSignal;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
