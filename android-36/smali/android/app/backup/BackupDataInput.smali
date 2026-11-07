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
.field greylist-max-o mBackupReader:J

.field private greylist-max-o mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

.field private greylist-max-o mHeaderReady:Z


# direct methods
.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/app/backup/BackupDataInput$EntityHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupDataInput$EntityHeader;-><init>(Landroid/app/backup/BackupDataInput-IA;)V

    iput-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    .line 80
    if-eqz p1, :cond_35

    .line 81
    invoke-static {p1}, Landroid/app/backup/BackupDataInput;->ctor(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    .line 82
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 85
    return-void

    .line 83
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native initialization failed with fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o ctor(Ljava/io/FileDescriptor;)J
.end method

.method private static native greylist-max-o dtor(J)V
.end method

.method private native greylist-max-o readEntityData_native(J[BII)I
.end method

.method private native greylist-max-o readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I
.end method

.method private native greylist-max-o skipEntityData_native(J)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-static {v0, v1}, Landroid/app/backup/BackupDataInput;->dtor(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 93
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    throw v0
.end method

.method public whitelist getDataSize()I
    .registers 3

    .line 144
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->dataSize:I

    return v0

    .line 147
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 3

    .line 129
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    iget-object v0, v0, Landroid/app/backup/BackupDataInput$EntityHeader;->key:Ljava/lang/String;

    return-object v0

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist readEntityData([BII)I
    .registers 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_2f

    .line 168
    iget-wide v2, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .end local p3    # "size":I
    .local v4, "data":[B
    .local v5, "offset":I
    .local v6, "size":I
    invoke-direct/range {v1 .. v6}, Landroid/app/backup/BackupDataInput;->readEntityData_native(J[BII)I

    move-result p1

    .line 169
    .local p1, "result":I
    if-ltz p1, :cond_11

    .line 170
    return p1

    .line 172
    :cond_11
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 175
    .end local v4    # "data":[B
    .end local v5    # "offset":I
    .end local v6    # "size":I
    .local p1, "data":[B
    .restart local p2    # "offset":I
    .restart local p3    # "size":I
    :cond_2f
    move-object v4, p1

    move v5, p2

    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .restart local v4    # "data":[B
    .restart local v5    # "offset":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Entity header not read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist readNextHeader()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    iget-object v2, p0, Landroid/app/backup/BackupDataInput;->mHeader:Landroid/app/backup/BackupDataInput$EntityHeader;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/backup/BackupDataInput;->readNextHeader_native(JLandroid/app/backup/BackupDataInput$EntityHeader;)I

    move-result v0

    .line 108
    .local v0, "result":I
    if-nez v0, :cond_e

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 111
    return v1

    .line 112
    :cond_e
    const/4 v1, 0x0

    if-lez v0, :cond_14

    .line 114
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 115
    return v1

    .line 118
    :cond_14
    iput-boolean v1, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    .line 119
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist skipEntityData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Landroid/app/backup/BackupDataInput;->mHeaderReady:Z

    if-eqz v0, :cond_a

    .line 189
    iget-wide v0, p0, Landroid/app/backup/BackupDataInput;->mBackupReader:J

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BackupDataInput;->skipEntityData_native(J)I

    .line 193
    return-void

    .line 191
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entity header not read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
