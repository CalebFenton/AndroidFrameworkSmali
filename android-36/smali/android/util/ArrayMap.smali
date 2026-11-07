.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE_SIZE:I = 0x4

.field private static final greylist-max-p CACHE_SIZE:I = 0xa

.field private static final greylist-max-o CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-p EMPTY:Landroid/util/ArrayMap;

.field static final greylist-max-p EMPTY_IMMUTABLE_INTS:[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArrayMap"

.field static greylist-max-p mBaseCache:[Ljava/lang/Object;

.field static greylist-max-p mBaseCacheSize:I

.field static greylist-max-p mTwiceBaseCache:[Ljava/lang/Object;

.field static greylist-max-p mTwiceBaseCacheSize:I

.field private static final blacklist sBaseCacheLock:Ljava/lang/Object;

.field private static final blacklist sTwiceBaseCacheLock:Ljava/lang/Object;


# instance fields
.field greylist-max-p mArray:[Ljava/lang/Object;

.field private greylist-max-o mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-p mHashes:[I

.field private final greylist-max-o mIdentityHashCode:Z

.field greylist-max-p mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArrayMap;->sBaseCacheLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArrayMap;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 328
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 329
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 335
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 336
    return-void
.end method

.method public constructor greylist-max-o <init>(IZ)V
    .registers 4
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .line 339
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-boolean p2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    .line 345
    if-gez p1, :cond_10

    .line 346
    sget-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 347
    sget-object v0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_1e

    .line 348
    :cond_10
    if-nez p1, :cond_1b

    .line 349
    sget-object v0, Landroid/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 350
    sget-object v0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_1e

    .line 352
    :cond_1b
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 354
    :goto_1e
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 355
    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 361
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 362
    if-eqz p1, :cond_8

    .line 363
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 365
    :cond_8
    return-void
.end method

.method private greylist-max-p allocArrays(I)V
    .registers 10
    .param p1, "size"    # I

    .line 219
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v1, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    if-eq v0, v1, :cond_c9

    .line 222
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_64

    .line 223
    sget-object v0, Landroid/util/ArrayMap;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_10
    sget-object v4, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_5f

    .line 225
    sget-object v4, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 226
    .local v4, "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_61

    .line 228
    :try_start_18
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 229
    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 230
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    if-eqz v5, :cond_33

    .line 231
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 232
    sget v5, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr v5, v3

    sput v5, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_31} :catch_34
    .catchall {:try_start_18 .. :try_end_31} :catchall_61

    .line 237
    :try_start_31
    monitor-exit v0

    return-void

    .line 240
    :cond_33
    goto :goto_35

    .line 239
    :catch_34
    move-exception v5

    .line 243
    :goto_35
    const-string v5, "ArrayMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArrayMap cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v4, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sput-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 246
    sput v2, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 248
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_5f
    monitor-exit v0

    goto :goto_be

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_61

    throw v1

    .line 249
    :cond_64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_be

    .line 250
    sget-object v0, Landroid/util/ArrayMap;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_6a
    sget-object v4, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_b9

    .line 252
    sget-object v4, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 253
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_bb

    .line 255
    :try_start_72
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 256
    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 257
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    if-eqz v5, :cond_8d

    .line 258
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 259
    sget v5, Landroid/util/ArrayMap;->mBaseCacheSize:I

    sub-int/2addr v5, v3

    sput v5, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_8b
    .catch Ljava/lang/ClassCastException; {:try_start_72 .. :try_end_8b} :catch_8e
    .catchall {:try_start_72 .. :try_end_8b} :catchall_bb

    .line 264
    :try_start_8b
    monitor-exit v0

    return-void

    .line 267
    :cond_8d
    goto :goto_8f

    .line 266
    :catch_8e
    move-exception v5

    .line 270
    :goto_8f
    const-string v5, "ArrayMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArrayMap cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, v4, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sput-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 273
    sput v2, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 275
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_b9
    monitor-exit v0

    goto :goto_be

    :catchall_bb
    move-exception v1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_8b .. :try_end_bd} :catchall_bb

    throw v1

    .line 278
    :cond_be
    :goto_be
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 279
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 280
    return-void

    .line 220
    :cond_c9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ArrayMap is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o binarySearchHashes([III)I
    .registers 5
    .param p0, "hashes"    # [I
    .param p1, "N"    # I
    .param p2, "hash"    # I

    .line 129
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 130
    :catch_5
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-p freeArrays([I[Ljava/lang/Object;I)V
    .registers 10
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 288
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2e

    .line 289
    sget-object v0, Landroid/util/ArrayMap;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_e
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_29

    .line 291
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 292
    aput-object p0, p1, v6

    .line 293
    shl-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, v6

    .local v1, "i":I
    :goto_1b
    if-lt v1, v3, :cond_22

    .line 294
    aput-object v2, p1, v1

    .line 293
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 296
    .end local v1    # "i":I
    :cond_22
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 297
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    .line 303
    :cond_29
    monitor-exit v0

    goto :goto_55

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw v1

    .line 304
    :cond_2e
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    .line 305
    sget-object v0, Landroid/util/ArrayMap;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_35
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v5, :cond_50

    .line 307
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 308
    aput-object p0, p1, v6

    .line 309
    shl-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, v6

    .restart local v1    # "i":I
    :goto_42
    if-lt v1, v3, :cond_49

    .line 310
    aput-object v2, p1, v1

    .line 309
    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 312
    .end local v1    # "i":I
    :cond_49
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 313
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    .line 319
    :cond_50
    monitor-exit v0

    goto :goto_55

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw v1

    .line 321
    :cond_55
    :goto_55
    return-void
.end method

.method private greylist-max-o getCollection()Landroid/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    .line 926
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_b

    .line 927
    new-instance v0, Landroid/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 974
    :cond_b
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public greylist-max-p append(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 644
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 645
    .local v0, "index":I
    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_13

    .line 646
    :cond_6
    iget-boolean v1, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v1, :cond_f

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    nop

    .line 647
    .local v1, "hash":I
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7b

    .line 650
    if-lez v0, :cond_66

    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_66

    .line 651
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 652
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New hash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is before end of array hash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ArrayMap"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    return-void

    .line 658
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_66
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 659
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v1, v2, v0

    .line 660
    shl-int/lit8 v0, v0, 0x1

    .line 661
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 662
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    .line 663
    return-void

    .line 648
    :cond_7b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 372
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v0, :cond_18

    .line 373
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 374
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 375
    .local v1, "oarray":[Ljava/lang/Object;
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 376
    .local v2, "osize":I
    sget-object v3, Landroid/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 377
    sget-object v3, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 378
    const/4 v3, 0x0

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 379
    invoke-static {v0, v1, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 381
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_18
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_1d

    .line 384
    return-void

    .line 382
    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 984
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 430
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 480
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist ensureCapacity(I)V
    .registers 8
    .param p1, "minimumCapacity"    # I

    .line 406
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 407
    .local v0, "osize":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_22

    .line 408
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 409
    .local v1, "ohashes":[I
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 410
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 411
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1f

    .line 412
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v0, 0x1

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    :cond_1f
    invoke-static {v1, v2, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 417
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_22
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v1, v0, :cond_27

    .line 420
    return-void

    .line 418
    :cond_27
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1086
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .line 836
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 837
    return v0

    .line 839
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 840
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 841
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 842
    return v2

    .line 846
    :cond_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    :try_start_18
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v3, v4, :cond_3d

    .line 847
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 848
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 849
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 850
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_33

    .line 851
    if-nez v6, :cond_32

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 852
    :cond_32
    return v2

    .line 854
    :cond_33
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_37} :catch_41
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_37} :catch_3f

    if-nez v7, :cond_3a

    .line 855
    return v2

    .line 846
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 862
    .end local v3    # "i":I
    :cond_3d
    nop

    .line 863
    return v0

    .line 860
    :catch_3f
    move-exception v0

    .line 861
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 858
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_41
    move-exception v0

    .line 859
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 865
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_43
    return v2
.end method

.method public greylist-max-o erase()V
    .registers 5

    .line 391
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v0, :cond_16

    .line 392
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v0, v0, 0x1

    .line 393
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 394
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_13

    .line 395
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 397
    .end local v2    # "i":I
    :cond_13
    const/4 v2, 0x0

    iput v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 399
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/Object;
    :cond_16
    return-void
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 996
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_20

    .line 1000
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 1001
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1f

    .line 1002
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v2, :cond_19

    .line 1005
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1001
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1003
    :cond_19
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1007
    .end local v1    # "i":I
    :cond_1f
    return-void

    .line 997
    .end local v0    # "size":I
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 491
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 492
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 873
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 874
    .local v0, "hashes":[I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 875
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 876
    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x1

    .local v4, "v":I
    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    .local v5, "s":I
    :goto_9
    if-ge v3, v5, :cond_1e

    .line 877
    aget-object v6, v1, v4

    .line 878
    .local v6, "value":Ljava/lang/Object;
    aget v7, v0, v3

    if-nez v6, :cond_13

    const/4 v8, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :goto_17
    xor-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 876
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_9

    .line 880
    .end local v3    # "i":I
    .end local v4    # "v":I
    .end local v5    # "s":I
    :cond_1e
    return v2
.end method

.method greylist-max-p indexOf(Ljava/lang/Object;I)I
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 141
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 144
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 145
    const/4 v1, -0x1

    return v1

    .line 148
    :cond_6
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v1

    .line 151
    .local v1, "index":I
    if-gez v1, :cond_f

    .line 152
    return v1

    .line 156
    :cond_f
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 157
    return v1

    .line 162
    :cond_1c
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    .line 163
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    .line 162
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 167
    :cond_36
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_38
    if-ltz v3, :cond_50

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_50

    .line 168
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    return v3

    .line 167
    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    .line 175
    .end local v3    # "i":I
    :cond_50
    not-int v3, v2

    return v3
.end method

.method public whitelist indexOfKey(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 440
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_18

    .line 441
    :cond_7
    iget-boolean v0, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 440
    :goto_18
    return v0
.end method

.method greylist-max-p indexOfNull()I
    .registers 7

    .line 180
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 183
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 184
    const/4 v1, -0x1

    return v1

    .line 187
    :cond_6
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v1

    .line 190
    .local v1, "index":I
    if-gez v1, :cond_10

    .line 191
    return v1

    .line 195
    :cond_10
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    .line 196
    return v1

    .line 201
    :cond_19
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    .line 202
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    .line 201
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 206
    :cond_2f
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_31
    if-ltz v3, :cond_45

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_45

    .line 207
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_42

    return v3

    .line 206
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 214
    .end local v3    # "i":I
    :cond_45
    not-int v3, v2

    return v3
.end method

.method public whitelist indexOfValue(Ljava/lang/Object;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 453
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 454
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 455
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_16

    .line 456
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_15

    .line 457
    aget-object v3, v1, v2

    if-nez v3, :cond_12

    .line 458
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 456
    :cond_12
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .end local v2    # "i":I
    :cond_15
    goto :goto_27

    .line 462
    :cond_16
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_17
    if-ge v2, v0, :cond_27

    .line 463
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 464
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 462
    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_17

    .line 468
    .end local v2    # "i":I
    :cond_27
    :goto_27
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 564
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist keyAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 507
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 510
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 512
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1099
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 577
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 580
    .local v0, "osize":I
    if-nez p1, :cond_a

    .line 581
    const/4 v1, 0x0

    .line 582
    .local v1, "hash":I
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v2

    .local v2, "index":I
    goto :goto_1b

    .line 584
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :cond_a
    iget-boolean v1, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v1, :cond_13

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 585
    .restart local v1    # "hash":I
    :goto_17
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 587
    .restart local v2    # "index":I
    :goto_1b
    if-ltz v2, :cond_2a

    .line 588
    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 589
    .end local v2    # "index":I
    .local v3, "index":I
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v3

    .line 590
    .local v2, "old":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v4, v3

    .line 591
    return-object v2

    .line 594
    .end local v3    # "index":I
    .local v2, "index":I
    :cond_2a
    not-int v2, v2

    .line 595
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v0, v3, :cond_65

    .line 596
    const/16 v3, 0x8

    if-lt v0, v3, :cond_38

    shr-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v0

    goto :goto_3d

    .line 597
    :cond_38
    const/4 v4, 0x4

    if-lt v0, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v4

    :goto_3d
    nop

    .line 601
    .local v3, "n":I
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 602
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 603
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 605
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v6, :cond_5f

    .line 609
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    if-lez v6, :cond_5b

    .line 611
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v4, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v5

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    :cond_5b
    invoke-static {v4, v5, v0}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_65

    .line 606
    :cond_5f
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 618
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_65
    :goto_65
    if-ge v2, v0, :cond_84

    .line 621
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    :cond_84
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v3, :cond_a7

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a7

    .line 630
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v1, v3, v2

    .line 631
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aput-object p1, v3, v4

    .line 632
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    aput-object p2, v3, v4

    .line 633
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 634
    const/4 v3, 0x0

    return-object v3

    .line 627
    :cond_a7
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist putAll(Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 708
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<+TK;+TV;>;"
    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    .line 709
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 710
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez v1, :cond_22

    .line 711
    if-lez v0, :cond_33

    .line 712
    iget-object v1, p1, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iget-object v1, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    goto :goto_33

    .line 717
    :cond_22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_33

    .line 718
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 721
    .end local v1    # "i":I
    :cond_33
    :goto_33
    return-void
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1015
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 1016
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1017
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_12

    .line 1019
    :cond_2a
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 731
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 732
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 733
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 736
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1027
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist removeAt(I)Ljava/lang/Object;
    .registers 13
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 751
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 754
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 757
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 758
    .local v0, "old":Ljava/lang/Object;
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 760
    .local v1, "osize":I
    if-gt v1, v2, :cond_2d

    .line 763
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 764
    .local v2, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 765
    .local v3, "oarray":[Ljava/lang/Object;
    sget-object v4, Landroid/util/EmptyArray;->INT:[I

    iput-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 766
    sget-object v4, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 767
    invoke-static {v2, v3, v1}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 768
    const/4 v2, 0x0

    .line 769
    .end local v3    # "oarray":[Ljava/lang/Object;
    .local v2, "nsize":I
    goto/16 :goto_aa

    .line 770
    .end local v2    # "nsize":I
    :cond_2d
    add-int/lit8 v3, v1, -0x1

    .line 771
    .local v3, "nsize":I
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v4, v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_7f

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v4, v6, :cond_7f

    .line 775
    if-le v1, v5, :cond_45

    shr-int/lit8 v4, v1, 0x1

    add-int v5, v1, v4

    .line 779
    .local v5, "n":I
    :cond_45
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 780
    .local v4, "ohashes":[I
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 781
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v5}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 783
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v1, v7, :cond_79

    .line 787
    if-lez p1, :cond_5f

    .line 789
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    invoke-static {v6, v8, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    :cond_5f
    if-ge p1, v3, :cond_78

    .line 795
    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v9, v3, p1

    invoke-static {v4, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    add-int/lit8 v7, p1, 0x1

    shl-int/2addr v7, v2

    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    sub-int v10, v3, p1

    shl-int/lit8 v2, v10, 0x1

    invoke-static {v6, v7, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    .end local v4    # "ohashes":[I
    .end local v5    # "n":I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_78
    goto :goto_a9

    .line 784
    .restart local v4    # "ohashes":[I
    .restart local v5    # "n":I
    .restart local v6    # "oarray":[Ljava/lang/Object;
    :cond_79
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 800
    .end local v4    # "ohashes":[I
    .end local v5    # "n":I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_7f
    if-ge p1, v3, :cond_9b

    .line 803
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v7, v3, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    shl-int/2addr v5, v2

    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    sub-int v8, v3, p1

    shl-int/2addr v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    :cond_9b
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 808
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v2

    aput-object v6, v4, v5

    .line 811
    :goto_a9
    move v2, v3

    .end local v3    # "nsize":I
    .restart local v2    # "nsize":I
    :goto_aa
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v1, v3, :cond_b1

    .line 814
    iput v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 815
    return-object v0

    .line 812
    :cond_b1
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1041
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_33

    .line 1045
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 1047
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_27

    .line 1048
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 1050
    .local v2, "valIndex":I
    :try_start_b
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_1d} :catch_20

    .line 1047
    .end local v2    # "valIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1052
    .end local v1    # "i":I
    :catch_20
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1054
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_27
    nop

    .line 1055
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v0, v1, :cond_2d

    .line 1058
    return-void

    .line 1056
    :cond_2d
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1042
    .end local v0    # "size":I
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "function must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1067
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 548
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 551
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 553
    :cond_f
    :goto_f
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 554
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 555
    .local p1, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 556
    return-object p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 823
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 892
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 893
    const-string/jumbo v0, "{}"

    return-object v0

    .line 896
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 897
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v2, :cond_4c

    .line 899
    if-lez v1, :cond_24

    .line 900
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 903
    .local v2, "key":Ljava/lang/Object;
    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_30

    .line 904
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 906
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :goto_33
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 910
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_46

    .line 911
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 913
    :cond_46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 916
    .end local v1    # "i":I
    :cond_4c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o validate()V
    .registers 12

    .line 674
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 675
    .local v0, "N":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    .line 677
    return-void

    .line 679
    :cond_6
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 680
    .local v1, "basehash":I
    const/4 v2, 0x0

    .line 681
    .local v2, "basei":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_6b

    .line 682
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v3

    .line 683
    .local v4, "hash":I
    if-eq v4, v1, :cond_18

    .line 684
    move v1, v4

    .line 685
    move v2, v3

    .line 686
    goto :goto_68

    .line 690
    :cond_18
    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    .line 691
    .local v5, "cur":Ljava/lang/Object;
    add-int/lit8 v6, v3, -0x1

    .local v6, "j":I
    :goto_20
    if-lt v6, v2, :cond_68

    .line 692
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v6, 0x1

    aget-object v7, v7, v8

    .line 693
    .local v7, "prev":Ljava/lang/Object;
    const-string v8, "Duplicate key in ArrayMap: "

    if-eq v5, v7, :cond_51

    .line 696
    if-eqz v5, :cond_4e

    if-eqz v7, :cond_4e

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    goto :goto_4e

    .line 697
    :cond_37
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 691
    .end local v7    # "prev":Ljava/lang/Object;
    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, -0x1

    goto :goto_20

    .line 694
    .restart local v7    # "prev":Ljava/lang/Object;
    :cond_51
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 681
    .end local v4    # "hash":I
    .end local v5    # "cur":Ljava/lang/Object;
    .end local v6    # "j":I
    .end local v7    # "prev":Ljava/lang/Object;
    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 701
    .end local v3    # "i":I
    :cond_6b
    return-void
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 527
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 530
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 532
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1112
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
