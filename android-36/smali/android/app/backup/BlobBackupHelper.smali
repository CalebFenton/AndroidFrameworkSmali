.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Landroid/app/backup/BackupHelperWithLogger;
.source "BlobBackupHelper.java"


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final greylist-max-o mCurrentBlobVersion:I

.field private final greylist-max-o mKeys:[Ljava/lang/String;


# direct methods
.method public varargs constructor blacklist <init>(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "currentBlobVersion"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Landroid/app/backup/BackupHelperWithLogger;-><init>()V

    .line 50
    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    .line 51
    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method private greylist-max-o checksum([B)J
    .registers 8
    .param p1, "buffer"    # [B

    .line 219
    if-eqz p1, :cond_23

    .line 221
    :try_start_2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 222
    .local v0, "crc":Ljava/util/zip/CRC32;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 224
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 225
    .local v3, "nRead":I
    :goto_11
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    move v3, v4

    if-ltz v4, :cond_1d

    .line 226
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_11

    .line 228
    :cond_1d
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_22

    return-wide v4

    .line 229
    .end local v0    # "crc":Ljava/util/zip/CRC32;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v3    # "nRead":I
    :catch_22
    move-exception v0

    .line 233
    :cond_23
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private greylist-max-o deflate([B)[B
    .registers 7
    .param p1, "data"    # [B

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "result":[B
    if-eqz p1, :cond_40

    .line 164
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v1, "sink":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    .local v2, "headerOut":Ljava/io/DataOutputStream;
    iget v3, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v3, "out":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v3, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 172
    invoke-virtual {v3}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 173
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_23

    move-object v0, v4

    .line 179
    .end local v1    # "sink":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "headerOut":Ljava/io/DataOutputStream;
    .end local v3    # "out":Ljava/util/zip/DeflaterOutputStream;
    goto :goto_40

    .line 177
    :catch_23
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlobBackupHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :cond_40
    :goto_40
    return-object v0
.end method

.method private greylist-max-o inflate([B)[B
    .registers 12
    .param p1, "compressedData"    # [B

    .line 186
    const-string v0, "BlobBackupHelper"

    const/4 v1, 0x0

    .line 187
    .local v1, "result":[B
    if-eqz p1, :cond_70

    .line 189
    :try_start_5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 190
    .local v2, "source":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    .local v3, "headerIn":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 192
    .local v4, "version":I
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-le v4, v5, :cond_2f

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved payload from unrecognized version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_2f
    new-instance v5, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v5, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v5, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v6, "inflated":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x1000

    new-array v7, v7, [B

    .line 201
    .local v7, "buffer":[B
    :goto_3d
    invoke-virtual {v5, v7}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "nRead":I
    if-lez v8, :cond_49

    .line 202
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3d

    .line 204
    :cond_49
    invoke-virtual {v5}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 205
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 206
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_53} :catch_55

    move-object v1, v0

    .line 213
    .end local v2    # "source":Ljava/io/ByteArrayInputStream;
    .end local v3    # "headerIn":Ljava/io/DataInputStream;
    .end local v4    # "version":I
    .end local v5    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v6    # "inflated":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "nRead":I
    goto :goto_70

    .line 210
    :catch_55
    move-exception v2

    .line 212
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process restored payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v2    # "e":Ljava/io/IOException;
    :cond_70
    :goto_70
    return-object v1
.end method

.method private greylist-max-o readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .registers 13
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 91
    const-string v0, "BlobBackupHelper"

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    .local v1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 94
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_15
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 98
    .local v4, "version":I
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-gt v4, v5, :cond_38

    .line 99
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 103
    .local v5, "numKeys":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    if-ge v6, v5, :cond_37

    .line 104
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 109
    .local v8, "checksum":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    nop

    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "checksum":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 111
    .end local v5    # "numKeys":I
    .end local v6    # "i":I
    :cond_37
    goto :goto_72

    .line 112
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prior state from unrecognized version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_4e} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4e} :catch_4f

    goto :goto_72

    .line 121
    .end local v4    # "version":I
    :catch_4f
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error examining prior backup state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    goto :goto_73

    .line 114
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6e
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/EOFException;
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 124
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_72
    nop

    .line 126
    :goto_73
    return-object v1
.end method

.method private greylist-max-o writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .registers 10
    .param p2, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 134
    .local p1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 139
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    .local v1, "out":Ljava/io/DataOutputStream;
    iget v2, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 144
    .local v2, "N":I
    :goto_1b
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_3a

    .line 146
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 151
    .local v5, "checksum":J
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_3b

    .line 145
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "checksum":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 156
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_3a
    goto :goto_43

    .line 154
    :catch_3b
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BlobBackupHelper"

    const-string v2, "Unable to write updated state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :goto_43
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract greylist-max-o getBackupPayload(Ljava/lang/String;)[B
.end method

.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 16
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newStateFd"    # Landroid/os/ParcelFileDescriptor;

    .line 245
    invoke-direct {p0, p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 246
    .local v0, "oldState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 249
    .local v1, "newState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_9
    iget-object v2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_46

    aget-object v5, v2, v4

    .line 250
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    move-result-object v6

    .line 251
    .local v6, "payload":[B
    invoke-direct {p0, v6}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    move-result-wide v7

    .line 255
    .local v7, "checksum":J
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 258
    .local v9, "oldChecksum":Ljava/lang/Long;
    if-eqz v9, :cond_34

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v7, v10

    if-eqz v10, :cond_43

    .line 263
    :cond_34
    if-eqz v6, :cond_3f

    .line 264
    array-length v10, v6

    invoke-virtual {p2, v5, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 265
    array-length v10, v6

    invoke-virtual {p2, v6, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_43

    .line 268
    :cond_3f
    const/4 v10, -0x1

    invoke-virtual {p2, v5, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_43} :catch_4c
    .catchall {:try_start_9 .. :try_end_43} :catchall_4a

    .line 249
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "payload":[B
    .end local v7    # "checksum":J
    .end local v9    # "oldChecksum":Ljava/lang/Long;
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 281
    :cond_46
    :goto_46
    invoke-direct {p0, v1, p3}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 282
    goto :goto_6d

    .line 281
    :catchall_4a
    move-exception v2

    goto :goto_6e

    .line 276
    :catch_4c
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string v3, "BlobBackupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to record notification state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_4a

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_46

    .line 283
    :goto_6d
    return-void

    .line 281
    :goto_6e
    invoke-direct {p0, v1, p3}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 282
    throw v2
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 7
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 287
    const-string v0, "BlobBackupHelper"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "which":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 292
    iget-object v3, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 293
    goto :goto_1a

    .line 291
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 296
    :cond_1a
    :goto_1a
    iget-object v3, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_3c

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 301
    :cond_3c
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v3

    new-array v3, v3, [B

    .line 302
    .local v3, "compressed":[B
    invoke-virtual {p1, v3}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 303
    invoke-direct {p0, v3}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    move-result-object v4

    .line 304
    .local v4, "payload":[B
    invoke-virtual {p0, v1, v4}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4c} :catch_4d

    .line 307
    .end local v2    # "which":I
    .end local v3    # "compressed":[B
    .end local v4    # "payload":[B
    goto :goto_72

    .line 305
    :catch_4d
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception restoring entity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_72
    return-void
.end method

.method public whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 317
    return-void
.end method
