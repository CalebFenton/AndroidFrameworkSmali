.class public interface abstract Landroid/app/backup/ISelectBackupTransportCallback;
.super Ljava/lang/Object;
.source "ISelectBackupTransportCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/ISelectBackupTransportCallback$Stub;,
        Landroid/app/backup/ISelectBackupTransportCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
