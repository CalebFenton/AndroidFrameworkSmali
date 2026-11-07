.class public interface abstract Landroid/app/backup/IBackupObserver;
.super Ljava/lang/Object;
.source "IBackupObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupObserver$Stub;,
        Landroid/app/backup/IBackupObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o backupFinished(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
