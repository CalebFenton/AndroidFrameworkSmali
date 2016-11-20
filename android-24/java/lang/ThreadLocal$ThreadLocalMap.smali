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
.field private static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private size:I

.field private table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

.field private threshold:I


# direct methods
.method static synthetic -wrap0(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->remove(Ljava/lang/ThreadLocal;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .locals 10
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@0
    .prologue
    .line 342
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 295
    const/4 v8, 0x0

    #@4
    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@6
    .line 343
    iget-object v6, p1, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@8
    .line 344
    .local v6, "parentTable":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v5, v6

    #@9
    .line 345
    .local v5, "len":I
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    #@c
    .line 346
    new-array v8, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@e
    iput-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@10
    .line 348
    const/4 v3, 0x0

    #@11
    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_2

    #@13
    .line 349
    aget-object v1, v6, v3

    #@15
    .line 350
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_1

    #@17
    .line 351
    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Ljava/lang/ThreadLocal;

    #@1d
    .line 352
    .local v4, "key":Ljava/lang/ThreadLocal;
    if-eqz v4, :cond_1

    #@1f
    .line 353
    iget-object v8, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@21
    invoke-virtual {v4, v8}, Ljava/lang/ThreadLocal;->childValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v7

    #@25
    .line 354
    .local v7, "value":Ljava/lang/Object;
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@27
    invoke-direct {v0, v4, v7}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@2a
    .line 355
    .local v0, "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@2d
    move-result v8

    #@2e
    add-int/lit8 v9, v5, -0x1

    #@30
    and-int v2, v8, v9

    #@32
    .line 356
    .local v2, "h":I
    :goto_1
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@34
    aget-object v8, v8, v2

    #@36
    if-eqz v8, :cond_0

    #@38
    .line 357
    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@3b
    move-result v2

    #@3c
    goto :goto_1

    #@3d
    .line 358
    :cond_0
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3f
    aput-object v0, v8, v2

    #@41
    .line 359
    iget v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@43
    add-int/lit8 v8, v8, 0x1

    #@45
    iput v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@47
    .line 348
    .end local v0    # "c":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "h":I
    .end local v4    # "key":Ljava/lang/ThreadLocal;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 342
    .end local v1    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal$ThreadLocalMap;)V
    .locals 0
    .param p1, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 4
    .param p1, "firstKey"    # Ljava/lang/ThreadLocal;
    .param p2, "firstValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/16 v3, 0x10

    #@2
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 295
    const/4 v1, 0x0

    #@6
    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@8
    .line 329
    new-array v1, v3, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@a
    iput-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@c
    .line 330
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@f
    move-result v1

    #@10
    and-int/lit8 v0, v1, 0xf

    #@12
    .line 331
    .local v0, "i":I
    iget-object v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@14
    new-instance v2, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@16
    invoke-direct {v2, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@19
    aput-object v2, v1, v0

    #@1b
    .line 332
    const/4 v1, 0x1

    #@1c
    iput v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@1e
    .line 333
    invoke-direct {p0, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    #@21
    .line 328
    return-void
.end method

.method private cleanSomeSlots(II)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 612
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v2, 0x0

    #@1
    .line 613
    .local v2, "removed":Z
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3
    .line 614
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v3

    #@4
    .line 616
    .local v1, "len":I
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@7
    move-result p1

    #@8
    .line 617
    aget-object v0, v3, p1

    #@a
    .line 618
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_1

    #@c
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    if-nez v4, :cond_1

    #@12
    .line 619
    move p2, v1

    #@13
    .line 620
    const/4 v2, 0x1

    #@14
    .line 621
    invoke-direct {p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    #@17
    move-result p1

    #@18
    .line 623
    :cond_1
    ushr-int/lit8 p2, p2, 0x1

    #@1a
    if-nez p2, :cond_0

    #@1c
    .line 624
    return v2
.end method

.method private expungeStaleEntries()V
    .locals 5

    #@0
    .prologue
    .line 675
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@2
    .line 676
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v3

    #@3
    .line 677
    .local v2, "len":I
    const/4 v1, 0x0

    #@4
    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@6
    .line 678
    aget-object v0, v3, v1

    #@8
    .line 679
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@d
    move-result-object v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 680
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    #@13
    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 674
    .end local v0    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :cond_1
    return-void
.end method

.method private expungeStaleEntry(I)I
    .locals 9
    .param p1, "staleSlot"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v8, 0x0

    #@1
    .line 552
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3
    .line 553
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v4, v5

    #@4
    .line 556
    .local v4, "len":I
    aget-object v6, v5, p1

    #@6
    iput-object v8, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@8
    .line 557
    aput-object v8, v5, p1

    #@a
    .line 558
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@c
    add-int/lit8 v6, v6, -0x1

    #@e
    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@10
    .line 563
    invoke-static {p1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@13
    move-result v2

    #@14
    .line 564
    .local v2, "i":I
    :goto_0
    aget-object v0, v5, v2

    #@16
    .line 563
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_3

    #@18
    .line 566
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/lang/ThreadLocal;

    #@1e
    .line 567
    .local v3, "k":Ljava/lang/ThreadLocal;
    if-nez v3, :cond_1

    #@20
    .line 568
    iput-object v8, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@22
    .line 569
    aput-object v8, v5, v2

    #@24
    .line 570
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@26
    add-int/lit8 v6, v6, -0x1

    #@28
    iput v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@2a
    .line 565
    :cond_0
    :goto_1
    invoke-static {v2, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@2d
    move-result v2

    #@2e
    goto :goto_0

    #@2f
    .line 572
    :cond_1
    invoke-static {v3}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@32
    move-result v6

    #@33
    add-int/lit8 v7, v4, -0x1

    #@35
    and-int v1, v6, v7

    #@37
    .line 573
    .local v1, "h":I
    if-eq v1, v2, :cond_0

    #@39
    .line 574
    aput-object v8, v5, v2

    #@3b
    .line 578
    :goto_2
    aget-object v6, v5, v1

    #@3d
    if-eqz v6, :cond_2

    #@3f
    .line 579
    invoke-static {v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@42
    move-result v1

    #@43
    goto :goto_2

    #@44
    .line 580
    :cond_2
    aput-object v0, v5, v1

    #@46
    goto :goto_1

    #@47
    .line 584
    .end local v1    # "h":I
    .end local v3    # "k":Ljava/lang/ThreadLocal;
    :cond_3
    return v2
.end method

.method private getEntry(Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    #@0
    .prologue
    .line 376
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@3
    move-result v2

    #@4
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@6
    array-length v3, v3

    #@7
    add-int/lit8 v3, v3, -0x1

    #@9
    and-int v1, v2, v3

    #@b
    .line 377
    .local v1, "i":I
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@d
    aget-object v0, v2, v1

    #@f
    .line 378
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    if-ne v2, p1, :cond_0

    #@17
    .line 379
    return-object v0

    #@18
    .line 381
    :cond_0
    invoke-direct {p0, p1, v1, v0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method private getEntryAfterMiss(Ljava/lang/ThreadLocal;ILjava/lang/ThreadLocal$ThreadLocalMap$Entry;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "i"    # I
    .param p3, "e"    # Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v3, 0x0

    #@1
    .line 394
    iget-object v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3
    .line 395
    .local v2, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v1, v2

    #@4
    .line 397
    .local v1, "len":I
    :goto_0
    if-eqz p3, :cond_2

    #@6
    .line 398
    invoke-virtual {p3}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/ThreadLocal;

    #@c
    .line 399
    .local v0, "k":Ljava/lang/ThreadLocal;
    if-ne v0, p1, :cond_0

    #@e
    .line 400
    return-object p3

    #@f
    .line 401
    :cond_0
    if-nez v0, :cond_1

    #@11
    .line 402
    invoke-direct {p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    #@14
    .line 405
    :goto_1
    aget-object p3, v2, p2

    #@16
    goto :goto_0

    #@17
    .line 404
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@1a
    move-result p2

    #@1b
    goto :goto_1

    #@1c
    .line 407
    .end local v0    # "k":Ljava/lang/ThreadLocal;
    :cond_2
    return-object v3
.end method

.method private static nextIndex(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    #@0
    .prologue
    .line 313
    add-int/lit8 v0, p0, 0x1

    #@2
    if-ge v0, p1, :cond_0

    #@4
    add-int/lit8 v0, p0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private static prevIndex(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    #@0
    .prologue
    .line 320
    add-int/lit8 v0, p0, -0x1

    #@2
    if-ltz v0, :cond_0

    #@4
    add-int/lit8 v0, p0, -0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@9
    goto :goto_0
.end method

.method private rehash()V
    .locals 3

    #@0
    .prologue
    .line 633
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntries()V

    #@3
    .line 636
    iget v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@5
    iget v1, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    #@7
    iget v2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    #@9
    div-int/lit8 v2, v2, 0x4

    #@b
    sub-int/2addr v1, v2

    #@c
    if-lt v0, v1, :cond_0

    #@e
    .line 637
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->resize()V

    #@11
    .line 632
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/ThreadLocal;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/ThreadLocal;

    #@0
    .prologue
    .line 453
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    iget-object v3, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@2
    .line 454
    .local v3, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v2, v3

    #@3
    .line 455
    .local v2, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@6
    move-result v4

    #@7
    add-int/lit8 v5, v2, -0x1

    #@9
    and-int v1, v4, v5

    #@b
    .line 456
    .local v1, "i":I
    aget-object v0, v3, v1

    #@d
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_0
    if-eqz v0, :cond_1

    #@f
    .line 459
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    if-ne v4, p1, :cond_0

    #@15
    .line 460
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->clear()V

    #@18
    .line 461
    invoke-direct {p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    #@1b
    .line 462
    return-void

    #@1c
    .line 458
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@1f
    move-result v1

    #@20
    aget-object v0, v3, v1

    #@22
    goto :goto_0

    #@23
    .line 452
    :cond_1
    return-void
.end method

.method private replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V
    .locals 8
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "staleSlot"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v7, 0x0

    #@1
    .line 484
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3
    .line 485
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v3, v5

    #@4
    .line 492
    .local v3, "len":I
    move v4, p3

    #@5
    .line 493
    .local v4, "slotToExpunge":I
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    #@8
    move-result v1

    #@9
    .line 494
    .local v1, "i":I
    :goto_0
    aget-object v0, v5, v1

    #@b
    .line 493
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_1

    #@d
    .line 496
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    if-nez v6, :cond_0

    #@13
    .line 497
    move v4, v1

    #@14
    .line 495
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->prevIndex(II)I

    #@17
    move-result v1

    #@18
    goto :goto_0

    #@19
    .line 501
    :cond_1
    invoke-static {p3, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@1c
    move-result v1

    #@1d
    .line 502
    :goto_1
    aget-object v0, v5, v1

    #@1f
    .line 501
    if-eqz v0, :cond_5

    #@21
    .line 504
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/ThreadLocal;

    #@27
    .line 511
    .local v2, "k":Ljava/lang/ThreadLocal;
    if-ne v2, p1, :cond_3

    #@29
    .line 512
    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@2b
    .line 514
    aget-object v6, v5, p3

    #@2d
    aput-object v6, v5, v1

    #@2f
    .line 515
    aput-object v0, v5, p3

    #@31
    .line 518
    if-ne v4, p3, :cond_2

    #@33
    .line 519
    move v4, v1

    #@34
    .line 520
    :cond_2
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    #@37
    move-result v6

    #@38
    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    #@3b
    .line 521
    return-void

    #@3c
    .line 527
    :cond_3
    if-nez v2, :cond_4

    #@3e
    if-ne v4, p3, :cond_4

    #@40
    .line 528
    move v4, v1

    #@41
    .line 503
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@44
    move-result v1

    #@45
    goto :goto_1

    #@46
    .line 532
    .end local v2    # "k":Ljava/lang/ThreadLocal;
    :cond_5
    aget-object v6, v5, p3

    #@48
    iput-object v7, v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@4a
    .line 533
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@4c
    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@4f
    aput-object v6, v5, p3

    #@51
    .line 536
    if-eq v4, p3, :cond_6

    #@53
    .line 537
    invoke-direct {p0, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->expungeStaleEntry(I)I

    #@56
    move-result v6

    #@57
    invoke-direct {p0, v6, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    #@5a
    .line 483
    :cond_6
    return-void
.end method

.method private resize()V
    .locals 12

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    const/4 v11, 0x0

    #@1
    .line 644
    iget-object v8, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3
    .line 645
    .local v8, "oldTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v7, v8

    #@4
    .line 646
    .local v7, "oldLen":I
    mul-int/lit8 v5, v7, 0x2

    #@6
    .line 647
    .local v5, "newLen":I
    new-array v6, v5, [Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@8
    .line 648
    .local v6, "newTab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    const/4 v0, 0x0

    #@9
    .line 650
    .local v0, "count":I
    const/4 v3, 0x0

    #@a
    .local v3, "j":I
    :goto_0
    if-ge v3, v7, :cond_3

    #@c
    .line 651
    aget-object v1, v8, v3

    #@e
    .line 652
    .local v1, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v1, :cond_0

    #@10
    .line 653
    invoke-virtual {v1}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Ljava/lang/ThreadLocal;

    #@16
    .line 654
    .local v4, "k":Ljava/lang/ThreadLocal;
    if-nez v4, :cond_1

    #@18
    .line 655
    iput-object v11, v1, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@1a
    .line 650
    .end local v4    # "k":Ljava/lang/ThreadLocal;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 657
    .restart local v4    # "k":Ljava/lang/ThreadLocal;
    :cond_1
    invoke-static {v4}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@20
    move-result v9

    #@21
    add-int/lit8 v10, v5, -0x1

    #@23
    and-int v2, v9, v10

    #@25
    .line 658
    .local v2, "h":I
    :goto_2
    aget-object v9, v6, v2

    #@27
    if-eqz v9, :cond_2

    #@29
    .line 659
    invoke-static {v2, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@2c
    move-result v2

    #@2d
    goto :goto_2

    #@2e
    .line 660
    :cond_2
    aput-object v1, v6, v2

    #@30
    .line 661
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 666
    .end local v1    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "h":I
    .end local v4    # "k":Ljava/lang/ThreadLocal;
    :cond_3
    invoke-direct {p0, v5}, Ljava/lang/ThreadLocal$ThreadLocalMap;->setThreshold(I)V

    #@36
    .line 667
    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@38
    .line 668
    iput-object v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@3a
    .line 643
    return-void
.end method

.method private set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/ThreadLocal;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 423
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    iget-object v5, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->table:[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@2
    .line 424
    .local v5, "tab":[Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    array-length v3, v5

    #@3
    .line 425
    .local v3, "len":I
    invoke-static {p1}, Ljava/lang/ThreadLocal;->-get0(Ljava/lang/ThreadLocal;)I

    #@6
    move-result v6

    #@7
    add-int/lit8 v7, v3, -0x1

    #@9
    and-int v1, v6, v7

    #@b
    .line 427
    .local v1, "i":I
    aget-object v0, v5, v1

    #@d
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    :goto_0
    if-eqz v0, :cond_2

    #@f
    .line 430
    invoke-virtual {v0}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->get()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/ThreadLocal;

    #@15
    .line 432
    .local v2, "k":Ljava/lang/ThreadLocal;
    if-ne v2, p1, :cond_0

    #@17
    .line 433
    iput-object p2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@19
    .line 434
    return-void

    #@1a
    .line 437
    :cond_0
    if-nez v2, :cond_1

    #@1c
    .line 438
    invoke-direct {p0, p1, p2, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->replaceStaleEntry(Ljava/lang/ThreadLocal;Ljava/lang/Object;I)V

    #@1f
    .line 439
    return-void

    #@20
    .line 429
    :cond_1
    invoke-static {v1, v3}, Ljava/lang/ThreadLocal$ThreadLocalMap;->nextIndex(II)I

    #@23
    move-result v1

    #@24
    aget-object v0, v5, v1

    #@26
    goto :goto_0

    #@27
    .line 443
    .end local v2    # "k":Ljava/lang/ThreadLocal;
    :cond_2
    new-instance v6, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    #@29
    invoke-direct {v6, p1, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@2c
    aput-object v6, v5, v1

    #@2e
    .line 444
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@30
    add-int/lit8 v4, v6, 0x1

    #@32
    iput v4, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->size:I

    #@34
    .line 445
    .local v4, "sz":I
    invoke-direct {p0, v1, v4}, Ljava/lang/ThreadLocal$ThreadLocalMap;->cleanSomeSlots(II)Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_3

    #@3a
    iget v6, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    #@3c
    if-lt v4, v6, :cond_3

    #@3e
    .line 446
    invoke-direct {p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->rehash()V

    #@41
    .line 416
    :cond_3
    return-void
.end method

.method private setThreshold(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 306
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap;"
    mul-int/lit8 v0, p1, 0x2

    #@2
    div-int/lit8 v0, v0, 0x3

    #@4
    iput v0, p0, Ljava/lang/ThreadLocal$ThreadLocalMap;->threshold:I

    #@6
    .line 305
    return-void
.end method
