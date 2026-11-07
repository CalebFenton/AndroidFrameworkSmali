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
.field private greylist-max-o _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;>;"
        }
    .end annotation
.end field

.field private greylist-max-o _text:[C

.field private greylist-max-o _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/icu/impl/TextTrieMap;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/impl/TextTrieMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 251
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V
    .registers 5
    .param p2, "text"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/List<",
            "TV;>;",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;>;)V"
        }
    .end annotation

    .line 254
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "children":Ljava/util/List;, "Ljava/util/List<Landroid/icu/impl/TextTrieMap<TV;>.Node;>;"
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    .line 256
    iput-object p3, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 257
    iput-object p4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 258
    return-void
.end method

.method private greylist-max-o add([CILjava/lang/Object;)V
    .registers 10
    .param p1, "text"    # [C
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CITV;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    array-length v0, p1

    if-ne v0, p2, :cond_c

    .line 328
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 329
    return-void

    .line 332
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 333
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 334
    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Landroid/icu/impl/TextTrieMap;->-$$Nest$smsubArray([CI)[C

    move-result-object v3

    invoke-direct {p0, v1, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    .line 335
    .local v0, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-void

    .line 340
    .end local v0    # "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_2d
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 341
    .local v0, "litr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/icu/impl/TextTrieMap<TV;>.Node;>;"
    :goto_33
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 342
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TextTrieMap$Node;

    .line 343
    .local v2, "next":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    aget-char v3, p1, p2

    iget-object v4, v2, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    if-ge v3, v4, :cond_4c

    .line 344
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 345
    goto :goto_6d

    .line 347
    :cond_4c
    aget-char v3, p1, p2

    iget-object v4, v2, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_6c

    .line 348
    invoke-direct {v2, p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->lenMatches([CI)I

    move-result v1

    .line 349
    .local v1, "matchLen":I
    iget-object v3, v2, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v3, v3

    if-ne v1, v3, :cond_63

    .line 351
    add-int v3, p2, v1

    invoke-direct {v2, p1, v3, p3}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    goto :goto_6b

    .line 354
    :cond_63
    invoke-direct {v2, v1}, Landroid/icu/impl/TextTrieMap$Node;->split(I)V

    .line 355
    add-int v3, p2, v1

    invoke-direct {v2, p1, v3, p3}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    .line 357
    :goto_6b
    return-void

    .line 359
    .end local v1    # "matchLen":I
    .end local v2    # "next":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_6c
    goto :goto_33

    .line 361
    :cond_6d
    :goto_6d
    new-instance v2, Landroid/icu/impl/TextTrieMap$Node;

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Landroid/icu/impl/TextTrieMap;->-$$Nest$smsubArray([CI)[C

    move-result-object v4

    invoke-direct {p0, v1, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method private greylist-max-o addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;TV;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 412
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_8

    .line 413
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object p1, v0

    .line 415
    :cond_8
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    return-object p1
.end method

.method private greylist-max-o lenMatches([CI)I
    .registers 8
    .param p1, "text"    # [C
    .param p2, "offset"    # I

    .line 386
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 387
    .local v0, "textLen":I
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v1, v1

    if-ge v1, v0, :cond_b

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v1, v1

    goto :goto_c

    :cond_b
    move v1, v0

    .line 388
    .local v1, "limit":I
    :goto_c
    const/4 v2, 0x0

    .line 389
    .local v2, "len":I
    :goto_d
    if-ge v2, v1, :cond_1d

    .line 390
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v3, v3, v2

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_1a

    .line 391
    goto :goto_1d

    .line 393
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 395
    :cond_1d
    :goto_1d
    return v2
.end method

.method private blacklist matchFollowing(Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$Output;)Z
    .registers 8
    .param p1, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .param p2, "output"    # Landroid/icu/impl/TextTrieMap$Output;

    .line 365
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    const/4 v0, 0x1

    .line 366
    .local v0, "matched":Z
    const/4 v1, 0x1

    .line 367
    .local v1, "idx":I
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v2, v2

    if-ge v1, v2, :cond_28

    .line 368
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    .line 369
    if-eqz p2, :cond_12

    .line 370
    const/4 v2, 0x1

    iput-boolean v2, p2, Landroid/icu/impl/TextTrieMap$Output;->partialMatch:Z

    .line 372
    :cond_12
    const/4 v0, 0x0

    .line 373
    goto :goto_28

    .line 375
    :cond_14
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v2

    .line 376
    .local v2, "ch":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v4, v1

    if-eq v3, v4, :cond_24

    .line 377
    const/4 v0, 0x0

    .line 378
    goto :goto_28

    .line 380
    :cond_24
    nop

    .end local v2    # "ch":Ljava/lang/Character;
    add-int/lit8 v1, v1, 0x1

    .line 381
    goto :goto_2

    .line 382
    :cond_28
    :goto_28
    return v0
.end method

.method private greylist-max-o split(I)V
    .registers 7
    .param p1, "offset"    # I

    .line 400
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    invoke-static {v0, p1}, Landroid/icu/impl/TextTrieMap;->-$$Nest$smsubArray([CI)[C

    move-result-object v0

    .line 401
    .local v0, "childText":[C
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/icu/impl/TextTrieMap;->-$$Nest$smsubArray([CII)[C

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    .line 404
    new-instance v1, Landroid/icu/impl/TextTrieMap$Node;

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    .line 405
    .local v1, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 407
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 408
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V
    .registers 6
    .param p1, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "TV;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 274
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 276
    :cond_13
    invoke-static {v0}, Landroid/icu/impl/TextTrieMap;->-$$Nest$smtoCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    .line 277
    return-void
.end method

.method public greylist-max-o charCount()I
    .registers 2

    .line 261
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_9

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v0, v0

    :goto_9
    return v0
.end method

.method public blacklist findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$Output;)Landroid/icu/impl/TextTrieMap$Node;
    .registers 10
    .param p1, "chitr"    # Landroid/icu/impl/TextTrieMap$CharIterator;
    .param p2, "output"    # Landroid/icu/impl/TextTrieMap$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "Landroid/icu/impl/TextTrieMap$Output;",
            ")",
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation

    .line 280
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 281
    return-object v1

    .line 283
    :cond_6
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 284
    if-eqz p2, :cond_11

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/icu/impl/TextTrieMap$Output;->partialMatch:Z

    .line 287
    :cond_11
    return-object v1

    .line 289
    :cond_12
    const/4 v0, 0x0

    .line 290
    .local v0, "match":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v1

    .line 291
    .local v1, "ch":Ljava/lang/Character;
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TextTrieMap$Node;

    .line 292
    .local v3, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    if-ge v4, v5, :cond_35

    .line 293
    goto :goto_48

    .line 295
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_47

    .line 296
    invoke-direct {v3, p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->matchFollowing(Landroid/icu/impl/TextTrieMap$CharIterator;Landroid/icu/impl/TextTrieMap$Output;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 297
    move-object v0, v3

    goto :goto_48

    .line 301
    .end local v3    # "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    :cond_47
    goto :goto_1d

    .line 302
    :cond_48
    :goto_48
    return-object v0
.end method

.method public blacklist putLeadCodePoints(Landroid/icu/text/UnicodeSet;)V
    .registers 10
    .param p1, "output"    # Landroid/icu/text/UnicodeSet;

    .line 306
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-nez v0, :cond_5

    .line 307
    return-void

    .line 309
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap$Node;

    .line 310
    .local v1, "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v2, v1, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    .line 311
    .local v2, "c0":C
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_26

    .line 312
    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_59

    .line 313
    :cond_26
    invoke-virtual {v1}, Landroid/icu/impl/TextTrieMap$Node;->charCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_37

    .line 314
    iget-object v4, v1, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    invoke-static {v4, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_59

    .line 315
    :cond_37
    iget-object v4, v1, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-eqz v4, :cond_59

    .line 317
    iget-object v4, v1, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/TextTrieMap$Node;

    .line 318
    .local v5, "grandchild":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v6, v5, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v6, v6, v3

    .line 319
    .local v6, "c1":C
    invoke-static {v2, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    .line 320
    .local v7, "cp":I
    invoke-virtual {p1, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 321
    .end local v5    # "grandchild":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .end local v6    # "c1":C
    .end local v7    # "cp":I
    goto :goto_41

    .line 323
    .end local v1    # "child":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    .end local v2    # "c0":C
    :cond_59
    :goto_59
    goto :goto_b

    .line 324
    :cond_5a
    return-void
.end method

.method public greylist-max-o values()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Landroid/icu/impl/TextTrieMap$Node;, "Landroid/icu/impl/TextTrieMap<TV;>.Node;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    if-nez v0, :cond_6

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
