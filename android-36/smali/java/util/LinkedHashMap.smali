.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/SequencedMap;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$Entry;,
        Ljava/util/LinkedHashMap$LinkedKeySet;,
        Ljava/util/LinkedHashMap$LinkedValues;,
        Ljava/util/LinkedHashMap$LinkedEntrySet;,
        Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;,
        Ljava/util/LinkedHashMap$LinkedEntryIterator;,
        Ljava/util/LinkedHashMap$LinkedValueIterator;,
        Ljava/util/LinkedHashMap$LinkedKeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;",
        "Ljava/util/SequencedMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final blacklist PUT_FIRST:I = 0x1

.field static final blacklist PUT_LAST:I = 0x2

.field static final blacklist PUT_NORM:I = 0x0

.field private static final whitelist serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field final greylist-max-r accessOrder:Z

.field transient blacklist head:Ljava/util/LinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient blacklist putMode:I

.field transient blacklist tail:Ljava/util/LinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 482
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 483
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 484
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 473
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 474
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 475
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 457
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 458
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 459
    return-void
.end method

.method public constructor whitelist test-api <init>(IFZ)V
    .registers 5
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "accessOrder"    # Z

    .line 515
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 516
    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 517
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 496
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 497
    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    .line 498
    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 499
    return-void
.end method

