.class public Landroid/app/backup/BackupDataInputStream;
.super Ljava/io/InputStream;
.source "BackupDataInputStream.java"


# instance fields
.field dataSize:I

.field key:Ljava/lang/String;

.field mData:Landroid/app/backup/BackupDataInput;

.field mOneByte:[B


# direct methods
.method constructor <init>(Landroid/app/backup/BackupDataInput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    #@5
    .line 47
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 59
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    #@4
    .line 60
    .local v0, "one":[B
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    #@6
    if-nez v1, :cond_0

    #@8
    .line 61
    new-array v0, v3, [B

    #@a
    .end local v0    # "one":[B
    iput-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mOneByte:[B

    #@c
    .line 63
    .restart local v0    # "one":[B
    :cond_0
    iget-object v1, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    #@e
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    #@11
    .line 64
    aget-byte v1, v0, v2

    #@13
    return v1
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    #@2
    array-length v1, p1

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/app/backup/BackupDataInputStream;->mData:Landroid/app/backup/BackupDataInput;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    #@2
    return v0
.end method
