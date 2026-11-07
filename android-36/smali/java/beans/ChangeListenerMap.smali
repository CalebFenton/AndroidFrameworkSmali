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
.field private greylist-max-o map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized greylist-max-o add(Ljava/lang/String;Ljava/util/EventListener;)V
    .registers 7
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

    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 81
    .end local p0    # "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    :cond_c
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 82
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 83
    array-length v2, v0

    goto :goto_1a

    .line 84
    :cond_19
    move v2, v1

    :goto_1a
    nop

    .line 86
    .local v2, "size":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v3

    .line 87
    .local v3, "clone":[Ljava/util/EventListener;, "[TL;"
    aput-object p2, v3, v2

    .line 88
    if-eqz v0, :cond_28

    .line 89
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    :cond_28
    iget-object v1, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 92
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v2    # "size":I
    .end local v3    # "clone":[Ljava/util/EventListener;, "[TL;"
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "listener":Ljava/util/EventListener;, "TL;"
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public abstract greylist-max-o extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation
.end method

.method public final declared-synchronized greylist-max-o get(Ljava/lang/String;)[Ljava/util/EventListener;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 136
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    goto :goto_f

    .line 137
    .end local p0    # "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    :cond_e
    const/4 v0, 0x0

    .line 135
    :goto_f
    monitor-exit p0

    return-object v0

    .line 134
    .end local p1    # "name":Ljava/lang/String;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final greylist-max-o getEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[T",
            "L;",
            ">;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    .line 231
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 229
    :goto_f
    return-object v0
.end method

.method public final declared-synchronized greylist-max-o getListeners()[Ljava/util/EventListener;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 168
    invoke-virtual {p0, v1}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_6f

    monitor-exit p0

    return-object v0

    .line 170
    .end local p0    # "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    :cond_c
    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    iget-object v2, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/EventListener;

    .line 173
    .local v2, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v2, :cond_29

    .line 174
    array-length v3, v2

    move v4, v1

    :goto_1e
    if-ge v4, v3, :cond_29

    aget-object v5, v2, v4

    .line 175
    .local v5, "listener":Ljava/util/EventListener;, "TL;"
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    nop

    .end local v5    # "listener":Ljava/util/EventListener;, "TL;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 178
    :cond_29
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 179
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_5e

    .line 181
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/EventListener;

    array-length v7, v6

    move v8, v1

    :goto_4f
    if-ge v8, v7, :cond_5e

    aget-object v9, v6, v8

    .line 182
    .local v9, "listener":Ljava/util/EventListener;, "TL;"
    invoke-virtual {p0, v5, v9}, Ljava/beans/ChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    nop

    .end local v9    # "listener":Ljava/util/EventListener;, "TL;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 185
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[TL;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_5e
    goto :goto_33

    .line 186
    :cond_5f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/EventListener;
    :try_end_6d
    .catchall {:try_start_c .. :try_end_6d} :catchall_6f

    monitor-exit p0

    return-object v1

    .line 166
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .end local v2    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v0
.end method

.method public final greylist-max-o getListeners(Ljava/lang/String;)[Ljava/util/EventListener;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[T",
            "L;"
        }
    .end annotation

    .line 196
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    if-eqz p1, :cond_f

    .line 197
    invoke-virtual {p0, p1}, Ljava/beans/ChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    .line 198
    .local v0, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_f

    .line 199
    invoke-virtual {v0}, [Ljava/util/EventListener;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/EventListener;

    return-object v1

    .line 202
    .end local v0    # "listeners":[Ljava/util/EventListener;, "[TL;"
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized greylist-max-o hasListeners(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 215
    monitor-exit p0

    return v1

    .line 217
    :cond_8
    :try_start_8
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 218
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-nez v0, :cond_1d

    if-eqz p1, :cond_1e

    iget-object v2, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    if-eqz v2, :cond_1e

    .end local p0    # "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    monitor-exit p0

    return v1

    .line 213
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local p1    # "name":Ljava/lang/String;
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method protected abstract greylist-max-o newArray(I)[Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[T",
            "L;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
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

.method public final declared-synchronized greylist-max-o remove(Ljava/lang/String;Ljava/util/EventListener;)V
    .registers 9
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

    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listener":Ljava/util/EventListener;, "TL;"
    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_4a

    .line 104
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    .line 105
    .local v0, "array":[Ljava/util/EventListener;, "[TL;"
    if-eqz v0, :cond_4a

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_4a

    .line 107
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 108
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 109
    .local v2, "size":I
    if-lez v2, :cond_36

    .line 110
    invoke-virtual {p0, v2}, Ljava/beans/ChangeListenerMap;->newArray(I)[Ljava/util/EventListener;

    move-result-object v3

    .line 111
    .local v3, "clone":[Ljava/util/EventListener;, "[TL;"
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget-object v4, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    nop

    .end local v3    # "clone":[Ljava/util/EventListener;, "[TL;"
    goto :goto_4a

    .line 116
    .end local p0    # "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    :cond_36
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 118
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_4c

    goto :goto_4a

    .line 106
    .end local v2    # "size":I
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 126
    .end local v0    # "array":[Ljava/util/EventListener;, "[TL;"
    .end local v1    # "i":I
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-void

    .line 102
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "listener":Ljava/util/EventListener;, "TL;"
    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public final greylist-max-o set(Ljava/lang/String;[Ljava/util/EventListener;)V
    .registers 4
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

    .line 147
    .local p0, "this":Ljava/beans/ChangeListenerMap;, "Ljava/beans/ChangeListenerMap<TL;>;"
    .local p2, "listeners":[Ljava/util/EventListener;, "[TL;"
    if-eqz p2, :cond_13

    .line 148
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 151
    :cond_d
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 153
    :cond_13
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    if-eqz v0, :cond_27

    .line 154
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/beans/ChangeListenerMap;->map:Ljava/util/Map;

    .line 159
    :cond_27
    :goto_27
    return-void
.end method
