.class public interface abstract Landroid/app/backup/BackupHelper;
.super Ljava/lang/Object;
.source "BackupHelper.java"


# virtual methods
.method public abstract whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
.end method

.method public abstract whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
.end method
