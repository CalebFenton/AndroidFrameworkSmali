.class public Landroid/icu/impl/TextTrieMap;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TextTrieMap$Node;,
        Landroid/icu/impl/TextTrieMap$CharIterator;,
        Landroid/icu/impl/TextTrieMap$Output;,
        Landroid/icu/impl/TextTrieMap$LongestMatchHandler;,
        Landroid/icu/impl/TextTrieMap$ResultHandler;
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
.field greylist-max-o _ignoreCase:Z

.field private greylist-max-o _root:Landroid/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsubArray([CI)[C
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/impl/TextTrieMap;->subArray([CI)[C

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsubArray([CII)[C
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/icu/impl/TextTrieMap;->subArray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtoCharArray(Ljava/lang/CharSequence;)[C
    .registers 1

    invoke-static {p0}, Landroid/icu/impl/TextTrieMap;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Z)V
    .registers 4
    .param p1, "ignoreCase"    # Z

    .line 43
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap-IA;)V

    iput-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    .line 44
    iput-boolean p1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    .line 45
    return-void
.end method

.method private declared-synchronized blacklist find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V
    .registers 7
    .param p2, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .param p4, "output"    # Landroid/icu/impl/TextTrieMap$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;",
            "Landroid/icu/impl/TextTrieMap$Output;",
            ")V"
        }
    .end annotation

    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p1, "node":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p3, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Landroid/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    monitor-enter p0

    .line 110
    :try_start_1
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$Node;->values()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    if-eqz v0, :cond_13

    .line 112
    invoke-virtual {p2}, Landroid/icu/impl/TextTrieMap$CharIterator;->processedLength()I

    move-result v1

    invoke-interface {p3, v1, v0}, Landroid/icu/impl/TextTrieMap$ResultHandler;->handlePrefixMatch(ILjava/util/Iterator;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1e

    if-nez v1, :cond_13

    .line 113
    monitor-exit p0

    return-void

    .line 117
    .end local p0    # "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    :cond_13
    :try_start_13
    invoke-virtual {p1, p2, p4}, Landroid/icu/impl/TextTrieMap$Node;->findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$Output;)Landroid/icu/impl/TextTrieMap$Node;

    move-result-object v1

    .line 118
    .local v1, "nextMatch":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    if-eqz v1, :cond_1c

    .line 119
    invoke-direct {p0, v1, p2, p3, p4}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    .line 121
    :cond_1c
    monitor-exit p0

    return-void

    .line 109
    .end local v0    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .end local v1    # "nextMatch":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .end local p1    # "node":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .end local p2    # "chitr":Landroid/icu/impl/TextTrieMap$CharIterator;
    .end local p3    # "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Landroid/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    .end local p4    # "output":Landroid/icu/impl/TextTrieMap$Output;
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private blacklist find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p4, "output"    # Landroid/icu/impl/TextTrieMap$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;",
            "Landroid/icu/impl/TextTrieMap$Output;",
            ")V"
        }
    .end annotation

    .line 105
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p3, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Landroid/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    .line 106
    .local v0, "chitr":Landroid/icu/impl/TextTrieMap$CharIterator;
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-direct {p0, v1, v0, p3, p4}, Landroid/icu/impl/TextTrieMap;->find(Landroid/icu/impl/TextTrieMap$Node;Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V

    .line 107
    return-void
.end method

.method private static greylist-max-o subArray([CI)[C
    .registers 5
    .param p0, "array"    # [C
    .param p1, "start"    # I

    .line 429
    if-nez p1, :cond_3

    .line 430
    return-object p0

    .line 432
    :cond_3
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [C

    .line 433
    .local v0, "sub":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    return-object v0
.end method

.method private static greylist-max-o subArray([CII)[C
    .registers 6
    .param p0, "array"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 438
    if-nez p1, :cond_6

    array-length v0, p0

    if-ne p2, v0, :cond_6

    .line 439
    return-object p0

    .line 441
    :cond_6
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 442
    .local v0, "sub":[C
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    return-object v0
.end method

.method private static greylist-max-o toCharArray(Ljava/lang/CharSequence;)[C
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 421
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 422
    .local v0, "array":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 423
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 425
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method


# virtual methods
.method public blacklist find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p3, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Landroid/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V

    .line 102
    return-void
.end method

.method public blacklist find(Ljava/lang/CharSequence;Landroid/icu/impl/TextTrieMap$ResultHandler;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p2, "handler":Landroid/icu/impl/TextTrieMap$ResultHandler;, "Landroid/icu/impl/TextTrieMap$ResultHandler<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V

    .line 98
    return-void
.end method

.method public blacklist get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "output"    # Landroid/icu/impl/TextTrieMap$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/icu/impl/TextTrieMap$Output;",
            ")",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    new-instance v0, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;-><init>(Landroid/icu/impl/TextTrieMap-IA;)V

    .line 89
    .local v0, "handler":Landroid/icu/impl/TextTrieMap$LongestMatchHandler;, "Landroid/icu/impl/TextTrieMap$LongestMatchHandler<TV;>;"
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;Landroid/icu/impl/TextTrieMap$Output;)V

    .line 90
    if-eqz p3, :cond_11

    .line 91
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatchLength()I

    move-result v1

    iput v1, p3, Landroid/icu/impl/TextTrieMap$Output;->matchLength:I

    .line 93
    :cond_11
    invoke-virtual {v0}, Landroid/icu/impl/TextTrieMap$LongestMatchHandler;->getMatches()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Landroid/icu/impl/TextTrieMap$CharIterator;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/icu/impl/TextTrieMap;->_ignoreCase:Z

    invoke-direct {v0, p1, v1, v2}, Landroid/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    .line 55
    .local v0, "chitr":Landroid/icu/impl/TextTrieMap$CharIterator;
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/TextTrieMap$Node;->add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V

    .line 56
    return-object p0
.end method

.method public blacklist putLeadCodePoints(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "output"    # Landroid/icu/text/UnicodeSet;

    .line 124
    .local p0, "this":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap;->_root:Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {v0, p1}, Landroid/icu/impl/TextTrieMap$Node;->putLeadCodePoints(Landroid/icu/text/UnicodeSet;)V

    .line 125
    return-void
.end method
