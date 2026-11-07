.class public final Lcom/android/i18n/timezone/ZoneInfoDb;
.super Ljava/lang/Object;
.source "ZoneInfoDb.java"


# static fields
.field private static final blacklist CACHE_SIZE:I = 0x1

.field private static final blacklist DATA:Lcom/android/i18n/timezone/ZoneInfoDb;

.field public static final blacklist SIZEOF_INDEX_ENTRY:I = 0x34

.field private static final blacklist SIZEOF_TZINT:I = 0x4

.field private static final blacklist SIZEOF_TZNAME:I = 0x28

.field public static final blacklist TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"


# instance fields
.field private blacklist byteOffsets:[I

.field private final blacklist cache:Lcom/android/i18n/timezone/internal/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/timezone/internal/BasicLruCache<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/timezone/ZoneInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist closed:Z

.field private blacklist ids:[Ljava/lang/String;

.field private blacklist mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist rawUtcOffsetsCache:[I

.field private blacklist version:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    nop

    .line 51
    const-string v0, "tzdata"

    invoke-static {v0}, Lcom/android/i18n/timezone/TimeZoneDataFiles;->getTimeZoneFilePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->loadTzDataWithFallback([Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/timezone/ZoneInfoDb;->DATA:Lcom/android/i18n/timezone/ZoneInfoDb;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/android/i18n/timezone/ZoneInfoDb$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/timezone/ZoneInfoDb$1;-><init>(Lcom/android/i18n/timezone/ZoneInfoDb;I)V

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->cache:Lcom/android/i18n/timezone/internal/BasicLruCache;

    .line 160
    return-void
.end method

.method private blacklist checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 431
    iget-boolean v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->closed:Z

    if-nez v0, :cond_5

    .line 434
    return-void

    .line 432
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ZoneInfoDB instance is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createFallback()Lcom/android/i18n/timezone/ZoneInfoDb;
    .registers 1

    .line 154
    new-instance v0, Lcom/android/i18n/timezone/ZoneInfoDb;

    invoke-direct {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;-><init>()V

    .line 155
    .local v0, "tzData":Lcom/android/i18n/timezone/ZoneInfoDb;
    invoke-direct {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->populateFallback()V

    .line 156
    return-object v0
.end method

.method public static blacklist test-api getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;
    .registers 1

    .line 117
    sget-object v0, Lcom/android/i18n/timezone/ZoneInfoDb;->DATA:Lcom/android/i18n/timezone/ZoneInfoDb;

    return-object v0
.end method

.method private declared-synchronized blacklist getRawUtcOffsets()[I
    .registers 5

    monitor-enter p0

    .line 362
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I

    if-eqz v0, :cond_9

    .line 363
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_31

    monitor-exit p0

    return-object v0

    .line 365
    .end local p0    # "this":Lcom/android/i18n/timezone/ZoneInfoDb;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 372
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I

    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->cache:Lcom/android/i18n/timezone/internal/BasicLruCache;

    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/i18n/timezone/internal/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v2

    aput v2, v1, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 374
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    .line 361
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private blacklist loadData(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->mmapRO(Ljava/lang/String;)Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_7} :catch_12

    .line 196
    nop

    .line 198
    :try_start_8
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->readHeader()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    .line 199
    const/4 v0, 0x1

    return v0

    .line 200
    :catch_d
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->close()V

    .line 206
    return v0

    .line 194
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_12
    move-exception v1

    .line 195
    .local v1, "errnoException":Landroid/system/ErrnoException;
    return v0
.end method

.method public static blacklist loadTzData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoDb;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/android/i18n/timezone/ZoneInfoDb;

    invoke-direct {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;-><init>()V

    .line 147
    .local v0, "tzData":Lcom/android/i18n/timezone/ZoneInfoDb;
    invoke-direct {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->loadData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 148
    return-object v0

    .line 150
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs blacklist loadTzDataWithFallback([Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoDb;
    .registers 6
    .param p0, "paths"    # [Ljava/lang/String;

    .line 126
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    .line 127
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Lcom/android/i18n/timezone/ZoneInfoDb;

    invoke-direct {v3}, Lcom/android/i18n/timezone/ZoneInfoDb;-><init>()V

    .line 128
    .local v3, "tzData":Lcom/android/i18n/timezone/ZoneInfoDb;
    invoke-direct {v3, v2}, Lcom/android/i18n/timezone/ZoneInfoDb;->loadData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 129
    return-object v3

    .line 126
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "tzData":Lcom/android/i18n/timezone/ZoneInfoDb;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_15
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->createFallback()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    return-object v0
.end method

.method private blacklist populateFallback()V
    .registers 2

    .line 181
    const-string v0, "missing"

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->version:Ljava/lang/String;

    .line 182
    const-string v0, "GMT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->byteOffsets:[I

    .line 184
    return-void
.end method

.method private blacklist readHeader()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->bigEndianIterator()Lcom/android/i18n/timezone/internal/BufferIterator;

    move-result-object v0

    .line 218
    .local v0, "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    const/16 v1, 0xc

    :try_start_8
    new-array v1, v1, [B

    .line 219
    .local v1, "tzdata_version":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/i18n/timezone/internal/BufferIterator;->readByteArray([BII)V

    .line 220
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v5, 0x6

    invoke-direct {v2, v1, v3, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 221
    .local v2, "magic":Ljava/lang/String;
    const-string v3, "tzdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    const/16 v3, 0xb

    aget-byte v3, v1, v3

    if-nez v3, :cond_83

    .line 224
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v6, 0x5

    invoke-direct {v3, v1, v5, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->version:Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    invoke-virtual {v3}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->size()I

    move-result v3

    .line 227
    .local v3, "fileSize":I
    invoke-virtual {v0}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v4

    .line 228
    .local v4, "index_offset":I
    invoke-virtual {v0}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v5

    .line 229
    .local v5, "data_offset":I
    invoke-virtual {v0}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v6

    .line 231
    .local v6, "final_offset":I
    if-ge v4, v5, :cond_4c

    if-ge v5, v6, :cond_4c

    if-gt v6, v3, :cond_4c

    .line 239
    invoke-direct {p0, v0, v4, v5}, Lcom/android/i18n/timezone/ZoneInfoDb;->readIndex(Lcom/android/i18n/timezone/internal/BufferIterator;II)V

    .line 242
    .end local v1    # "tzdata_version":[B
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "fileSize":I
    .end local v4    # "index_offset":I
    .end local v5    # "data_offset":I
    .end local v6    # "final_offset":I
    nop

    .line 243
    return-void

    .line 234
    .restart local v1    # "tzdata_version":[B
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "fileSize":I
    .restart local v4    # "index_offset":I
    .restart local v5    # "data_offset":I
    .restart local v6    # "final_offset":I
    :cond_4c
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid offset: index_offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data_offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", final_offset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fileSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    .end local p0    # "this":Lcom/android/i18n/timezone/ZoneInfoDb;
    throw v7

    .line 222
    .end local v3    # "fileSize":I
    .end local v4    # "index_offset":I
    .end local v5    # "data_offset":I
    .end local v6    # "final_offset":I
    .restart local v0    # "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    .restart local p0    # "this":Lcom/android/i18n/timezone/ZoneInfoDb;
    :cond_83
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad tzdata magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    .end local p0    # "this":Lcom/android/i18n/timezone/ZoneInfoDb;
    throw v3
    :try_end_a0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_a0} :catch_a0

    .line 240
    .end local v1    # "tzdata_version":[B
    .end local v2    # "magic":Ljava/lang/String;
    .restart local v0    # "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    .restart local p0    # "this":Lcom/android/i18n/timezone/ZoneInfoDb;
    :catch_a0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid read from data file"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist readIndex(Lcom/android/i18n/timezone/internal/BufferIterator;II)V
    .registers 15
    .param p1, "it"    # Lcom/android/i18n/timezone/internal/BufferIterator;
    .param p2, "indexOffset"    # I
    .param p3, "dataOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p1, p2}, Lcom/android/i18n/timezone/internal/BufferIterator;->seek(I)V

    .line 248
    const/16 v0, 0x28

    new-array v0, v0, [B

    .line 249
    .local v0, "idBytes":[B
    sub-int v1, p3, p2

    .line 250
    .local v1, "indexSize":I
    rem-int/lit8 v2, v1, 0x34

    if-nez v2, :cond_c6

    .line 254
    div-int/lit8 v2, v1, 0x34

    .line 256
    .local v2, "entryCount":I
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->byteOffsets:[I

    .line 257
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    .line 259
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_c5

    .line 261
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v4}, Lcom/android/i18n/timezone/internal/BufferIterator;->readByteArray([BII)V

    .line 264
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->byteOffsets:[I

    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v6

    aput v6, v4, v3

    .line 265
    iget-object v4, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->byteOffsets:[I

    aget v6, v4, v3

    add-int/2addr v6, p3

    aput v6, v4, v3

    .line 267
    invoke-virtual {p1}, Lcom/android/i18n/timezone/internal/BufferIterator;->readInt()I

    move-result v4

    .line 268
    .local v4, "length":I
    const/16 v6, 0x2c

    if-lt v4, v6, :cond_bd

    .line 271
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 274
    const/4 v6, 0x0

    .line 275
    .local v6, "len":I
    :goto_3b
    array-length v7, v0

    if-ge v6, v7, :cond_45

    aget-byte v7, v0, v6

    if-eqz v7, :cond_45

    .line 276
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 278
    :cond_45
    if-eqz v6, :cond_a4

    .line 281
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v5, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 284
    .local v7, "zoneId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 285
    if-lez v3, :cond_a0

    .line 286
    iget-object v5, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    aget-object v5, v5, v3

    iget-object v8, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_69

    goto :goto_a0

    .line 287
    :cond_69
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index not sorted or contains multiple entries with the same ID, index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ids[i]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ids[i - 1]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    add-int/lit8 v10, v3, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    .end local v4    # "length":I
    .end local v6    # "len":I
    .end local v7    # "zoneId":Ljava/lang/String;
    :cond_a0
    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    .line 279
    .restart local v4    # "length":I
    .restart local v6    # "len":I
    :cond_a4
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid ID at index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    .end local v6    # "len":I
    :cond_bd
    new-instance v5, Ljava/io/IOException;

    const-string v6, "length in index file < sizeof(tzhead)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_c5
    return-void

    .line 251
    .end local v2    # "entryCount":I
    :cond_c6
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index size is not divisible by 52, indexSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist validate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 314
    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_2f

    aget-object v3, v0, v2

    .line 315
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoDataUncached(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v4

    .line 316
    .local v4, "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    if-eqz v4, :cond_16

    .line 314
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 317
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find data for ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    :cond_2f
    return-void
.end method

.method public static blacklist test-api validateTzData(Ljava/lang/String;)V
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-static {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->loadTzData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    .line 301
    .local v0, "tzData":Lcom/android/i18n/timezone/ZoneInfoDb;
    if-eqz v0, :cond_13

    .line 305
    :try_start_6
    invoke-direct {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->validate()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    .line 307
    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->close()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->close()V

    .line 308
    throw v1

    .line 302
    :cond_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read tzData at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist close()V
    .registers 3

    .line 410
    iget-boolean v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->closed:Z

    if-nez v0, :cond_20

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->closed:Z

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->byteOffsets:[I

    .line 416
    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->rawUtcOffsetsCache:[I

    .line 417
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->cache:Lcom/android/i18n/timezone/internal/BasicLruCache;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/internal/BasicLruCache;->evictAll()V

    .line 420
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    if-eqz v1, :cond_20

    .line 422
    :try_start_17
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    invoke-virtual {v1}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->close()V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 424
    goto :goto_1e

    .line 423
    :catch_1d
    move-exception v1

    .line 425
    :goto_1e
    iput-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    .line 428
    :cond_20
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 441
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 442
    nop

    .line 443
    return-void

    .line 441
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 442
    throw v0
.end method

.method public blacklist getAvailableIDs()[Ljava/lang/String;
    .registers 2

    .line 339
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 340
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAvailableIDs(I)[Ljava/lang/String;
    .registers 6
    .param p1, "rawUtcOffset"    # I

    .line 350
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getRawUtcOffsets()[I

    move-result-object v1

    .line 353
    .local v1, "rawUtcOffsets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_1e

    .line 354
    aget v3, v1, v2

    if-ne v3, p1, :cond_1b

    .line 355
    iget-object v3, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 358
    .end local v2    # "i":I
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public blacklist getBufferIterator(Ljava/lang/String;)Lcom/android/i18n/timezone/internal/BufferIterator;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 169
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 170
    .local v0, "index":I
    if-gez v0, :cond_d

    .line 171
    const/4 v1, 0x0

    return-object v1

    .line 174
    :cond_d
    iget-object v1, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->byteOffsets:[I

    aget v1, v1, v0

    .line 175
    .local v1, "byteOffset":I
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->mappedFile:Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->bigEndianIterator()Lcom/android/i18n/timezone/internal/BufferIterator;

    move-result-object v2

    .line 176
    .local v2, "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    invoke-virtual {v2, v1}, Lcom/android/i18n/timezone/internal/BufferIterator;->skip(I)V

    .line 177
    return-object v2
.end method

.method public blacklist test-api getVersion()Ljava/lang/String;
    .registers 2

    .line 382
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 383
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->version:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api hasTimeZone(Ljava/lang/String;)Z
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 405
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->ids:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist test-api makeZoneInfoData(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->checkNotClosed()V

    .line 396
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb;->cache:Lcom/android/i18n/timezone/internal/BasicLruCache;

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/internal/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/ZoneInfoData;

    .line 399
    .local v0, "zoneInfoData":Lcom/android/i18n/timezone/ZoneInfoData;
    return-object v0
.end method

.method blacklist makeZoneInfoDataUncached(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/ZoneInfoDb;->getBufferIterator(Ljava/lang/String;)Lcom/android/i18n/timezone/internal/BufferIterator;

    move-result-object v0

    .line 324
    .local v0, "it":Lcom/android/i18n/timezone/internal/BufferIterator;
    if-nez v0, :cond_8

    .line 325
    const/4 v1, 0x0

    return-object v1

    .line 328
    :cond_8
    invoke-static {p1, v0}, Lcom/android/i18n/timezone/ZoneInfoData;->readTimeZone(Ljava/lang/String;Lcom/android/i18n/timezone/internal/BufferIterator;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v1

    return-object v1
.end method
