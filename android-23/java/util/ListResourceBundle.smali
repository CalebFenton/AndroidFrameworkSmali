.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field table:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    return-void
.end method

.method private declared-synchronized initializeTable()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 117
    :try_start_0
    iget-object v3, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@4
    if-nez v3, :cond_2

    #@6
    .line 118
    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 119
    .local v1, "contents":[[Ljava/lang/Object;
    new-instance v3, Ljava/util/HashMap;

    #@c
    array-length v4, v1

    #@d
    div-int/lit8 v4, v4, 0x3

    #@f
    mul-int/lit8 v4, v4, 0x4

    #@11
    add-int/lit8 v4, v4, 0x3

    #@13
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    #@16
    iput-object v3, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@18
    .line 120
    array-length v4, v1

    #@19
    move v3, v2

    #@1a
    :goto_0
    if-ge v3, v4, :cond_2

    #@1c
    aget-object v0, v1, v3

    #@1e
    .line 121
    .local v0, "content":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@1f
    aget-object v2, v0, v2

    #@21
    if-eqz v2, :cond_0

    #@23
    const/4 v2, 0x1

    #@24
    aget-object v2, v0, v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 122
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@2a
    const-string/jumbo v3, "null entry"

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .end local v0    # "content":[Ljava/lang/Object;
    .end local v1    # "contents":[[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    #@32
    monitor-exit p0

    #@33
    throw v2

    #@34
    .line 124
    .restart local v0    # "content":[Ljava/lang/Object;
    .restart local v1    # "contents":[[Ljava/lang/Object;
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@36
    const/4 v2, 0x0

    #@37
    aget-object v2, v0, v2

    #@39
    check-cast v2, Ljava/lang/String;

    #@3b
    const/4 v6, 0x1

    #@3c
    aget-object v6, v0, v6

    #@3e
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 120
    add-int/lit8 v2, v3, 0x1

    #@43
    move v3, v2

    #@44
    goto :goto_0

    #@45
    .end local v0    # "content":[Ljava/lang/Object;
    .end local v1    # "contents":[[Ljava/lang/Object;
    :cond_2
    monitor-exit p0

    #@46
    .line 116
    return-void
.end method


# virtual methods
.method protected abstract getContents()[[Ljava/lang/Object;
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 1
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
    .line 49
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    #@3
    .line 50
    iget-object v0, p0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 51
    new-instance v0, Ljava/util/ListResourceBundle$1;

    #@9
    invoke-direct {v0, p0}, Ljava/util/ListResourceBundle$1;-><init>(Ljava/util/ListResourceBundle;)V

    #@c
    return-object v0

    #@d
    .line 93
    :cond_0
    new-instance v0, Ljava/util/ListResourceBundle$2;

    #@f
    invoke-direct {v0, p0}, Ljava/util/ListResourceBundle$2;-><init>(Ljava/util/ListResourceBundle;)V

    #@12
    return-object v0
.end method

.method public final handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    #@3
    .line 110
    if-nez p1, :cond_0

    #@5
    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "key == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 113
    :cond_0
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
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
    .line 136
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->initializeTable()V

    #@3
    .line 137
    iget-object v0, p0, Ljava/util/ListResourceBundle;->table:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
