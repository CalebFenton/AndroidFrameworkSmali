.class abstract Landroid/util/apk/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field private static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "ByteBuffer byte order must be little endian"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 242
    :cond_0
    return-void
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p0, "zipContents"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 145
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    #@4
    .line 157
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@7
    move-result v1

    #@8
    .line 158
    .local v1, "archiveSize":I
    const/16 v6, 0x16

    #@a
    if-ge v1, v6, :cond_0

    #@c
    .line 159
    return v8

    #@d
    .line 161
    :cond_0
    add-int/lit8 v6, v1, -0x16

    #@f
    const v7, 0xffff

    #@12
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v5

    #@16
    .line 162
    .local v5, "maxCommentLength":I
    add-int/lit8 v3, v1, -0x16

    #@18
    .line 163
    .local v3, "eocdWithEmptyCommentStartPosition":I
    const/4 v4, 0x0

    #@19
    .local v4, "expectedCommentLength":I
    :goto_0
    if-ge v4, v5, :cond_2

    #@1b
    .line 165
    sub-int v2, v3, v4

    #@1d
    .line 166
    .local v2, "eocdStartPos":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@20
    move-result v6

    #@21
    const v7, 0x6054b50

    #@24
    if-ne v6, v7, :cond_1

    #@26
    .line 169
    add-int/lit8 v6, v2, 0x14

    #@28
    .line 168
    invoke-static {p0, v6}, Landroid/util/apk/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    #@2b
    move-result v0

    #@2c
    .line 170
    .local v0, "actualCommentLength":I
    if-ne v0, v4, :cond_1

    #@2e
    .line 171
    return v2

    #@2f
    .line 164
    .end local v0    # "actualCommentLength":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 176
    .end local v2    # "eocdStartPos":I
    :cond_2
    return v8
.end method

.method static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 7
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair",
            "<",
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

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 66
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    #@4
    move-result-wide v0

    #@5
    .line 67
    .local v0, "fileSize":J
    const-wide/16 v4, 0x16

    #@7
    cmp-long v3, v0, v4

    #@9
    if-gez v3, :cond_0

    #@b
    .line 68
    return-object v6

    #@c
    .line 74
    :cond_0
    const/4 v3, 0x0

    #@d
    invoke-static {p0, v3}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    #@10
    move-result-object v2

    #@11
    .line 75
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v2, :cond_1

    #@13
    .line 76
    return-object v2

    #@14
    .line 82
    :cond_1
    const v3, 0xffff

    #@17
    invoke-static {p0, v3}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .locals 13
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "maxCommentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Landroid/util/Pair",
            "<",
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

    #@0
    .prologue
    const-wide/16 v10, 0x16

    #@2
    const/4 v12, 0x0

    #@3
    .line 109
    if-ltz p1, :cond_0

    #@5
    const v5, 0xffff

    #@8
    if-le p1, v5, :cond_1

    #@a
    .line 110
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v8, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v9, "maxCommentSize: "

    #@14
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v8

    #@1c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v5

    #@24
    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    #@27
    move-result-wide v6

    #@28
    .line 114
    .local v6, "fileSize":J
    cmp-long v5, v6, v10

    #@2a
    if-gez v5, :cond_2

    #@2c
    .line 116
    return-object v12

    #@2d
    .line 119
    :cond_2
    int-to-long v8, p1

    #@2e
    sub-long v10, v6, v10

    #@30
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@33
    move-result-wide v8

    #@34
    long-to-int p1, v8

    #@35
    .line 121
    add-int/lit8 v5, p1, 0x16

    #@37
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@3a
    move-result-object v0

    #@3b
    .line 122
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3d
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@40
    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@43
    move-result v5

    #@44
    int-to-long v8, v5

    #@45
    sub-long v2, v6, v8

    #@47
    .line 124
    .local v2, "bufOffsetInFile":J
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    #@4a
    .line 125
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@51
    move-result v8

    #@52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@55
    move-result v9

    #@56
    invoke-virtual {p0, v5, v8, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@59
    .line 126
    invoke-static {v0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    #@5c
    move-result v4

    #@5d
    .line 127
    .local v4, "eocdOffsetInBuf":I
    const/4 v5, -0x1

    #@5e
    if-ne v4, v5, :cond_3

    #@60
    .line 129
    return-object v12

    #@61
    .line 132
    :cond_3
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@64
    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@67
    move-result-object v1

    #@68
    .line 134
    .local v1, "eocd":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@6a
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@6d
    .line 135
    int-to-long v8, v4

    #@6e
    add-long/2addr v8, v2

    #@6f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@72
    move-result-object v5

    #@73
    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@76
    move-result-object v5

    #@77
    return-object v5
.end method

.method private static getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 249
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@3
    move-result v0

    #@4
    const v1, 0xffff

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 253
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const-wide v2, 0xffffffffL

    #@a
    and-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public static getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 210
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    #@3
    .line 213
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x10

    #@9
    .line 211
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public static getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 236
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    #@3
    .line 239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0xc

    #@9
    .line 237
    invoke-static {p0, v0}, Landroid/util/apk/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public static final isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .locals 7
    .param p0, "zip"    # Ljava/io/RandomAccessFile;
    .param p1, "zipEndOfCentralDirectoryPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 193
    const-wide/16 v4, 0x14

    #@3
    sub-long v0, p1, v4

    #@5
    .line 194
    .local v0, "locatorPosition":J
    const-wide/16 v4, 0x0

    #@7
    cmp-long v3, v0, v4

    #@9
    if-gez v3, :cond_0

    #@b
    .line 195
    return v2

    #@c
    .line 198
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    #@f
    .line 201
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    #@12
    move-result v3

    #@13
    const v4, 0x504b0607

    #@16
    if-ne v3, v4, :cond_1

    #@18
    const/4 v2, 0x1

    #@19
    :cond_1
    return v2
.end method

.method private static setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 257
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide v0, 0xffffffffL

    #@b
    cmp-long v0, p2, v0

    #@d
    if-lez v0, :cond_1

    #@f
    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "uint32 value of out range: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 260
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@2c
    move-result v0

    #@2d
    add-int/2addr v0, p1

    #@2e
    long-to-int v1, p2

    #@2f
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@32
    .line 256
    return-void
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p0, "zipEndOfCentralDirectory"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    #@0
    .prologue
    .line 223
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    #@3
    .line 226
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v0, v0, 0x10

    #@9
    .line 224
    invoke-static {p0, v0, p1, p2}, Landroid/util/apk/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    #@c
    .line 222
    return-void
.end method
