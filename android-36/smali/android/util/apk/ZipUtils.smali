.class abstract Landroid/util/apk/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final blacklist UINT16_MAX_VALUE:I = 0xffff

.field private static final blacklist ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final blacklist ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final blacklist ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final blacklist ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final blacklist ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final blacklist ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    .line 248
    return-void

    .line 246
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .registers 9
    .param p0, "zipContents"    # Ljava/nio/ByteBuffer;

    .line 147
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 159
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 160
    .local v0, "archiveSize":I
    const/16 v1, 0x16

    const/4 v2, -0x1

    if-ge v0, v1, :cond_d

    .line 161
    return v2

    .line 163
    :cond_d
    add-int/lit8 v1, v0, -0x16

    const v3, 0xffff

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 164
    .local v1, "maxCommentLength":I
    add-int/lit8 v3, v0, -0x16

    .line 165
    .local v3, "eocdWithEmptyCommentStartPosition":I
    const/4 v4, 0x0

    .local v4, "expectedCommentLength":I
    :goto_19
    if-gt v4, v1, :cond_32

    .line 167
    sub-int v5, v3, v4

    .line 168
    .local v5, "eocdStartPos":I
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    const v7, 0x6054b50

    if-ne v6, v7, :cond_2f

    .line 169
    add-int/lit8 v6, v5, 0x14

    .line 170
    invoke-static {p0, v6}, Landroid/util/apk/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 172
    .local v6, "actualCommentLength":I
    if-ne v6, v4, :cond_2f

    .line 173
    return v5

    .line 166
    .end local v5    # "eocdStartPos":I
    .end local v6    # "actualCommentLength":I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 178
    .end local v4    # "expectedCommentLength":I
    :cond_32
    return v2
.end method

.method static blacklist findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .registers 5
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 68
    .local v0, "fileSize":J
    const-wide/16 v2, 0x16

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 69
    const/4 v2, 0x0

    return-object v2

    .line 75
    :cond_10
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    .line 76
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_18

    .line 77
    return-object v2

    .line 83
    :cond_18
    const v3, 0xffff

    invoke-static {p0, v3}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .registers 11
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "maxCommentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-ltz p1, :cond_62

    const v0, 0xffff

    if-gt p1, v0, :cond_62

    .line 115
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 116
    .local v0, "fileSize":J
    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_17

    .line 118
    return-object v5

    .line 121
    :cond_17
    int-to-long v6, p1

    sub-long v2, v0, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 123
    add-int/lit8 v2, p1, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 124
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, v0, v3

    .line 126
    .local v3, "bufOffsetInFile":J
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 127
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 128
    invoke-static {v2}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 129
    .local v6, "eocdOffsetInBuf":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4b

    .line 131
    return-object v5

    .line 134
    :cond_4b
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 136
    .local v5, "eocd":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 137
    int-to-long v7, v6

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    .line 111
    .end local v0    # "fileSize":J
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "bufOffsetInFile":J
    .end local v5    # "eocd":Ljava/nio/ByteBuffer;
    .end local v6    # "eocdOffsetInBuf":I
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCommentSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 251
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static blacklist getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .line 255
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .registers 3
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .line 212
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 213
    nop

    .line 215
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 213
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .registers 3
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    .line 238
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 239
    nop

    .line 241
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    .line 239
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final blacklist isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .registers 8
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "zipEndOfCentralDirectoryPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const-wide/16 v0, 0x14

    sub-long v0, p1, v0

    .line 196
    .local v0, "locatorPosition":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_c

    .line 197
    return v3

    .line 200
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 203
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v4, 0x504b0607

    if-ne v2, v4, :cond_19

    const/4 v3, 0x1

    :cond_19
    return v3
.end method

.method private static blacklist setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .registers 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_19

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-gtz v0, :cond_19

    .line 262
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 263
    return-void

    .line 260
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uint32 value of out range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .registers 4
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    .line 225
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 226
    nop

    .line 228
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 226
    invoke-static {p0, v0, p1, p2}, Landroid/util/apk/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    .line 230
    return-void
.end method
