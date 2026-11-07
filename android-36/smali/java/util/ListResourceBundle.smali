.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field private volatile greylist-max-o lookup:Ljava/util/Map;
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
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 124
    return-void
.end method

.method private declared-synchronized greylist-max-o loadLookup()V
    .registers 9

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-eqz v0, :cond_7

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "contents":[[Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    .local v1, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_30

    aget-object v5, v0, v4

    .line 199
    .local v5, "content":[Ljava/lang/Object;
    aget-object v6, v5, v3

    check-cast v6, Ljava/lang/String;

    .line 200
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 201
    .local v7, "value":Ljava/lang/Object;
    if-eqz v6, :cond_2a

    if-eqz v7, :cond_2a

    .line 204
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    nop

    .end local v5    # "content":[Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 202
    .end local p0    # "this":Ljava/util/ListResourceBundle;
    .restart local v5    # "content":[Ljava/lang/Object;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2a
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 206
    .end local v5    # "content":[Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_30
    iput-object v1, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_34

    .line 207
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "contents":[[Ljava/lang/Object;
    .end local v1    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method


# virtual methods
.method protected abstract whitelist test-api getContents()[[Ljava/lang/Object;
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

    .line 148
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 149
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 152
    :cond_7
    iget-object v0, p0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 153
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v1, Lsun/util/ResourceBundleEnumeration;

    iget-object v2, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 154
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-direct {v1, v2, v3}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    .line 153
    return-object v1
.end method

.method public final whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 130
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 132
    :cond_7
    if-eqz p1, :cond_10

    .line 135
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 133
    :cond_10
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

    .line 167
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 168
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 170
    :cond_7
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
