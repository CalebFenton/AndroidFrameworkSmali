.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field private lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 203
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@6
    .line 117
    return-void
.end method

.method private declared-synchronized loadLookup()V
    .locals 7

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-object v5, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v5, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 187
    return-void

    #@7
    .line 189
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 190
    .local v0, "contents":[[Ljava/lang/Object;
    new-instance v3, Ljava/util/HashMap;

    #@d
    array-length v5, v0

    #@e
    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    #@11
    .line 191
    .local v3, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    #@13
    if-ge v1, v5, :cond_3

    #@15
    .line 193
    aget-object v5, v0, v1

    #@17
    const/4 v6, 0x0

    #@18
    aget-object v2, v5, v6

    #@1a
    check-cast v2, Ljava/lang/String;

    #@1c
    .line 194
    .local v2, "key":Ljava/lang/String;
    aget-object v5, v0, v1

    #@1e
    const/4 v6, 0x1

    #@1f
    aget-object v4, v5, v6

    #@21
    .line 195
    .local v4, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@23
    if-nez v4, :cond_2

    #@25
    .line 196
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    #@27
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@2a
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .end local v0    # "contents":[[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    #@2c
    monitor-exit p0

    #@2d
    throw v5

    #@2e
    .line 198
    .restart local v0    # "contents":[[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 191
    add-int/lit8 v1, v1, 0x1

    #@33
    goto :goto_0

    #@34
    .line 200
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    iput-object v3, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit p0

    #@37
    .line 185
    return-void
.end method


# virtual methods
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
    .line 142
    iget-object v2, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 143
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    #@8
    .line 146
    :cond_0
    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@a
    .line 147
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v2, Lsun/util/ResourceBundleEnumeration;

    #@c
    iget-object v3, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@e
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@11
    move-result-object v3

    #@12
    .line 148
    if-eqz v0, :cond_1

    #@14
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@17
    move-result-object v1

    #@18
    .line 147
    :cond_1
    invoke-direct {v2, v3, v1}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    #@1b
    return-object v2
.end method

.method public final handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 124
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    #@7
    .line 126
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v0

    #@f
    .line 129
    :cond_1
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
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
    .line 161
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 162
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    #@7
    .line 164
    :cond_0
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    #@9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
