.class public Lcom/android/internal/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final blacklist CACHE_SIZE:I = 0x49

.field public static final blacklist EMPTY_FILE:[Ljava/io/File;

.field private static blacklist sCache:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 712
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 713
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 715
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 716
    return-object p0
.end method

.method public static blacklist add(Ljava/util/ArrayList;ILjava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;ITT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 754
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 757
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 758
    return-object p0
.end method

.method public static blacklist add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 746
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 749
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    return-object p0
.end method

.method public static blacklist addAll(Landroid/util/ArraySet;Ljava/util/Collection;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 724
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_8

    .line 725
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 727
    :cond_8
    if-eqz p1, :cond_d

    .line 728
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 730
    :cond_d
    return-object p0
.end method

.method public static blacklist appendBooleanDuplicatesAllowed([ZZ)[Z
    .registers 5
    .param p0, "cur"    # [Z
    .param p1, "val"    # Z

    .line 655
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 656
    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean p1, v1, v0

    return-object v1

    .line 658
    :cond_9
    array-length v1, p0

    .line 659
    .local v1, "N":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Z

    .line 660
    .local v2, "ret":[Z
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    aput-boolean p1, v2, v1

    .line 662
    return-object v2
.end method

.method public static greylist-max-r appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 502
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 7
    .param p3, "allowDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 513
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_19

    .line 514
    if-nez p3, :cond_b

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 515
    :cond_b
    array-length v0, p1

    .line 516
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 517
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 519
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_19
    const/4 v0, 0x0

    .line 520
    .restart local v0    # "end":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 522
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_21
    aput-object p2, v1, v0

    .line 523
    return-object v1
.end method

.method public static greylist appendInt([II)[I
    .registers 3
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 578
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist appendInt([IIZ)[I
    .registers 6
    .param p0, "cur"    # [I
    .param p1, "val"    # I
    .param p2, "allowDuplicates"    # Z

    .line 555
    if-nez p0, :cond_7

    .line 556
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 558
    :cond_7
    array-length v0, p0

    .line 559
    .local v0, "N":I
    if-nez p2, :cond_15

    .line 560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_15

    .line 561
    aget v2, p0, v1

    if-ne v2, p1, :cond_12

    .line 562
    return-object p0

    .line 560
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 566
    .end local v1    # "i":I
    :cond_15
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 567
    .local v1, "ret":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    aput p1, v1, v0

    .line 569
    return-object v1
.end method

.method public static blacklist appendLong([JJ)[J
    .registers 4
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 670
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist appendLong([JJZ)[J
    .registers 9
    .param p0, "cur"    # [J
    .param p1, "val"    # J
    .param p3, "allowDuplicates"    # Z

    .line 633
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 634
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p1, v1, v0

    return-object v1

    .line 636
    :cond_9
    array-length v1, p0

    .line 637
    .local v1, "N":I
    if-nez p3, :cond_19

    .line 638
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 639
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_16

    .line 640
    return-object p0

    .line 638
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 644
    .end local v2    # "i":I
    :cond_19
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 645
    .local v2, "ret":[J
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    aput-wide p1, v2, v1

    .line 647
    return-object v2
.end method

.method public static blacklist checkBounds(II)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "index"    # I

    .line 873
    if-ltz p1, :cond_5

    if-le p0, p1, :cond_5

    .line 876
    return-void

    .line 874
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 708
    .local p0, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist cloneOrNull([J)[J
    .registers 2
    .param p0, "array"    # [J

    .line 697
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static blacklist cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 704
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static varargs blacklist concat([[B)[B
    .registers 9
    .param p0, "arrays"    # [[B

    .line 475
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 476
    new-array v0, v0, [B

    return-object v0

    .line 478
    :cond_6
    const/4 v1, 0x0

    .line 479
    .local v1, "totalLength":I
    array-length v2, p0

    move v3, v0

    :goto_9
    if-ge v3, v2, :cond_14

    aget-object v4, p0, v3

    .line 480
    .local v4, "a":[B
    if-eqz v4, :cond_11

    .line 481
    array-length v5, v4

    add-int/2addr v1, v5

    .line 479
    .end local v4    # "a":[B
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 484
    :cond_14
    new-array v2, v1, [B

    .line 485
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 486
    .local v3, "pos":I
    array-length v4, p0

    move v5, v0

    :goto_19
    if-ge v5, v4, :cond_28

    aget-object v6, p0, v5

    .line 487
    .local v6, "a":[B
    if-eqz v6, :cond_25

    .line 488
    array-length v7, v6

    invoke-static {v6, v0, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length v7, v6

    add-int/2addr v3, v7

    .line 486
    .end local v6    # "a":[B
    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 492
    :cond_28
    return-object v2
.end method

.method public static varargs blacklist concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 431
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "arrays":[[Ljava/lang/Object;, "[[TT;"
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 435
    :cond_6
    const/4 v0, 0x0

    .line 436
    .local v0, "totalLength":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 437
    .local v4, "item":[Ljava/lang/Object;, "[TT;"
    if-nez v4, :cond_11

    .line 438
    goto :goto_13

    .line 441
    :cond_11
    array-length v5, v4

    add-int/2addr v0, v5

    .line 436
    .end local v4    # "item":[Ljava/lang/Object;, "[TT;"
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 445
    :cond_16
    if-nez v0, :cond_1d

    .line 446
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 449
    :cond_1d
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 450
    .local v1, "all":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 451
    .local v3, "pos":I
    array-length v4, p1

    move v5, v2

    :goto_26
    if-ge v5, v4, :cond_39

    aget-object v6, p1, v5

    .line 452
    .local v6, "item":[Ljava/lang/Object;, "[TT;"
    if-eqz v6, :cond_36

    array-length v7, v6

    if-nez v7, :cond_30

    .line 453
    goto :goto_36

    .line 455
    :cond_30
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    array-length v7, v6

    add-int/2addr v3, v7

    .line 451
    .end local v6    # "item":[Ljava/lang/Object;, "[TT;"
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 458
    :cond_39
    return-object v1

    .line 432
    .end local v0    # "totalLength":I
    .end local v1    # "all":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "pos":I
    :cond_3a
    :goto_3a
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 774
    .local p0, "cur":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static blacklist contains([CC)Z
    .registers 6
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 357
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 358
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    .line 359
    .local v3, "element":C
    if-ne v3, p1, :cond_e

    .line 360
    const/4 v0, 0x1

    return v0

    .line 358
    .end local v3    # "element":C
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 363
    :cond_11
    return v0
.end method

.method public static greylist contains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 337
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 338
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 339
    .local v3, "element":I
    if-ne v3, p1, :cond_e

    .line 340
    const/4 v0, 0x1

    return v0

    .line 338
    .end local v3    # "element":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 343
    :cond_11
    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 9
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 347
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 348
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 349
    .local v3, "element":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_10

    .line 350
    const/4 v0, 0x1

    return v0

    .line 348
    .end local v3    # "element":J
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 353
    :cond_13
    return v0
.end method

.method public static greylist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 293
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist containsAll([C[C)Z
    .registers 8
    .param p0, "array"    # [C
    .param p1, "check"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C[C)Z"
        }
    .end annotation

    .line 370
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 371
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-char v4, p1, v3

    .line 372
    .local v4, "checkItem":C
    invoke-static {p0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([CC)Z

    move-result v5

    if-nez v5, :cond_12

    .line 373
    return v2

    .line 371
    .end local v4    # "checkItem":C
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 376
    :cond_15
    return v0
.end method

.method public static blacklist containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 313
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 314
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, p1, v3

    .line 315
    .local v4, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 316
    return v2

    .line 314
    .end local v4    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 319
    :cond_15
    return v0
.end method

.method public static blacklist containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)Z"
        }
    .end annotation

    .line 326
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 327
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 328
    .local v3, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 329
    const/4 v0, 0x1

    return v0

    .line 327
    .end local v3    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 332
    :cond_15
    return v0
.end method

.method public static blacklist convertToIntArray(Landroid/util/ArraySet;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 403
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 404
    .local v0, "size":I
    new-array v1, v0, [I

    .line 405
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 406
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 408
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method

.method public static blacklist convertToIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 395
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 396
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 398
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static blacklist convertToLongArray([I)[J
    .registers 5
    .param p0, "intArray"    # [I

    .line 412
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_4
    array-length v0, p0

    new-array v0, v0, [J

    .line 414
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 415
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 417
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private static blacklist createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 462
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 463
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 464
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_10

    .line 465
    sget-object v0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 468
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 982
    if-eqz p0, :cond_94

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 983
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1c

    .line 984
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 985
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2c

    .line 986
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 987
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3c

    .line 988
    move-object v0, p0

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 989
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4c

    .line 990
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 991
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5c

    .line 992
    move-object v0, p0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 993
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6c

    .line 994
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 995
    :cond_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7c

    .line 996
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 997
    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_8c

    .line 998
    move-object v0, p0

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_8c
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1003
    :cond_94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist defeatNullable([I)[I
    .registers 2
    .param p0, "val"    # [I

    .line 854
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/util/EmptyArray;->INT:[I

    :goto_6
    return-object v0
.end method

.method public static blacklist defeatNullable([Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .param p0, "val"    # [Ljava/io/File;

    .line 862
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/android/internal/util/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    :goto_6
    return-object v0
.end method

.method public static blacklist defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "val"    # [Ljava/lang/String;

    .line 858
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_6
    return-object v0
.end method

.method public static greylist emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 190
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_7

    .line 191
    sget-object v0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 194
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 195
    .local v0, "bucket":I
    sget-object v1, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 197
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    .line 198
    :cond_21
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 199
    sget-object v2, Lcom/android/internal/util/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 204
    :cond_2a
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method public static blacklist emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 211
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static blacklist equals([B[BI)Z
    .registers 8
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .line 164
    if-ltz p2, :cond_21

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    .line 169
    return v0

    .line 171
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    array-length v2, p0

    if-lt v2, p2, :cond_20

    array-length v2, p1

    if-ge v2, p2, :cond_12

    goto :goto_20

    .line 174
    :cond_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, p2, :cond_1f

    .line 175
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1c

    .line 176
    return v1

    .line 174
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 179
    .end local v2    # "i":I
    :cond_1f
    return v0

    .line 172
    :cond_20
    :goto_20
    return v1

    .line 165
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 930
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayConstructor":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 931
    return-object p0

    .line 934
    :cond_7
    const/4 v0, 0x0

    .line 935
    .local v0, "matchesCount":I
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    .line 936
    .local v1, "size":I
    new-array v2, v1, [Z

    .line 937
    .local v2, "tests":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_22

    .line 938
    aget-object v4, p0, v3

    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 939
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_1f

    .line 940
    add-int/lit8 v0, v0, 0x1

    .line 937
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 943
    .end local v3    # "i":I
    :cond_22
    array-length v3, p0

    if-ne v0, v3, :cond_26

    .line 944
    return-object p0

    .line 946
    :cond_26
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 947
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    if-nez v0, :cond_2f

    .line 948
    return-object v3

    .line 950
    :cond_2f
    const/4 v4, 0x0

    .line 951
    .local v4, "outIdx":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    if-ge v5, v1, :cond_41

    .line 952
    aget-boolean v6, v2, v5

    if-eqz v6, :cond_3e

    .line 953
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "outIdx":I
    .local v6, "outIdx":I
    aget-object v7, p0, v5

    aput-object v7, v3, v4

    move v4, v6

    .line 951
    .end local v6    # "outIdx":I
    .restart local v4    # "outIdx":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 956
    .end local v5    # "i":I
    :cond_41
    return-object v3
.end method

.method public static blacklist filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 903
    .local p0, "val":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayConstructor":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    .line 904
    .local v0, "nullCount":I
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    .line 905
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 906
    aget-object v3, p0, v2

    if-nez v3, :cond_e

    .line 907
    add-int/lit8 v0, v0, 0x1

    .line 905
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 910
    .end local v2    # "i":I
    :cond_11
    if-nez v0, :cond_14

    .line 911
    return-object p0

    .line 913
    :cond_14
    sub-int v2, v1, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 914
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 915
    .local v3, "outIdx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v1, :cond_2e

    .line 916
    aget-object v5, p0, v4

    if-eqz v5, :cond_2b

    .line 917
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "outIdx":I
    .local v5, "outIdx":I
    aget-object v6, p0, v4

    aput-object v6, v2, v3

    move v3, v5

    .line 915
    .end local v5    # "outIdx":I
    .restart local v3    # "outIdx":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 920
    .end local v4    # "i":I
    :cond_2e
    return-object v2
.end method

.method public static blacklist find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 974
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 975
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 976
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 975
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 978
    :cond_18
    return-object v1
.end method

.method public static blacklist firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .line 1017
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static blacklist getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 1013
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-le v0, p1, :cond_8

    aget-object v0, p0, p1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static greylist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 302
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 303
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 304
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 303
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 306
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 218
    .local p0, "array":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 225
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isEmpty([B)Z
    .registers 2
    .param p0, "array"    # [B

    .line 254
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([I)Z
    .registers 2
    .param p0, "array"    # [I

    .line 240
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([J)Z
    .registers 2
    .param p0, "array"    # [J

    .line 247
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static greylist isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 233
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist isEmpty([Z)Z
    .registers 2
    .param p0, "array"    # [Z

    .line 261
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static blacklist newNonMovableByteArray(I)[B
    .registers 3
    .param p0, "length"    # I

    .line 103
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static blacklist newNonMovableCharArray(I)[C
    .registers 3
    .param p0, "length"    # I

    .line 113
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static greylist-max-r newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "minLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 89
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist newUnpaddedBooleanArray(I)[Z
    .registers 3
    .param p0, "minLen"    # I

    .line 71
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static blacklist newUnpaddedByteArray(I)[B
    .registers 3
    .param p0, "minLen"    # I

    .line 58
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static blacklist newUnpaddedCharArray(I)[C
    .registers 3
    .param p0, "minLen"    # I

    .line 62
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static blacklist newUnpaddedFloatArray(I)[F
    .registers 3
    .param p0, "minLen"    # I

    .line 79
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static greylist-max-r newUnpaddedIntArray(I)[I
    .registers 3
    .param p0, "minLen"    # I

    .line 67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static blacklist newUnpaddedLongArray(I)[J
    .registers 3
    .param p0, "minLen"    # I

    .line 75
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static blacklist newUnpaddedObjectArray(I)[Ljava/lang/Object;
    .registers 3
    .param p0, "minLen"    # I

    .line 83
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist referenceEquals(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 792
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 793
    return v0

    .line 796
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 797
    .local v1, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 798
    .local v2, "sizeB":I
    const/4 v3, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    if-eq v1, v2, :cond_14

    goto :goto_2e

    .line 802
    :cond_14
    const/4 v4, 0x0

    .line 803
    .local v4, "diff":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v1, :cond_2b

    if-nez v4, :cond_2b

    .line 804
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_26

    move v6, v0

    goto :goto_27

    :cond_26
    move v6, v3

    :goto_27
    or-int/2addr v4, v6

    .line 803
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 806
    .end local v5    # "i":I
    :cond_2b
    xor-int/lit8 v0, v4, 0x1

    return v0

    .line 799
    .end local v4    # "diff":Z
    :cond_2e
    :goto_2e
    return v3
.end method

.method public static blacklist remove(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 734
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 735
    return-object v0

    .line 737
    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 738
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 739
    return-object v0

    .line 741
    :cond_e
    return-object p0
.end method

.method public static blacklist remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 762
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 763
    return-object v0

    .line 765
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 767
    return-object v0

    .line 769
    :cond_e
    return-object p0
.end method

.method public static greylist-max-r removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 532
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_32

    .line 533
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    .line 534
    :cond_9
    array-length v0, p1

    .line 535
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_32

    .line 536
    aget-object v2, p1, v1

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 537
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 538
    const/4 v2, 0x0

    return-object v2

    .line 540
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 541
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    sub-int/2addr v5, v2

    invoke-static {p1, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    return-object v3

    .line 535
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 547
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_32
    return-object p1
.end method

.method public static blacklist removeInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 585
    if-nez p0, :cond_4

    .line 586
    const/4 v0, 0x0

    return-object v0

    .line 588
    :cond_4
    array-length v0, p0

    .line 589
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_27

    .line 590
    aget v2, p0, v1

    if-ne v2, p1, :cond_24

    .line 591
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [I

    .line 592
    .local v2, "ret":[I
    if-lez v1, :cond_16

    .line 593
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_23

    .line 596
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    :cond_23
    return-object v2

    .line 589
    .end local v2    # "ret":[I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 601
    .end local v1    # "i":I
    :cond_27
    return-object p0
.end method

.method public static blacklist removeLong([JJ)[J
    .registers 8
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 677
    if-nez p0, :cond_4

    .line 678
    const/4 v0, 0x0

    return-object v0

    .line 680
    :cond_4
    array-length v0, p0

    .line 681
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_29

    .line 682
    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_26

    .line 683
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [J

    .line 684
    .local v2, "ret":[J
    if-lez v1, :cond_18

    .line 685
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    :cond_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_25

    .line 688
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 690
    :cond_25
    return-object v2

    .line 681
    .end local v2    # "ret":[J
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 693
    .end local v1    # "i":I
    :cond_29
    return-object p0
.end method

.method public static blacklist removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 608
    if-nez p0, :cond_4

    .line 609
    const/4 v0, 0x0

    return-object v0

    .line 611
    :cond_4
    array-length v0, p0

    .line 612
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_2b

    .line 613
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 614
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 615
    .local v2, "ret":[Ljava/lang/String;
    if-lez v1, :cond_1a

    .line 616
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_27

    .line 619
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    :cond_27
    return-object v2

    .line 612
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 624
    .end local v1    # "i":I
    :cond_2b
    return-object p0
.end method

.method public static blacklist size(Ljava/util/Collection;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 275
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static blacklist size(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 282
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static blacklist size([Ljava/lang/Object;)I
    .registers 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 268
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p0

    :goto_5
    return v0
.end method

.method public static blacklist startsWith([B[B)Z
    .registers 6
    .param p0, "cur"    # [B
    .param p1, "val"    # [B

    .line 960
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 961
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    .line 962
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 963
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    .line 962
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 965
    .end local v1    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 960
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static blacklist throwsIfOutOfBounds(III)V
    .registers 6
    .param p0, "len"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 887
    if-ltz p0, :cond_38

    .line 891
    or-int v0, p1, p2

    if-ltz v0, :cond_b

    sub-int v0, p0, p2

    if-gt p1, v0, :cond_b

    .line 895
    return-void

    .line 892
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_38
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist toList([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1025
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1027
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p0, v2

    .line 1029
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1031
    :cond_12
    return-object v0
.end method

.method public static blacklist total([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 380
    const-wide/16 v0, 0x0

    .line 381
    .local v0, "total":J
    if-eqz p0, :cond_e

    .line 382
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_e

    aget-wide v4, p0, v3

    .line 383
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 382
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 386
    :cond_e
    return-wide v0
.end method

.method public static blacklist trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 778
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 780
    :cond_5
    array-length v0, p0

    if-ne v0, p1, :cond_9

    .line 781
    return-object p0

    .line 783
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 779
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)I"
        }
    .end annotation

    .line 818
    .local p0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    if-nez p0, :cond_4

    .line 819
    const/4 v0, 0x0

    return v0

    .line 822
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 823
    .local v0, "size":I
    const/4 v1, 0x0

    .line 824
    .local v1, "leftIdx":I
    add-int/lit8 v2, v0, -0x1

    .line 825
    .local v2, "rightIdx":I
    :goto_b
    if-gt v1, v2, :cond_36

    .line 827
    :goto_d
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 832
    :cond_1c
    :goto_1c
    if-le v2, v1, :cond_2b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 833
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 836
    :cond_2b
    if-lt v1, v2, :cond_2e

    .line 838
    goto :goto_36

    .line 841
    :cond_2e
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 842
    add-int/lit8 v1, v1, 0x1

    .line 843
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 847
    :cond_36
    :goto_36
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_38
    if-lt v3, v1, :cond_40

    .line 848
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 847
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    .line 850
    .end local v3    # "i":I
    :cond_40
    sub-int v3, v0, v1

    return v3
.end method

.method public static native blacklist zeroize([B)V
.end method

.method public static native blacklist zeroize([C)V
.end method

.method public static blacklist zeroize$ravenwood([B)V
    .registers 2
    .param p0, "array"    # [B

    .line 136
    if-eqz p0, :cond_6

    .line 137
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 139
    :cond_6
    return-void
.end method

.method public static blacklist zeroize$ravenwood([C)V
    .registers 2
    .param p0, "array"    # [C

    .line 150
    if-eqz p0, :cond_6

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 153
    :cond_6
    return-void
.end method
