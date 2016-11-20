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
.field private MAX_ENTRIES:I

.field private map:Ljava/util/Map;

.field private millisUntilExpiration:J

.field private queryCount:I

.field private queryOverflow:I


# direct methods
.method static synthetic -get0(Ljava/io/ExpiringCache;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    #@2
    return v0
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 61
    const-wide/16 v0, 0x7530

    #@2
    invoke-direct {p0, v0, v1}, Ljava/io/ExpiringCache;-><init>(J)V

    #@5
    .line 60
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "millisUntilExpiration"    # J

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    const/16 v0, 0x12c

    #@5
    iput v0, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    #@7
    .line 42
    const/16 v0, 0xc8

    #@9
    iput v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    #@b
    .line 65
    iput-wide p1, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    #@d
    .line 66
    new-instance v0, Ljava/io/ExpiringCache$1;

    #@f
    invoke-direct {v0, p0}, Ljava/io/ExpiringCache$1;-><init>(Ljava/io/ExpiringCache;)V

    #@12
    iput-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    #@14
    .line 64
    return-void
.end method

.method private cleanup()V
    .locals 8

    #@0
    .prologue
    .line 114
    iget-object v7, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    #@2
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v5

    #@6
    .line 116
    .local v5, "keySet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@9
    move-result v7

    #@a
    new-array v6, v7, [Ljava/lang/String;

    #@c
    .line 117
    .local v6, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    #@d
    .line 118
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_0

    #@17
    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Ljava/lang/String;

    #@1d
    .line 120
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    #@1f
    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v4, v6, v0

    #@21
    move v0, v1

    #@22
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@23
    .line 122
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@24
    .local v3, "j":I
    :goto_1
    array-length v7, v6

    #@25
    if-ge v3, v7, :cond_1

    #@27
    .line 123
    aget-object v7, v6, v3

    #@29
    invoke-direct {p0, v7}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    #@2c
    .line 122
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 125
    :cond_1
    const/4 v7, 0x0

    #@30
    iput v7, p0, Ljava/io/ExpiringCache;->queryCount:I

    #@32
    .line 113
    return-void
.end method

.method private entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    #@2
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/io/ExpiringCache$Entry;

    #@8
    .line 103
    .local v2, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v2, :cond_1

    #@a
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v4

    #@e
    invoke-virtual {v2}, Ljava/io/ExpiringCache$Entry;->timestamp()J

    #@11
    move-result-wide v6

    #@12
    sub-long v0, v4, v6

    #@14
    .line 105
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    #@16
    cmp-long v3, v0, v4

    #@18
    if-ltz v3, :cond_0

    #@1a
    iget-wide v4, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    #@1c
    cmp-long v3, v0, v4

    #@1e
    if-ltz v3, :cond_1

    #@20
    .line 106
    :cond_0
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    #@22
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 107
    const/4 v2, 0x0

    #@26
    .line 110
    .end local v0    # "delta":J
    .end local v2    # "entry":Ljava/io/ExpiringCache$Entry;
    :cond_1
    return-object v2
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 98
    :try_start_0
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    #@3
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 97
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 74
    :try_start_0
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    #@8
    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    #@a
    if-lt v1, v2, :cond_0

    #@c
    .line 75
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    #@f
    .line 77
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    #@12
    move-result-object v0

    #@13
    .line 78
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1

    #@15
    .line 79
    invoke-virtual {v0}, Ljava/io/ExpiringCache$Entry;->val()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result-object v1

    #@19
    monitor-exit p0

    #@1a
    return-object v1

    #@1b
    :cond_1
    monitor-exit p0

    #@1c
    .line 81
    return-object v3

    #@1d
    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 85
    :try_start_0
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    #@7
    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 86
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    #@e
    .line 88
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    #@11
    move-result-object v0

    #@12
    .line 89
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1

    #@14
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v0, v2, v3}, Ljava/io/ExpiringCache$Entry;->setTimestamp(J)V

    #@1b
    .line 91
    invoke-virtual {v0, p2}, Ljava/io/ExpiringCache$Entry;->setVal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :goto_0
    monitor-exit p0

    #@1f
    .line 84
    return-void

    #@20
    .line 93
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    #@22
    new-instance v2, Ljava/io/ExpiringCache$Entry;

    #@24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@27
    move-result-wide v4

    #@28
    invoke-direct {v2, v4, v5, p2}, Ljava/io/ExpiringCache$Entry;-><init>(JLjava/lang/String;)V

    #@2b
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    :catchall_0
    move-exception v1

    #@30
    monitor-exit p0

    #@31
    throw v1
.end method
