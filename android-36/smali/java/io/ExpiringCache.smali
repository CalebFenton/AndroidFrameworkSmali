.class Ljava/io/ExpiringCache;
.super Ljava/lang/Object;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ExpiringCache$Entry;
    }
.end annotation


# instance fields
.field private blacklist MAX_ENTRIES:I

.field private blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/ExpiringCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist millisUntilExpiration:J

.field private blacklist queryCount:I

.field private blacklist queryOverflow:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetMAX_ENTRIES(Ljava/io/ExpiringCache;)I
    .registers 1

    iget p0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    return p0
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 61
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Ljava/io/ExpiringCache;-><init>(J)V

    .line 62
    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 4
    .param p1, "millisUntilExpiration"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x12c

    iput v0, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    .line 42
    const/16 v0, 0xc8

    iput v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    .line 66
    iput-wide p1, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    .line 67
    new-instance v0, Ljava/io/ExpiringCache$1;

    invoke-direct {v0, p0}, Ljava/io/ExpiringCache$1;-><init>(Ljava/io/ExpiringCache;)V

    iput-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private blacklist cleanup()V
    .registers 7

    .line 120
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 122
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 123
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 124
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aput-object v4, v1, v2

    .line 126
    .end local v4    # "key":Ljava/lang/String;
    move v2, v5

    goto :goto_11

    .line 127
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_23
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_24
    array-length v4, v1

    if-ge v3, v4, :cond_2f

    .line 128
    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 130
    .end local v3    # "j":I
    :cond_2f
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/ExpiringCache;->queryCount:I

    .line 131
    return-void
.end method

.method private blacklist entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ExpiringCache$Entry;

    .line 109
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_25

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/ExpiringCache$Entry;->timestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 111
    .local v1, "delta":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1f

    iget-wide v3, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_25

    .line 112
    :cond_1f
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    .line 116
    .end local v1    # "delta":J
    :cond_25
    return-object v0
.end method


# virtual methods
.method declared-synchronized blacklist clear()V
    .registers 2

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 105
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Ljava/io/ExpiringCache;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method declared-synchronized blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 80
    :try_start_1
    iget v0, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v1, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v0, v1, :cond_e

    .line 81
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    .line 83
    .end local p0    # "this":Ljava/io/ExpiringCache;
    :cond_e
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    .line 84
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1a

    .line 85
    invoke-virtual {v0}, Ljava/io/ExpiringCache$Entry;->val()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    monitor-exit p0

    return-object v1

    .line 87
    :cond_1a
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 79
    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method declared-synchronized blacklist put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    monitor-enter p0

    .line 91
    :try_start_1
    iget v0, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v1, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v0, v1, :cond_e

    .line 92
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    .line 94
    .end local p0    # "this":Ljava/io/ExpiringCache;
    :cond_e
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    .line 95
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1f

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/ExpiringCache$Entry;->setTimestamp(J)V

    .line 97
    invoke-virtual {v0, p2}, Ljava/io/ExpiringCache$Entry;->setVal(Ljava/lang/String;)V

    goto :goto_2d

    .line 99
    :cond_1f
    iget-object v1, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    new-instance v2, Ljava/io/ExpiringCache$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2}, Ljava/io/ExpiringCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 101
    :goto_2d
    monitor-exit p0

    return-void

    .line 90
    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "val":Ljava/lang/String;
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method
