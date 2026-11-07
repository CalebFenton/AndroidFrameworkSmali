.class public Landroid/app/backup/SharedPreferencesBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "SharedPreferencesBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SharedPreferencesBackupHelper"


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mPrefGroups:[Ljava/lang/String;


# direct methods
.method public varargs constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefGroups"    # [Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object p1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 10
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 96
    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 100
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 103
    iget-object v1, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    .line 104
    .local v1, "prefGroups":[Ljava/lang/String;
    array-length v2, v1

    .line 105
    .local v2, "N":I
    new-array v3, v2, [Ljava/lang/String;

    .line 106
    .local v3, "files":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    if-ge v4, v2, :cond_1c

    .line 107
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 111
    .end local v4    # "i":I
    :cond_1c
    invoke-static {p1, p2, p3, v3, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;->performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 5
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 119
    iget-object v0, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mContext:Landroid/content/Context;

    .line 121
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/backup/SharedPreferencesBackupHelper;->mPrefGroups:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 126
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0, v2, p1}, Landroid/app/backup/SharedPreferencesBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z

    .line 128
    .end local v2    # "f":Ljava/io/File;
    :cond_19
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

    .line 69
    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
