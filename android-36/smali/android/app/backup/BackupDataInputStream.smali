.class public Landroid/app/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "BackupDataInputStream.java"


# instance fields
.field greylist dataSize:I

.field greylist key:Ljava/lang/String;

.field greylist-max-o mData:Landroid/app/backup/BackupDataInput;

.field greylist-max-o mOneByte:[B


# direct methods
.method constructor greylist-max-o <init>(Landroid/app/backup/BackupDataInput;)V
    .registers 2
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    .line 64
    .local v0, "one":[B
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 65
    new-array v1, v2, [B

    iput-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    move-object v0, v1

    .line 67
    :cond_c
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 68
    aget-byte v1, v0, v3

    return v1
.end method

.method public whitelist test-api read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v0

    return v0
.end method

.method public whitelist size()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    return v0
.end method
