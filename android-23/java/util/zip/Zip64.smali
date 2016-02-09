.class public Ljava/util/zip/Zip64;
.super Ljava/lang/Object;
.source "Zip64.java"


# static fields
.field public static final MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE:J = 0xffffffffL

.field private static final ZIP64_EOCD_RECORD_EFFECTIVE_SIZE:I = 0x28

.field private static final ZIP64_EOCD_RECORD_SIGNATURE:I = 0x6064b50

.field private static final ZIP64_EXTENDED_INFO_HEADER_ID:S = 0x1s

.field private static final ZIP64_LOCATOR_SIGNATURE:I = 0x7064b50

.field private static final ZIP64_LOCATOR_SIZE:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getZip64ExtendedInfoSize(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "extras"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const v6, 0xffff

    #@3
    const/4 v5, -0x1

    #@4
    .line 334
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_2

    #@a
    .line 335
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@d
    move-result v4

    #@e
    and-int v1, v4, v6

    #@10
    .line 336
    .local v1, "headerId":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@13
    move-result v4

    #@14
    and-int v3, v4, v6

    #@16
    .line 337
    .local v3, "length":I
    const/4 v4, 0x1

    #@17
    if-ne v1, v4, :cond_1

    #@19
    .line 338
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v4

    #@1d
    if-lt v4, v3, :cond_0

    #@1f
    .line 339
    return v3

    #@20
    .line 341
    :cond_0
    return v5

    #@21
    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@24
    move-result v4

    #@25
    add-int/2addr v4, v3

    #@26
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    #@29
    goto :goto_0

    #@2a
    .line 349
    .end local v1    # "headerId":I
    .end local v3    # "length":I
    :catch_0
    move-exception v0

    #@2b
    .line 351
    .local v0, "bue":Ljava/nio/BufferUnderflowException;
    return v5

    #@2c
    .line 348
    .end local v0    # "bue":Ljava/nio/BufferUnderflowException;
    :cond_2
    return v5

    #@2d
    .line 352
    :catch_1
    move-exception v2

    #@2e
    .line 355
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    return v5
.end method

.method public static insertZip64ExtendedInfoToExtras(Ljava/util/zip/ZipEntry;)V
    .locals 10
    .param p0, "ze"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/16 v6, 0x1c

    #@4
    const/4 v5, 0x0

    #@5
    .line 283
    const/16 v1, 0x1c

    #@7
    .line 285
    .local v1, "extendedInfoSize":I
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@9
    if-nez v3, :cond_0

    #@b
    .line 286
    new-array v2, v6, [B

    #@d
    .line 305
    .local v2, "output":[B
    :goto_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v3

    #@11
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@13
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v0

    #@17
    .line 306
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    #@18
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@1b
    .line 309
    const/16 v3, 0x18

    #@1d
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@20
    .line 311
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2

    #@26
    .line 312
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    #@28
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@2b
    .line 313
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@2d
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@30
    .line 322
    :goto_1
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@32
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@35
    .line 324
    iput-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@37
    .line 269
    return-void

    #@38
    .line 290
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "output":[B
    :cond_0
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@3a
    array-length v3, v3

    #@3b
    add-int/lit8 v3, v3, 0x1c

    #@3d
    const v4, 0xffff

    #@40
    if-le v3, v4, :cond_1

    #@42
    .line 291
    new-instance v3, Ljava/util/zip/ZipException;

    #@44
    const-string/jumbo v4, "No space in extras for zip64 extended entry info"

    #@47
    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 301
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@4d
    array-length v3, v3

    #@4e
    add-int/lit8 v3, v3, 0x1c

    #@50
    new-array v2, v3, [B

    #@52
    .line 302
    .restart local v2    # "output":[B
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@54
    iget-object v4, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@56
    array-length v4, v4

    #@57
    invoke-static {v3, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5a
    goto :goto_0

    #@5b
    .line 316
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@5e
    .line 317
    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@61
    goto :goto_1
.end method

.method public static parseZip64EocdRecord(Ljava/io/RandomAccessFile;JI)Ljava/util/zip/ZipFile$EocdRecord;
    .locals 19
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "eocdRecordOffset"    # J
    .param p3, "commentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    invoke-virtual/range {p0 .. p2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@3
    .line 122
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    #@a
    move-result v12

    #@b
    .line 123
    .local v12, "signature":I
    const v3, 0x6064b50

    #@e
    if-eq v12, v3, :cond_0

    #@10
    .line 124
    new-instance v3, Ljava/util/zip/ZipException;

    #@12
    new-instance v8, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v17, "Invalid zip64 eocd record offset, sig="

    #@1a
    move-object/from16 v0, v17

    #@1c
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v8

    #@20
    .line 125
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@23
    move-result-object v17

    #@24
    .line 124
    move-object/from16 v0, v17

    #@26
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v8

    #@2a
    .line 125
    const-string/jumbo v17, " offset="

    #@2d
    .line 124
    move-object/from16 v0, v17

    #@2f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v8

    #@33
    move-wide/from16 v0, p1

    #@35
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-direct {v3, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@40
    throw v3

    #@41
    .line 137
    :cond_0
    const/16 v3, 0xc

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    #@48
    .line 139
    const/16 v3, 0x28

    #@4a
    new-array v13, v3, [B

    #@4c
    .line 140
    .local v13, "zip64Eocd":[B
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@51
    .line 142
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@54
    move-result-object v3

    #@55
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@57
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5a
    move-result-object v9

    #@5b
    .line 144
    .local v9, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@5e
    move-result v10

    #@5f
    .line 145
    .local v10, "diskNumber":I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    #@62
    move-result v11

    #@63
    .line 146
    .local v11, "diskWithCentralDirStart":I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    #@66
    move-result-wide v4

    #@67
    .line 147
    .local v4, "numEntries":J
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    #@6a
    move-result-wide v14

    #@6b
    .line 148
    .local v14, "totalNumEntries":J
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    #@6e
    .line 149
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    #@71
    move-result-wide v6

    #@72
    .line 151
    .local v6, "centralDirOffset":J
    cmp-long v3, v4, v14

    #@74
    if-nez v3, :cond_1

    #@76
    if-eqz v10, :cond_2

    #@78
    .line 152
    :cond_1
    new-instance v3, Ljava/util/zip/ZipException;

    #@7a
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v17, "Spanned archives not supported : numEntries="

    #@82
    move-object/from16 v0, v17

    #@84
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v8

    #@8c
    .line 153
    const-string/jumbo v17, ", totalNumEntries="

    #@8f
    .line 152
    move-object/from16 v0, v17

    #@91
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v8

    #@95
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    .line 154
    const-string/jumbo v17, ", diskNumber="

    #@9c
    .line 152
    move-object/from16 v0, v17

    #@9e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    .line 154
    const-string/jumbo v17, ", diskWithCentralDirStart="

    #@a9
    .line 152
    move-object/from16 v0, v17

    #@ab
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v8

    #@b7
    invoke-direct {v3, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v3
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@bb
    .line 159
    .end local v4    # "numEntries":J
    .end local v6    # "centralDirOffset":J
    .end local v10    # "diskNumber":I
    .end local v11    # "diskWithCentralDirStart":I
    .end local v14    # "totalNumEntries":J
    :catch_0
    move-exception v2

    #@bc
    .line 160
    .local v2, "bue":Ljava/nio/BufferUnderflowException;
    new-instance v16, Ljava/util/zip/ZipException;

    #@be
    const-string/jumbo v3, "Error parsing zip64 eocd record."

    #@c1
    move-object/from16 v0, v16

    #@c3
    invoke-direct {v0, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@c6
    .line 161
    .local v16, "zipException":Ljava/util/zip/ZipException;
    move-object/from16 v0, v16

    #@c8
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@cb
    .line 162
    throw v16

    #@cc
    .line 151
    .end local v2    # "bue":Ljava/nio/BufferUnderflowException;
    .end local v16    # "zipException":Ljava/util/zip/ZipException;
    .restart local v4    # "numEntries":J
    .restart local v6    # "centralDirOffset":J
    .restart local v10    # "diskNumber":I
    .restart local v11    # "diskWithCentralDirStart":I
    .restart local v14    # "totalNumEntries":J
    :cond_2
    if-nez v11, :cond_1

    #@ce
    .line 158
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipFile$EocdRecord;

    #@d0
    move/from16 v8, p3

    #@d2
    invoke-direct/range {v3 .. v8}, Ljava/util/zip/ZipFile$EocdRecord;-><init>(JJI)V
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    #@d5
    return-object v3
.end method

.method public static parseZip64EocdRecordLocator(Ljava/io/RandomAccessFile;J)J
    .locals 11
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x14

    #@2
    .line 97
    cmp-long v6, p1, v8

    #@4
    if-lez v6, :cond_2

    #@6
    .line 98
    sub-long v6, p1, v8

    #@8
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    #@b
    .line 99
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    #@e
    move-result v6

    #@f
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    #@12
    move-result v6

    #@13
    const v7, 0x7064b50

    #@16
    if-ne v6, v7, :cond_2

    #@18
    .line 100
    const/16 v6, 0x10

    #@1a
    new-array v3, v6, [B

    #@1c
    .line 101
    .local v3, "zip64EocdLocator":[B
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@1f
    .line 102
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@22
    move-result-object v6

    #@23
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@25
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@28
    move-result-object v0

    #@29
    .line 104
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@2c
    move-result v1

    #@2d
    .line 105
    .local v1, "diskWithCentralDir":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    #@30
    move-result-wide v4

    #@31
    .line 106
    .local v4, "zip64EocdRecordOffset":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@34
    move-result v2

    #@35
    .line 108
    .local v2, "numDisks":I
    const/4 v6, 0x1

    #@36
    if-ne v2, v6, :cond_0

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 109
    :cond_0
    new-instance v6, Ljava/util/zip/ZipException;

    #@3c
    const-string/jumbo v7, "Spanned archives not supported"

    #@3f
    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@42
    throw v6

    #@43
    .line 112
    :cond_1
    return-wide v4

    #@44
    .line 116
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "diskWithCentralDir":I
    .end local v2    # "numDisks":I
    .end local v3    # "zip64EocdLocator":[B
    .end local v4    # "zip64EocdRecordOffset":J
    :cond_2
    const-wide/16 v6, -0x1

    #@46
    return-wide v6
.end method

.method public static parseZip64ExtendedInfo(Ljava/util/zip/ZipEntry;Z)Z
    .locals 14
    .param p0, "ze"    # Ljava/util/zip/ZipEntry;
    .param p1, "fromCentralDirectory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    const/4 v3, -0x1

    #@1
    .line 179
    .local v3, "extendedInfoSize":I
    const/4 v4, -0x1

    #@2
    .line 182
    .local v4, "extendedInfoStart":I
    iget-object v9, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@4
    if-eqz v9, :cond_3

    #@6
    iget-object v9, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@8
    array-length v9, v9

    #@9
    if-lez v9, :cond_3

    #@b
    .line 187
    iget-object v9, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@d
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v9

    #@11
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@13
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v1

    #@17
    .line 188
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/util/zip/Zip64;->getZip64ExtendedInfoSize(Ljava/nio/ByteBuffer;)I

    #@1a
    move-result v3

    #@1b
    .line 189
    const/4 v9, -0x1

    #@1c
    if-eq v3, v9, :cond_3

    #@1e
    .line 190
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@21
    move-result v4

    #@22
    .line 199
    if-nez p1, :cond_0

    #@24
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    #@27
    move-result v9

    #@28
    if-nez v9, :cond_2

    #@2a
    .line 200
    :cond_0
    iget-wide v10, p0, Ljava/util/zip/ZipEntry;->size:J

    #@2c
    const-wide v12, 0xffffffffL

    #@31
    cmp-long v9, v10, v12

    #@33
    if-nez v9, :cond_1

    #@35
    .line 201
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    #@38
    move-result-wide v10

    #@39
    iput-wide v10, p0, Ljava/util/zip/ZipEntry;->size:J

    #@3b
    .line 204
    :cond_1
    iget-wide v10, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@3d
    const-wide v12, 0xffffffffL

    #@42
    cmp-long v9, v10, v12

    #@44
    if-nez v9, :cond_2

    #@46
    .line 205
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    #@49
    move-result-wide v10

    #@4a
    iput-wide v10, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@4c
    .line 211
    :cond_2
    if-eqz p1, :cond_3

    #@4e
    .line 212
    iget-wide v10, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@50
    const-wide v12, 0xffffffffL

    #@55
    cmp-long v9, v10, v12

    #@57
    if-nez v9, :cond_3

    #@59
    .line 213
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    #@5c
    move-result-wide v10

    #@5d
    iput-wide v10, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 227
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v9, -0x1

    #@60
    if-ne v3, v9, :cond_6

    #@62
    .line 228
    iget-wide v10, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@64
    const-wide v12, 0xffffffffL

    #@69
    cmp-long v9, v10, v12

    #@6b
    if-eqz v9, :cond_4

    #@6d
    .line 229
    iget-wide v10, p0, Ljava/util/zip/ZipEntry;->size:J

    #@6f
    const-wide v12, 0xffffffffL

    #@74
    cmp-long v9, v10, v12

    #@76
    if-nez v9, :cond_5

    #@78
    .line 231
    :cond_4
    new-instance v9, Ljava/util/zip/ZipException;

    #@7a
    new-instance v10, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v11, "File contains no zip64 extended information: name="

    #@82
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v10

    #@86
    .line 232
    iget-object v11, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@88
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    .line 232
    const-string/jumbo v11, "compressedSize="

    #@8f
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v10

    #@93
    .line 232
    iget-wide v12, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@95
    .line 231
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@98
    move-result-object v10

    #@99
    .line 232
    const-string/jumbo v11, ", size="

    #@9c
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v10

    #@a0
    .line 233
    iget-wide v12, p0, Ljava/util/zip/ZipEntry;->size:J

    #@a2
    .line 231
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v10

    #@a6
    .line 233
    const-string/jumbo v11, ", localHeader="

    #@a9
    .line 231
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v10

    #@ad
    .line 233
    iget-wide v12, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@af
    .line 231
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v10

    #@b7
    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v9

    #@bb
    .line 216
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    #@bc
    .line 217
    .local v0, "bue":Ljava/nio/BufferUnderflowException;
    new-instance v8, Ljava/util/zip/ZipException;

    #@be
    const-string/jumbo v9, "Error parsing extended info"

    #@c1
    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@c4
    .line 218
    .local v8, "zipException":Ljava/util/zip/ZipException;
    invoke-virtual {v8, v0}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@c7
    .line 219
    throw v8

    #@c8
    .line 230
    .end local v0    # "bue":Ljava/nio/BufferUnderflowException;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v8    # "zipException":Ljava/util/zip/ZipException;
    :cond_5
    iget-wide v10, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@ca
    const-wide v12, 0xffffffffL

    #@cf
    cmp-long v9, v10, v12

    #@d1
    if-eqz v9, :cond_4

    #@d3
    .line 236
    const/4 v9, 0x0

    #@d4
    return v9

    #@d5
    .line 249
    :cond_6
    add-int/lit8 v2, v4, -0x4

    #@d7
    .line 251
    .local v2, "extendedInfoHeaderStart":I
    add-int/lit8 v5, v3, 0x4

    #@d9
    .line 253
    .local v5, "extendedInfoTotalSize":I
    iget-object v9, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@db
    array-length v9, v9

    #@dc
    sub-int v6, v9, v5

    #@de
    .line 254
    .local v6, "extrasLen":I
    new-array v7, v6, [B

    #@e0
    .line 256
    .local v7, "extrasWithoutZip64":[B
    iget-object v9, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@e2
    const/4 v10, 0x0

    #@e3
    const/4 v11, 0x0

    #@e4
    invoke-static {v9, v10, v7, v11, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@e7
    .line 257
    iget-object v9, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@e9
    add-int v10, v2, v5

    #@eb
    .line 258
    sub-int v11, v6, v2

    #@ed
    .line 257
    invoke-static {v9, v10, v7, v2, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f0
    .line 260
    iput-object v7, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@f2
    .line 261
    const/4 v9, 0x1

    #@f3
    return v9
.end method

.method public static refreshZip64ExtendedInfo(Ljava/util/zip/ZipEntry;)V
    .locals 6
    .param p0, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    .line 370
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@2
    if-nez v3, :cond_0

    #@4
    .line 371
    new-instance v3, Ljava/lang/IllegalStateException;

    #@6
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Zip64 entry has no available extras: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 374
    :cond_0
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@20
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@23
    move-result-object v3

    #@24
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@26
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@29
    move-result-object v1

    #@2a
    .line 375
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/util/zip/Zip64;->getZip64ExtendedInfoSize(Ljava/nio/ByteBuffer;)I

    #@2d
    move-result v2

    #@2e
    .line 376
    .local v2, "extendedInfoSize":I
    const/4 v3, -0x1

    #@2f
    if-ne v2, v3, :cond_1

    #@31
    .line 377
    new-instance v3, Ljava/lang/IllegalStateException;

    #@33
    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Zip64 entry extras has no zip64 extended info record: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 377
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 382
    :cond_1
    :try_start_0
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    #@4d
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@50
    .line 383
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@52
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@55
    .line 384
    iget-wide v4, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@57
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@5a
    .line 369
    return-void

    #@5b
    .line 385
    :catch_0
    move-exception v0

    #@5c
    .line 386
    .local v0, "boe":Ljava/nio/BufferOverflowException;
    new-instance v3, Ljava/lang/IllegalStateException;

    #@5e
    const-string/jumbo v4, "Invalid extended info extra"

    #@61
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@64
    throw v3
.end method

.method public static writeZip64EocdRecordAndLocator(Ljava/io/ByteArrayOutputStream;JJJ)V
    .locals 5
    .param p0, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "numEntries"    # J
    .param p3, "offset"    # J
    .param p5, "cDirSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x14

    #@2
    const-wide/16 v2, 0x0

    #@4
    .line 393
    const-wide/32 v0, 0x6064b50

    #@7
    invoke-static {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@a
    .line 397
    const-wide/16 v0, 0x2c

    #@c
    invoke-static {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@f
    .line 400
    invoke-static {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@12
    .line 401
    invoke-static {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeIntAsUint16(Ljava/io/OutputStream;I)I

    #@15
    .line 402
    invoke-static {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@18
    .line 403
    invoke-static {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@1b
    .line 404
    invoke-static {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@1e
    .line 405
    invoke-static {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@21
    .line 406
    invoke-static {p0, p5, p6}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@24
    .line 407
    invoke-static {p0, p3, p4}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@27
    .line 410
    const-wide/32 v0, 0x7064b50

    #@2a
    invoke-static {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@2d
    .line 411
    invoke-static {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@30
    .line 412
    add-long v0, p3, p5

    #@32
    invoke-static {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint64(Ljava/io/OutputStream;J)J

    #@35
    .line 413
    const-wide/16 v0, 0x1

    #@37
    invoke-static {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLongAsUint32(Ljava/io/OutputStream;J)J

    #@3a
    .line 391
    return-void
.end method
