.class Landroid/app/backup/FileBackupHelperBase;
.super Ljava/lang/Object;
.source "FileBackupHelperBase.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FileBackupHelperBase"


# instance fields
.field greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mExceptionLogged:Z

.field greylist-max-o mPtr:J


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Landroid/app/backup/FileBackupHelperBase;->ctor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    .line 39
    iput-object p1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static native greylist-max-o ctor()J
.end method

.method private static native greylist-max-o dtor(J)V
.end method

.method static greylist-max-o performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p0, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "files"    # [Ljava/lang/String;
    .param p4, "keys"    # [Ljava/lang/String;

    .line 56
    array-length v0, p3

    if-nez v0, :cond_4

    .line 57
    return-void

    .line 60
    :cond_4
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_2f

    aget-object v3, p3, v2

    .line 61
    .local v3, "f":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_16

    .line 60
    .end local v3    # "f":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 62
    .restart local v3    # "f":Ljava/lang/String;
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files must have all absolute paths: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v3    # "f":Ljava/lang/String;
    :cond_2f
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_71

    .line 71
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    move-object v1, v0

    .line 72
    .local v1, "oldStateFd":Ljava/io/FileDescriptor;
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 73
    .local v4, "newStateFd":Ljava/io/FileDescriptor;
    if-eqz v4, :cond_6a

    .line 77
    iget-wide v2, p1, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    move-object v5, p3

    move-object v6, p4

    .end local p3    # "files":[Ljava/lang/String;
    .end local p4    # "keys":[Ljava/lang/String;
    .local v5, "files":[Ljava/lang/String;
    .local v6, "keys":[Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FileBackupHelperBase;->performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    .line 79
    .local p3, "err":I
    if-nez p3, :cond_4d

    .line 83
    return-void

    .line 81
    :cond_4d
    new-instance p4, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup failed 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 74
    .end local v5    # "files":[Ljava/lang/String;
    .end local v6    # "keys":[Ljava/lang/String;
    .local p3, "files":[Ljava/lang/String;
    .restart local p4    # "keys":[Ljava/lang/String;
    :cond_6a
    move-object v5, p3

    .end local p3    # "files":[Ljava/lang/String;
    .restart local v5    # "files":[Ljava/lang/String;
    new-instance p3, Ljava/lang/NullPointerException;

    invoke-direct {p3}, Ljava/lang/NullPointerException;-><init>()V

    throw p3

    .line 67
    .end local v1    # "oldStateFd":Ljava/io/FileDescriptor;
    .end local v4    # "newStateFd":Ljava/io/FileDescriptor;
    .end local v5    # "files":[Ljava/lang/String;
    .restart local p3    # "files":[Ljava/lang/String;
    :cond_71
    move-object v5, p3

    move-object v6, p4

    .end local p3    # "files":[Ljava/lang/String;
    .end local p4    # "keys":[Ljava/lang/String;
    .restart local v5    # "files":[Ljava/lang/String;
    .restart local v6    # "keys":[Ljava/lang/String;
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "files.length="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    array-length v0, v5

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " keys.length="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    array-length v0, v6

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private static native greylist-max-o performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native greylist-max-o writeFile_native(JLjava/lang/String;J)I
.end method

.method private static native greylist-max-o writeSnapshot_native(JLjava/io/FileDescriptor;)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-static {v0, v1}, Landroid/app/backup/FileBackupHelperBase;->dtor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    nop

    .line 48
    return-void

    .line 46
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 47
    throw v0
.end method

.method greylist-max-o isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .line 112
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    .line 113
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 114
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v3    # "s":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    :cond_12
    return v1
.end method

.method greylist-max-o writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z
    .registers 10
    .param p1, "f"    # Ljava/io/File;
    .param p2, "in"    # Landroid/app/backup/BackupDataInputStream;

    .line 86
    const/4 v0, -0x1

    .line 89
    .local v0, "result":I
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    iget-wide v2, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    iget-wide v5, v5, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/backup/FileBackupHelperBase;->writeFile_native(JLjava/lang/String;J)I

    move-result v0

    .line 93
    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 95
    iget-boolean v3, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    if-nez v3, :cond_55

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed restoring file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for app \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' result=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v4, "FileBackupHelperBase"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v2, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    .line 102
    :cond_55
    if-nez v0, :cond_58

    goto :goto_59

    :cond_58
    const/4 v2, 0x0

    :goto_59
    return v2
.end method

.method public greylist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 107
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/backup/FileBackupHelperBase;->writeSnapshot_native(JLjava/io/FileDescriptor;)I

    move-result v0

    .line 109
    .local v0, "result":I
    return-void
.end method
