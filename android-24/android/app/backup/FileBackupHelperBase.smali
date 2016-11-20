.class Landroid/app/backup/FileBackupHelperBase;
.super Ljava/lang/Object;
.source "FileBackupHelperBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileBackupHelperBase"


# instance fields
.field mContext:Landroid/content/Context;

.field mExceptionLogged:Z

.field mPtr:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    invoke-static {}, Landroid/app/backup/FileBackupHelperBase;->ctor()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    #@9
    .line 38
    iput-object p1, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    #@b
    .line 36
    return-void
.end method

.method private static native ctor()J
.end method

.method private static native dtor(J)V
.end method

.method static performBackup_checked(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p0, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "files"    # [Ljava/lang/String;
    .param p4, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 55
    array-length v2, p3

    #@2
    if-nez v2, :cond_0

    #@4
    .line 56
    return-void

    #@5
    .line 59
    :cond_0
    array-length v5, p3

    #@6
    move v2, v3

    #@7
    :goto_0
    if-ge v2, v5, :cond_2

    #@9
    aget-object v7, p3, v2

    #@b
    .line 60
    .local v7, "f":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v6

    #@f
    const/16 v8, 0x2f

    #@11
    if-eq v6, v8, :cond_1

    #@13
    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "files must have all absolute paths: "

    #@1d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 65
    .end local v7    # "f":Ljava/lang/String;
    :cond_2
    array-length v2, p3

    #@31
    array-length v3, p4

    #@32
    if-eq v2, v3, :cond_3

    #@34
    .line 66
    new-instance v2, Ljava/lang/RuntimeException;

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "files.length="

    #@3e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    array-length v5, p3

    #@43
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 67
    const-string/jumbo v5, " keys.length="

    #@4a
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    .line 67
    array-length v5, p4

    #@4f
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v2

    #@5b
    .line 70
    :cond_3
    if-eqz p0, :cond_4

    #@5d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@60
    move-result-object v1

    #@61
    .line 71
    :goto_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@64
    move-result-object v4

    #@65
    .line 72
    .local v4, "newStateFd":Ljava/io/FileDescriptor;
    if-nez v4, :cond_5

    #@67
    .line 73
    new-instance v2, Ljava/lang/NullPointerException;

    #@69
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@6c
    throw v2

    #@6d
    .line 70
    .end local v4    # "newStateFd":Ljava/io/FileDescriptor;
    :cond_4
    const/4 v1, 0x0

    #@6e
    .local v1, "oldStateFd":Ljava/io/FileDescriptor;
    goto :goto_1

    #@6f
    .line 76
    .end local v1    # "oldStateFd":Ljava/io/FileDescriptor;
    .restart local v4    # "newStateFd":Ljava/io/FileDescriptor;
    :cond_5
    iget-wide v2, p1, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@71
    move-object v5, p3

    #@72
    move-object v6, p4

    #@73
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FileBackupHelperBase;->performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I

    #@76
    move-result v0

    #@77
    .line 78
    .local v0, "err":I
    if-eqz v0, :cond_6

    #@79
    .line 80
    new-instance v2, Ljava/lang/RuntimeException;

    #@7b
    new-instance v3, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v5, "Backup failed 0x"

    #@83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v3

    #@93
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@96
    throw v2

    #@97
    .line 54
    :cond_6
    return-void
.end method

.method private static native performBackup_native(Ljava/io/FileDescriptor;JLjava/io/FileDescriptor;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native writeFile_native(JLjava/lang/String;J)I
.end method

.method private static native writeSnapshot_native(JLjava/io/FileDescriptor;)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    #@2
    invoke-static {v0, v1}, Landroid/app/backup/FileBackupHelperBase;->dtor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 41
    return-void

    #@9
    .line 44
    :catchall_0
    move-exception v0

    #@a
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 44
    throw v0
.end method

.method isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 110
    array-length v3, p2

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p2, v1

    #@7
    .line 111
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 112
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 115
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z
    .locals 10
    .param p1, "f"    # Ljava/io/File;
    .param p2, "in"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 85
    const/4 v1, -0x1

    #@3
    .line 88
    .local v1, "result":I
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@6
    move-result-object v0

    #@7
    .line 89
    .local v0, "parent":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@a
    .line 91
    iget-wide v4, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    #@c
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    iget-object v7, p2, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    #@12
    iget-wide v8, v7, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@14
    invoke-static {v4, v5, v6, v8, v9}, Landroid/app/backup/FileBackupHelperBase;->writeFile_native(JLjava/lang/String;J)I

    #@17
    move-result v1

    #@18
    .line 92
    if-eqz v1, :cond_0

    #@1a
    .line 94
    iget-boolean v4, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    #@1c
    if-nez v4, :cond_0

    #@1e
    .line 95
    const-string/jumbo v4, "FileBackupHelperBase"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Failed restoring file \'"

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    const-string/jumbo v6, "\' for app \'"

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    .line 96
    iget-object v6, p0, Landroid/app/backup/FileBackupHelperBase;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 96
    const-string/jumbo v6, "\' result=0x"

    #@45
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 98
    iput-boolean v2, p0, Landroid/app/backup/FileBackupHelperBase;->mExceptionLogged:Z

    #@5a
    .line 101
    :cond_0
    if-nez v1, :cond_1

    #@5c
    :goto_0
    return v2

    #@5d
    :cond_1
    move v2, v3

    #@5e
    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 105
    iget-wide v2, p0, Landroid/app/backup/FileBackupHelperBase;->mPtr:J

    #@2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v1

    #@6
    invoke-static {v2, v3, v1}, Landroid/app/backup/FileBackupHelperBase;->writeSnapshot_native(JLjava/io/FileDescriptor;)I

    #@9
    move-result v0

    #@a
    .line 104
    .local v0, "result":I
    return-void
.end method
