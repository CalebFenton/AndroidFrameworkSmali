.class abstract Ljava/beans/ChangeListenerMap;
.super Ljava/lang/Object;
.source "ChangeListenerMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Ljava/util/EventListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Ljava/lang/String;Ljava/util/EventListener;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    #@1
    .line 78
    :try_start_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 79
    new-instance v3, Ljava/util/HashMap;

    #@7
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@c
    .line 81
    :cond_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@e
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/util/EventListener;

    #@14
    .line 82
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_2

    #@16
    .line 83
    array-length v2, v0

    #@17
    .line 86
    .local v2, "size":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    #@19
    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    #@1c
    move-result-object v1

    #@1d
    .line 87
    .local v1, "clone":[Ljava/util/EventListener;, "[TL;"
    aput-object p2, v1, v2

    #@1f
    .line 88
    if-eqz v0, :cond_1

    #@21
    .line 89
    const/4 v3, 0x0

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    .line 91
    :cond_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@28
    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 77
    return-void

    #@2d
    .line 84
    .end local v1    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
    :cond_2
    const/4 v2, 0x0

    #@2e
    .restart local v2    # "size":I
    goto :goto_0

    #@2f
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@30
    monitor-exit p0

    #@31
    throw v3
.end method

.method public abstract extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized get(Ljava/lang/String;)[Ljava/util/EventListener;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 135
    :try_start_0
    iget-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 136
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Ljava/util/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 135
    return-object v0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method public final getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 229
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 230
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    .line 229
    :goto_0
    return-object v0

    #@b
    .line 231
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method public final declared-synchronized getListeners()[Ljava/util/EventListener;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v8, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 167
    :try_start_0
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@4
    if-nez v6, :cond_0

    #@6
    .line 168
    const/4 v6, 0x0

    #@7
    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v6

    #@b
    monitor-exit p0

    #@c
    return-object v6

    #@d
    .line 170
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    #@f
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@12
    .line 172
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@14
    const/4 v7, 0x0

    #@15
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, [Ljava/util/EventListener;

    #@1b
    .line 173
    .local v4, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v4, :cond_1

    #@1d
    .line 174
    array-length v7, v4

    #@1e
    move v6, v8

    #@1f
    :goto_0
    if-ge v6, v7, :cond_1

    #@21
    aget-object v3, v4, v6

    #@23
    .line 175
    .local v3, "listener":Ljava/util/EventListener;, "TL;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 174
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_0

    #@29
    .line 178
    .end local v3    # "listener":Ljava/util/EventListener;, "TL;"
    :cond_1
    iget-object v6, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@2b
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2e
    move-result-object v6

    #@2f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v1

    #@33
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_3

    #@39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/util/Map$Entry;

    #@3f
    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Ljava/lang/String;

    #@45
    .line 180
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@47
    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4a
    move-result-object v6

    #@4b
    check-cast v6, [Ljava/util/EventListener;

    #@4d
    array-length v9, v6

    #@4e
    move v7, v8

    #@4f
    :goto_1
    if-ge v7, v9, :cond_2

    #@51
    aget-object v3, v6, v7

    #@53
    .line 182
    .restart local v3    # "listener":Ljava/util/EventListener;, "TL;"
    invoke-virtual {p0, v5, v3}, Ljava/beans/ChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;

    #@56
    move-result-object v10

    #@57
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 181
    add-int/lit8 v7, v7, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 186
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    .end local v3    # "listener":Ljava/util/EventListener;, "TL;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@60
    move-result v6

    #@61
    invoke-virtual {p0, v6}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    #@64
    move-result-object v6

    #@65
    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@68
    move-result-object v6

    #@69
    check-cast v6, [Ljava/util/EventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    monitor-exit p0

    #@6c
    return-object v6

    #@6d
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .end local v4    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :catchall_0
    move-exception v6

    #@6e
    monitor-exit p0

    #@6f
    throw v6
.end method

.method public final getListeners(Ljava/lang/String;)[Ljava/util/EventListener;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    #@0
    .prologue
    .line 196
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    if-eqz p1, :cond_0

    #@2
    .line 197
    invoke-virtual {p0, p1}, Ljava/beans/ChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    #@5
    move-result-object v0

    #@6
    .line 198
    .local v0, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_0

    #@8
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [Ljava/util/EventListener;

    #@e
    return-object v1

    #@f
    .line 202
    .end local v0    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :cond_0
    const/4 v1, 0x0

    #@10
    invoke-virtual {p0, v1}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public final declared-synchronized hasListeners(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 214
    :try_start_0
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v3, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 215
    return v2

    #@9
    .line 217
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@b
    const/4 v4, 0x0

    #@c
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Ljava/util/EventListener;

    #@12
    .line 218
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-nez v0, :cond_1

    #@14
    if-eqz p1, :cond_2

    #@16
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@18
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v3

    #@1c
    if-eqz v3, :cond_2

    #@1e
    :cond_1
    :goto_0
    monitor-exit p0

    #@1f
    return v1

    #@20
    :cond_2
    move v1, v2

    #@21
    goto :goto_0

    #@22
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method

.method protected abstract newArray(I)[Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[T",
            "L;"
        }
    .end annotation
.end method

.method protected abstract newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized remove(Ljava/lang/String;Ljava/util/EventListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "T",
            "L;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    #@1
    .line 103
    :try_start_0
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 104
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@7
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, [Ljava/util/EventListener;

    #@d
    .line 105
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_0

    #@f
    .line 106
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v4, v0

    #@11
    if-ge v2, v4, :cond_0

    #@13
    .line 107
    aget-object v4, v0, v2

    #@15
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 108
    array-length v4, v0

    #@1c
    add-int/lit8 v3, v4, -0x1

    #@1e
    .line 109
    .local v3, "size":I
    if-lez v3, :cond_1

    #@20
    .line 110
    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    #@23
    move-result-object v1

    #@24
    .line 111
    .local v1, "clone":[Ljava/util/EventListener;, "[TL;"
    const/4 v4, 0x0

    #@25
    const/4 v5, 0x0

    #@26
    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    .line 112
    add-int/lit8 v4, v2, 0x1

    #@2b
    sub-int v5, v3, v2

    #@2d
    invoke-static {v0, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 113
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@32
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v1    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    :goto_1
    monitor-exit p0

    #@36
    .line 102
    return-void

    #@37
    .line 116
    .restart local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@39
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 117
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@3e
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_0

    #@44
    .line 118
    const/4 v4, 0x0

    #@45
    iput-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    goto :goto_1

    #@48
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    #@49
    monitor-exit p0

    #@4a
    throw v4

    #@4b
    .line 106
    .restart local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_0
.end method

.method public final set(Ljava/lang/String;[Ljava/util/EventListener;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listeners":[Ljava/util/EventListener;, "[TL;"
    const/4 v1, 0x0

    #@1
    .line 147
    if-eqz p2, :cond_2

    #@3
    .line 148
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 149
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@e
    .line 151
    :cond_0
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@10
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 146
    :cond_1
    :goto_0
    return-void

    #@14
    .line 153
    :cond_2
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 154
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@1a
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 155
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@1f
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 156
    iput-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    #@27
    goto :goto_0
.end method