.method private blacklist linkNodeAtEnd(Ljava/util/LinkedHashMap$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 256
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .line 257
    .local v0, "first":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .line 258
    if-nez v0, :cond_e

    .line 259
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_12

    .line 261
    :cond_e
    iput-object v0, p1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 262
    iput-object p1, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 264
    .end local v0    # "first":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_12
    goto :goto_20

    .line 265
    :cond_13
    iget-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .line 266
    .local v0, "last":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .line 267
    if-nez v0, :cond_1c

    .line 268
    iput-object p1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_20

    .line 270
    :cond_1c
    iput-object v0, p1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 271
    iput-object p1, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 274
    .end local v0    # "last":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_20
    return-void
.end method

.method public static whitelist test-api newLinkedHashMap(I)Ljava/util/LinkedHashMap;
    .registers 4
    .param p0, "numMappings"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1113
    if-ltz p0, :cond_c

    .line 1116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/util/HashMap;->calculateHashMapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0

    .line 1114
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative number of mappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist nsee(Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$Node<",
            "TK1;TV1;>;)",
            "Ljava/util/HashMap$Node<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 684
    .local p0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK1;TV1;>;"
    if-eqz p0, :cond_3

    .line 687
    return-object p0

    .line 685
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private blacklist transferLinks(Ljava/util/LinkedHashMap$Entry;Ljava/util/LinkedHashMap$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;",
            "Ljava/util/LinkedHashMap$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 279
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "src":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .local p2, "dst":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v0, p1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    iput-object v0, p2, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 280
    .local v0, "b":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v1, p1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    iput-object v1, p2, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 281
    .local v1, "a":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    if-nez v0, :cond_d

    .line 282
    iput-object p2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_f

    .line 284
    :cond_d
    iput-object p2, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 285
    :goto_f
    if-nez v1, :cond_14

    .line 286
    iput-object p2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_16

    .line 288
    :cond_14
    iput-object p2, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 289
    :goto_16
    return-void
.end method


# virtual methods
.method greylist-max-o afterNodeAccess(Ljava/util/HashMap$Node;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 357
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    if-nez v0, :cond_3b

    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_3b

    :cond_f
    iget-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    move-object v1, v0

    .local v1, "last":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    if-eq v0, p1, :cond_3b

    .line 359
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$Entry;

    .line 360
    .local v0, "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .local v4, "b":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v5, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 361
    .local v5, "a":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iput-object v2, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 362
    if-nez v4, :cond_22

    .line 363
    iput-object v5, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_24

    .line 365
    :cond_22
    iput-object v5, v4, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 366
    :goto_24
    if-eqz v5, :cond_29

    .line 367
    iput-object v4, v5, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_2a

    .line 369
    :cond_29
    move-object v1, v4

    .line 370
    :goto_2a
    if-nez v1, :cond_2f

    .line 371
    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_33

    .line 373
    :cond_2f
    iput-object v1, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 374
    iput-object v0, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 376
    :goto_33
    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .line 377
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 378
    .end local v0    # "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v4    # "b":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v5    # "a":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    goto :goto_6a

    .end local v1    # "last":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_3b
    iget v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    if-ne v0, v3, :cond_6a

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    move-object v1, v0

    .local v1, "first":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    if-eq v0, p1, :cond_6a

    .line 380
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$Entry;

    .line 381
    .restart local v0    # "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v4, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .restart local v4    # "b":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v5, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 382
    .restart local v5    # "a":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iput-object v2, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 383
    if-nez v5, :cond_52

    .line 384
    iput-object v4, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_54

    .line 386
    :cond_52
    iput-object v4, v5, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 387
    :goto_54
    if-eqz v4, :cond_59

    .line 388
    iput-object v5, v4, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_5a

    .line 390
    :cond_59
    move-object v1, v5

    .line 391
    :goto_5a
    if-nez v1, :cond_5f

    .line 392
    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_63

    .line 394
    :cond_5f
    iput-object v1, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 395
    iput-object v0, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 397
    :goto_63
    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .line 398
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 400
    .end local v0    # "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v1    # "first":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v4    # "b":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v5    # "a":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_6a
    :goto_6a
    return-void
.end method

.method greylist-max-o afterNodeInsertion(Z)V
    .registers 10
    .param p1, "evict"    # Z

    .line 342
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    if-eqz p1, :cond_1a

    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    move-object v1, v0

    .local v1, "first":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 343
    iget-object v4, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    .line 344
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v4}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 346
    .end local v1    # "first":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    :cond_1a
    return-void
.end method

.method greylist-max-o afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$Entry;

    .line 328
    .local v0, "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .local v1, "b":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    iget-object v2, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 329
    .local v2, "a":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    iput-object v3, v0, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 330
    if-nez v1, :cond_11

    .line 331
    iput-object v2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    goto :goto_13

    .line 333
    :cond_11
    iput-object v2, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    .line 334
    :goto_13
    if-nez v2, :cond_18

    .line 335
    iput-object v1, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    goto :goto_1a

    .line 337
    :cond_18
    iput-object v1, v2, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    .line 338
    :goto_1a
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 577
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .line 579
    return-void
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 529
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .local v0, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_16

    .line 530
    iget-object v1, v0, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    .line 531
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eq v1, p1, :cond_14

    if-eqz p1, :cond_11

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_14

    .line 529
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_11
    iget-object v0, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_2

    .line 532
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_14
    :goto_14
    const/4 v2, 0x1

    return v2

    .line 534
    .end local v0    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public greylist test-api eldest()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 590
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 916
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->sequencedEntrySet()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1018
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_21

    .line 1020
    iget v0, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 1022
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_6
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_16

    if-eqz v1, :cond_16

    .line 1023
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1022
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_6

    .line 1024
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_16
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_1b

    .line 1026
    return-void

    .line 1025
    :cond_1b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1019
    .end local v0    # "mc":I
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 554
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    .line 555
    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_9
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_10

    .line 557
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 558
    :cond_10
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 566
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_8

    .line 567
    return-object p2

    .line 568
    :cond_8
    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_f

    .line 569
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 570
    :cond_f
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method greylist-max-o internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .local v0, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_11

    .line 438
    iget-object v1, v0, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 439
    iget-object v1, v0, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 437
    iget-object v0, v0, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_2

    .line 441
    .end local v0    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_11
    return-void
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 658
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method final blacklist keysToArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 691
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->keysToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final blacklist keysToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 8
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;Z)[TT;"
        }
    .end annotation

    .line 695
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .line 696
    .local v0, "r":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 697
    .local v1, "idx":I
    if-eqz p2, :cond_13

    .line 698
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v2, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_6
    if-eqz v2, :cond_12

    .line 699
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "idx":I
    .local v3, "idx":I
    iget-object v4, v2, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 698
    iget-object v2, v2, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    move v1, v3

    goto :goto_6

    .end local v2    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v3    # "idx":I
    .restart local v1    # "idx":I
    :cond_12
    goto :goto_21

    .line 702
    :cond_13
    iget-object v2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .restart local v2    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_15
    if-eqz v2, :cond_21

    .line 703
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "idx":I
    .restart local v3    # "idx":I
    iget-object v4, v2, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 702
    iget-object v2, v2, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    move v1, v3

    goto :goto_15

    .line 706
    .end local v2    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v3    # "idx":I
    .restart local v1    # "idx":I
    :cond_21
    :goto_21
    return-object p1
.end method

.method greylist-max-o newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$Entry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 301
    .local v0, "p":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;->linkNodeAtEnd(Ljava/util/LinkedHashMap$Entry;)V

    .line 302
    return-object v0
.end method

.method greylist-max-o newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 315
    .local v0, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;->linkNodeAtEnd(Ljava/util/LinkedHashMap$Entry;)V

    .line 316
    return-object v0
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 412
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 413
    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_b

    .line 415
    iput v1, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 413
    return-object v0

    .line 415
    :catchall_b
    move-exception v0

    iput v1, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 416
    throw v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 429
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    iput v0, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 430
    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_b

    .line 432
    iput v1, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 430
    return-object v0

    .line 432
    :catchall_b
    move-exception v0

    iput v1, p0, Ljava/util/LinkedHashMap;->putMode:I

    .line 433
    throw v0
.end method

.method greylist-max-o reinitialize()V
    .registers 2

    .line 294
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Ljava/util/HashMap;->reinitialize()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    iput-object v0, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .line 296
    return-void
.end method

.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 635
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1029
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_24

    .line 1031
    iget v0, p0, Ljava/util/LinkedHashMap;->modCount:I

    .line 1033
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_6
    iget v2, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_19

    if-eqz v1, :cond_19

    .line 1034
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    .line 1033
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    goto :goto_6

    .line 1035
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_19
    iget v1, p0, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_1e

    .line 1037
    return-void

    .line 1036
    :cond_1e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1030
    .end local v0    # "mc":I
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 306
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$Entry;

    .line 307
    .local v0, "q":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    new-instance v1, Ljava/util/LinkedHashMap$Entry;

    iget v2, v0, Ljava/util/LinkedHashMap$Entry;->hash:I

    iget-object v3, v0, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p2}, Ljava/util/LinkedHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 309
    .local v1, "t":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;->transferLinks(Ljava/util/LinkedHashMap$Entry;Ljava/util/LinkedHashMap$Entry;)V

    .line 310
    return-object v1
.end method

.method greylist-max-o replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$Entry;

    .line 321
    .local v0, "q":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    new-instance v1, Ljava/util/HashMap$TreeNode;

    iget v2, v0, Ljava/util/LinkedHashMap$Entry;->hash:I

    iget-object v3, v0, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p2}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 322
    .local v1, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;->transferLinks(Ljava/util/LinkedHashMap$Entry;Ljava/util/LinkedHashMap$Entry;)V

    .line 323
    return-object v1
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1132
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public whitelist test-api sequencedEntrySet()Ljava/util/SequencedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 929
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->entrySet:Ljava/util/Set;

    .line 930
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_d

    .line 931
    new-instance v1, Ljava/util/LinkedHashMap$LinkedEntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/LinkedHashMap$LinkedEntrySet;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 932
    .local v1, "ses":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v1, p0, Ljava/util/LinkedHashMap;->entrySet:Ljava/util/Set;

    .line 933
    return-object v1

    .line 937
    .end local v1    # "ses":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_d
    move-object v1, v0

    check-cast v1, Ljava/util/SequencedSet;

    return-object v1
