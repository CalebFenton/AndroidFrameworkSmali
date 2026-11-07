.class public abstract Lsun/util/resources/OpenListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "OpenListResourceBundle.java"


# instance fields
.field private volatile blacklist keyset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 67
    return-void
.end method

.method private blacklist loadLookup()V
    .registers 7

    .line 137
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "contents":[[Ljava/lang/Object;
    array-length v1, v0

    invoke-virtual {p0, v1}, Lsun/util/resources/OpenListResourceBundle;->createMap(I)Ljava/util/Map;

    move-result-object v1

    .line 139
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 141
    aget-object v3, v0, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, "key":Ljava/lang/String;
    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 143
    .local v4, "value":Ljava/lang/Object;
    if-eqz v3, :cond_23

    if-eqz v4, :cond_23

    .line 146
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 144
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_23
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 148
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_29
    monitor-enter p0

    .line 149
    :try_start_2a
    iget-object v2, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v2, :cond_30

    .line 150
    iput-object v1, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    .line 152
    :cond_30
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_32
    move-exception v2

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v2
.end method


# virtual methods
.method protected blacklist createMap(I)Ljava/util/Map;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method protected blacklist createSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected abstract blacklist getContents()[[Ljava/lang/Object;
.end method

.method public whitelist test-api getKeys()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 86
    .local v0, "parentBundle":Ljava/util/ResourceBundle;
    new-instance v1, Lsun/util/ResourceBundleEnumeration;

    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    .line 87
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    invoke-direct {v1, v2, v3}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    .line 86
    return-object v1
.end method

.method protected whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 72
    if-eqz p1, :cond_c

    .line 76
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookupTablesIfNecessary()V

    .line 77
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 73
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api handleKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookupTablesIfNecessary()V

    .line 97
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->keyset:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->keyset:Ljava/util/Set;

    return-object v0

    .line 105
    :cond_7
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->createSet()Ljava/util/Set;

    move-result-object v0

    .line 106
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v1, p0, Lsun/util/resources/OpenListResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_1f

    .line 108
    iget-object v1, p0, Lsun/util/resources/OpenListResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_1f
    monitor-enter p0

    .line 111
    :try_start_20
    iget-object v1, p0, Lsun/util/resources/OpenListResourceBundle;->keyset:Ljava/util/Set;

    if-nez v1, :cond_26

    .line 112
    iput-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->keyset:Ljava/util/Set;

    .line 114
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2a

    .line 115
    iget-object v1, p0, Lsun/util/resources/OpenListResourceBundle;->keyset:Ljava/util/Set;

    return-object v1

    .line 114
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method blacklist loadLookupTablesIfNecessary()V
    .registers 2

    .line 127
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 128
    invoke-direct {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookup()V

    .line 130
    :cond_7
    return-void
.end method
