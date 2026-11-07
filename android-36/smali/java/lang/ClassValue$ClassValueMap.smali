.class Ljava/lang/ClassValue$ClassValueMap;
.super Ljava/util/WeakHashMap;
.source "ClassValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassValueMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "Ljava/lang/ClassValue$Identity;",
        "Ljava/lang/ClassValue$Entry<",
        "*>;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist CACHE_LOAD_LIMIT:I = 0x43

.field private static final blacklist INITIAL_ENTRIES:I = 0x20

.field private static final blacklist PROBE_LIMIT:I = 0x6


# instance fields
.field private blacklist cacheArray:[Ljava/lang/ClassValue$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist cacheLoad:I

.field private blacklist cacheLoadLimit:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 424
    const-class v0, Ljava/lang/ClassValue;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 437
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    .line 438
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->sizeCache(I)V

    .line 439
    return-void
.end method

.method private blacklist addToCache(Ljava/lang/ClassValue$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;)V"
        }
    .end annotation

    .line 718
    .local p1, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p1}, Ljava/lang/ClassValue$Entry;->classValueOrNull()Ljava/lang/ClassValue;

    move-result-object v0

    .line 719
    .local v0, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    if-eqz v0, :cond_9

    .line 720
    invoke-direct {p0, v0, p1}, Ljava/lang/ClassValue$ClassValueMap;->addToCache(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)V

    .line 721
    :cond_9
    return-void
.end method

