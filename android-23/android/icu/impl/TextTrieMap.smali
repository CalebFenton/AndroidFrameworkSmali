.class public Landroid/icu/impl/TextTrieMap;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TextTrieMap$CharIterator;,
        Landroid/icu/impl/TextTrieMap$ResultHandler;,
        Landroid/icu/impl/TextTrieMap$LongestMatchHandler;,
        Landroid/icu/impl/TextTrieMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field _ignoreCase:Z

.field private _root:Landroid/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "start"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/icu/impl/TextTrieMap;->subArray([CI)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1([CII)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/impl/TextTrieMap;->subArray([CII)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/CharSequence;)[C
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/impl/TextTrieMap;->toCharArray(Ljava/lang/CharSequence;)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "ignoreCase"    # Z

    #@0
    .prologue
    .line 30
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$Node;)V

    #@9
    iput-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    #@b
    .line 31
    iput-boolean p1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    #@d
    .line 30
    return-void
.end method

.method private declared-synchronized find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 3
    .param p2, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p1, "node":Landroid/icu/impl/TextTrieMap$Node;, "Lcom/ibm/icu/impl/TextTrieMap<TV;>.Node;"
    .local p3, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    monitor-enter p0

    #@1
    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$Node;->values()Ljava/util/Iterator;

    #@4
    move-result-object v1

    #@5
    .line 94
    .local v1, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    if-eqz v1, :cond_0

    #@7
    .line 95
    invoke-virtual {p2}, Landroid/icu/impl/TextTrieMap$CharIterator;->processedLength()I

    #@a
    move-result v2

    #@b
    invoke-interface {p3, v2, v1}, Landroid/icu/impl/TextTrieMap$ResultHandler;->handlePrefixMatch(ILjava/util/Iterator;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    monitor-exit p0

    #@12
    .line 96
    return-void

    #@13
    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;)Landroid/icu/impl/TextTrieMap$Node;

    #@16
    move-result-object v0

    #@17
    .line 101
    .local v0, "nextMatch":Landroid/icu/impl/TextTrieMap$Node;, "Lcom/ibm/icu/impl/TextTrieMap<TV;>.Node;"
    if-eqz v0, :cond_1

    #@19
    .line 102
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    :cond_1
    monitor-exit p0

    #@1d
    .line 92
    return-void

    #@1e
    .end local v0    # "nextMatch":Landroid/icu/impl/TextTrieMap$Node;, "Lcom/ibm/icu/impl/TextTrieMap<TV;>.Node;"
    .end local v1    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method private static subArray([CI)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "start"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 369
    if-nez p1, :cond_0

    #@3
    .line 370
    return-object p0

    #@4
    .line 372
    :cond_0
    array-length v1, p0

    #@5
    sub-int/2addr v1, p1

    #@6
    new-array v0, v1, [C

    #@8
    .line 373
    .local v0, "sub":[C
    array-length v1, v0

    #@9
    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@c
    .line 374
    return-object v0
.end method

.method private static subArray([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 378
    if-nez p1, :cond_0

    #@3
    array-length v1, p0

    #@4
    if-ne p2, v1, :cond_0

    #@6
    .line 379
    return-object p0

    #@7
    .line 381
    :cond_0
    sub-int v1, p2, p1

    #@9
    new-array v0, v1, [C

    #@b
    .line 382
    .local v0, "sub":[C
    sub-int v1, p2, p1

    #@d
    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@10
    .line 383
    return-object v0
.end method

.method private static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 361
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v2

    #@4
    new-array v0, v2, [C

    #@6
    .line 362
    .local v0, "array":[C
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 363
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@d
    move-result v2

    #@e
    aput-char v2, v0, v1

    #@10
    .line 362
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 365
    :cond_0
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/icu/impl/TextTrieMap$ResultHandler",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p3, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    #@2
    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    #@4
    invoke-direct {v0, p1, p2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    #@7
    .line 89
    .local v0, "chitr":Landroid/icu/impl/TextTrieMap$CharIterator;
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    #@9
    invoke-direct {p0, v1, v0, p3}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@c
    .line 87
    return-void
.end method

.method public find(Ljava/lang/CharSequence;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 84
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p2, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@4
    .line 83
    return-void
.end method

.method public get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "matchLen"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I[I)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 75
    new-instance v0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>(Landroid/icu/impl/TextTrieMap$LongestMatchHandler;)V

    #@7
    .line 76
    .local v0, "handler":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler<TV;>;"
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    #@a
    .line 77
    if-eqz p3, :cond_0

    #@c
    array-length v1, p3

    #@d
    if-lez v1, :cond_0

    #@f
    .line 78
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatchLength()I

    #@12
    move-result v1

    #@13
    aput v1, p3, v2

    #@15
    .line 80
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatches()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 56
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    #@2
    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, p1, v2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    #@8
    .line 42
    .local v0, "chitr":Landroid/icu/impl/TextTrieMap$CharIterator;
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    #@a
    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/TextTrieMap$Node;->add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V

    #@d
    .line 43
    return-object p0
.end method
