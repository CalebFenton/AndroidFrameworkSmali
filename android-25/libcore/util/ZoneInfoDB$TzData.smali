.class public Llibcore/util/ZoneInfoDB$TzData;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfoDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TzData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfoDB$TzData$1;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x1


# instance fields
.field private byteOffsets:[I

.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Llibcore/util/ZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ids:[Ljava/lang/String;

.field private mappedFile:Llibcore/io/MemoryMappedFile;

.field private rawUtcOffsetsCache:[I

.field private version:Ljava/lang/String;

.field private zoneTab:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 6
    .param p1, "paths"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 71
    new-instance v1, Llibcore/util/ZoneInfoDB$TzData$1;

    #@7
    invoke-direct {v1, p0, v5}, Llibcore/util/ZoneInfoDB$TzData$1;-><init>(Llibcore/util/ZoneInfoDB$TzData;I)V

    #@a
    .line 70
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    #@c
    .line 84
    array-length v3, p1

    #@d
    move v1, v2

    #@e
    :goto_0
    if-ge v1, v3, :cond_1

    #@10
    aget-object v0, p1, v1

    #@12
    .line 85
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Llibcore/util/ZoneInfoDB$TzData;->loadData(Ljava/lang/String;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 86
    return-void

    #@19
    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 93
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "Couldn\'t find any tzdata!"

    #@1f
    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@22
    .line 94
    const-string/jumbo v1, "missing"

    #@25
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    #@27
    .line 95
    const-string/jumbo v1, "# Emergency fallback data.\n"

    #@2a
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    #@2c
    .line 96
    new-array v1, v5, [Ljava/lang/String;

    #@2e
    const-string/jumbo v3, "GMT"

    #@31
    aput-object v3, v1, v2

    #@33
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@35
    .line 97
    new-array v1, v5, [I

    #@37
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    #@39
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    #@3b
    .line 83
    return-void
.end method

.method private declared-synchronized getRawUtcOffsets()[I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 229
    :try_start_0
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 230
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v1

    #@9
    .line 232
    :cond_0
    :try_start_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@b
    array-length v1, v1

    #@c
    new-array v1, v1, [I

    #@e
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    #@10
    .line 233
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@13
    array-length v1, v1

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 239
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I

    #@18
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    #@1a
    iget-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@1c
    aget-object v3, v3, v0

    #@1e
    invoke-virtual {v1, v3}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Llibcore/util/ZoneInfo;

    #@24
    invoke-virtual {v1}, Llibcore/util/ZoneInfo;->getRawOffset()I

    #@27
    move-result v1

    #@28
    aput v1, v2, v0

    #@2a
    .line 233
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 241
    :cond_1
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->rawUtcOffsetsCache:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit p0

    #@30
    return-object v1

    #@31
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@32
    monitor-exit p0

    #@33
    throw v1
.end method

.method private loadData(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 117
    :try_start_0
    invoke-static {p1}, Llibcore/io/MemoryMappedFile;->mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;

    #@4
    move-result-object v2

    #@5
    iput-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 122
    :try_start_1
    invoke-direct {p0}, Llibcore/util/ZoneInfoDB$TzData;->readHeader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a
    .line 123
    const/4 v2, 0x1

    #@b
    return v2

    #@c
    .line 118
    :catch_0
    move-exception v0

    #@d
    .line 119
    .local v0, "errnoException":Landroid/system/ErrnoException;
    return v4

    #@e
    .line 124
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    #@f
    .line 127
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "tzdata file \""

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, "\" was present but invalid!"

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2, v1}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    .line 128
    return v4
.end method

.method private readHeader()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x6

    #@1
    const/4 v7, 0x0

    #@2
    .line 137
    iget-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    #@4
    invoke-virtual {v6}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    #@7
    move-result-object v2

    #@8
    .line 139
    .local v2, "it":Llibcore/io/BufferIterator;
    const/16 v6, 0xc

    #@a
    new-array v4, v6, [B

    #@c
    .line 140
    .local v4, "tzdata_version":[B
    array-length v6, v4

    #@d
    invoke-virtual {v2, v4, v7, v6}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    #@10
    .line 141
    new-instance v3, Ljava/lang/String;

    #@12
    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@14
    invoke-direct {v3, v4, v7, v9, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@17
    .line 142
    .local v3, "magic":Ljava/lang/String;
    const-string/jumbo v6, "tzdata"

    #@1a
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    const/16 v6, 0xb

    #@22
    aget-byte v6, v4, v6

    #@24
    if-eqz v6, :cond_1

    #@26
    .line 143
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    #@28
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v8, "bad tzdata magic: "

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v6

    #@44
    .line 145
    :cond_1
    new-instance v6, Ljava/lang/String;

    #@46
    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@48
    const/4 v8, 0x5

    #@49
    invoke-direct {v6, v4, v9, v8, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@4c
    iput-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    #@4e
    .line 147
    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    #@51
    move-result v1

    #@52
    .line 148
    .local v1, "index_offset":I
    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    #@55
    move-result v0

    #@56
    .line 149
    .local v0, "data_offset":I
    invoke-virtual {v2}, Llibcore/io/BufferIterator;->readInt()I

    #@59
    move-result v5

    #@5a
    .line 151
    .local v5, "zonetab_offset":I
    invoke-direct {p0, v2, v1, v0}, Llibcore/util/ZoneInfoDB$TzData;->readIndex(Llibcore/io/BufferIterator;II)V

    #@5d
    .line 152
    iget-object v6, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    #@5f
    invoke-virtual {v6}, Llibcore/io/MemoryMappedFile;->size()J

    #@62
    move-result-wide v6

    #@63
    long-to-int v6, v6

    #@64
    sub-int/2addr v6, v5

    #@65
    invoke-direct {p0, v2, v5, v6}, Llibcore/util/ZoneInfoDB$TzData;->readZoneTab(Llibcore/io/BufferIterator;II)V

    #@68
    .line 132
    return-void
.end method

.method private readIndex(Llibcore/io/BufferIterator;II)V
    .locals 20
    .param p1, "it"    # Llibcore/io/BufferIterator;
    .param p2, "indexOffset"    # I
    .param p3, "dataOffset"    # I

    #@0
    .prologue
    .line 163
    invoke-virtual/range {p1 .. p2}, Llibcore/io/BufferIterator;->seek(I)V

    #@3
    .line 166
    const/16 v4, 0x28

    #@5
    .line 168
    .local v4, "SIZEOF_TZNAME":I
    const/4 v3, 0x4

    #@6
    .line 170
    .local v3, "SIZEOF_TZINT":I
    const/16 v17, 0x28

    #@8
    move/from16 v0, v17

    #@a
    new-array v8, v0, [B

    #@c
    .line 171
    .local v8, "idBytes":[B
    sub-int v13, p3, p2

    #@e
    .line 172
    .local v13, "indexSize":I
    div-int/lit8 v6, v13, 0x34

    #@10
    .line 174
    .local v6, "entryCount":I
    mul-int/lit8 v17, v6, 0x28

    #@12
    move/from16 v0, v17

    #@14
    new-array v9, v0, [C

    #@16
    .line 175
    .local v9, "idChars":[C
    new-array v10, v6, [I

    #@18
    .line 176
    .local v10, "idEnd":[I
    const/4 v11, 0x0

    #@19
    .line 178
    .local v11, "idOffset":I
    new-array v0, v6, [I

    #@1b
    move-object/from16 v17, v0

    #@1d
    move-object/from16 v0, v17

    #@1f
    move-object/from16 v1, p0

    #@21
    iput-object v0, v1, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    #@23
    .line 180
    const/4 v7, 0x0

    #@24
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    #@26
    .line 181
    array-length v0, v8

    #@27
    move/from16 v17, v0

    #@29
    const/16 v18, 0x0

    #@2b
    move-object/from16 v0, p1

    #@2d
    move/from16 v1, v18

    #@2f
    move/from16 v2, v17

    #@31
    invoke-virtual {v0, v8, v1, v2}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    #@34
    .line 183
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    #@38
    move-object/from16 v17, v0

    #@3a
    invoke-virtual/range {p1 .. p1}, Llibcore/io/BufferIterator;->readInt()I

    #@3d
    move-result v18

    #@3e
    aput v18, v17, v7

    #@40
    .line 184
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    #@44
    move-object/from16 v17, v0

    #@46
    aget v18, v17, v7

    #@48
    add-int v18, v18, p3

    #@4a
    aput v18, v17, v7

    #@4c
    .line 186
    invoke-virtual/range {p1 .. p1}, Llibcore/io/BufferIterator;->readInt()I

    #@4f
    move-result v16

    #@50
    .line 187
    .local v16, "length":I
    const/16 v17, 0x2c

    #@52
    move/from16 v0, v16

    #@54
    move/from16 v1, v17

    #@56
    if-ge v0, v1, :cond_0

    #@58
    .line 188
    new-instance v17, Ljava/lang/AssertionError;

    #@5a
    const-string/jumbo v18, "length in index file < sizeof(tzhead)"

    #@5d
    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@60
    throw v17

    #@61
    .line 190
    :cond_0
    const/16 v17, 0x4

    #@63
    move-object/from16 v0, p1

    #@65
    move/from16 v1, v17

    #@67
    invoke-virtual {v0, v1}, Llibcore/io/BufferIterator;->skip(I)V

    #@6a
    .line 193
    array-length v15, v8

    #@6b
    .line 194
    .local v15, "len":I
    const/4 v14, 0x0

    #@6c
    .local v14, "j":I
    move v12, v11

    #@6d
    .end local v11    # "idOffset":I
    .local v12, "idOffset":I
    :goto_1
    if-ge v14, v15, :cond_1

    #@6f
    .line 195
    aget-byte v17, v8, v14

    #@71
    if-nez v17, :cond_2

    #@73
    .line 201
    :cond_1
    aput v12, v10, v7

    #@75
    .line 180
    add-int/lit8 v7, v7, 0x1

    #@77
    move v11, v12

    #@78
    .end local v12    # "idOffset":I
    .restart local v11    # "idOffset":I
    goto :goto_0

    #@79
    .line 198
    .end local v11    # "idOffset":I
    .restart local v12    # "idOffset":I
    :cond_2
    add-int/lit8 v11, v12, 0x1

    #@7b
    .end local v12    # "idOffset":I
    .restart local v11    # "idOffset":I
    aget-byte v17, v8, v14

    #@7d
    move/from16 v0, v17

    #@7f
    and-int/lit16 v0, v0, 0xff

    #@81
    move/from16 v17, v0

    #@83
    move/from16 v0, v17

    #@85
    int-to-char v0, v0

    #@86
    move/from16 v17, v0

    #@88
    aput-char v17, v9, v12

    #@8a
    .line 194
    add-int/lit8 v14, v14, 0x1

    #@8c
    move v12, v11

    #@8d
    .end local v11    # "idOffset":I
    .restart local v12    # "idOffset":I
    goto :goto_1

    #@8e
    .line 206
    .end local v12    # "idOffset":I
    .end local v14    # "j":I
    .end local v15    # "len":I
    .end local v16    # "length":I
    .restart local v11    # "idOffset":I
    :cond_3
    new-instance v5, Ljava/lang/String;

    #@90
    const/16 v17, 0x0

    #@92
    move/from16 v0, v17

    #@94
    invoke-direct {v5, v9, v0, v11}, Ljava/lang/String;-><init>([CII)V

    #@97
    .line 207
    .local v5, "allIds":Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    #@99
    move-object/from16 v17, v0

    #@9b
    move-object/from16 v0, v17

    #@9d
    move-object/from16 v1, p0

    #@9f
    iput-object v0, v1, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@a1
    .line 208
    const/4 v7, 0x0

    #@a2
    :goto_2
    if-ge v7, v6, :cond_5

    #@a4
    .line 209
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@a8
    move-object/from16 v18, v0

    #@aa
    if-nez v7, :cond_4

    #@ac
    const/16 v17, 0x0

    #@ae
    :goto_3
    aget v19, v10, v7

    #@b0
    move/from16 v0, v17

    #@b2
    move/from16 v1, v19

    #@b4
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b7
    move-result-object v17

    #@b8
    aput-object v17, v18, v7

    #@ba
    .line 208
    add-int/lit8 v7, v7, 0x1

    #@bc
    goto :goto_2

    #@bd
    .line 209
    :cond_4
    add-int/lit8 v17, v7, -0x1

    #@bf
    aget v17, v10, v17

    #@c1
    goto :goto_3

    #@c2
    .line 162
    :cond_5
    return-void
.end method

.method private readZoneTab(Llibcore/io/BufferIterator;II)V
    .locals 5
    .param p1, "it"    # Llibcore/io/BufferIterator;
    .param p2, "zoneTabOffset"    # I
    .param p3, "zoneTabSize"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 156
    new-array v0, p3, [B

    #@3
    .line 157
    .local v0, "bytes":[B
    invoke-virtual {p1, p2}, Llibcore/io/BufferIterator;->seek(I)V

    #@6
    .line 158
    array-length v1, v0

    #@7
    invoke-virtual {p1, v0, v4, v1}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    #@a
    .line 159
    new-instance v1, Ljava/lang/String;

    #@c
    array-length v2, v0

    #@d
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@f
    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@12
    iput-object v1, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    #@14
    .line 155
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 264
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    #@6
    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->close()V

    #@9
    .line 266
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@c
    .line 262
    return-void
.end method

.method public getAvailableIDs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getAvailableIDs(I)[Ljava/lang/String;
    .locals 4
    .param p1, "rawUtcOffset"    # I

    #@0
    .prologue
    .line 218
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 219
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Llibcore/util/ZoneInfoDB$TzData;->getRawUtcOffsets()[I

    #@8
    move-result-object v2

    #@9
    .line 220
    .local v2, "rawUtcOffsets":[I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@b
    if-ge v0, v3, :cond_1

    #@d
    .line 221
    aget v3, v2, v0

    #@f
    if-ne v3, p1, :cond_0

    #@11
    .line 222
    iget-object v3, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@13
    aget-object v3, v3, v0

    #@15
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 225
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@1e
    move-result v3

    #@1f
    new-array v3, v3, [Ljava/lang/String;

    #@21
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, [Ljava/lang/String;

    #@27
    return-object v3
.end method

.method public getBufferIterator(Ljava/lang/String;)Llibcore/io/BufferIterator;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->ids:[Ljava/lang/String;

    #@2
    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 106
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 107
    const/4 v2, 0x0

    #@9
    return-object v2

    #@a
    .line 110
    :cond_0
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->mappedFile:Llibcore/io/MemoryMappedFile;

    #@c
    invoke-virtual {v2}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    #@f
    move-result-object v1

    #@10
    .line 111
    .local v1, "it":Llibcore/io/BufferIterator;
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->byteOffsets:[I

    #@12
    aget v2, v2, v0

    #@14
    invoke-virtual {v1, v2}, Llibcore/io/BufferIterator;->skip(I)V

    #@17
    .line 112
    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->version:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getZoneTab()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->zoneTab:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasTimeZone(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    #@2
    invoke-virtual {v0, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 253
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData;->cache:Llibcore/util/BasicLruCache;

    #@3
    invoke-virtual {v2, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Llibcore/util/ZoneInfo;

    #@9
    .line 255
    .local v0, "zoneInfo":Llibcore/util/ZoneInfo;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Llibcore/util/ZoneInfo;

    #@12
    goto :goto_0
.end method
