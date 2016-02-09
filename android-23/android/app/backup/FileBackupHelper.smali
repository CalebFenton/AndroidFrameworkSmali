.class public Landroid/app/backup/FileBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "FileBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FileBackupHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:[Ljava/lang/String;

.field mFilesDir:Ljava/io/File;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "files"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    #@3
    .line 56
    iput-object p1, p0, Landroid/app/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    #@5
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/app/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    #@b
    .line 58
    iput-object p2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    #@d
    .line 53
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 76
    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    #@2
    .line 77
    .local v2, "files":[Ljava/lang/String;
    iget-object v5, p0, Landroid/app/backup/FileBackupHelper;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@7
    move-result-object v1

    #@8
    .line 78
    .local v1, "base":Ljava/io/File;
    array-length v0, v2

    #@9
    .line 79
    .local v0, "N":I
    new-array v3, v0, [Ljava/lang/String;

    #@b
    .line 80
    .local v3, "fullPaths":[Ljava/lang/String;
    const/4 v4, 0x0

    #@c
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    #@e
    .line 81
    new-instance v5, Ljava/io/File;

    #@10
    aget-object v6, v2, v4

    #@12
    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    aput-object v5, v3, v4

    #@1b
    .line 80
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 85
    :cond_0
    invoke-static {p1, p2, p3, v3, v2}, Landroid/app/backup/FileBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    #@21
    .line 74
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 97
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFiles:[Ljava/lang/String;

    #@6
    invoke-virtual {p0, v1, v2}, Landroid/app/backup/FileBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 98
    new-instance v0, Ljava/io/File;

    #@e
    iget-object v2, p0, Landroid/app/backup/FileBackupHelper;->mFilesDir:Ljava/io/File;

    #@10
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    .line 99
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/FileBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    #@16
    .line 94
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    #@3
    return-void
.end method
