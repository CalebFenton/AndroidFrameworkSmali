.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Ljava/lang/Object;
.source "BlobBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final mCurrentBlobVersion:I

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "BlobBackupHelper"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    #@a
    .line 43
    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "currentBlobVersion"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@5
    .line 52
    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@7
    .line 50
    return-void
.end method

.method private checksum([B)J
    .locals 8
    .param p1, "buffer"    # [B

    #@0
    .prologue
    .line 207
    if-eqz p1, :cond_0

    #@2
    .line 209
    :try_start_0
    new-instance v2, Ljava/util/zip/CRC32;

    #@4
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    #@7
    .line 210
    .local v2, "crc":Ljava/util/zip/CRC32;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@9
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 211
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v5, 0x1000

    #@e
    new-array v1, v5, [B

    #@10
    .line 212
    .local v1, "buf":[B
    const/4 v4, 0x0

    #@11
    .line 213
    .local v4, "nRead":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    #@14
    move-result v4

    #@15
    if-ltz v4, :cond_1

    #@17
    .line 214
    const/4 v5, 0x0

    #@18
    invoke-virtual {v2, v1, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    #@1b
    goto :goto_0

    #@1c
    .line 217
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "buf":[B
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    #@1d
    .line 221
    :cond_0
    const-wide/16 v6, -0x1

    #@1f
    return-wide v6

    #@20
    .line 216
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
    .line 149
    const/4 v3, 0x0

    #@1
    .line 150
    .local v3, "result":[B
    if-eqz p1, :cond_0

    #@3
    .line 152
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 153
    .local v4, "sink":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@a
    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@d
    .line 156
    .local v1, "headerOut":Ljava/io/DataOutputStream;
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@f
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@12
    .line 158
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    #@14
    invoke-direct {v2, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@17
    .line 159
    .local v2, "out":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v2, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    #@1a
    .line 160
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    #@1d
    .line 161
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@20
    move-result-object v3

    #@21
    .line 162
    .local v3, "result":[B
    sget-boolean v5, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    #@23
    if-eqz v5, :cond_0

    #@25
    .line 163
    const-string/jumbo v5, "BlobBackupHelper"

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "Deflated "

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    array-length v7, p1

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    const-string/jumbo v7, " bytes to "

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    array-length v7, v3

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 169
    .end local v1    # "headerOut":Ljava/io/DataOutputStream;
    .end local v2    # "out":Ljava/util/zip/DeflaterOutputStream;
    .end local v3    # "result":[B
    .end local v4    # "sink":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v3

    #@4d
    .line 165
    :catch_0
    move-exception v0

    #@4e
    .line 166
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BlobBackupHelper"

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "Unable to process payload: "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v6

    #@69
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    goto :goto_0
.end method

.method private inflate([B)[B
    .locals 13
    .param p1, "compressedData"    # [B

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 174
    const/4 v6, 0x0

    #@2
    .line 175
    .local v6, "result":[B
    if-eqz p1, :cond_1

    #@4
    .line 177
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@6
    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@9
    .line 178
    .local v7, "source":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    #@b
    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@e
    .line 179
    .local v2, "headerIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    #@11
    move-result v8

    #@12
    .line 180
    .local v8, "version":I
    iget v9, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@14
    if-le v8, v9, :cond_0

    #@16
    .line 181
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
    .line 182
    return-object v12

    #@31
    .line 185
    :cond_0
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    #@33
    invoke-direct {v3, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    #@36
    .line 186
    .local v3, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    #@38
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@3b
    .line 187
    .local v4, "inflated":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    #@3d
    new-array v0, v9, [B

    #@3f
    .line 189
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    #@42
    move-result v5

    #@43
    .local v5, "nRead":I
    if-lez v5, :cond_2

    #@45
    .line 190
    const/4 v9, 0x0

    #@46
    invoke-virtual {v4, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    goto :goto_0

    #@4a
    .line 198
    .end local v0    # "buffer":[B
    .end local v2    # "headerIn":Ljava/io/DataInputStream;
    .end local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    .end local v6    # "result":[B
    .end local v7    # "source":Ljava/io/ByteArrayInputStream;
    .end local v8    # "version":I
    :catch_0
    move-exception v1

    #@4b
    .line 200
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
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

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
    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v6

    #@6a
    .line 192
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
    .line 193
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    #@70
    .line 194
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@73
    move-result-object v6

    #@74
    .line 195
    .local v6, "result":[B
    sget-boolean v9, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    #@76
    if-eqz v9, :cond_1

    #@78
    .line 196
    const-string/jumbo v9, "BlobBackupHelper"

    #@7b
    new-instance v10, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v11, "Inflated "

    #@83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    array-length v11, p1

    #@88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    const-string/jumbo v11, " bytes to "

    #@8f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v10

    #@93
    array-length v11, v6

    #@94
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v10

    #@9c
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@9f
    goto :goto_1
.end method

.method private readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .locals 15
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
    .line 92
    new-instance v10, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 94
    .local v10, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v5, Ljava/io/FileInputStream;

    #@7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@a
    move-result-object v12

    #@b
    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    .line 95
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    #@10
    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    .line 96
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    #@15
    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@18
    .line 99
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    #@1b
    move-result v11

    #@1c
    .line 100
    .local v11, "version":I
    iget v12, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@1e
    if-gt v11, v12, :cond_0

    #@20
    .line 101
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    #@23
    move-result v9

    #@24
    .line 102
    .local v9, "numKeys":I
    const/4 v6, 0x0

    #@25
    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_1

    #@27
    .line 103
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    .line 104
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    #@2e
    move-result-wide v2

    #@2f
    .line 105
    .local v2, "checksum":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@32
    move-result-object v12

    #@33
    invoke-virtual {v10, v8, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 102
    add-int/lit8 v6, v6, 0x1

    #@38
    goto :goto_0

    #@39
    .line 108
    .end local v2    # "checksum":J
    .end local v6    # "i":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "numKeys":I
    :cond_0
    const-string/jumbo v12, "BlobBackupHelper"

    #@3c
    new-instance v13, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v14, "Prior state from unrecognized version "

    #@44
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v13

    #@48
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v13

    #@4c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v13

    #@50
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 119
    .end local v11    # "version":I
    :cond_1
    :goto_1
    return-object v10

    #@54
    .line 114
    :catch_0
    move-exception v4

    #@55
    .line 115
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "BlobBackupHelper"

    #@58
    new-instance v13, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v14, "Error examining prior backup state "

    #@60
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v13

    #@64
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@67
    move-result-object v14

    #@68
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v13

    #@6c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v13

    #@70
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 116
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@76
    goto :goto_1

    #@77
    .line 110
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@78
    .line 113
    .local v1, "e":Ljava/io/EOFException;
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    #@7b
    goto :goto_1
.end method

.method private writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
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
    .line 127
    .local p1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    #@2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@5
    move-result-object v5

    #@6
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@9
    .line 132
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    #@b
    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 134
    .local v4, "out":Ljava/io/DataOutputStream;
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    #@10
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@13
    .line 136
    if-eqz p1, :cond_0

    #@15
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@18
    move-result v0

    #@19
    .line 137
    .local v0, "N":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1c
    .line 138
    const/4 v3, 0x0

    #@1d
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    #@1f
    .line 139
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Ljava/lang/String;

    #@25
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@28
    .line 140
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v5

    #@2c
    check-cast v5, Ljava/lang/Long;

    #@2e
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@31
    move-result-wide v6

    #@32
    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 138
    add-int/lit8 v3, v3, 0x1

    #@37
    goto :goto_1

    #@38
    .line 136
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    const/4 v0, 0x0

    #@39
    .restart local v0    # "N":I
    goto :goto_0

    #@3a
    .line 142
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    #@3b
    .line 143
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BlobBackupHelper"

    #@3e
    const-string/jumbo v6, "Unable to write updated state"

    #@41
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    .line 125
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
    .line 230
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    #@3
    move-result-object v8

    #@4
    .line 231
    .local v8, "oldState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v6, Landroid/util/ArrayMap;

    #@6
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    #@9
    .line 234
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
    if-ge v10, v12, :cond_5

    #@11
    aget-object v5, v11, v10

    #@13
    .line 235
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
    .line 236
    .local v9, "payload":[B
    move-object/from16 v0, p0

    #@21
    invoke-direct {v0, v9}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    #@24
    move-result-wide v2

    #@25
    .line 237
    .local v2, "checksum":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@28
    move-result-object v13

    #@29
    invoke-virtual {v6, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 239
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Ljava/lang/Long;

    #@32
    .line 240
    .local v7, "oldChecksum":Ljava/lang/Long;
    if-eqz v7, :cond_0

    #@34
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v14

    #@38
    cmp-long v13, v2, v14

    #@3a
    if-eqz v13, :cond_4

    #@3c
    .line 241
    :cond_0
    sget-boolean v13, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    #@3e
    if-eqz v13, :cond_1

    #@40
    .line 242
    const-string/jumbo v13, "BlobBackupHelper"

    #@43
    new-instance v14, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v15, "State has changed for key "

    #@4b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v14

    #@4f
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v14

    #@53
    const-string/jumbo v15, ", writing"

    #@56
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v14

    #@5a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v14

    #@5e
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 244
    :cond_1
    if-eqz v9, :cond_3

    #@63
    .line 245
    array-length v13, v9

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    #@69
    .line 246
    array-length v13, v9

    #@6a
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v0, v9, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    #@6f
    .line 234
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@71
    goto :goto_0

    #@72
    .line 249
    :cond_3
    const/4 v13, -0x1

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@78
    goto :goto_1

    #@79
    .line 257
    .end local v2    # "checksum":J
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "oldChecksum":Ljava/lang/Long;
    .end local v9    # "payload":[B
    :catch_0
    move-exception v4

    #@7a
    .line 258
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "BlobBackupHelper"

    #@7d
    new-instance v11, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v12, "Unable to record notification state: "

    #@85
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v11

    #@89
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@8c
    move-result-object v12

    #@8d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v11

    #@91
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v11

    #@95
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@98
    .line 259
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9b
    .line 262
    move-object/from16 v0, p0

    #@9d
    move-object/from16 v1, p3

    #@9f
    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@a2
    .line 228
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    #@a3
    .line 252
    .restart local v2    # "checksum":J
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "oldChecksum":Ljava/lang/Long;
    .restart local v9    # "payload":[B
    :cond_4
    :try_start_2
    sget-boolean v13, Landroid/app/backup/BlobBackupHelper;->DEBUG:Z

    #@a5
    if-eqz v13, :cond_2

    #@a7
    .line 253
    const-string/jumbo v13, "BlobBackupHelper"

    #@aa
    new-instance v14, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v15, "No change under key "

    #@b2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v14

    #@b6
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v14

    #@ba
    const-string/jumbo v15, " => not writing"

    #@bd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v14

    #@c1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v14

    #@c5
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c8
    goto :goto_1

    #@c9
    .line 260
    .end local v2    # "checksum":J
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "oldChecksum":Ljava/lang/Long;
    .end local v9    # "payload":[B
    :catchall_0
    move-exception v10

    #@ca
    .line 262
    move-object/from16 v0, p0

    #@cc
    move-object/from16 v1, p3

    #@ce
    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@d1
    .line 260
    throw v10

    #@d2
    .line 262
    :cond_5
    move-object/from16 v0, p0

    #@d4
    move-object/from16 v1, p3

    #@d6
    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@d9
    goto :goto_2
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    #@0
    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 272
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
    .line 273
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
    .line 277
    :cond_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    #@16
    array-length v5, v5

    #@17
    if-lt v4, v5, :cond_2

    #@19
    .line 278
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
    .line 279
    return-void

    #@3b
    .line 272
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 282
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    #@41
    move-result v5

    #@42
    new-array v0, v5, [B

    #@44
    .line 283
    .local v0, "compressed":[B
    invoke-virtual {p1, v0}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    #@47
    .line 284
    invoke-direct {p0, v0}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    #@4a
    move-result-object v3

    #@4b
    .line 285
    .local v3, "payload":[B
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 267
    .end local v0    # "compressed":[B
    .end local v3    # "payload":[B
    :goto_1
    return-void

    #@4f
    .line 286
    :catch_0
    move-exception v1

    #@50
    .line 287
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
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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
    .line 294
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    #@4
    .line 292
    return-void
.end method
