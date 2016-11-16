.class Landroid/icu/impl/TextTrieMap$Node;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;>;"
        }
    .end annotation
.end field

.field private _text:[C

.field private _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/icu/impl/TextTrieMap;


# direct methods
.method private constructor <init>(Landroid/icu/impl/TextTrieMap;)V
    .locals 0

    #@0
    .prologue
    .line 224
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p1, "this$0":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$Node;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/TextTrieMap;

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    invoke-direct {p0, p1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2, "text"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/List",
            "<TV;>;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p1, "this$0":Landroid/icu/impl/TextTrieMap;, "Landroid/icu/impl/TextTrieMap<TV;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "children":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TextTrieMap<TV;>.Node;>;"
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 228
    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@7
    .line 229
    iput-object p3, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@9
    .line 230
    iput-object p4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@b
    .line 227
    return-void
.end method

.method private add([CILjava/lang/Object;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CITV;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 272
    array-length v4, p1

    #@3
    if-ne v4, p2, :cond_0

    #@5
    .line 273
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@7
    invoke-direct {p0, v4, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    #@a
    move-result-object v4

    #@b
    iput-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@d
    .line 274
    return-void

    #@e
    .line 277
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@10
    if-nez v4, :cond_1

    #@12
    .line 278
    new-instance v4, Ljava/util/LinkedList;

    #@14
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    #@17
    iput-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@19
    .line 279
    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    #@1b
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    #@1d
    invoke-static {p1, p2}, Landroid/icu/impl/TextTrieMap;->-wrap0([CI)[C

    #@20
    move-result-object v5

    #@21
    invoke-direct {p0, v8, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    #@24
    move-result-object v6

    #@25
    invoke-direct {v0, v4, v5, v6, v8}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    #@28
    .line 280
    .local v0, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@2a
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 281
    return-void

    #@2e
    .line 285
    .end local v0    # "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@30
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@33
    move-result-object v1

    #@34
    .line 286
    .local v1, "litr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/icu/impl/TextTrieMap<TV;>.Node;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_3

    #@3a
    .line 287
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Landroid/icu/impl/TextTrieMap$Node;

    #@40
    .line 288
    .local v3, "next":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    aget-char v4, p1, p2

    #@42
    iget-object v5, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@44
    aget-char v5, v5, v6

    #@46
    if-ge v4, v5, :cond_4

    #@48
    .line 289
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@4b
    .line 306
    .end local v3    # "next":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_3
    new-instance v4, Landroid/icu/impl/TextTrieMap$Node;

    #@4d
    iget-object v5, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    #@4f
    invoke-static {p1, p2}, Landroid/icu/impl/TextTrieMap;->-wrap0([CI)[C

    #@52
    move-result-object v6

    #@53
    invoke-direct {p0, v8, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    #@56
    move-result-object v7

    #@57
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    #@5a
    invoke-interface {v1, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@5d
    .line 271
    return-void

    #@5e
    .line 292
    .restart local v3    # "next":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_4
    aget-char v4, p1, p2

    #@60
    iget-object v5, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@62
    aget-char v5, v5, v6

    #@64
    if-ne v4, v5, :cond_2

    #@66
    .line 293
    invoke-direct {v3, p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->lenMatches([CI)I

    #@69
    move-result v2

    #@6a
    .line 294
    .local v2, "matchLen":I
    iget-object v4, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@6c
    array-length v4, v4

    #@6d
    if-ne v2, v4, :cond_5

    #@6f
    .line 296
    add-int v4, p2, v2

    #@71
    invoke-direct {v3, p1, v4, p3}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    #@74
    .line 302
    :goto_0
    return-void

    #@75
    .line 299
    :cond_5
    invoke-direct {v3, v2}, Landroid/icu/impl/TextTrieMap$Node;->split(I)V

    #@78
    .line 300
    add-int v4, p2, v2

    #@7a
    invoke-direct {v3, p1, v4, p3}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    #@7d
    goto :goto_0
.end method

.method private addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;TV;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 354
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    #@2
    .line 355
    new-instance p1, Ljava/util/LinkedList;

    #@4
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    #@7
    .line 357
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 358
    return-object p1
.end method

.method private lenMatches([CI)I
    .locals 5
    .param p1, "text"    # [C
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 328
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    array-length v3, p1

    #@1
    sub-int v2, v3, p2

    #@3
    .line 329
    .local v2, "textLen":I
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@5
    array-length v3, v3

    #@6
    if-ge v3, v2, :cond_1

    #@8
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@a
    array-length v1, v3

    #@b
    .line 330
    .local v1, "limit":I
    :goto_0
    const/4 v0, 0x0

    #@c
    .line 331
    .local v0, "len":I
    :goto_1
    if-ge v0, v1, :cond_0

    #@e
    .line 332
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@10
    aget-char v3, v3, v0

    #@12
    add-int v4, p2, v0

    #@14
    aget-char v4, p1, v4

    #@16
    if-eq v3, v4, :cond_2

    #@18
    .line 337
    :cond_0
    return v0

    #@19
    .line 329
    .end local v0    # "len":I
    .end local v1    # "limit":I
    :cond_1
    move v1, v2

    #@1a
    .restart local v1    # "limit":I
    goto :goto_0

    #@1b
    .line 335
    .restart local v0    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_1
.end method

.method private matchFollowing(Landroid/icu/impl/TextTrieMap$CharIterator;)Z
    .locals 5
    .param p1, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;

    #@0
    .prologue
    .line 310
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    const/4 v2, 0x1

    #@1
    .line 311
    .local v2, "matched":Z
    const/4 v1, 0x1

    #@2
    .line 312
    .local v1, "idx":I
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@4
    array-length v3, v3

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 313
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_1

    #@d
    .line 314
    const/4 v2, 0x0

    #@e
    .line 324
    :cond_0
    :goto_1
    return v2

    #@f
    .line 317
    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    #@12
    move-result-object v0

    #@13
    .line 318
    .local v0, "ch":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    #@16
    move-result v3

    #@17
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@19
    aget-char v4, v4, v1

    #@1b
    if-eq v3, v4, :cond_2

    #@1d
    .line 319
    const/4 v2, 0x0

    #@1e
    .line 320
    goto :goto_1

    #@1f
    .line 322
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0
.end method

.method private split(I)V
    .locals 5
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 342
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@2
    invoke-static {v2, p1}, Landroid/icu/impl/TextTrieMap;->-wrap0([CI)[C

    #@5
    move-result-object v1

    #@6
    .line 343
    .local v1, "childText":[C
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v2, v3, p1}, Landroid/icu/impl/TextTrieMap;->-wrap1([CII)[C

    #@c
    move-result-object v2

    #@d
    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@f
    .line 346
    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    #@11
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    #@13
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@15
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@17
    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    #@1a
    .line 347
    .local v0, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    const/4 v2, 0x0

    #@1b
    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@1d
    .line 349
    new-instance v2, Ljava/util/LinkedList;

    #@1f
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@22
    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@24
    .line 350
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@26
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 340
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V
    .locals 3
    .param p1, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 241
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 242
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 243
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    goto :goto_0

    #@13
    .line 245
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/TextTrieMap;->-wrap2(Ljava/lang/CharSequence;)[C

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x0

    #@18
    invoke-direct {p0, v1, v2, p2}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    #@1b
    .line 240
    return-void
.end method

.method public findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;)Landroid/icu/impl/TextTrieMap$Node;
    .locals 7
    .param p1, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            ")",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 249
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@4
    if-nez v4, :cond_0

    #@6
    .line 250
    return-object v5

    #@7
    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_1

    #@d
    .line 253
    return-object v5

    #@e
    .line 255
    :cond_1
    const/4 v3, 0x0

    #@f
    .line 256
    .local v3, "match":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    #@12
    move-result-object v0

    #@13
    .line 257
    .local v0, "ch":Ljava/lang/Character;
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    #@15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "child$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/icu/impl/TextTrieMap$Node;

    #@25
    .line 258
    .local v1, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    #@28
    move-result v4

    #@29
    iget-object v5, v1, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@2b
    aget-char v5, v5, v6

    #@2d
    if-ge v4, v5, :cond_4

    #@2f
    .line 268
    .end local v1    # "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .end local v3    # "match":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_3
    :goto_0
    return-object v3

    #@30
    .line 261
    .restart local v1    # "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .restart local v3    # "match":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    #@33
    move-result v4

    #@34
    iget-object v5, v1, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    #@36
    aget-char v5, v5, v6

    #@38
    if-ne v4, v5, :cond_2

    #@3a
    .line 262
    invoke-direct {v1, p1}, Landroid/icu/impl/TextTrieMap$Node;->matchFollowing(Landroid/icu/impl/TextTrieMap$CharIterator;)Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_3

    #@40
    .line 263
    move-object v3, v1

    #@41
    .local v3, "match":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    goto :goto_0
.end method

.method public values()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    const/4 v1, 0x0

    #@1
    .line 234
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 235
    return-object v1

    #@6
    .line 237
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
