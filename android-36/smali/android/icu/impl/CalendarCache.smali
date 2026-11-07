.class public Landroid/icu/impl/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# static fields
.field public static blacklist EMPTY:J

.field private static final greylist-max-o primes:[I


# instance fields
.field private greylist-max-o arraySize:I

.field private greylist-max-o keys:[J

.field private greylist-max-o pIndex:I

.field private greylist-max-o size:I

.field private greylist-max-o threshold:I

.field private greylist-max-o values:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 113
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    .line 129
    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Landroid/icu/impl/CalendarCache;->EMPTY:J

    return-void

    :array_e
    .array-data 4
        0x3d
        0x7f
        0x1fd
        0x3fd
        0x7f7
        0xffd
        0x1fff
        0x3ffd
        0x7fed
        0xfff1
        0x1ffff
        0x3fffb
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    .line 119
    iput v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    .line 120
    sget-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    iget v1, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 121
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    .line 123
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    .line 124
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    .line 22
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v0}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    .line 23
    return-void
.end method

.method private final greylist-max-o findIndex(J)I
    .registers 9
    .param p1, "key"    # J

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash(J)I

    move-result v0

    .line 61
    .local v0, "index":I
    const/4 v1, 0x0

    .line 63
    .local v1, "delta":I
    :goto_5
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    aget-wide v2, v2, v0

    sget-wide v4, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_24

    .line 65
    if-nez v1, :cond_1d

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash2(J)I

    move-result v1

    .line 68
    :cond_1d
    add-int v2, v0, v1

    iget v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    rem-int v0, v2, v3

    goto :goto_5

    .line 70
    :cond_24
    return v0
.end method

.method private final greylist-max-o hash(J)I
    .registers 7
    .param p1, "key"    # J

    .line 102
    const-wide/16 v0, 0x3dcd

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 103
    .local v0, "h":I
    if-gez v0, :cond_10

    .line 104
    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/2addr v0, v1

    .line 106
    :cond_10
    return v0
.end method

.method private final greylist-max-o hash2(J)I
    .registers 6
    .param p1, "key"    # J

    .line 110
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    add-int/lit8 v1, v1, -0x2

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o makeArrays(I)V
    .registers 6
    .param p1, "newSize"    # I

    .line 26
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    .line 27
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p1, :cond_14

    .line 30
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    aput-wide v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 32
    .end local v0    # "i":I
    :cond_14
    iput p1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 33
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    .line 35
    return-void
.end method

.method private greylist-max-o rehash()V
    .registers 9

    .line 75
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 76
    .local v0, "oldSize":I
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    .line 77
    .local v1, "oldKeys":[J
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    .line 79
    .local v2, "oldValues":[J
    iget v3, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    sget-object v4, Landroid/icu/impl/CalendarCache;->primes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1c

    .line 80
    sget-object v3, Landroid/icu/impl/CalendarCache;->primes:[I

    iget v4, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    aget v3, v3, v4

    iput v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    goto :goto_24

    .line 82
    :cond_1c
    iget v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    .line 84
    :goto_24
    const/4 v3, 0x0

    iput v3, p0, Landroid/icu/impl/CalendarCache;->size:I

    .line 86
    iget v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    invoke-direct {p0, v3}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    .line 87
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v0, :cond_41

    .line 88
    aget-wide v4, v2, v3

    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3e

    .line 89
    aget-wide v4, v1, v3

    aget-wide v6, v2, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    .line 87
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 92
    .end local v3    # "i":I
    :cond_41
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist get(J)J
    .registers 5
    .param p1, "key"    # J

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    move-result v1

    aget-wide v0, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    .line 41
    .end local p0    # "this":Landroid/icu/impl/CalendarCache;
    .end local p1    # "key":J
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist put(JJ)V
    .registers 7
    .param p1, "key"    # J
    .param p3, "value"    # J

    monitor-enter p0

    .line 49
    :try_start_1
    iget v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    iget v1, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    if-lt v0, v1, :cond_a

    .line 50
    invoke-direct {p0}, Landroid/icu/impl/CalendarCache;->rehash()V

    .line 52
    .end local p0    # "this":Landroid/icu/impl/CalendarCache;
    :cond_a
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    move-result v0

    .line 54
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    aput-wide p1, v1, v0

    .line 55
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    aput-wide p3, v1, v0

    .line 56
    iget v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/CalendarCache;->size:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 57
    monitor-exit p0

    return-void

    .line 48
    .end local v0    # "index":I
    .end local p1    # "key":J
    .end local p3    # "value":J
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method
