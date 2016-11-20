.class public Lsun/net/www/protocol/http/AuthCacheImpl;
.super Ljava/lang/Object;
.source "AuthCacheImpl.java"

# interfaces
.implements Lsun/net/www/protocol/http/AuthCache;


# instance fields
.field hashtable:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    #@a
    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;
    .locals 6
    .param p1, "pkey"    # Ljava/lang/String;
    .param p2, "skey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 76
    const/4 v3, 0x0

    #@3
    .line 77
    .local v3, "result":Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    #@5
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Ljava/util/LinkedList;

    #@b
    .line 78
    .local v2, "list":Ljava/util/LinkedList;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_1

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 79
    return-object v5

    #@15
    .line 81
    :cond_1
    if-nez p2, :cond_2

    #@17
    .line 83
    const/4 v4, 0x0

    #@18
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    return-object v4

    #@20
    .line 85
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    #@23
    move-result-object v1

    #@24
    .line 86
    .local v1, "iter":Ljava/util/ListIterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_4

    #@2a
    .line 87
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@30
    .line 88
    .local v0, "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    iget-object v4, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@32
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_3

    #@38
    monitor-exit p0

    #@39
    .line 89
    return-object v0

    #@3a
    .end local v0    # "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_4
    monitor-exit p0

    #@3b
    .line 92
    return-object v5

    #@3c
    .end local v1    # "iter":Ljava/util/ListIterator;
    .end local v2    # "list":Ljava/util/LinkedList;
    :catchall_0
    move-exception v4

    #@3d
    monitor-exit p0

    #@3e
    throw v4
.end method

.method public declared-synchronized put(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V
    .locals 5
    .param p1, "pkey"    # Ljava/lang/String;
    .param p2, "value"    # Lsun/net/www/protocol/http/AuthCacheValue;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 55
    :try_start_0
    iget-object v4, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/util/LinkedList;

    #@9
    .line 56
    .local v2, "list":Ljava/util/LinkedList;
    invoke-virtual {p2}, Lsun/net/www/protocol/http/AuthCacheValue;->getPath()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 57
    .local v3, "skey":Ljava/lang/String;
    if-nez v2, :cond_0

    #@f
    .line 58
    new-instance v2, Ljava/util/LinkedList;

    #@11
    .end local v2    # "list":Ljava/util/LinkedList;
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@14
    .line 59
    .restart local v2    # "list":Ljava/util/LinkedList;
    iget-object v4, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    #@16
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 62
    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    #@1c
    move-result-object v1

    #@1d
    .line 63
    .local v1, "iter":Ljava/util/ListIterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_3

    #@23
    .line 64
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@29
    .line 65
    .local v0, "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    iget-object v4, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@2b
    if-eqz v4, :cond_2

    #@2d
    iget-object v4, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    #@2f
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 66
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    goto :goto_0

    #@39
    .end local v0    # "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v1    # "iter":Ljava/util/ListIterator;
    .end local v2    # "list":Ljava/util/LinkedList;
    .end local v3    # "skey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@3a
    monitor-exit p0

    #@3b
    throw v4

    #@3c
    .line 69
    .restart local v1    # "iter":Ljava/util/ListIterator;
    .restart local v2    # "list":Ljava/util/LinkedList;
    .restart local v3    # "skey":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    .line 54
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V
    .locals 4
    .param p1, "pkey"    # Ljava/lang/String;
    .param p2, "entry"    # Lsun/net/www/protocol/http/AuthCacheValue;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 96
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 97
    .local v2, "list":Ljava/util/LinkedList;
    if-nez v2, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 98
    return-void

    #@d
    .line 100
    :cond_0
    if-nez p2, :cond_1

    #@f
    .line 101
    :try_start_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 102
    return-void

    #@14
    .line 104
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    #@17
    move-result-object v1

    #@18
    .line 105
    .local v1, "iter":Ljava/util/ListIterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_3

    #@1e
    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    #@24
    .line 107
    .local v0, "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 108
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .end local v0    # "inf":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v1    # "iter":Ljava/util/ListIterator;
    .end local v2    # "list":Ljava/util/LinkedList;
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit p0

    #@30
    throw v3

    #@31
    .restart local v1    # "iter":Ljava/util/ListIterator;
    .restart local v2    # "list":Ljava/util/LinkedList;
    :cond_3
    monitor-exit p0

    #@32
    .line 95
    return-void
.end method

.method public setMap(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "map"    # Ljava/util/HashMap;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lsun/net/www/protocol/http/AuthCacheImpl;->hashtable:Ljava/util/HashMap;

    #@2
    .line 47
    return-void
.end method
