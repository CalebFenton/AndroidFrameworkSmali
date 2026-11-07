.class public Landroid/app/backup/FileBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "FileBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBackupHelper"


# instance fields
.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mFiles:[Ljava/lang/String;

.field greylist-max-o mFilesDir:Ljava/io/File;


# direct methods
.method public varargs constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Landroid/app/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    .line 58
    iput-object p2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 76
    iget-object v0, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    .line 77
    .local v0, "files":[Ljava/lang/String;
    iget-object v1, p0, Landroid/app/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 78
    .local v1, "base":Ljava/io/File;
    array-length v2, v0

    .line 79
    .local v2, "N":I
    new-array v3, v2, [Ljava/lang/String;

    .line 80
    .local v3, "fullPaths":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v2, :cond_1e

    .line 81
    new-instance v5, Ljava/io/File;

    aget-object v6, v0, v4

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 85
    .end local v4    # "i":I
    :cond_1e
    invoke-static {p1, p2, p3, v3, v0}, Landroid/app/backup/FileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 5
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 96
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/FileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 98
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v1, "f":Ljava/io/File;
    invoke-virtual {p0, v1, p1}, Landroid/app/backup/FileBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    .line 101
    .end local v1    # "f":Ljava/io/File;
    :cond_16
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

    .line 38
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
