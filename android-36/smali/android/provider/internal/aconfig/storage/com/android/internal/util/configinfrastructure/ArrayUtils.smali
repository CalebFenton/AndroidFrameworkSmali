.class public Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final blacklist CACHE_SIZE:I = 0x49

.field public static final blacklist EMPTY_FILE:[Ljava/io/File;

.field private static blacklist sCache:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->sCache:[Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 60
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

    .line 717
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 718
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 720
    :cond_8
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 721
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

    .line 759
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 762
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 763
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

    .line 751
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    .line 754
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
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

    .line 729
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_8

    .line 730
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object p0, v0

    .line 732
    :cond_8
    if-eqz p1, :cond_d

    .line 733
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 735
    :cond_d
    return-object p0
.end method

.method public static blacklist appendBooleanDuplicatesAllowed([ZZ)[Z
    .registers 5
    .param p0, "cur"    # [Z
    .param p1, "val"    # Z

    .line 660
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 661
    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean p1, v1, v0

    return-object v1

    .line 663
    :cond_9
    array-length v1, p0

    .line 664
    .local v1, "N":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Z

    .line 665
    .local v2, "ret":[Z
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    aput-boolean p1, v2, v1

    .line 667
    return-object v2
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
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

    .line 507
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

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

    .line 518
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_19

    .line 519
    if-nez p3, :cond_b

    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    .line 520
    :cond_b
    array-length v0, p1

    .line 521
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 522
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 524
    .end local v0    # "end":I
    .end local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_19
    const/4 v0, 0x0

    .line 525
    .restart local v0    # "end":I
    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 527
    .restart local v1    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_21
    aput-object p2, v1, v0

    .line 528
    return-object v1
.end method

.method public static blacklist appendInt([II)[I
    .registers 3
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 583
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->appendInt([IIZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist appendInt([IIZ)[I
    .registers 6
    .param p0, "cur"    # [I
    .param p1, "val"    # I
    .param p2, "allowDuplicates"    # Z

    .line 560
    if-nez p0, :cond_7

    .line 561
    filled-new-array {p1}, [I

    move-result-object v0

    return-object v0

    .line 563
    :cond_7
    array-length v0, p0

    .line 564
    .local v0, "N":I
    if-nez p2, :cond_15

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_15

    .line 566
    aget v2, p0, v1

    if-ne v2, p1, :cond_12

    .line 567
    return-object p0

    .line 565
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 571
    .end local v1    # "i":I
    :cond_15
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 572
    .local v1, "ret":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    aput p1, v1, v0

    .line 574
    return-object v1
.end method

.method public static blacklist appendLong([JJ)[J
    .registers 4
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 675
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist appendLong([JJZ)[J
    .registers 9
    .param p0, "cur"    # [J
    .param p1, "val"    # J
    .param p3, "allowDuplicates"    # Z

    .line 638
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 639
    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p1, v1, v0

    return-object v1

    .line 641
    :cond_9
    array-length v1, p0

    .line 642
    .local v1, "N":I
    if-nez p3, :cond_19

    .line 643
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_19

    .line 644
    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_16

    .line 645
    return-object p0

    .line 643
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 649
    .end local v2    # "i":I
    :cond_19
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 650
    .local v2, "ret":[J
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 651
    aput-wide p1, v2, v1

    .line 652
    return-object v2
.end method

.method public static blacklist checkBounds(II)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "index"    # I

    .line 878
    if-ltz p1, :cond_5

    if-le p0, p1, :cond_5

    .line 881
    return-void

    .line 879
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

    .line 713
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

    .line 702
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

    .line 709
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

    .line 480
    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 481
    new-array v0, v0, [B

    return-object v0

    .line 483
    :cond_6
    const/4 v1, 0x0

    .line 484
    .local v1, "totalLength":I
    array-length v2, p0

    move v3, v0

    :goto_9
    if-ge v3, v2, :cond_14

    aget-object v4, p0, v3

    .line 485
    .local v4, "a":[B
    if-eqz v4, :cond_11

    .line 486
    array-length v5, v4

    add-int/2addr v1, v5

    .line 484
    .end local v4    # "a":[B
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 489
    :cond_14
    new-array v2, v1, [B

    .line 490
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 491
    .local v3, "pos":I
    array-length v4, p0

    move v5, v0

    :goto_19
    if-ge v5, v4, :cond_28

    aget-object v6, p0, v5

    .line 492
    .local v6, "a":[B
    if-eqz v6, :cond_25

    .line 493
    array-length v7, v6

    invoke-static {v6, v0, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    array-length v7, v6

    add-int/2addr v3, v7

    .line 491
    .end local v6    # "a":[B
    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 497
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

    .line 436
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "arrays":[[Ljava/lang/Object;, "[[TT;"
    if-eqz p1, :cond_3a

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3a

    .line 440
    :cond_6
    const/4 v0, 0x0

    .line 441
    .local v0, "totalLength":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_16

    aget-object v4, p1, v3

    .line 442
    .local v4, "item":[Ljava/lang/Object;, "[TT;"
    if-nez v4, :cond_11

    .line 443
    goto :goto_13

    .line 446
    :cond_11
    array-length v5, v4

    add-int/2addr v0, v5

    .line 441
    .end local v4    # "item":[Ljava/lang/Object;, "[TT;"
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 450
    :cond_16
    if-nez v0, :cond_1d

    .line 451
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 454
    :cond_1d
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 455
    .local v1, "all":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 456
    .local v3, "pos":I
    array-length v4, p1

    move v5, v2

    :goto_26
    if-ge v5, v4, :cond_39

    aget-object v6, p1, v5

    .line 457
    .local v6, "item":[Ljava/lang/Object;, "[TT;"
    if-eqz v6, :cond_36

    array-length v7, v6

    if-nez v7, :cond_30

    .line 458
    goto :goto_36

    .line 460
    :cond_30
    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    array-length v7, v6

    add-int/2addr v3, v7

    .line 456
    .end local v6    # "item":[Ljava/lang/Object;, "[TT;"
    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 463
    :cond_39
    return-object v1

    .line 437
    .end local v0    # "totalLength":I
    .end local v1    # "all":[Ljava/lang/Object;, "[TT;"
    .end local v3    # "pos":I
    :cond_3a
    :goto_3a
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

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

    .line 779
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

    .line 362
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 363
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    .line 364
    .local v3, "element":C
    if-ne v3, p1, :cond_e

    .line 365
    const/4 v0, 0x1

    return v0

    .line 363
    .end local v3    # "element":C
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 368
    :cond_11
    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 342
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 343
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 344
    .local v3, "element":I
    if-ne v3, p1, :cond_e

    .line 345
    const/4 v0, 0x1

    return v0

    .line 343
    .end local v3    # "element":I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 348
    :cond_11
    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 9
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 352
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 353
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 354
    .local v3, "element":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_10

    .line 355
    const/4 v0, 0x1

    return v0

    .line 353
    .end local v3    # "element":J
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 358
    :cond_13
    return v0
.end method

.method public static blacklist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 298
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

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

    .line 375
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 376
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-char v4, p1, v3

    .line 377
    .local v4, "checkItem":C
    invoke-static {p0, v4}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->contains([CC)Z

    move-result v5

    if-nez v5, :cond_12

    .line 378
    return v2

    .line 376
    .end local v4    # "checkItem":C
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 381
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

    .line 318
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 319
    :cond_4
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, p1, v3

    .line 320
    .local v4, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v4}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 321
    return v2

    .line 319
    .end local v4    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 324
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

    .line 331
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "check":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 332
    :cond_4
    array-length v1, p1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    .line 333
    .local v3, "checkItem":Ljava/lang/Object;, "TT;"
    invoke-static {p0, v3}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 334
    const/4 v0, 0x1

    return v0

    .line 332
    .end local v3    # "checkItem":Ljava/lang/Object;, "TT;"
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 337
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

    .line 408
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 409
    .local v0, "size":I
    new-array v1, v0, [I

    .line 410
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 411
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 413
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

    .line 399
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 400
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 401
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 403
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static blacklist convertToLongArray([I)[J
    .registers 5
    .param p0, "intArray"    # [I

    .line 417
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_4
    array-length v0, p0

    new-array v0, v0, [J

    .line 419
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 420
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 422
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

    .line 467
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 468
    sget-object v0, Landroid/provider/internal/aconfig/storage/android/util/EmptyArray;->STRING:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 469
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_10

    .line 470
    sget-object v0, Landroid/provider/internal/aconfig/storage/android/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 473
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

    .line 987
    if-eqz p0, :cond_94

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 988
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_1c

    .line 989
    move-object v0, p0

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 990
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2c

    .line 991
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 992
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3c

    .line 993
    move-object v0, p0

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 994
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4c

    .line 995
    move-object v0, p0

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 996
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5c

    .line 997
    move-object v0, p0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 998
    :cond_5c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6c

    .line 999
    move-object v0, p0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7c

    .line 1001
    move-object v0, p0

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1002
    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_8c

    .line 1003
    move-object v0, p0

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1005
    :cond_8c
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist defeatNullable([I)[I
    .registers 2
    .param p0, "val"    # [I

    .line 859
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/provider/internal/aconfig/storage/android/util/EmptyArray;->INT:[I

    :goto_6
    return-object v0
.end method

.method public static blacklist defeatNullable([Ljava/io/File;)[Ljava/io/File;
    .registers 2
    .param p0, "val"    # [Ljava/io/File;

    .line 867
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->EMPTY_FILE:[Ljava/io/File;

    :goto_6
    return-object v0
.end method

.method public static blacklist defeatNullable([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "val"    # [Ljava/lang/String;

    .line 863
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/provider/internal/aconfig/storage/android/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_6
    return-object v0
.end method

.method public static blacklist emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
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

    .line 195
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_7

    .line 196
    sget-object v0, Landroid/provider/internal/aconfig/storage/android/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object v0

    .line 199
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x49

    .line 200
    .local v0, "bucket":I
    sget-object v1, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->sCache:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 202
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2a

    .line 203
    :cond_21
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 204
    sget-object v2, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 209
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

    .line 216
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static blacklist equals([B[BI)Z
    .registers 8
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .line 169
    if-ltz p2, :cond_21

    .line 173
    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    .line 174
    return v0

    .line 176
    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-eqz p1, :cond_20

    array-length v2, p0

    if-lt v2, p2, :cond_20

    array-length v2, p1

    if-ge v2, p2, :cond_12

    goto :goto_20

    .line 179
    :cond_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, p2, :cond_1f

    .line 180
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1c

    .line 181
    return v1

    .line 179
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 184
    .end local v2    # "i":I
    :cond_1f
    return v0

    .line 177
    :cond_20
    :goto_20
    return v1

    .line 170
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

    .line 935
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayConstructor":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 936
    return-object p0

    .line 939
    :cond_7
    const/4 v0, 0x0

    .line 940
    .local v0, "matchesCount":I
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    .line 941
    .local v1, "size":I
    new-array v2, v1, [Z

    .line 942
    .local v2, "tests":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_22

    .line 943
    aget-object v4, p0, v3

    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 944
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_1f

    .line 945
    add-int/lit8 v0, v0, 0x1

    .line 942
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 948
    .end local v3    # "i":I
    :cond_22
    array-length v3, p0

    if-ne v0, v3, :cond_26

    .line 949
    return-object p0

    .line 951
    :cond_26
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 952
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    if-nez v0, :cond_2f

    .line 953
    return-object v3

    .line 955
    :cond_2f
    const/4 v4, 0x0

    .line 956
    .local v4, "outIdx":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_31
    if-ge v5, v1, :cond_41

    .line 957
    aget-boolean v6, v2, v5

    if-eqz v6, :cond_3e

    .line 958
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "outIdx":I
    .local v6, "outIdx":I
    aget-object v7, p0, v5

    aput-object v7, v3, v4

    move v4, v6

    .line 956
    .end local v6    # "outIdx":I
    .restart local v4    # "outIdx":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 961
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

    .line 908
    .local p0, "val":[Ljava/lang/Object;, "[TT;"
    .local p1, "arrayConstructor":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    .line 909
    .local v0, "nullCount":I
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    .line 910
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 911
    aget-object v3, p0, v2

    if-nez v3, :cond_e

    .line 912
    add-int/lit8 v0, v0, 0x1

    .line 910
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 915
    .end local v2    # "i":I
    :cond_11
    if-nez v0, :cond_14

    .line 916
    return-object p0

    .line 918
    :cond_14
    sub-int v2, v1, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 919
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 920
    .local v3, "outIdx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v1, :cond_2e

    .line 921
    aget-object v5, p0, v4

    if-eqz v5, :cond_2b

    .line 922
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "outIdx":I
    .local v5, "outIdx":I
    aget-object v6, p0, v4

    aput-object v6, v2, v3

    move v3, v5

    .line 920
    .end local v5    # "outIdx":I
    .restart local v3    # "outIdx":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 925
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

    .line 979
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    invoke-static {p0}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 980
    :cond_8
    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 981
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 980
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 983
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

    .line 1022
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

    .line 1018
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

.method public static blacklist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 307
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 308
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 309
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 308
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 311
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

    .line 223
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

    .line 230
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

    .line 259
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

    .line 245
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

    .line 252
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

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 238
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

    .line 266
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

    .line 108
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

    .line 118
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static blacklist newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;
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

    .line 94
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

    .line 76
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

    .line 63
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

    .line 67
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

    .line 84
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->newUnpaddedArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static blacklist newUnpaddedIntArray(I)[I
    .registers 3
    .param p0, "minLen"    # I

    .line 72
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

    .line 80
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

    .line 88
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

    .line 797
    .local p0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "b":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 798
    return v0

    .line 801
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 802
    .local v1, "sizeA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 803
    .local v2, "sizeB":I
    const/4 v3, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    if-eq v1, v2, :cond_14

    goto :goto_2e

    .line 807
    :cond_14
    const/4 v4, 0x0

    .line 808
    .local v4, "diff":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v1, :cond_2b

    if-nez v4, :cond_2b

    .line 809
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

    .line 808
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 811
    .end local v5    # "i":I
    :cond_2b
    xor-int/lit8 v0, v4, 0x1

    return v0

    .line 804
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

    .line 739
    .local p0, "cur":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 740
    return-object v0

    .line 742
    :cond_4
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 744
    return-object v0

    .line 746
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

    .line 767
    .local p0, "cur":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 768
    return-object v0

    .line 770
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 771
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 772
    return-object v0

    .line 774
    :cond_e
    return-object p0
.end method

.method public static blacklist removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
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

    .line 537
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_32

    .line 538
    invoke-static {p1, p2}, Landroid/provider/internal/aconfig/storage/com/android/internal/util/configinfrastructure/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-object p1

    .line 539
    :cond_9
    array-length v0, p1

    .line 540
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_32

    .line 541
    aget-object v2, p1, v1

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 542
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 543
    const/4 v2, 0x0

    return-object v2

    .line 545
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 546
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    sub-int/2addr v5, v2

    invoke-static {p1, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    return-object v3

    .line 540
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 552
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_32
    return-object p1
.end method

.method public static blacklist removeInt([II)[I
    .registers 7
    .param p0, "cur"    # [I
    .param p1, "val"    # I

    .line 590
    if-nez p0, :cond_4

    .line 591
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_4
    array-length v0, p0

    .line 594
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_27

    .line 595
    aget v2, p0, v1

    if-ne v2, p1, :cond_24

    .line 596
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [I

    .line 597
    .local v2, "ret":[I
    if-lez v1, :cond_16

    .line 598
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    :cond_16
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_23

    .line 601
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    :cond_23
    return-object v2

    .line 594
    .end local v2    # "ret":[I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 606
    .end local v1    # "i":I
    :cond_27
    return-object p0
.end method

.method public static blacklist removeLong([JJ)[J
    .registers 8
    .param p0, "cur"    # [J
    .param p1, "val"    # J

    .line 682
    if-nez p0, :cond_4

    .line 683
    const/4 v0, 0x0

    return-object v0

    .line 685
    :cond_4
    array-length v0, p0

    .line 686
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_29

    .line 687
    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_26

    .line 688
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [J

    .line 689
    .local v2, "ret":[J
    if-lez v1, :cond_18

    .line 690
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    :cond_18
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_25

    .line 693
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    :cond_25
    return-object v2

    .line 686
    .end local v2    # "ret":[J
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 698
    .end local v1    # "i":I
    :cond_29
    return-object p0
.end method

.method public static blacklist removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "cur"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 613
    if-nez p0, :cond_4

    .line 614
    const/4 v0, 0x0

    return-object v0

    .line 616
    :cond_4
    array-length v0, p0

    .line 617
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_2b

    .line 618
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 619
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 620
    .local v2, "ret":[Ljava/lang/String;
    if-lez v1, :cond_1a

    .line 621
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    :cond_1a
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_27

    .line 624
    add-int/lit8 v3, v1, 0x1

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    :cond_27
    return-object v2

    .line 617
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 629
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

    .line 280
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

    .line 287
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

    .line 273
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

    .line 965
    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 966
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_b

    return v0

    .line 967
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 968
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_16

    return v0

    .line 967
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 970
    .end local v1    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 965
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static blacklist throwsIfOutOfBounds(III)V
    .registers 6
    .param p0, "len"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 892
    if-ltz p0, :cond_38

    .line 896
    or-int v0, p1, p2

    if-ltz v0, :cond_b

    sub-int v0, p0, p2

    if-gt p1, v0, :cond_b

    .line 900
    return-void

    .line 897
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

    .line 893
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

    .line 1030
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1032
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, p0, v2

    .line 1034
    .local v3, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v3    # "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1036
    :cond_12
    return-object v0
.end method

.method public static blacklist total([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 385
    const-wide/16 v0, 0x0

    .line 386
    .local v0, "total":J
    if-eqz p0, :cond_e

    .line 387
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_e

    aget-wide v4, p0, v3

    .line 388
    .local v4, "value":J
    add-long/2addr v0, v4

    .line 387
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 391
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

    .line 783
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 785
    :cond_5
    array-length v0, p0

    if-ne v0, p1, :cond_9

    .line 786
    return-object p0

    .line 788
    :cond_9
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 784
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

    .line 823
    .local p0, "collection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    if-nez p0, :cond_4

    .line 824
    const/4 v0, 0x0

    return v0

    .line 827
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 828
    .local v0, "size":I
    const/4 v1, 0x0

    .line 829
    .local v1, "leftIdx":I
    add-int/lit8 v2, v0, -0x1

    .line 830
    .local v2, "rightIdx":I
    :goto_b
    if-gt v1, v2, :cond_36

    .line 832
    :goto_d
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 837
    :cond_1c
    :goto_1c
    if-le v2, v1, :cond_2b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 838
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 841
    :cond_2b
    if-lt v1, v2, :cond_2e

    .line 843
    goto :goto_36

    .line 846
    :cond_2e
    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    .line 848
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 852
    :cond_36
    :goto_36
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_38
    if-lt v3, v1, :cond_40

    .line 853
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 852
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    .line 855
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

    .line 141
    if-eqz p0, :cond_6

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 144
    :cond_6
    return-void
.end method

.method public static blacklist zeroize$ravenwood([C)V
    .registers 2
    .param p0, "array"    # [C

    .line 155
    if-eqz p0, :cond_6

    .line 156
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 158
    :cond_6
    return-void
.end method