.end method

.method public whitelist test-api sequencedKeySet()Ljava/util/SequencedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TK;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    .line 672
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_d

    .line 673
    new-instance v1, Ljava/util/LinkedHashMap$LinkedKeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/LinkedHashMap$LinkedKeySet;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 674
    .local v1, "sks":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<TK;>;"
    iput-object v1, p0, Ljava/util/LinkedHashMap;->keySet:Ljava/util/Set;

    .line 675
    return-object v1

    .line 679
    .end local v1    # "sks":Ljava/util/SequencedSet;, "Ljava/util/SequencedSet<TK;>;"
    :cond_d
    move-object v1, v0

    check-cast v1, Ljava/util/SequencedSet;

    return-object v1
.end method

.method public whitelist test-api sequencedValues()Ljava/util/SequencedCollection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TV;>;"
        }
    .end annotation

    .line 822
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap;->values:Ljava/util/Collection;

    .line 823
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_d

    .line 824
    new-instance v1, Ljava/util/LinkedHashMap$LinkedValues;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/LinkedHashMap$LinkedValues;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 825
    .local v1, "svs":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TV;>;"
    iput-object v1, p0, Ljava/util/LinkedHashMap;->values:Ljava/util/Collection;

    .line 826
    return-object v1

    .line 830
    .end local v1    # "svs":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TV;>;"
    :cond_d
    move-object v1, v0

    check-cast v1, Ljava/util/SequencedCollection;

    return-object v1
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 809
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->sequencedValues()Ljava/util/SequencedCollection;

    move-result-object v0

    return-object v0
.end method

.method final blacklist valuesToArray([Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 8
    .param p2, "reversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;Z)[TT;"
        }
    .end annotation

    .line 710
    .local p0, "this":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .line 711
    .local v0, "r":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 712
    .local v1, "idx":I
    if-eqz p2, :cond_13

    .line 713
    iget-object v2, p0, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v2, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_6
    if-eqz v2, :cond_12

    .line 714
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "idx":I
    .local v3, "idx":I
    iget-object v4, v2, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 713
    iget-object v2, v2, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    move v1, v3

    goto :goto_6

    .end local v2    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v3    # "idx":I
    .restart local v1    # "idx":I
    :cond_12
    goto :goto_21

    .line 717
    :cond_13
    iget-object v2, p0, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$Entry;

    .restart local v2    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_15
    if-eqz v2, :cond_21

    .line 718
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "idx":I
    .restart local v3    # "idx":I
    iget-object v4, v2, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 717
    iget-object v2, v2, Ljava/util/LinkedHashMap$Entry;->after:Ljava/util/LinkedHashMap$Entry;

    move v1, v3

    goto :goto_15

    .line 721
    .end local v2    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    .end local v3    # "idx":I
    .restart local v1    # "idx":I
    :cond_21
    :goto_21
    return-object p1
.end method
