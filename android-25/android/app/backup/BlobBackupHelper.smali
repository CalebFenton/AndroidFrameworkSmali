.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Ljava/lang/Object;
.source "BlobBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final mCurrentBlobVersion:I

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "currentBlobVersion"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@5
    .line 51
    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@7
    .line 49
    return-void
.end method

.method private checksum([B)J
    .locals 8
    .param p1, "buffer"    # [B

    #@0
    .prologue
    .line 219
    if-eqz p1, :cond_0

    #@2
    .line 221
    :try_start_0
    new-instance v2, Ljava/util/zip/CRC32;

    #@4
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    #@7
    .line 222
    .local v2, "crc":Ljava/util/zip/CRC32;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 223
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v5, 0x1000

    #@e
    new-array v1, v5, [B

    #@10
    .line 224
    .local v1, "buf":[B
    const/4 v4, 0x0

    #@11
    .line 225
    .local v4, "nRead":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    #@14
    move-result v4

    #@15
    if-ltz v4, :cond_1

    #@17
    .line 226
    const/4 v5, 0x0

    #@18
    invoke-virtual {v2, v1, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    #@1b
    goto :goto_0

    #@1c
    .line 229
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "buf":[B
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    #@1d
    .line 233
    :cond_0
    const-wide/16 v6, -0x1

    #@1f
    return-wide v6

    #@20
    .line 228
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .restart local v4    # "nRead":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-wide v6

    #@24
    return-wide v6
.end method

.method private deflate([B)[B
    .locals 8
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 161
    const/4 v3, 0x0

    #@1
    .line 162
    .local v3, "result":[B
    if-eqz p1, :cond_0

    #@3
    .line 164
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 165
    .local v4, "sink":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@a
    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@d
    .line 168
    .local v1, "headerOut":Ljava/io/DataOutputStream;
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@f
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@12
    .line 170
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    #@14
    invoke-direct {v2, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@17
    .line 171
    .local v2, "out":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FilterOutputStream;->write([B)V

    #@1a
    .line 172
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    #@1d
    .line 173
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v3

    #@21
    .line 181
    .end local v1    # "headerOut":Ljava/io/DataOutputStream;
    .end local v2    # "out":Ljava/util/zip/DeflaterOutputStream;
    .end local v3    # "result":[B
    .end local v4    # "sink":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v3

    #@22
    .line 177
    .restart local v3    # "result":[B
    :catch_0
    move-exception v0

    #@23
    .line 178
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BlobBackupHelper"

    #@26
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "Unable to process payload: "

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    goto :goto_0
.end method

.method private inflate([B)[B
    .locals 13
    .param p1, "compressedData"    # [B

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 186
    const/4 v6, 0x0

    #@2
    .line 187
    .local v6, "result":[B
    if-eqz p1, :cond_1

    #@4
    .line 189
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@6
    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@9
    .line 190
    .local v7, "source":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    #@b
    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@e
    .line 191
    .local v2, "headerIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@11
    move-result v8

    #@12
    .line 192
    .local v8, "version":I
    iget v9, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@14
    if-le v8, v9, :cond_0

    #@16
    .line 193
    const-string/jumbo v9, "BlobBackupHelper"

    #@19
    new-instance v10, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v11, "Saved payload from unrecognized version "

    #@21
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v10

    #@29
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v10

    #@2d
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 194
    return-object v12

    #@31
    .line 197
    :cond_0
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    #@33
    invoke-direct {v3, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    #@36
    .line 198
    .local v3, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@38
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@3b
    .line 199
    .local v4, "inflated":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    #@3d
    new-array v0, v9, [B

    #@3f
    .line 201
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FilterInputStream;->read([B)I

    #@42
    move-result v5

    #@43
    .local v5, "nRead":I
    if-lez v5, :cond_2

    #@45
    .line 202
    const/4 v9, 0x0

    #@46
    invoke-virtual {v4, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    goto :goto_0

    #@4a
    .line 210
    .end local v0    # "buffer":[B
    .end local v2    # "headerIn":Ljava/io/DataInputStream;
    .end local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    .end local v7    # "source":Ljava/io/ByteArrayInputStream;
    .end local v8    # "version":I
    :catch_0
    move-exception v1

    #@4b
    .line 212
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BlobBackupHelper"

    #@4e
    new-instance v10, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v11, "Unable to process restored payload: "

    #@56
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@5d
    move-result-object v11

    #@5e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v10

    #@66
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":[B
    :cond_1
    :goto_1
    return-object v6

    #@6a
    .line 204
    .restart local v0    # "buffer":[B
    .restart local v2    # "headerIn":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .restart local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "nRead":I
    .restart local v6    # "result":[B
    .restart local v7    # "source":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "version":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/InflaterInputStream;->close()V

    #@6d
    .line 205
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    #@70
    .line 206
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@73
    move-result-object v6

    #@74
    .local v6, "result":[B
    goto :goto_1
.end method

.method private readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .locals 14
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    new-instance v9, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 93
    .local v9, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Ljava/io/FileInputStream;

    #@7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@a
    move-result-object v11

    #@b
    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    .line 94
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    #@10
    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    .line 97
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    #@16
    move-result v10

    #@17
    .line 98
    .local v10, "version":I
    iget v11, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@19
    if-gt v10, v11, :cond_0

    #@1b
    .line 99
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    #@1e
    move-result v8

    #@1f
    .line 103
    .local v8, "numKeys":I
    const/4 v5, 0x0

    #@20
    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    #@22
    .line 104
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    .line 105
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    #@29
    move-result-wide v0

    #@2a
    .line 109
    .local v0, "checksum":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v11

    #@2e
    invoke-virtual {v9, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 103
    add-int/lit8 v5, v5, 0x1

    #@33
    goto :goto_0

    #@34
    .line 112
    .end local v0    # "checksum":J
    .end local v5    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "numKeys":I
    :cond_0
    const-string/jumbo v11, "BlobBackupHelper"

    #@37
    new-instance v12, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v13, "Prior state from unrecognized version "

    #@3f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v12

    #@43
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v12

    #@47
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v12

    #@4b
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 126
    .end local v10    # "version":I
    :cond_1
    :goto_1
    return-object v9

    #@4f
    .line 121
    :catch_0
    move-exception v3

    #@50
    .line 122
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "BlobBackupHelper"

    #@53
    new-instance v12, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v13, "Error examining prior backup state "

    #@5b
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v12

    #@5f
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v12

    #@67
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v12

    #@6b
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 123
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    #@71
    goto :goto_1

    #@72
    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@73
    .line 120
    .local v2, "e":Ljava/io/EOFException;
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    #@76
    goto :goto_1
.end method

.method private writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p2, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 134
    .local p1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    #@2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v8

    #@6
    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@9
    .line 139
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    #@b
    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 141
    .local v7, "out":Ljava/io/DataOutputStream;
    iget v8, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@10
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@13
    .line 143
    if-eqz p1, :cond_0

    #@15
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v0

    #@19
    .line 144
    .local v0, "N":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1c
    .line 145
    const/4 v5, 0x0

    #@1d
    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    #@1f
    .line 146
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Ljava/lang/String;

    #@25
    .line 147
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v8

    #@29
    check-cast v8, Ljava/lang/Long;

    #@2b
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@2e
    move-result-wide v2

    #@2f
    .line 151
    .local v2, "checksum":J
    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@32
    .line 152
    invoke-virtual {v7, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 145
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_1

    #@38
    .line 143
    .end local v0    # "N":I
    .end local v2    # "checksum":J
    .end local v5    # "i":I
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@39
    goto :goto_0

    #@3a
    .line 154
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@3b
    .line 155
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BlobBackupHelper"

    #@3e
    const-string/jumbo v9, "Unable to write updated state"

    #@41
    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract getBackupPayload(Ljava/lang/String;)[B
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newStateFd"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 245
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    #@3
    move-result-object v8

    #@4
    .line 246
    .local v8, "oldState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v6, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@9
    .line 249
    .local v6, "newState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@b
    iget-object v11, v0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@d
    const/4 v10, 0x0

    #@e
    array-length v12, v11

    #@f
    :goto_0
    if-ge v10, v12, :cond_3

    #@11
    aget-object v5, v11, v10

    #@13
    .line 250
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15
    invoke-virtual {v0, v5}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    #@18
    move-result-object v13

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v0, v13}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    #@1e
    move-result-object v9

    #@1f
    .line 251
    .local v9, "payload":[B
    move-object/from16 v0, p0

    #@21
    invoke-direct {v0, v9}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    #@24
    move-result-wide v2

    #@25
    .line 255
    .local v2, "checksum":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v13

    #@29
    invoke-virtual {v6, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 257
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Ljava/lang/Long;

    #@32
    .line 258
    .local v7, "oldChecksum":Ljava/lang/Long;
    if-eqz v7, :cond_0

    #@34
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v14

    #@38
    cmp-long v13, v2, v14

    #@3a
    if-eqz v13, :cond_1

    #@3c
    .line 263
    :cond_0
    if-eqz v9, :cond_2

    #@3e
    .line 264
    array-length v13, v9

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@44
    .line 265
    array-length v13, v9

    #@45
    move-object/from16 v0, p2

    #@47
    invoke-virtual {v0, v9, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@4a
    .line 249
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 268
    :cond_2
    const/4 v13, -0x1

    #@4e
    move-object/from16 v0, p2

    #@50
    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    goto :goto_1

    #@54
    .line 276
    .end local v2    # "checksum":J
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "oldChecksum":Ljava/lang/Long;
    .end local v9    # "payload":[B
    :catch_0
    move-exception v4

    #@55
    .line 277
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "BlobBackupHelper"

    #@58
    new-instance v11, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v12, "Unable to record notification state: "

    #@60
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v11

    #@64
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@67
    move-result-object v12

    #@68
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v11

    #@6c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 278
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 281
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, p3

    #@7a
    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@7d
    .line 240
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    #@7e
    .line 281
    :cond_3
    move-object/from16 v0, p0

    #@80
    move-object/from16 v1, p3

    #@82
    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@85
    goto :goto_2

    #@86
    .line 279
    :catchall_0
    move-exception v10

    #@87
    .line 281
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, p3

    #@8b
    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@8e
    .line 279
    throw v10
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 291
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x0

    #@5
    .local v4, "which":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@7
    array-length v5, v5

    #@8
    if-ge v4, v5, :cond_0

    #@a
    .line 292
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@c
    aget-object v5, v5, v4

    #@e
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 296
    :cond_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@16
    array-length v5, v5

    #@17
    if-lt v4, v5, :cond_2

    #@19
    .line 297
    const-string/jumbo v5, "BlobBackupHelper"

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "Unrecognized key "

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    const-string/jumbo v7, ", ignoring"

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 298
    return-void

    #@3b
    .line 291
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    #@41
    move-result v5

    #@42
    new-array v0, v5, [B

    #@44
    .line 302
    .local v0, "compressed":[B
    invoke-virtual {p1, v0}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    #@47
    .line 303
    invoke-direct {p0, v0}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    #@4a
    move-result-object v3

    #@4b
    .line 304
    .local v3, "payload":[B
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 286
    .end local v0    # "compressed":[B
    .end local v3    # "payload":[B
    :goto_1
    return-void

    #@4f
    .line 305
    :catch_0
    move-exception v1

    #@50
    .line 306
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BlobBackupHelper"

    #@53
    new-instance v6, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v7, "Exception restoring entity "

    #@5b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    const-string/jumbo v7, " : "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    goto :goto_1
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 316
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@4
    .line 311
    return-void
.end method
