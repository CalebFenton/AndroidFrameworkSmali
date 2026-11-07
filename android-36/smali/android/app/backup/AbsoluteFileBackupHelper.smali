.class public Landroid/app/backup/AbsoluteFileBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "AbsoluteFileBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AbsoluteFileBackupHelper"


# instance fields
.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mFiles:[Ljava/lang/String;


# direct methods
.method public varargs constructor blacklist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 60
    iget-object v0, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/backup/AbsoluteFileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 68
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/backup/AbsoluteFileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/AbsoluteFileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1, p1}, Landroid/app/backup/AbsoluteFileBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    .line 73
    .end local v1    # "f":Ljava/io/File;
    :cond_14
    return-void
.end method

.method public bridge synthetic whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
