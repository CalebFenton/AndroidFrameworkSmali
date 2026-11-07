.class Ljava/lang/ThreadLocal$ThreadLocalMap;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadLocalMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    }
.end annotation


# static fields
.field private static final greylist-max-o INITIAL_CAPACITY:I = 0x10


# instance fields
.field private greylist-max-o size:I

.field private greylist-max-o table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

.field private greylist-max-o threshold:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetEntry(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremove(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->remove(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mset(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .registers 12
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 401
    iget-object v1, p1, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 402
    .local v1, "parentTable":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v1

    .line 403
    .local v2, "len":I
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 404
    new-array v3, v2, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 406
    array-length v3, v1

    :goto_11
    if-ge v0, v3, :cond_49

    aget-object v4, v1, v0

    .line 407
    .local v4, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v4, :cond_46

    .line 409
    invoke-virtual {v4}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ThreadLocal;

    .line 410
    .local v5, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    if-eqz v5, :cond_46

    .line 411
    iget-object v6, v4, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 412
    .local v6, "value":Ljava/lang/Object;
    new-instance v7, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v7, v5, v6}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 413
    .local v7, "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    invoke-static {v5}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v8

    add-int/lit8 v9, v2, -0x1

    and-int/2addr v8, v9

    .line 414
    .local v8, "h":I
    :goto_31
    iget-object v9, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v9, v9, v8

    if-eqz v9, :cond_3c

    .line 415
    invoke-static {v8, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v8

    goto :goto_31

    .line 416
    :cond_3c
    iget-object v9, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aput-object v7, v9, v8

    .line 417
    iget v9, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 406
    .end local v4    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v5    # "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v8    # "h":I
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 421
    :cond_49
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 7
    .param p2, "firstValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 386
    .local p1, "firstKey":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 387
    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    iput-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 388
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    .line 389
    .local v1, "i":I
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    new-instance v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v3, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v3, v2, v1

    .line 390
    const/4 v2, 0x1

    iput v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 391
    invoke-direct {p0, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 392
    return-void
.end method

.method private greylist-max-o cleanSomeSlots(II)Z
    .registers 8
    .param p1, "i"    # I
    .param p2, "n"    # I

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "removed":Z
    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 686
    .local v1, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v1

    .line 688
    .local v2, "len":I
    :cond_4
    invoke-static {p1, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p1

    .line 689
    aget-object v3, v1, p1

    .line 691
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v3, :cond_19

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 692
    move p2, v2

    .line 693
    const/4 v0, 0x1

    .line 694
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result p1

    .line 696
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_19
    ushr-int/lit8 v3, p2, 0x1

    move p2, v3

    if-nez v3, :cond_4

    .line 697
    return v0
.end method

.method private greylist-max-o expungeStaleEntries()V
    .registers 6

    .line 747
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 748
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 749
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    if-ge v2, v1, :cond_17

    .line 750
    aget-object v3, v0, v2

    .line 752
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v3, :cond_14

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 753
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 749
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 755
    .end local v2    # "j":I
    :cond_17
    return-void
.end method

.method private greylist-max-o expungeStaleEntry(I)I
    .registers 10
    .param p1, "staleSlot"    # I

    .line 624
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 625
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 628
    .local v1, "len":I
    aget-object v2, v0, p1

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 629
    aput-object v3, v0, p1

    .line 630
    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 635
    invoke-static {p1, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    .line 636
    .local v2, "i":I
    :goto_14
    aget-object v4, v0, v2

    move-object v5, v4

    .local v5, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v4, :cond_47

    .line 638
    invoke-virtual {v5}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ThreadLocal;

    .line 639
    .local v4, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-nez v4, :cond_2c

    .line 640
    iput-object v3, v5, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 641
    aput-object v3, v0, v2

    .line 642
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    goto :goto_42

    .line 644
    :cond_2c
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v6

    add-int/lit8 v7, v1, -0x1

    and-int/2addr v6, v7

    .line 645
    .local v6, "h":I
    if-eq v6, v2, :cond_42

    .line 646
    aput-object v3, v0, v2

    .line 650
    :goto_37
    aget-object v7, v0, v6

    if-eqz v7, :cond_40

    .line 651
    invoke-static {v6, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v6

    goto :goto_37

    .line 652
    :cond_40
    aput-object v5, v0, v6

    .line 637
    .end local v4    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    .end local v6    # "h":I
    :cond_42
    :goto_42
    invoke-static {v2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v2

    goto :goto_14

    .line 656
    :cond_47
    return v2
.end method

.method private greylist-max-o getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;)",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;"
        }
    .end annotation

    .line 441
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v0

    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 442
    .local v0, "i":I
    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    aget-object v1, v1, v0

    .line 444
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_17

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 445
    return-object v1

    .line 447
    :cond_17
    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .registers 8
    .param p2, "i"    # I
    .param p3, "e"    # Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;I",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;",
            ")",
            "Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;"
        }
    .end annotation

    .line 460
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 461
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 463
    .local v1, "len":I
    :goto_3
    const/4 v2, 0x0

    if-eqz p3, :cond_1e

    .line 465
    invoke-virtual {p3, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 466
    return-object p3

    .line 467
    :cond_d
    invoke-virtual {p3, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 468
    invoke-direct {p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    goto :goto_1b

    .line 470
    :cond_17
    invoke-static {p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result p2

    .line 471
    :goto_1b
    aget-object p3, v0, p2

    goto :goto_3

    .line 473
    :cond_1e
    return-object v2
.end method

.method private static greylist-max-o nextIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .line 371
    add-int/lit8 v0, p0, 0x1

    if-ge v0, p1, :cond_7

    add-int/lit8 v0, p0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static greylist-max-o prevIndex(II)I
    .registers 3
    .param p0, "i"    # I
    .param p1, "len"    # I

    .line 378
    add-int/lit8 v0, p0, -0x1

    if-ltz v0, :cond_7

    add-int/lit8 v0, p0, -0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v0, p1, -0x1

    :goto_9
    return v0
.end method

.method private greylist-max-o rehash()V
    .registers 4

    .line 706
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntries()V

    .line 709
    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    iget v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_11

    .line 710
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->resize()V

    .line 711
    :cond_11
    return-void
.end method

.method private greylist-max-o remove(Ljava/lang/ThreadLocal;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;)V"
        }
    .end annotation

    .line 521
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 522
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 523
    .local v1, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 524
    .local v2, "i":I
    aget-object v3, v0, v2

    .line 525
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_c
    if-eqz v3, :cond_23

    .line 528
    invoke-virtual {v3, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 529
    invoke-virtual {v3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->clear()V

    .line 530
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    .line 531
    return-void

    .line 526
    :cond_1b
    invoke-static {v2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v4

    move v2, v4

    aget-object v3, v0, v4

    goto :goto_c

    .line 534
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_23
    return-void
.end method

.method private greylist-max-o replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V
    .registers 11
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "staleSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 553
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 554
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 561
    .local v1, "len":I
    move v2, p3

    .line 562
    .local v2, "slotToExpunge":I
    invoke-static {p3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v3

    .line 563
    .local v3, "i":I
    :goto_8
    aget-object v4, v0, v3

    move-object v5, v4

    .local v5, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    const/4 v6, 0x0

    if-eqz v4, :cond_1a

    .line 566
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 567
    move v2, v3

    .line 564
    :cond_15
    invoke-static {v3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    move-result v3

    goto :goto_8

    .line 571
    .end local v3    # "i":I
    :cond_1a
    invoke-static {p3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v3

    .line 572
    .restart local v3    # "i":I
    :goto_1e
    aget-object v4, v0, v3

    move-object v5, v4

    if-eqz v4, :cond_4a

    .line 582
    invoke-virtual {v5, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 583
    iput-object p2, v5, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 585
    aget-object v4, v0, p3

    aput-object v4, v0, v3

    .line 586
    aput-object v5, v0, p3

    .line 589
    if-ne v2, p3, :cond_34

    .line 590
    move v2, v3

    .line 591
    :cond_34
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v4

    invoke-direct {p0, v4, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 592
    return-void

    .line 599
    :cond_3c
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    if-ne v2, p3, :cond_45

    .line 600
    move v2, v3

    .line 573
    :cond_45
    invoke-static {v3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v3

    goto :goto_1e

    .line 604
    .end local v3    # "i":I
    :cond_4a
    aget-object v3, v0, p3

    iput-object v6, v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 605
    new-instance v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v3, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v3, v0, p3

    .line 608
    if-eq v2, p3, :cond_5e

    .line 609
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    move-result v3

    invoke-direct {p0, v3, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    .line 610
    :cond_5e
    return-void
.end method

.method private greylist-max-o resize()V
    .registers 12

    .line 717
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 718
    .local v0, "oldTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 719
    .local v1, "oldLen":I
    mul-int/lit8 v2, v1, 0x2

    .line 720
    .local v2, "newLen":I
    new-array v3, v2, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 721
    .local v3, "newTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    const/4 v4, 0x0

    .line 723
    .local v4, "count":I
    array-length v5, v0

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_33

    aget-object v7, v0, v6

    .line 724
    .local v7, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v7, :cond_30

    .line 725
    invoke-virtual {v7}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ThreadLocal;

    .line 726
    .local v8, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    if-nez v8, :cond_1c

    .line 727
    const/4 v9, 0x0

    iput-object v9, v7, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    goto :goto_30

    .line 729
    :cond_1c
    invoke-static {v8}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    and-int/2addr v9, v10

    .line 730
    .local v9, "h":I
    :goto_23
    aget-object v10, v3, v9

    if-eqz v10, :cond_2c

    .line 731
    invoke-static {v9, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v9

    goto :goto_23

    .line 732
    :cond_2c
    aput-object v7, v3, v9

    .line 733
    add-int/lit8 v4, v4, 0x1

    .line 723
    .end local v7    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v8    # "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    .end local v9    # "h":I
    :cond_30
    :goto_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 738
    :cond_33
    invoke-direct {p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    .line 739
    iput v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 740
    iput-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 741
    return-void
.end method

.method private greylist-max-o set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 8
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 489
    .local p1, "key":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    iget-object v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    .line 490
    .local v0, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v0

    .line 491
    .local v1, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-$$Nest$fgetthreadLocalHashCode(Ljava/lang/ThreadLocal;)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 493
    .local v2, "i":I
    aget-object v3, v0, v2

    .line 494
    .local v3, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_c
    if-eqz v3, :cond_2a

    .line 500
    invoke-virtual {v3, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 501
    iput-object p2, v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 502
    return-void

    .line 505
    :cond_17
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 506
    invoke-direct {p0, p1, p2, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V

    .line 507
    return-void

    .line 495
    :cond_22
    invoke-static {v2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    move-result v4

    move v2, v4

    aget-object v3, v0, v4

    goto :goto_c

    .line 511
    .end local v3    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_2a
    new-instance v3, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    invoke-direct {v3, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 512
    iget v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    .line 513
    .local v3, "sz":I
    invoke-direct {p0, v2, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    move-result v4

    if-nez v4, :cond_44

    iget v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    if-lt v3, v4, :cond_44

    .line 514
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->rehash()V

    .line 515
    :cond_44
    return-void
.end method

.method private greylist-max-o setThreshold(I)V
    .registers 3
    .param p1, "len"    # I

    .line 364
    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    .line 365
    return-void
.end method


# virtual methods
.method blacklist size()I
    .registers 2

    .line 427
    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    return v0
.end method
