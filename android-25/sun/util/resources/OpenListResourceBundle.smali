.class public abstract Lsun/util/resources/OpenListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "OpenListResourceBundle.java"


# instance fields
.field private lookup:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 147
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    #@6
    .line 65
    return-void
.end method

.method private declared-synchronized loadLookup()V
    .locals 7

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    iget-object v5, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v5, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 123
    return-void

    #@7
    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->getContents()[[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 126
    .local v0, "contents":[[Ljava/lang/Object;
    array-length v5, v0

    #@c
    invoke-virtual {p0, v5}, Lsun/util/resources/OpenListResourceBundle;->createMap(I)Ljava/util/Map;

    #@f
    move-result-object v3

    #@10
    .line 127
    .local v3, "temp":Ljava/util/Map;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    #@12
    if-ge v1, v5, :cond_3

    #@14
    .line 129
    aget-object v5, v0, v1

    #@16
    const/4 v6, 0x0

    #@17
    aget-object v2, v5, v6

    #@19
    check-cast v2, Ljava/lang/String;

    #@1b
    .line 130
    .local v2, "key":Ljava/lang/String;
    aget-object v5, v0, v1

    #@1d
    const/4 v6, 0x1

    #@1e
    aget-object v4, v5, v6

    #@20
    .line 131
    .local v4, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@22
    if-nez v4, :cond_2

    #@24
    .line 132
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    #@26
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@29
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .end local v0    # "contents":[[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "temp":Ljava/util/Map;
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    #@2b
    monitor-exit p0

    #@2c
    throw v5

    #@2d
    .line 134
    .restart local v0    # "contents":[[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "temp":Ljava/util/Map;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 127
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 136
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    iput-object v3, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    monitor-exit p0

    #@36
    .line 121
    return-void
.end method


# virtual methods
.method protected createMap(I)Ljava/util/Map;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    #@5
    return-object v0
.end method

.method protected abstract getContents()[[Ljava/lang/Object;
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@3
    .line 83
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v2, Lsun/util/ResourceBundleEnumeration;

    #@5
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->handleGetKeys()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    .line 84
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    .line 83
    :cond_0
    invoke-direct {v2, v3, v1}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    #@12
    return-object v2
.end method

.method public getParent()Lsun/util/resources/OpenListResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@2
    check-cast v0, Lsun/util/resources/OpenListResourceBundle;

    #@4
    return-object v0
.end method

.method public handleGetKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookupTablesIfNecessary()V

    #@3
    .line 93
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    if-nez p1, :cond_0

    #@2
    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 74
    :cond_0
    invoke-virtual {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookupTablesIfNecessary()V

    #@b
    .line 75
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method loadLookupTablesIfNecessary()V
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lsun/util/resources/OpenListResourceBundle;->lookup:Ljava/util/Map;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 113
    invoke-direct {p0}, Lsun/util/resources/OpenListResourceBundle;->loadLookup()V

    #@7
    .line 111
    :cond_0
    return-void
.end method
