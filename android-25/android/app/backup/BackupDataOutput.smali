.class public Landroid/app/backup/BackupDataOutput;
.super Ljava/lang/Object;
.source "BackupDataOutput.java"


# instance fields
.field mBackupWriter:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 71
    :cond_0
    invoke-static {p1}, Landroid/app/backup/BackupDataOutput;->ctor(Ljava/io/FileDescriptor;)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@11
    .line 72
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@13
    const-wide/16 v2, 0x0

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Native initialization failed with fd="

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 69
    :cond_1
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native dtor(J)V
.end method

.method private static native setKeyPrefix_native(JLjava/lang/String;)V
.end method

.method private static native writeEntityData_native(J[BI)I
.end method

.method private static native writeEntityHeader_native(JLjava/lang/String;I)I
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
    .line 121
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@2
    invoke-static {v0, v1}, Landroid/app/backup/BackupDataOutput;->dtor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 119
    return-void

    #@9
    .line 122
    :catchall_0
    move-exception v0

    #@a
    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 122
    throw v0
.end method

.method public setKeyPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    iget-wide v0, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix_native(JLjava/lang/String;)V

    #@5
    .line 113
    return-void
.end method

.method public writeEntityData([BI)I
    .locals 4
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    iget-wide v2, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData_native(J[BI)I

    #@5
    move-result v0

    #@6
    .line 105
    .local v0, "result":I
    if-ltz v0, :cond_0

    #@8
    .line 106
    return v0

    #@9
    .line 108
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "result=0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method

.method public writeEntityHeader(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    iget-wide v2, p0, Landroid/app/backup/BackupDataOutput;->mBackupWriter:J

    #@2
    invoke-static {v2, v3, p1, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader_native(JLjava/lang/String;I)I

    #@5
    move-result v0

    #@6
    .line 89
    .local v0, "result":I
    if-ltz v0, :cond_0

    #@8
    .line 90
    return v0

    #@9
    .line 92
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "result=0x"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1
.end method
