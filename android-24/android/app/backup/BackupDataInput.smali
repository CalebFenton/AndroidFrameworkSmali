.class public Landroid/app/backup/BackupDataInput;
.super Ljava/lang/Object;
.source "BackupDataInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupDataInput$EntityHeader;
    }
.end annotation


# instance fields
.field mBackupReader:J

.field private mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

.field private mHeaderReady:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 66
    new-instance v0, Landroid/app/backup/BackupDataInput$EntityHeader;

    #@6
    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>(Landroid/app/backup/BackupDataInput$EntityHeader;)V

    #@9
    iput-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    #@b
    .line 77
    if-nez p1, :cond_0

    #@d
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@12
    throw v0

    #@13
    .line 78
    :cond_0
    invoke-static {p1}, Landroid/app/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@19
    .line 79
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@1b
    const-wide/16 v2, 0x0

    #@1d
    cmp-long v0, v0, v2

    #@1f
    if-nez v0, :cond_1

    #@21
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Native initialization failed with fd="

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 76
    :cond_1
    return-void
.end method

.method private static native ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native dtor(J)V
.end method

.method private native readEntityData_native(J[BII)I
.end method

.method private native readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native skipEntityData_native(J)I
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
    .line 88
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@2
    invoke-static {v0, v1}, Landroid/app/backup/BackupDataInput;->dtor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 86
    return-void

    #@9
    .line 89
    :catchall_0
    move-exception v0

    #@a
    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 89
    throw v0
.end method

.method public getDataSize()I
    .locals 2

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 142
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    #@6
    iget v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->dataSize:I

    #@8
    return v0

    #@9
    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "Entity header not read"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 127
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    #@6
    iget-object v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    #@8
    return-object v0

    #@9
    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "Entity header not read"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0
.end method

.method public readEntityData([BII)I
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    iget-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 165
    iget-wide v2, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@6
    move-object v1, p0

    #@7
    move-object v4, p1

    #@8
    move v5, p2

    #@9
    move v6, p3

    #@a
    invoke-direct/range {v1 .. v6}, Landroid/app/backup/BackupDataInput;->readEntityData_native(J[BII)I

    #@d
    move-result v0

    #@e
    .line 166
    .local v0, "result":I
    if-ltz v0, :cond_0

    #@10
    .line 167
    return v0

    #@11
    .line 169
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "result=0x"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 172
    .end local v0    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@31
    const-string/jumbo v2, "Entity header not read"

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1
.end method

.method public readNextHeader()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 104
    iget-wide v2, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@4
    iget-object v1, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    #@6
    invoke-direct {p0, v2, v3, v1}, Landroid/app/backup/BackupDataInput;->readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I

    #@9
    move-result v0

    #@a
    .line 105
    .local v0, "result":I
    if-nez v0, :cond_0

    #@c
    .line 107
    iput-boolean v5, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@e
    .line 108
    return v5

    #@f
    .line 109
    :cond_0
    if-lez v0, :cond_1

    #@11
    .line 111
    iput-boolean v4, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@13
    .line 112
    return v4

    #@14
    .line 115
    :cond_1
    iput-boolean v4, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@16
    .line 116
    new-instance v1, Ljava/io/IOException;

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "failed: 0x"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method

.method public skipEntityData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 186
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    #@6
    invoke-direct {p0, v0, v1}, Landroid/app/backup/BackupDataInput;->skipEntityData_native(J)I

    #@9
    .line 184
    return-void

    #@a
    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Entity header not read"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method