.method private blacklist addToCache(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue<",
            "TT;>;",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;)V"
        }
    .end annotation

    .line 727
    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p2, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ClassValue$ClassValueMap;->getCache()[Ljava/lang/ClassValue$Entry;

    move-result-object v0

    .line 728
    .local v0, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 729
    .local v1, "mask":I
    iget v3, p1, Ljava/lang/ClassValue;->hashCodeForCache:I

    and-int/2addr v3, v1

    .line 730
    .local v3, "home":I
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, p2, v4}, Ljava/lang/ClassValue$ClassValueMap;->placeInCache([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;Z)Ljava/lang/ClassValue$Entry;

    move-result-object v4

    .line 731
    .local v4, "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-nez v4, :cond_12

    return-void

    .line 734
    :cond_12
    invoke-static {v0, v3, v4}, Ljava/lang/ClassValue$ClassValueMap;->entryDislocation([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;)I

    move-result v5

    .line 735
    .local v5, "dis2":I
    sub-int v6, v3, v5

    .line 736
    .local v6, "home2":I
    move v7, v6

    .local v7, "i2":I
    :goto_19
    add-int/lit8 v8, v6, 0x6

    if-ge v7, v8, :cond_29

    .line 737
    and-int v8, v7, v1

    invoke-direct {p0, v0, v8, v4, v2}, Ljava/lang/ClassValue$ClassValueMap;->placeInCache([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;Z)Ljava/lang/ClassValue$Entry;

    move-result-object v8

    if-nez v8, :cond_26

    .line 738
    return-void

    .line 736
    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 743
    .end local v5    # "dis2":I
    .end local v6    # "home2":I
    .end local v7    # "i2":I
    :cond_29
    return-void
.end method

.method private blacklist checkCacheLoad()V
    .registers 3

    .line 621
    iget v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    iget v1, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoadLimit:I

    if-lt v0, v1, :cond_9

    .line 622
    invoke-direct {p0}, Ljava/lang/ClassValue$ClassValueMap;->reduceCacheLoad()V

    .line 624
    :cond_9
    return-void
.end method

.method private static blacklist entryDislocation([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;)I
    .registers 6
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;I",
            "Ljava/lang/ClassValue$Entry<",
            "*>;)I"
        }
    .end annotation

    .line 602
    .local p0, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    .local p2, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    invoke-virtual {p2}, Ljava/lang/ClassValue$Entry;->classValueOrNull()Ljava/lang/ClassValue;

    move-result-object v0

    .line 603
    .local v0, "cv":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<*>;"
    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    .line 604
    :cond_8
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 605
    .local v1, "mask":I
    iget v2, v0, Ljava/lang/ClassValue;->hashCodeForCache:I

    sub-int v2, p1, v2

    and-int/2addr v2, v1

    return v2
.end method

.method private blacklist findReplacement([Ljava/lang/ClassValue$Entry;I)Ljava/lang/ClassValue$Entry;
    .registers 11
    .param p2, "home1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;I)",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation

    .line 668
    .local p1, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    const/4 v0, 0x0

    .line 669
    .local v0, "replacement":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    const/4 v1, -0x1

    .local v1, "haveReplacement":I
    const/4 v2, 0x0

    .line 670
    .local v2, "replacementPos":I
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 671
    .local v3, "mask":I
    add-int/lit8 v4, p2, 0x1

    .local v4, "i2":I
    :goto_8
    add-int/lit8 v5, p2, 0x6

    if-ge v4, v5, :cond_33

    .line 672
    and-int v5, v4, v3

    aget-object v5, p1, v5

    .line 673
    .local v5, "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-nez v5, :cond_13

    goto :goto_33

    .line 674
    :cond_13
    invoke-virtual {v5}, Ljava/lang/ClassValue$Entry;->isLive()Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_30

    .line 675
    :cond_1a
    invoke-static {p1, v4, v5}, Ljava/lang/ClassValue$ClassValueMap;->entryDislocation([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;)I

    move-result v6

    .line 676
    .local v6, "dis2":I
    if-nez v6, :cond_21

    goto :goto_30

    .line 677
    :cond_21
    sub-int v7, v4, v6

    .line 678
    .local v7, "home2":I
    if-gt v7, p2, :cond_30

    .line 680
    if-ne v7, p2, :cond_2b

    .line 682
    const/4 v1, 0x1

    .line 683
    move v2, v4

    .line 684
    move-object v0, v5

    goto :goto_30

    .line 685
    :cond_2b
    if-gtz v1, :cond_30

    .line 686
    const/4 v1, 0x0

    .line 687
    move v2, v4

    .line 688
    move-object v0, v5

    .line 671
    .end local v5    # "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    .end local v6    # "dis2":I
    .end local v7    # "home2":I
    :cond_30
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 693
    .end local v4    # "i2":I
    :cond_33
    :goto_33
    if-ltz v1, :cond_4e

    .line 694
    add-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    aget-object v4, p1, v4

    if-eqz v4, :cond_43

    .line 696
    and-int v4, v2, v3

    sget-object v5, Ljava/lang/ClassValue$Entry;->DEAD_ENTRY:Ljava/lang/ClassValue$Entry;

    aput-object v5, p1, v4

    goto :goto_4e

    .line 698
    :cond_43
    and-int v4, v2, v3

    const/4 v5, 0x0

    aput-object v5, p1, v4

    .line 699
    iget v4, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    .line 702
    :cond_4e
    :goto_4e
    return-object v0
.end method

.method static blacklist loadFromCache([Ljava/lang/ClassValue$Entry;I)Ljava/lang/ClassValue$Entry;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;I)",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation

    .line 555
    .local p0, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    aget-object v0, p0, v0

    return-object v0
.end method

.method private blacklist overwrittenEntry(Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 766
    .local p1, "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    if-nez p1, :cond_9

    iget v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    goto :goto_10

    .line 767
    :cond_9
    invoke-virtual {p1}, Ljava/lang/ClassValue$Entry;->isLive()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p1

    .line 768
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist placeInCache([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;Z)Ljava/lang/ClassValue$Entry;
    .registers 6
    .param p2, "pos"    # I
    .param p4, "gently"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;I",
            "Ljava/lang/ClassValue$Entry<",
            "*>;Z)",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation

    .line 749
    .local p1, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    .local p3, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    aget-object v0, p1, p2

    invoke-direct {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->overwrittenEntry(Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;

    move-result-object v0

    .line 750
    .local v0, "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-eqz p4, :cond_b

    if-eqz v0, :cond_b

    .line 752
    return-object p3

    .line 754
    :cond_b
    aput-object p3, p1, p2

    .line 755
    return-object v0
.end method

.method static blacklist probeBackupLocations([Ljava/lang/ClassValue$Entry;Ljava/lang/ClassValue;)Ljava/lang/ClassValue$Entry;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;",
            "Ljava/lang/ClassValue<",
            "TT;>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 568
    .local p0, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 569
    .local v0, "mask":I
    iget v1, p1, Ljava/lang/ClassValue;->hashCodeForCache:I

    and-int/2addr v1, v0

    .line 570
    .local v1, "home":I
    aget-object v2, p0, v1

    .line 571
    .local v2, "e2":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 572
    return-object v3

    .line 575
    :cond_c
    const/4 v4, -0x1

    .line 576
    .local v4, "pos2":I
    add-int/lit8 v5, v1, 0x1

    .local v5, "i":I
    :goto_f
    add-int/lit8 v6, v1, 0x6

    if-ge v5, v6, :cond_4c

    .line 577
    and-int v6, v5, v0

    aget-object v6, p0, v6

    .line 578
    .local v6, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-nez v6, :cond_1a

    .line 579
    goto :goto_4c

    .line 581
    :cond_1a
    invoke-virtual {p1, v6}, Ljava/lang/ClassValue;->match(Ljava/lang/ClassValue$Entry;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 583
    aput-object v6, p0, v1

    .line 584
    if-ltz v4, :cond_2b

    .line 585
    and-int v3, v5, v0

    sget-object v7, Ljava/lang/ClassValue$Entry;->DEAD_ENTRY:Ljava/lang/ClassValue$Entry;

    aput-object v7, p0, v3

    goto :goto_2c

    .line 587
    :cond_2b
    move v4, v5

    .line 589
    :goto_2c
    and-int v3, v4, v0

    invoke-static {p0, v4, v2}, Ljava/lang/ClassValue$ClassValueMap;->entryDislocation([Ljava/lang/ClassValue$Entry;ILjava/lang/ClassValue$Entry;)I

    move-result v7

    const/4 v8, 0x6

    if-ge v7, v8, :cond_37

    .line 590
    move-object v7, v2

    goto :goto_39

    .line 591
    :cond_37
    sget-object v7, Ljava/lang/ClassValue$Entry;->DEAD_ENTRY:Ljava/lang/ClassValue$Entry;

    :goto_39
    aput-object v7, p0, v3

    .line 592
    invoke-virtual {p1, v6}, Ljava/lang/ClassValue;->castEntry(Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;

    move-result-object v3

    return-object v3

    .line 595
    :cond_40
    invoke-virtual {v6}, Ljava/lang/ClassValue$Entry;->isLive()Z

    move-result v7

    if-nez v7, :cond_49

    if-gez v4, :cond_49

    move v4, v5

    .line 576
    .end local v6    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 597
    .end local v5    # "i":I
    :cond_4c
    :goto_4c
    return-object v3
.end method

.method static blacklist probeHomeLocation([Ljava/lang/ClassValue$Entry;Ljava/lang/ClassValue;)Ljava/lang/ClassValue$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;",
            "Ljava/lang/ClassValue<",
            "TT;>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 561
    .local p0, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    iget v0, p1, Ljava/lang/ClassValue;->hashCodeForCache:I

    invoke-static {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->loadFromCache([Ljava/lang/ClassValue$Entry;I)Ljava/lang/ClassValue$Entry;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassValue;->castEntry(Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;

    move-result-object v0

    return-object v0
.end method

.method private blacklist reduceCacheLoad()V
    .registers 6

    .line 626
    invoke-direct {p0}, Ljava/lang/ClassValue$ClassValueMap;->removeStaleEntries()V

    .line 627
    iget v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    iget v1, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoadLimit:I

    if-ge v0, v1, :cond_a

    .line 628
    return-void

    .line 629
    :cond_a
    invoke-virtual {p0}, Ljava/lang/ClassValue$ClassValueMap;->getCache()[Ljava/lang/ClassValue$Entry;

    move-result-object v0

    .line 630
    .local v0, "oldCache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    array-length v1, v0

    const v2, 0x3fffffff    # 1.9999999f

    if-le v1, v2, :cond_15

    .line 631
    return-void

    .line 632
    :cond_15
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Ljava/lang/ClassValue$ClassValueMap;->sizeCache(I)V

    .line 633
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_2f

    aget-object v3, v0, v2

    .line 634
    .local v3, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/ClassValue$Entry;->isLive()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 635
    invoke-direct {p0, v3}, Ljava/lang/ClassValue$ClassValueMap;->addToCache(Ljava/lang/ClassValue$Entry;)V

    .line 633
    .end local v3    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 638
    :cond_2f
    return-void
.end method

.method private blacklist removeStaleEntries()V
    .registers 4

    .line 712
    invoke-virtual {p0}, Ljava/lang/ClassValue$ClassValueMap;->getCache()[Ljava/lang/ClassValue$Entry;

    move-result-object v0

    .line 713
    .local v0, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    array-length v1, v0

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/lang/ClassValue$ClassValueMap;->removeStaleEntries([Ljava/lang/ClassValue$Entry;II)V

    .line 714
    return-void
.end method

.method private blacklist removeStaleEntries(Ljava/lang/ClassValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue<",
            "*>;)V"
        }
    .end annotation

    .line 707
    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<*>;"
    invoke-virtual {p0}, Ljava/lang/ClassValue$ClassValueMap;->getCache()[Ljava/lang/ClassValue$Entry;

    move-result-object v0

    iget v1, p1, Ljava/lang/ClassValue;->hashCodeForCache:I

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/ClassValue$ClassValueMap;->removeStaleEntries([Ljava/lang/ClassValue$Entry;II)V

    .line 708
    return-void
.end method

.method private blacklist removeStaleEntries([Ljava/lang/ClassValue$Entry;II)V
    .registers 10
    .param p2, "begin"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ClassValue$Entry<",
            "*>;II)V"
        }
    .end annotation

    .line 645
    .local p1, "cache":[Ljava/lang/ClassValue$Entry;, "[Ljava/lang/ClassValue$Entry<*>;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 646
    .local v0, "mask":I
    const/4 v1, 0x0

    .line 647
    .local v1, "removed":I
    move v2, p2

    .local v2, "i":I
    :goto_5
    add-int v3, p2, p3

    if-ge v2, v3, :cond_26

    .line 648
    and-int v3, v2, v0

    aget-object v3, p1, v3

    .line 649
    .local v3, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/ClassValue$Entry;->isLive()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 650
    goto :goto_23

    .line 651
    :cond_16
    const/4 v4, 0x0

    .line 654
    .local v4, "replacement":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    invoke-direct {p0, p1, v2}, Ljava/lang/ClassValue$ClassValueMap;->findReplacement([Ljava/lang/ClassValue$Entry;I)Ljava/lang/ClassValue$Entry;

    move-result-object v4

    .line 656
    and-int v5, v2, v0

    aput-object v4, p1, v5

    .line 657
    if-nez v4, :cond_23

    add-int/lit8 v1, v1, 0x1

    .line 647
    .end local v3    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    .end local v4    # "replacement":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 659
    .end local v2    # "i":I
    :cond_26
    iget v2, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    .line 660
    return-void
.end method

.method private blacklist sizeCache(I)V
    .registers 6
    .param p1, "length"    # I

    .line 613
    nop

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoad:I

    .line 615
    int-to-double v0, p1

    const-wide v2, 0x4050c00000000000L    # 67.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheLoadLimit:I

    .line 616
    new-array v0, p1, [Ljava/lang/ClassValue$Entry;

    iput-object v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheArray:[Ljava/lang/ClassValue$Entry;

    .line 617
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist changeEntry(Ljava/lang/ClassValue;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue<",
            "TT;>;TT;)V"
        }
    .end annotation

    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 529
    :try_start_1
    iget-object v0, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassValue$Entry;

    .line 530
    .local v0, "e0":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p1}, Ljava/lang/ClassValue;->version()Ljava/lang/ClassValue$Version;

    move-result-object v1

    .line 531
    .local v1, "version":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    if-eqz v0, :cond_23

    .line 532
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v2

    if-ne v2, v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->value()Ljava/lang/Object;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_34

    if-ne v2, p2, :cond_1d

    .line 534
    monitor-exit p0

    return-void

    .line 535
    .end local p0    # "this":Ljava/lang/ClassValue$ClassValueMap;
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/ClassValue;->bumpVersion()V

    .line 536
    invoke-direct {p0, p1}, Ljava/lang/ClassValue$ClassValueMap;->removeStaleEntries(Ljava/lang/ClassValue;)V

    .line 538
    :cond_23
    invoke-static {v1, p2}, Ljava/lang/ClassValue;->makeEntry(Ljava/lang/ClassValue$Version;Ljava/lang/Object;)Ljava/lang/ClassValue$Entry;

    move-result-object v2

    .line 539
    .local v2, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    iget-object v3, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v3, v2}, Ljava/lang/ClassValue$ClassValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-direct {p0}, Ljava/lang/ClassValue$ClassValueMap;->checkCacheLoad()V

    .line 542
    invoke-direct {p0, p1, v2}, Ljava/lang/ClassValue$ClassValueMap;->addToCache(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)V
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_34

    .line 543
    monitor-exit p0

    return-void

    .line 528
    .end local v0    # "e0":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .end local v1    # "version":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    .end local v2    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .end local p1    # "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method declared-synchronized blacklist finishEntry(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)Ljava/lang/ClassValue$Entry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue<",
            "TT;>;",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .local p2, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    monitor-enter p0

    .line 483
    :try_start_1
    iget-object v0, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassValue$Entry;

    .line 484
    .local v0, "e0":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    const/4 v1, 0x0

    if-ne p2, v0, :cond_14

    .line 486
    nop

    .line 487
    iget-object v2, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v2}, Ljava/lang/ClassValue$ClassValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_44

    .line 488
    monitor-exit p0

    return-object v1

    .line 489
    .end local p0    # "this":Ljava/lang/ClassValue$ClassValueMap;
    :cond_14
    if-eqz v0, :cond_42

    :try_start_16
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v3

    if-ne v2, v3, :cond_42

    .line 492
    invoke-virtual {p1}, Ljava/lang/ClassValue;->version()Ljava/lang/ClassValue$Version;

    move-result-object v1

    .line 493
    .local v1, "v":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    invoke-virtual {p2}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v2

    if-eq v2, v1, :cond_35

    .line 494
    invoke-virtual {p2, v1}, Ljava/lang/ClassValue$Entry;->refreshVersion(Ljava/lang/ClassValue$Version;)Ljava/lang/ClassValue$Entry;

    move-result-object v2

    move-object p2, v2

    .line 495
    :cond_35
    iget-object v2, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v2, p2}, Ljava/lang/ClassValue$ClassValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-direct {p0}, Ljava/lang/ClassValue$ClassValueMap;->checkCacheLoad()V

    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/ClassValue$ClassValueMap;->addToCache(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)V
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_44

    .line 499
    monitor-exit p0

    return-object p2

    .line 502
    .end local v1    # "v":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    :cond_42
    monitor-exit p0

    return-object v1

    .line 482
    .end local v0    # "e0":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .end local p1    # "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    .end local p2    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method blacklist getCache()[Ljava/lang/ClassValue$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/ClassValue$Entry<",
            "*>;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Ljava/lang/ClassValue$ClassValueMap;->cacheArray:[Ljava/lang/ClassValue$Entry;

    return-object v0
.end method

.method declared-synchronized blacklist removeEntry(Ljava/lang/ClassValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue<",
            "*>;)V"
        }
    .end annotation

    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<*>;"
    monitor-enter p0

    .line 509
    :try_start_1
    iget-object v0, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassValue$Entry;

    .line 510
    .local v0, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    if-nez v0, :cond_c

    goto :goto_1e

    .line 512
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 516
    iget-object v1, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v1, v0}, Ljava/lang/ClassValue$ClassValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 519
    .end local p0    # "this":Ljava/lang/ClassValue$ClassValueMap;
    :cond_18
    invoke-virtual {p1}, Ljava/lang/ClassValue;->bumpVersion()V

    .line 521
    invoke-direct {p0, p1}, Ljava/lang/ClassValue$ClassValueMap;->removeStaleEntries(Ljava/lang/ClassValue;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 523
    :goto_1e
    monitor-exit p0

    return-void

    .line 508
    .end local v0    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<*>;"
    .end local p1    # "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<*>;"
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method declared-synchronized blacklist startEntry(Ljava/lang/ClassValue;)Ljava/lang/ClassValue$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassValue<",
            "TT;>;)",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    monitor-enter p0

    .line 447
    :try_start_1
    iget-object v0, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v0}, Ljava/lang/ClassValue$ClassValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassValue$Entry;

    .line 448
    .local v0, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    invoke-virtual {p1}, Ljava/lang/ClassValue;->version()Ljava/lang/ClassValue$Version;

    move-result-object v1

    .line 449
    .local v1, "v":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    if-nez v0, :cond_1a

    .line 450
    invoke-virtual {v1}, Ljava/lang/ClassValue$Version;->promise()Ljava/lang/ClassValue$Entry;

    move-result-object v2

    .line 453
    .end local v0    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .local v2, "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    iget-object v0, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v0, v2}, Ljava/lang/ClassValue$ClassValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_4a

    .line 455
    monitor-exit p0

    return-object v2

    .line 456
    .end local v2    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .end local p0    # "this":Ljava/lang/ClassValue$ClassValueMap;
    .restart local v0    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 459
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v2

    if-eq v2, v1, :cond_30

    .line 460
    invoke-virtual {v1}, Ljava/lang/ClassValue$Version;->promise()Ljava/lang/ClassValue$Entry;

    move-result-object v2

    move-object v0, v2

    .line 461
    iget-object v2, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v2, v0}, Ljava/lang/ClassValue$ClassValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_4a

    .line 463
    :cond_30
    monitor-exit p0

    return-object v0

    .line 466
    :cond_32
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/ClassValue$Entry;->version()Ljava/lang/ClassValue$Version;

    move-result-object v2

    if-eq v2, v1, :cond_42

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/ClassValue$Entry;->refreshVersion(Ljava/lang/ClassValue$Version;)Ljava/lang/ClassValue$Entry;

    move-result-object v2

    move-object v0, v2

    .line 470
    iget-object v2, p1, Ljava/lang/ClassValue;->identity:Ljava/lang/ClassValue$Identity;

    invoke-virtual {p0, v2, v0}, Ljava/lang/ClassValue$ClassValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_42
    invoke-direct {p0}, Ljava/lang/ClassValue$ClassValueMap;->checkCacheLoad()V

    .line 474
    invoke-direct {p0, p1, v0}, Ljava/lang/ClassValue$ClassValueMap;->addToCache(Ljava/lang/ClassValue;Ljava/lang/ClassValue$Entry;)V
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_4a

    .line 475
    monitor-exit p0

    return-object v0

    .line 446
    .end local v0    # "e":Ljava/lang/ClassValue$Entry;, "Ljava/lang/ClassValue$Entry<TT;>;"
    .end local v1    # "v":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    .end local p1    # "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method
