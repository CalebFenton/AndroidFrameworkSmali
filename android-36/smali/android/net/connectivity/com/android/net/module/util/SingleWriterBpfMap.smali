.class public Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;
.super Landroid/net/connectivity/com/android/net/module/util/BpfMap;
.source "SingleWriterBpfMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Landroid/net/connectivity/com/android/net/module/util/Struct;",
        "V:",
        "Landroid/net/connectivity/com/android/net/module/util/Struct;",
        ">",
        "Landroid/net/connectivity/com/android/net/module/util/BpfMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist singletonCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;>;",
            "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->singletonCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 74
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "value":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_d
    invoke-super {p0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    .line 79
    .local v0, "currentKey":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :goto_11
    if-eqz v0, :cond_22

    .line 80
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-super {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-super {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getNextKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v1

    move-object v0, v1

    goto :goto_11

    .line 83
    .end local v0    # "currentKey":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :cond_22
    monitor-exit p0

    .line 84
    return-void

    .line 83
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v0
.end method

.method public static declared-synchronized blacklist getSingleton(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KK:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            "VV:",
            "Landroid/net/connectivity/com/android/net/module/util/Struct;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TKK;>;",
            "Ljava/lang/Class<",
            "TVV;>;)",
            "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<",
            "TKK;TVV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<TKK;>;"
    .local p2, "value":Ljava/lang/Class;, "Ljava/lang/Class<TVV;>;"
    const-class v0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;

    monitor-enter v0

    .line 98
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .local v1, "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Class;Ljava/lang/Class;>;>;"
    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->singletonCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 100
    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->singletonCache:Ljava/util/HashMap;

    new-instance v3, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1f
    sget-object v2, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->singletonCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v0

    return-object v2

    .line 97
    .end local v1    # "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/Class;Ljava/lang/Class;>;>;"
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/Class;, "Ljava/lang/Class<TKK;>;"
    .end local p2    # "value":Ljava/lang/Class;, "Ljava/lang/Class<TVV;>;"
    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method


# virtual methods
.method public declared-synchronized blacklist containsKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 140
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized blacklist deleteEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    monitor-enter p0

    .line 133
    :try_start_1
    invoke-super {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->deleteEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z

    move-result v0

    .line 134
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 135
    monitor-exit p0

    return v0

    .line 132
    .end local v0    # "ret":Z
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/Struct;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 145
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist insertEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    monitor-enter p0

    .line 113
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->insertEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    .line 114
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 115
    monitor-exit p0

    return-void

    .line 112
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .end local p2    # "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist insertOrReplaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    monitor-enter p0

    .line 126
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->insertOrReplaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)Z

    move-result v0

    .line 127
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 128
    monitor-exit p0

    return v0

    .line 125
    .end local v0    # "ret":Z
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .end local p2    # "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized blacklist replaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    monitor-enter p0

    .line 120
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->replaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    .line 121
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 122
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .end local p2    # "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized blacklist updateEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    monitor-enter p0

    .line 106
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->updateEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    .line 107
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 108
    monitor-exit p0

    return-void

    .line 105
    .end local p0    # "this":Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/SingleWriterBpfMap<TK;TV;>;"
    .end local p1    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .end local p2    # "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
