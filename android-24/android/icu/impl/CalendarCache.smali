.class public Landroid/icu/impl/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# static fields
.field public static EMPTY:J

.field private static final primes:[I


# instance fields
.field private arraySize:I

.field private keys:[J

.field private pIndex:I

.field private size:I

.field private threshold:I

.field private values:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 111
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    #@9
    .line 127
    const-wide/high16 v0, -0x8000000000000000L

    #@b
    sput-wide v0, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@d
    .line 14
    return-void

    #@e
    .line 111
    :array_0
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

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 116
    iput v0, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    #@6
    .line 117
    iput v0, p0, Landroid/icu/impl/CalendarCache;->size:I

    #@8
    .line 118
    sget-object v0, Landroid/icu/impl/CalendarCache;->primes:[I

    #@a
    iget v1, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    #@c
    aget v0, v0, v1

    #@e
    iput v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@10
    .line 119
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@12
    mul-int/lit8 v0, v0, 0x3

    #@14
    div-int/lit8 v0, v0, 0x4

    #@16
    iput v0, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    #@18
    .line 121
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@1a
    new-array v0, v0, [J

    #@1c
    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    #@1e
    .line 122
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@20
    new-array v0, v0, [J

    #@22
    iput-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@24
    .line 20
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@26
    invoke-direct {p0, v0}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    #@29
    .line 19
    return-void
.end method

.method private final findIndex(J)I
    .locals 7
    .param p1, "key"    # J

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash(J)I

    #@3
    move-result v1

    #@4
    .line 59
    .local v1, "index":I
    const/4 v0, 0x0

    #@5
    .line 61
    .local v0, "delta":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@7
    aget-wide v2, v2, v1

    #@9
    sget-wide v4, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@b
    cmp-long v2, v2, v4

    #@d
    if-eqz v2, :cond_1

    #@f
    iget-object v2, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    #@11
    aget-wide v2, v2, v1

    #@13
    cmp-long v2, v2, p1

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 63
    if-nez v0, :cond_0

    #@19
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->hash2(J)I

    #@1c
    move-result v0

    #@1d
    .line 66
    :cond_0
    add-int v2, v1, v0

    #@1f
    iget v3, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@21
    rem-int v1, v2, v3

    #@23
    goto :goto_0

    #@24
    .line 68
    :cond_1
    return v1
.end method

.method private final hash(J)I
    .locals 7
    .param p1, "key"    # J

    #@0
    .prologue
    .line 100
    const-wide/16 v2, 0x3dcd

    #@2
    mul-long/2addr v2, p1

    #@3
    const-wide/16 v4, 0x1

    #@5
    add-long/2addr v2, v4

    #@6
    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@8
    int-to-long v4, v1

    #@9
    rem-long/2addr v2, v4

    #@a
    long-to-int v0, v2

    #@b
    .line 101
    .local v0, "h":I
    if-gez v0, :cond_0

    #@d
    .line 102
    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@f
    add-int/2addr v0, v1

    #@10
    .line 104
    :cond_0
    return v0
.end method

.method private final hash2(J)I
    .locals 5
    .param p1, "key"    # J

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@2
    add-int/lit8 v0, v0, -0x2

    #@4
    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@6
    add-int/lit8 v1, v1, -0x2

    #@8
    int-to-long v2, v1

    #@9
    rem-long v2, p1, v2

    #@b
    long-to-int v1, v2

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method private makeArrays(I)V
    .locals 6
    .param p1, "newSize"    # I

    #@0
    .prologue
    .line 24
    new-array v1, p1, [J

    #@2
    iput-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    #@4
    .line 25
    new-array v1, p1, [J

    #@6
    iput-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@8
    .line 27
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@b
    .line 28
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@d
    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@f
    aput-wide v2, v1, v0

    #@11
    .line 27
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 30
    :cond_0
    iput p1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@16
    .line 31
    iget v1, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@18
    int-to-double v2, v1

    #@19
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    #@1b
    mul-double/2addr v2, v4

    #@1c
    double-to-int v1, v2

    #@1d
    iput v1, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    #@1f
    .line 32
    const/4 v1, 0x0

    #@20
    iput v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    #@22
    .line 23
    return-void
.end method

.method private rehash()V
    .locals 8

    #@0
    .prologue
    .line 73
    iget v2, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@2
    .line 74
    .local v2, "oldSize":I
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    #@4
    .line 75
    .local v1, "oldKeys":[J
    iget-object v3, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@6
    .line 77
    .local v3, "oldValues":[J
    iget v4, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    #@8
    sget-object v5, Landroid/icu/impl/CalendarCache;->primes:[I

    #@a
    array-length v5, v5

    #@b
    add-int/lit8 v5, v5, -0x1

    #@d
    if-ge v4, v5, :cond_1

    #@f
    .line 78
    sget-object v4, Landroid/icu/impl/CalendarCache;->primes:[I

    #@11
    iget v5, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    #@13
    add-int/lit8 v5, v5, 0x1

    #@15
    iput v5, p0, Landroid/icu/impl/CalendarCache;->pIndex:I

    #@17
    aget v4, v4, v5

    #@19
    iput v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@1b
    .line 82
    :goto_0
    const/4 v4, 0x0

    #@1c
    iput v4, p0, Landroid/icu/impl/CalendarCache;->size:I

    #@1e
    .line 84
    iget v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@20
    invoke-direct {p0, v4}, Landroid/icu/impl/CalendarCache;->makeArrays(I)V

    #@23
    .line 85
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@26
    .line 86
    aget-wide v4, v3, v0

    #@28
    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@2a
    cmp-long v4, v4, v6

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 87
    aget-wide v4, v1, v0

    #@30
    aget-wide v6, v3, v0

    #@32
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    #@35
    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_1

    #@38
    .line 80
    .end local v0    # "i":I
    :cond_1
    iget v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@3a
    mul-int/lit8 v4, v4, 0x2

    #@3c
    add-int/lit8 v4, v4, 0x1

    #@3e
    iput v4, p0, Landroid/icu/impl/CalendarCache;->arraySize:I

    #@40
    goto :goto_0

    #@41
    .line 71
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized get(J)J
    .locals 3
    .param p1, "key"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 39
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@3
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    #@6
    move-result v1

    #@7
    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    return-wide v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized put(JJ)V
    .locals 3
    .param p1, "key"    # J
    .param p3, "value"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 47
    :try_start_0
    iget v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    #@3
    iget v2, p0, Landroid/icu/impl/CalendarCache;->threshold:I

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 48
    invoke-direct {p0}, Landroid/icu/impl/CalendarCache;->rehash()V

    #@a
    .line 50
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/CalendarCache;->findIndex(J)I

    #@d
    move-result v0

    #@e
    .line 52
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->keys:[J

    #@10
    aput-wide p1, v1, v0

    #@12
    .line 53
    iget-object v1, p0, Landroid/icu/impl/CalendarCache;->values:[J

    #@14
    aput-wide p3, v1, v0

    #@16
    .line 54
    iget v1, p0, Landroid/icu/impl/CalendarCache;->size:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Landroid/icu/impl/CalendarCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 45
    return-void

    #@1e
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit p0

    #@20
    throw v1
.end method
