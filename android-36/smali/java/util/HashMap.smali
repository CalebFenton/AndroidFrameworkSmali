.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$Node;,
        Ljava/util/HashMap$TreeNode;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$UnsafeHolder;,
        Ljava/util/HashMap$EntrySpliterator;,
        Ljava/util/HashMap$ValueSpliterator;,
        Ljava/util/HashMap$KeySpliterator;,
        Ljava/util/HashMap$HashMapSpliterator;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$HashIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final greylist-max-o DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final greylist-max-o MAXIMUM_CAPACITY:I = 0x40000000

.field static final greylist-max-o MIN_TREEIFY_CAPACITY:I = 0x40

.field static final greylist-max-o TREEIFY_THRESHOLD:I = 0x8

.field static final greylist-max-o UNTREEIFY_THRESHOLD:I = 0x6

.field private static final whitelist serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final greylist-max-o loadFactor:F

.field transient greylist modCount:I

.field transient greylist-max-o size:I

.field transient greylist table:[Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o threshold:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 476
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 477
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 478
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 469
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 470
    return-void
.end method

.method public constructor whitelist test-api <init>(IF)V
    .registers 6
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 444
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 445
    if-ltz p1, :cond_38

    .line 448
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_b

    .line 449
    const/high16 p1, 0x40000000    # 2.0f

    .line 450
    :cond_b
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1f

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 453
    iput p2, p0, Ljava/util/HashMap;->loadFactor:F

    .line 454
    invoke-static {p1}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v0

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 455
    return-void

    .line 451
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 489
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 490
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Ljava/util/HashMap;->loadFactor:F

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 492
    return-void
.end method

.method static blacklist calculateHashMapCapacity(I)I
    .registers 5
    .param p0, "numMappings"    # I

    .line 2562
    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static greylist-max-o comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 11
    .param p0, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 345
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_3f

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_e

    .line 348
    return-object v1

    .line 349
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v2, v0

    .local v2, "ts":[Ljava/lang/reflect/Type;
    if-eqz v0, :cond_3f

    .line 350
    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v0, :cond_3f

    aget-object v5, v2, v4

    .line 351
    .local v5, "t":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3c

    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    move-object v7, v6

    .line 352
    .local v7, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    const-class v8, Ljava/lang/Comparable;

    if-ne v6, v8, :cond_3c

    .line 354
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v8, v6

    .local v8, "as":[Ljava/lang/reflect/Type;
    if-eqz v6, :cond_3c

    array-length v6, v8

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3c

    aget-object v6, v8, v3

    if-ne v6, v1, :cond_3c

    .line 356
    return-object v1

    .line 350
    .end local v5    # "t":Ljava/lang/reflect/Type;
    .end local v7    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "as":[Ljava/lang/reflect/Type;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 360
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ts":[Ljava/lang/reflect/Type;
    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 369
    .local p0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_9

    goto :goto_11

    .line 370
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_12

    .line 369
    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method static final greylist-max-o hash(Ljava/lang/Object;)I
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;

    .line 337
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v1, v0

    .local v1, "h":I
    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v0, v2

    .end local v1    # "h":I
    :goto_c
    return v0
.end method

.method public static whitelist test-api newHashMap(I)Ljava/util/HashMap;
    .registers 4
    .param p0, "numMappings"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2579
    if-ltz p0, :cond_c

    .line 2582
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/HashMap;->calculateHashMapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0

    .line 2580
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

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 17
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1518
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1521
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "loadFactor"

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;F)F

    move-result v1

    .line 1522
    .local v1, "lf":F
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const-string v4, "Illegal load factor: "

    if-lez v3, :cond_c3

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 1525
    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v1, v3, v5}, Ljava/lang/Math;->clamp(FFF)F

    move-result v1

    .line 1526
    invoke-static {p0, v1}, Ljava/util/HashMap$UnsafeHolder;->putLoadFactor(Ljava/util/HashMap;F)V

    .line 1528
    invoke-virtual {p0}, Ljava/util/HashMap;->reinitialize()V

    .line 1529
    iget v3, p0, Ljava/util/HashMap;->loadFactor:F

    cmpg-float v2, v3, v2

    if-lez v2, :cond_aa

    iget v2, p0, Ljava/util/HashMap;->loadFactor:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 1532
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 1533
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1535
    .local v2, "mappings":I
    if-ltz v2, :cond_91

    .line 1537
    if-nez v2, :cond_41

    goto :goto_90

    .line 1539
    :cond_41
    if-lez v2, :cond_90

    .line 1540
    int-to-double v3, v2

    float-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 1541
    .local v3, "dc":D
    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    cmpg-double v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    if-gez v5, :cond_55

    .line 1542
    const/16 v5, 0x10

    goto :goto_62

    .line 1543
    :cond_55
    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    cmpl-double v5, v3, v7

    if-ltz v5, :cond_5d

    .line 1544
    move v5, v6

    goto :goto_62

    .line 1545
    :cond_5d
    double-to-int v5, v3

    invoke-static {v5}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v5

    :goto_62
    nop

    .line 1546
    .local v5, "cap":I
    int-to-float v7, v5

    mul-float/2addr v7, v1

    .line 1547
    .local v7, "ft":F
    if-ge v5, v6, :cond_6f

    const/high16 v6, 0x4e800000

    cmpg-float v6, v7, v6

    if-gez v6, :cond_6f

    .line 1548
    float-to-int v6, v7

    goto :goto_72

    :cond_6f
    const v6, 0x7fffffff

    :goto_72
    iput v6, p0, Ljava/util/HashMap;->threshold:I

    .line 1550
    new-array v6, v5, [Ljava/util/HashMap$Node;

    .line 1551
    .local v6, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v6, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1554
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_79
    if-ge v8, v2, :cond_90

    .line 1556
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    .line 1558
    .local v11, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    .line 1559
    .local v12, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v11}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    .line 1554
    .end local v11    # "key":Ljava/lang/Object;, "TK;"
    .end local v12    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    .line 1562
    .end local v3    # "dc":D
    .end local v5    # "cap":I
    .end local v6    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v7    # "ft":F
    .end local v8    # "i":I
    :cond_90
    :goto_90
    return-void

    .line 1536
    :cond_91
    new-instance v3, Ljava/io/InvalidObjectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mappings count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1530
    .end local v2    # "mappings":I
    :cond_aa
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/util/HashMap;->loadFactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1523
    :cond_c3
    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static final greylist-max-o tableSizeFor(I)I
    .registers 3
    .param p0, "cap"    # I

    .line 377
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    .line 378
    .local v0, "n":I
    if-gez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_14

    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_12

    goto :goto_14

    :cond_12
    add-int/lit8 v1, v0, 0x1

    :goto_14
    return v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->capacity()I

    move-result v0

    .line 1505
    .local v0, "buckets":I
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1506
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1507
    iget v1, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1508
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->internalWriteEntries(Ljava/io/ObjectOutputStream;)V

    .line 1509
    return-void
.end method


# virtual methods
.method greylist-max-o afterNodeAccess(Ljava/util/HashMap$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1939
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    return-void
.end method

.method greylist-max-o afterNodeInsertion(Z)V
    .registers 2
    .param p1, "evict"    # Z

    .line 1940
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    return-void
.end method

.method greylist-max-o afterNodeRemoval(Ljava/util/HashMap$Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1941
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    return-void
.end method

.method final greylist-max-o capacity()I
    .registers 2

    .line 1483
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    array-length v0, v0

    goto :goto_11

    .line 1484
    :cond_8
    iget v0, p0, Ljava/util/HashMap;->threshold:I

    if-lez v0, :cond_f

    iget v0, p0, Ljava/util/HashMap;->threshold:I

    goto :goto_11

    .line 1485
    :cond_f
    const/16 v0, 0x10

    .line 1483
    :goto_11
    return v0
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 865
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 866
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1c

    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_1c

    .line 867
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 869
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 871
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1470
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_f

    .line 1474
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    nop

    .line 1475
    invoke-virtual {v0}, Ljava/util/HashMap;->reinitialize()V

    .line 1476
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 1477
    return-object v0

    .line 1471
    .end local v0    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_f
    move-exception v0

    .line 1473
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1299
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    if-eqz v6, :cond_d6

    .line 1301
    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1303
    .local v1, "hash":I
    const/4 v3, 0x0

    .line 1304
    .local v3, "binCount":I
    const/4 v4, 0x0

    .line 1305
    .local v4, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 1306
    .local v5, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v7, v0, Ljava/util/HashMap;->size:I

    iget v8, v0, Ljava/util/HashMap;->threshold:I

    if-gt v7, v8, :cond_1e

    iget-object v7, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v8, v7

    .local v8, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_1e

    array-length v7, v8

    move v9, v7

    .local v9, "n":I
    if-nez v7, :cond_24

    .line 1308
    .end local v8    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    :cond_1e
    invoke-virtual {v0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v7

    move-object v8, v7

    .restart local v8    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v9, v7

    .line 1309
    .restart local v9    # "n":I
    :cond_24
    add-int/lit8 v7, v9, -0x1

    and-int/2addr v7, v1

    move v10, v7

    .local v10, "i":I
    aget-object v7, v8, v7

    move-object v11, v7

    .local v11, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v7, :cond_5f

    .line 1310
    instance-of v7, v11, Ljava/util/HashMap$TreeNode;

    if-eqz v7, :cond_3d

    .line 1311
    move-object v7, v11

    check-cast v7, Ljava/util/HashMap$TreeNode;

    move-object v4, v7

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v5

    move v7, v3

    move-object v12, v4

    move-object v13, v5

    goto :goto_62

    .line 1313
    :cond_3d
    move-object v7, v11

    .line 1315
    .local v7, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_3e
    iget v12, v7, Ljava/util/HashMap$Node;->hash:I

    if-ne v12, v1, :cond_54

    iget-object v12, v7, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v13, v12

    .local v13, "k":Ljava/lang/Object;, "TK;"
    if-eq v12, v2, :cond_4f

    if-eqz v2, :cond_54

    .line 1316
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_54

    .line 1317
    :cond_4f
    move-object v5, v7

    .line 1318
    move v7, v3

    move-object v12, v4

    move-object v13, v5

    goto :goto_62

    .line 1320
    .end local v13    # "k":Ljava/lang/Object;, "TK;"
    :cond_54
    add-int/lit8 v3, v3, 0x1

    .line 1321
    iget-object v12, v7, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v7, v12

    if-nez v12, :cond_3e

    move v7, v3

    move-object v12, v4

    move-object v13, v5

    goto :goto_62

    .line 1309
    .end local v7    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_5f
    move v7, v3

    move-object v12, v4

    move-object v13, v5

    .line 1324
    .end local v3    # "binCount":I
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v7, "binCount":I
    .local v12, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v13, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_62
    if-nez v13, :cond_66

    const/4 v3, 0x0

    goto :goto_68

    :cond_66
    iget-object v3, v13, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :goto_68
    move-object v14, v3

    .line 1325
    .local v14, "oldValue":Ljava/lang/Object;, "TV;"
    iget v15, v0, Ljava/util/HashMap;->modCount:I

    .line 1326
    .local v15, "mc":I
    invoke-interface {v6, v2, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1327
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget v4, v0, Ljava/util/HashMap;->modCount:I

    if-ne v15, v4, :cond_cf

    .line 1328
    if-eqz v13, :cond_8f

    .line 1329
    if-eqz v3, :cond_7f

    .line 1330
    iput-object v3, v13, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1331
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    move-object v5, v3

    move-object v4, v12

    goto :goto_ce

    .line 1334
    :cond_7f
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v16, v3

    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .local v16, "v":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v12

    move-object/from16 v5, v16

    goto :goto_ce

    .line 1336
    .end local v16    # "v":Ljava/lang/Object;, "TV;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_8f
    move-object/from16 v16, v3

    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v16    # "v":Ljava/lang/Object;, "TV;"
    if-eqz v16, :cond_c7

    .line 1337
    if-eqz v12, :cond_a6

    .line 1338
    move-object/from16 v4, p1

    move v3, v1

    move-object v2, v8

    move-object v0, v12

    move-object/from16 v5, v16

    move-object/from16 v1, p0

    .end local v1    # "hash":I
    .end local v8    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "v":Ljava/lang/Object;, "TV;"
    .local v0, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v3, "hash":I
    .local v5, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    .end local v0    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    .restart local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v8    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_b9

    .line 1340
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .restart local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v16    # "v":Ljava/lang/Object;, "TV;"
    :cond_a6
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v12

    move-object/from16 v5, v16

    .end local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v0, v1, v2, v5, v11}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v8, v10

    .line 1341
    const/4 v3, 0x7

    if-lt v7, v3, :cond_b9

    .line 1342
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    .line 1344
    :cond_b9
    :goto_b9
    add-int/lit8 v3, v15, 0x1

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    .line 1345
    iget v3, v0, Ljava/util/HashMap;->size:I

    const/4 v12, 0x1

    add-int/2addr v3, v12

    iput v3, v0, Ljava/util/HashMap;->size:I

    .line 1346
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    goto :goto_ce

    .line 1336
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .restart local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v16    # "v":Ljava/lang/Object;, "TV;"
    :cond_c7
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v4, v12

    move-object/from16 v5, v16

    .line 1348
    .end local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    :goto_ce
    return-object v5

    .line 1327
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .local v3, "v":Ljava/lang/Object;, "TV;"
    .restart local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_cf
    move-object v5, v3

    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v5    # "v":Ljava/lang/Object;, "TV;"
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1300
    .end local v1    # "hash":I
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v7    # "binCount":I
    .end local v8    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v9    # "n":I
    .end local v10    # "i":I
    .end local v11    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v12    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v13    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v15    # "mc":I
    :cond_d6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1199
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    if-eqz p2, :cond_a3

    .line 1201
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    .line 1203
    .local v3, "hash":I
    const/4 v0, 0x0

    .line 1204
    .local v0, "binCount":I
    const/4 v1, 0x0

    .line 1205
    .local v1, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 1206
    .local v2, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v4, p0, Ljava/util/HashMap;->size:I

    iget v5, p0, Ljava/util/HashMap;->threshold:I

    if-gt v4, v5, :cond_18

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v5, v4

    .local v5, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_18

    array-length v4, v5

    move v6, v4

    .local v6, "n":I
    if-nez v4, :cond_1e

    .line 1208
    .end local v5    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v6    # "n":I
    :cond_18
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v4

    move-object v5, v4

    .restart local v5    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v6, v4

    .line 1209
    .restart local v6    # "n":I
    :cond_1e
    add-int/lit8 v4, v6, -0x1

    and-int/2addr v4, v3

    move v7, v4

    .local v7, "i":I
    aget-object v4, v5, v4

    move-object v8, v4

    .local v8, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_5e

    .line 1210
    instance-of v4, v8, Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_34

    .line 1211
    move-object v4, v8

    check-cast v4, Ljava/util/HashMap$TreeNode;

    move-object v1, v4

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v2

    goto :goto_4f

    .line 1213
    :cond_34
    move-object v4, v8

    .line 1215
    .local v4, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_35
    iget v9, v4, Ljava/util/HashMap$Node;->hash:I

    if-ne v9, v3, :cond_48

    iget-object v9, v4, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v10, v9

    .local v10, "k":Ljava/lang/Object;, "TK;"
    if-eq v9, p1, :cond_46

    if-eqz p1, :cond_48

    .line 1216
    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 1217
    :cond_46
    move-object v2, v4

    .line 1218
    goto :goto_4f

    .line 1220
    .end local v10    # "k":Ljava/lang/Object;, "TK;"
    :cond_48
    add-int/lit8 v0, v0, 0x1

    .line 1221
    iget-object v9, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v4, v9

    if-nez v9, :cond_35

    .line 1224
    .end local v4    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_4f
    if-eqz v2, :cond_5a

    iget-object v4, v2, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v9, v4

    .local v9, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_5a

    .line 1225
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1226
    return-object v9

    .line 1229
    .end local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5a
    move v9, v0

    move-object v0, v1

    move-object v10, v2

    goto :goto_61

    .line 1209
    :cond_5e
    move v9, v0

    move-object v0, v1

    move-object v10, v2

    .line 1229
    .end local v1    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v0, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v9, "binCount":I
    .local v10, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_61
    iget v11, p0, Ljava/util/HashMap;->modCount:I

    .line 1230
    .local v11, "mc":I
    move-object v2, v5

    .end local v5    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1231
    .local v5, "v":Ljava/lang/Object;, "TV;"
    iget v1, p0, Ljava/util/HashMap;->modCount:I

    if-ne v11, v1, :cond_9c

    .line 1232
    if-nez v5, :cond_70

    .line 1233
    const/4 v1, 0x0

    return-object v1

    .line 1234
    :cond_70
    if-eqz v10, :cond_78

    .line 1235
    iput-object v5, v10, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1236
    invoke-virtual {p0, v10}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1237
    return-object v5

    .line 1239
    :cond_78
    if-eqz v0, :cond_80

    .line 1240
    move-object v1, p0

    move-object v4, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    goto :goto_8e

    .line 1242
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_80
    move-object v1, p0

    move-object v4, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3, v4, v5, v8}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object p1

    aput-object p1, v2, v7

    .line 1243
    const/4 p1, 0x7

    if-lt v9, p1, :cond_8e

    .line 1244
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    .line 1246
    :cond_8e
    :goto_8e
    add-int/lit8 p1, v11, 0x1

    iput p1, v1, Ljava/util/HashMap;->modCount:I

    .line 1247
    iget p1, v1, Ljava/util/HashMap;->size:I

    const/4 v12, 0x1

    add-int/2addr p1, v12

    iput p1, v1, Ljava/util/HashMap;->size:I

    .line 1248
    invoke-virtual {p0, v12}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 1249
    return-object v5

    .line 1231
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_9c
    move-object v4, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 1200
    .end local v0    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v3    # "hash":I
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    .end local v6    # "n":I
    .end local v7    # "i":I
    .end local v8    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v9    # "binCount":I
    .end local v10    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v11    # "mc":I
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_a3
    move-object v4, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v4    # "key":Ljava/lang/Object;, "TK;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1265
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p2, :cond_39

    .line 1268
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_36

    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_34

    .line 1270
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1271
    .local v0, "mc":I
    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1272
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget v4, p0, Ljava/util/HashMap;->modCount:I

    if-ne v0, v4, :cond_2d

    .line 1273
    if-eqz v3, :cond_20

    .line 1274
    iput-object v3, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1275
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1276
    return-object v3

    .line 1279
    :cond_20
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v6

    .line 1280
    .local v6, "hash":I
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    move-object v7, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .local v7, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {v5 .. v10}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    goto :goto_37

    .line 1272
    .end local v6    # "hash":I
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_2d
    move-object v7, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "key":Ljava/lang/Object;, "TK;"
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 1268
    .end local v0    # "mc":I
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_34
    move-object v7, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_37

    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_36
    move-object v7, p1

    .line 1283
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "key":Ljava/lang/Object;, "TK;"
    :goto_37
    const/4 p1, 0x0

    return-object p1

    .line 1266
    .end local v1    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_39
    move-object v7, p1

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "key":Ljava/lang/Object;, "TK;"
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 601
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 883
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_28

    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_28

    .line 884
    array-length v0, v1

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_28

    aget-object v4, v1, v3

    .line 885
    .local v4, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_10
    if-eqz v4, :cond_25

    .line 886
    iget-object v5, v4, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-eq v5, p1, :cond_23

    if-eqz p1, :cond_20

    .line 887
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_23

    .line 885
    :cond_20
    iget-object v4, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_10

    .line 888
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0

    .line 884
    .end local v4    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 892
    :cond_28
    return v2
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1100
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    move-object v1, v0

    .local v1, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_e

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1425
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_32

    .line 1427
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_31

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_31

    .line 1428
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1430
    .local v0, "mc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_26

    iget v3, p0, Ljava/util/HashMap;->modCount:I

    if-ne v0, v3, :cond_26

    .line 1431
    aget-object v3, v1, v2

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_17
    if-eqz v3, :cond_23

    .line 1432
    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v5, v3, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1431
    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_17

    .line 1430
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1434
    .end local v2    # "i":I
    :cond_26
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    if-ne v2, v0, :cond_2b

    goto :goto_31

    .line 1435
    :cond_2b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1437
    .end local v0    # "mc":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_31
    :goto_31
    return-void

    .line 1426
    :cond_32
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

    .line 563
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :goto_b
    return-object v0
.end method

.method final blacklist getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 574
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_50

    array-length v0, v1

    move v2, v0

    .local v2, "n":I
    if-lez v0, :cond_50

    add-int/lit8 v0, v2, -0x1

    .line 575
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    move v4, v3

    .local v4, "hash":I
    and-int/2addr v0, v3

    aget-object v0, v1, v0

    move-object v3, v0

    .local v3, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_50

    .line 576
    iget v0, v3, Ljava/util/HashMap$Node;->hash:I

    if-ne v0, v4, :cond_28

    iget-object v0, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v5, v0

    .local v5, "k":Ljava/lang/Object;, "TK;"
    if-eq v0, p1, :cond_27

    if-eqz p1, :cond_28

    .line 577
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 578
    :cond_27
    return-object v3

    .line 579
    .end local v5    # "k":Ljava/lang/Object;, "TK;"
    :cond_28
    iget-object v0, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v5, v0

    .local v5, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_50

    .line 580
    instance-of v0, v3, Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_39

    .line 581
    move-object v0, v3

    check-cast v0, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    return-object v0

    .line 583
    :cond_39
    iget v0, v5, Ljava/util/HashMap$Node;->hash:I

    if-ne v0, v4, :cond_4b

    iget-object v0, v5, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v6, v0

    .local v6, "k":Ljava/lang/Object;, "TK;"
    if-eq v0, p1, :cond_4a

    if-eqz p1, :cond_4b

    .line 584
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 585
    :cond_4a
    return-object v5

    .line 586
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    :cond_4b
    iget-object v0, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v5, v0

    if-nez v0, :cond_39

    .line 589
    .end local v2    # "n":I
    .end local v3    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v4    # "hash":I
    .end local v5    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_50
    const/4 v0, 0x0

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

    .line 1149
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_9

    move-object v0, p2

    goto :goto_b

    :cond_9
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    :goto_b
    return-object v0
.end method

.method greylist-max-o internalWriteEntries(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1946
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_21

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_21

    .line 1947
    array-length v0, v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_21

    aget-object v3, v1, v2

    .line 1948
    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_f
    if-eqz v3, :cond_1e

    .line 1949
    iget-object v4, v3, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1950
    iget-object v4, v3, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1948
    iget-object v3, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_f

    .line 1947
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1954
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_21
    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 541
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 911
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 912
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 913
    new-instance v1, Ljava/util/HashMap$KeySet;

    invoke-direct {v1, p0}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;)V

    move-object v0, v1

    .line 914
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 916
    :cond_c
    return-object v0
.end method

.method blacklist keysToArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 951
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .line 953
    .local v0, "r":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 954
    .local v1, "idx":I
    iget v2, p0, Ljava/util/HashMap;->size:I

    if-lez v2, :cond_20

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v3, v2

    .local v3, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_20

    .line 955
    array-length v2, v3

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_20

    aget-object v5, v3, v4

    .line 956
    .local v5, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_11
    if-eqz v5, :cond_1d

    .line 957
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "idx":I
    .local v6, "idx":I
    iget-object v7, v5, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    aput-object v7, v0, v1

    .line 956
    iget-object v5, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move v1, v6

    goto :goto_11

    .line 955
    .end local v5    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v6    # "idx":I
    .restart local v1    # "idx":I
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 961
    .end local v3    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_20
    return-object p1
.end method

.method final greylist-max-o loadFactor()F
    .registers 2

    .line 1481
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->loadFactor:F

    return v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1364
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    if-eqz v6, :cond_c5

    if-eqz v7, :cond_c5

    .line 1366
    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1368
    .local v1, "hash":I
    const/4 v3, 0x0

    .line 1369
    .local v3, "binCount":I
    const/4 v4, 0x0

    .line 1370
    .local v4, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .line 1371
    .local v5, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v8, v0, Ljava/util/HashMap;->size:I

    iget v9, v0, Ljava/util/HashMap;->threshold:I

    if-gt v8, v9, :cond_22

    iget-object v8, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v9, v8

    .local v9, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_22

    array-length v8, v9

    move v10, v8

    .local v10, "n":I
    if-nez v8, :cond_28

    .line 1373
    .end local v9    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    :cond_22
    invoke-virtual {v0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v8

    move-object v9, v8

    .restart local v9    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    array-length v10, v8

    .line 1374
    .restart local v10    # "n":I
    :cond_28
    add-int/lit8 v8, v10, -0x1

    and-int/2addr v8, v1

    move v11, v8

    .local v11, "i":I
    aget-object v8, v9, v8

    move-object v12, v8

    .local v12, "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_63

    .line 1375
    instance-of v8, v12, Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_41

    .line 1376
    move-object v8, v12

    check-cast v8, Ljava/util/HashMap$TreeNode;

    move-object v4, v8

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v5

    move v8, v3

    move-object v13, v4

    move-object v14, v5

    goto :goto_66

    .line 1378
    :cond_41
    move-object v8, v12

    .line 1380
    .local v8, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_42
    iget v13, v8, Ljava/util/HashMap$Node;->hash:I

    if-ne v13, v1, :cond_58

    iget-object v13, v8, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v14, v13

    .local v14, "k":Ljava/lang/Object;, "TK;"
    if-eq v13, v2, :cond_53

    if-eqz v2, :cond_58

    .line 1381
    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58

    .line 1382
    :cond_53
    move-object v5, v8

    .line 1383
    move v8, v3

    move-object v13, v4

    move-object v14, v5

    goto :goto_66

    .line 1385
    .end local v14    # "k":Ljava/lang/Object;, "TK;"
    :cond_58
    add-int/lit8 v3, v3, 0x1

    .line 1386
    iget-object v13, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v8, v13

    if-nez v13, :cond_42

    move v8, v3

    move-object v13, v4

    move-object v14, v5

    goto :goto_66

    .line 1374
    .end local v8    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_63
    move v8, v3

    move-object v13, v4

    move-object v14, v5

    .line 1389
    .end local v3    # "binCount":I
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v8, "binCount":I
    .local v13, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v14, "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_66
    if-eqz v14, :cond_92

    .line 1391
    iget-object v3, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_80

    .line 1392
    iget v3, v0, Ljava/util/HashMap;->modCount:I

    .line 1393
    .local v3, "mc":I
    iget-object v4, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v7, v4, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1394
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget v5, v0, Ljava/util/HashMap;->modCount:I

    if-ne v3, v5, :cond_7a

    .line 1397
    .end local v3    # "mc":I
    move-object v15, v4

    goto :goto_83

    .line 1395
    .restart local v3    # "mc":I
    :cond_7a
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1398
    .end local v3    # "mc":I
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_80
    move-object/from16 v4, p2

    move-object v15, v4

    .line 1400
    .local v15, "v":Ljava/lang/Object;, "TV;"
    :goto_83
    if-eqz v15, :cond_8b

    .line 1401
    iput-object v15, v14, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1402
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    goto :goto_91

    .line 1405
    :cond_8b
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1406
    :goto_91
    return-object v15

    .line 1408
    .end local v15    # "v":Ljava/lang/Object;, "TV;"
    :cond_92
    if-eqz v13, :cond_a4

    .line 1409
    move-object/from16 v4, p1

    move v3, v1

    move-object v5, v6

    move-object v2, v9

    move-object v0, v13

    move-object/from16 v1, p0

    .end local v1    # "hash":I
    .end local v9    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v13    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v0, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v3, "hash":I
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move v1, v3

    .end local v0    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    .local v4, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_b6

    .line 1411
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v13    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_a4
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v4, v13

    .end local v13    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    invoke-virtual {v0, v1, v2, v5, v12}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v9, v11

    .line 1412
    const/4 v3, 0x7

    if-lt v8, v3, :cond_b6

    .line 1413
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    .line 1415
    :cond_b6
    :goto_b6
    iget v3, v0, Ljava/util/HashMap;->modCount:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v0, Ljava/util/HashMap;->modCount:I

    .line 1416
    iget v3, v0, Ljava/util/HashMap;->size:I

    add-int/2addr v3, v6

    iput v3, v0, Ljava/util/HashMap;->size:I

    .line 1417
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 1418
    return-object v5

    .line 1364
    .end local v1    # "hash":I
    .end local v4    # "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "binCount":I
    .end local v9    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v10    # "n":I
    .end local v11    # "i":I
    .end local v12    # "first":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v14    # "old":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_c5
    move-object v5, v6

    .line 1365
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
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

    .line 1907
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$Node;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

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

    .line 1917
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method final blacklist prepareArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 930
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    .line 931
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_15

    .line 932
    nop

    .line 933
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 932
    return-object v1

    .line 935
    :cond_15
    array-length v1, p1

    if-le v1, v0, :cond_1b

    .line 936
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 938
    :cond_1b
    return-object p1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 617
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .local v2, "key":Ljava/lang/Object;, "TK;"
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 790
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->putMapEntries(Ljava/util/Map;Z)V

    .line 791
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1154
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    .local v2, "key":Ljava/lang/Object;, "TK;"
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final greylist-max-o putMapEntries(Ljava/util/Map;Z)V
    .registers 12
    .param p2, "evict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 502
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 503
    .local v0, "s":I
    if-lez v0, :cond_5f

    .line 504
    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_29

    .line 505
    int-to-double v3, v0

    iget v1, p0, Ljava/util/HashMap;->loadFactor:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    .line 506
    .local v3, "dt":D
    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1d

    .line 507
    double-to-int v2, v3

    goto :goto_1e

    :cond_1d
    nop

    .line 508
    .local v2, "t":I
    :goto_1e
    iget v1, p0, Ljava/util/HashMap;->threshold:I

    if-le v2, v1, :cond_28

    .line 509
    invoke-static {v2}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v1

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    .line 510
    .end local v2    # "t":I
    .end local v3    # "dt":D
    :cond_28
    goto :goto_36

    .line 514
    :cond_29
    :goto_29
    iget v1, p0, Ljava/util/HashMap;->threshold:I

    if-le v0, v1, :cond_36

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    array-length v1, v1

    if-ge v1, v2, :cond_36

    .line 515
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    goto :goto_29

    .line 518
    :cond_36
    :goto_36
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 519
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 520
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 521
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v5}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    const/4 v7, 0x0

    move-object v3, p0

    move v8, p2

    .end local p2    # "evict":Z
    .local v8, "evict":Z
    invoke-virtual/range {v3 .. v8}, Ljava/util/HashMap;->putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;

    .line 522
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_3e

    .line 518
    .end local v8    # "evict":Z
    .restart local p2    # "evict":Z
    :cond_5d
    move v8, p2

    .end local p2    # "evict":Z
    .restart local v8    # "evict":Z
    goto :goto_60

    .line 503
    .end local v8    # "evict":Z
    .restart local p2    # "evict":Z
    :cond_5f
    move v8, p2

    .line 524
    .end local p2    # "evict":Z
    .restart local v8    # "evict":Z
    :goto_60
    return-void
.end method

.method final greylist-max-o putVal(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .registers 19
    .param p1, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .param p5, "evict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;ZZ)TV;"
        }
    .end annotation

    .line 633
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v5, p3

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_f

    array-length v0, v1

    move v2, v0

    .local v2, "n":I
    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    move v6, v2

    move-object v2, v1

    goto :goto_17

    .line 634
    .end local v2    # "n":I
    :cond_f
    :goto_f
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    array-length v2, v0

    move v6, v2

    move-object v2, v1

    .line 635
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local v6, "n":I
    :goto_17
    add-int/lit8 v0, v6, -0x1

    and-int/2addr v0, p1

    move v7, v0

    .local v7, "i":I
    aget-object v0, v2, v0

    move-object v8, v0

    .local v8, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    if-nez v0, :cond_29

    .line 636
    invoke-virtual {p0, p1, p2, v5, v9}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v0

    aput-object v0, v2, v7

    goto/16 :goto_85

    .line 639
    :cond_29
    iget v0, v8, Ljava/util/HashMap$Node;->hash:I

    if-ne v0, p1, :cond_3c

    iget-object v0, v8, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v1, v0

    .local v1, "k":Ljava/lang/Object;, "TK;"
    if-eq v0, p2, :cond_3a

    if-eqz p2, :cond_3c

    .line 640
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 641
    :cond_3a
    move-object v0, v8

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_77

    .line 642
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    :cond_3c
    instance-of v0, v8, Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_4b

    .line 643
    move-object v0, v8

    check-cast v0, Ljava/util/HashMap$TreeNode;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap$TreeNode;->putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    .restart local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    goto :goto_77

    .line 645
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_4b
    const/4 v0, 0x0

    .line 646
    .local v0, "binCount":I
    :goto_4c
    iget-object v10, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v11, v10

    .local v11, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v10, :cond_5e

    .line 647
    invoke-virtual {p0, p1, p2, v5, v9}, Ljava/util/HashMap;->newNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v10

    iput-object v10, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 648
    const/4 v10, 0x7

    if-lt v0, v10, :cond_76

    .line 649
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->treeifyBin([Ljava/util/HashMap$Node;I)V

    goto :goto_76

    .line 652
    :cond_5e
    iget v10, v11, Ljava/util/HashMap$Node;->hash:I

    if-ne v10, p1, :cond_9e

    iget-object v10, v11, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v12, v10

    .local v12, "k":Ljava/lang/Object;, "TK;"
    if-eq v10, p2, :cond_76

    if-eqz p2, :cond_73

    .line 653
    invoke-virtual {p2, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 654
    goto :goto_76

    .line 653
    :cond_70
    move/from16 v10, p5

    goto :goto_a0

    .line 652
    :cond_73
    move/from16 v10, p5

    goto :goto_a0

    .line 658
    .end local v0    # "binCount":I
    .end local v12    # "k":Ljava/lang/Object;, "TK;"
    :cond_76
    :goto_76
    move-object v0, v11

    .end local v11    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_77
    if-eqz v0, :cond_85

    .line 659
    iget-object v9, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 660
    .local v9, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz p4, :cond_7f

    if-nez v9, :cond_81

    .line 661
    :cond_7f
    iput-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 662
    :cond_81
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 663
    return-object v9

    .line 666
    .end local v0    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v9    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_85
    :goto_85
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 667
    iget v0, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->size:I

    iget v10, p0, Ljava/util/HashMap;->threshold:I

    if-le v0, v10, :cond_98

    .line 668
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 669
    :cond_98
    move/from16 v10, p5

    invoke-virtual {p0, v10}, Ljava/util/HashMap;->afterNodeInsertion(Z)V

    .line 670
    return-object v9

    .line 652
    .local v0, "binCount":I
    .restart local v11    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_9e
    move/from16 v10, p5

    .line 655
    :goto_a0
    move-object v8, v11

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c
.end method

.method greylist-max-o reinitialize()V
    .registers 2

    .line 1929
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1930
    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    .line 1931
    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    .line 1932
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 1933
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1934
    iput v0, p0, Ljava/util/HashMap;->threshold:I

    .line 1935
    iput v0, p0, Ljava/util/HashMap;->size:I

    .line 1936
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 804
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .end local p1    # "key":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object p1

    move-object v0, p1

    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez p1, :cond_12

    .line 805
    const/4 p1, 0x0

    goto :goto_14

    :cond_12
    iget-object p1, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 804
    :goto_14
    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1159
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method final greylist-max-o removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;
    .registers 14
    .param p1, "hash"    # I
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "matchValue"    # Z
    .param p5, "movable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "ZZ)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_87

    array-length v0, v1

    move v2, v0

    .local v2, "n":I
    if-lez v0, :cond_87

    add-int/lit8 v0, v2, -0x1

    and-int/2addr v0, p1

    move v3, v0

    .local v3, "index":I
    aget-object v0, v1, v0

    move-object v4, v0

    .local v4, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_87

    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v5, v4, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_26

    iget-object v5, v4, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "k":Ljava/lang/Object;, "TK;"
    if-eq v5, p2, :cond_24

    if-eqz p2, :cond_26

    .line 825
    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 826
    :cond_24
    move-object v0, v4

    goto :goto_50

    .line 827
    .end local v6    # "k":Ljava/lang/Object;, "TK;"
    :cond_26
    iget-object v5, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v6, v5

    .local v6, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v5, :cond_50

    .line 828
    instance-of v5, v4, Ljava/util/HashMap$TreeNode;

    if-eqz v5, :cond_37

    .line 829
    move-object v5, v4

    check-cast v5, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap$TreeNode;->getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    goto :goto_50

    .line 832
    :cond_37
    iget v5, v6, Ljava/util/HashMap$Node;->hash:I

    if-ne v5, p1, :cond_4a

    iget-object v5, v6, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    move-object v7, v5

    .local v7, "k":Ljava/lang/Object;, "TK;"
    if-eq v5, p2, :cond_48

    if-eqz p2, :cond_4a

    .line 834
    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 835
    :cond_48
    move-object v0, v6

    .line 836
    goto :goto_50

    .line 838
    .end local v7    # "k":Ljava/lang/Object;, "TK;"
    :cond_4a
    move-object v4, v6

    .line 839
    iget-object v5, v6, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v6, v5

    if-nez v5, :cond_37

    .line 842
    .end local v6    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_50
    :goto_50
    if-eqz v0, :cond_87

    if-eqz p4, :cond_61

    iget-object v5, v0, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-eq v5, p3, :cond_61

    if-eqz p3, :cond_87

    .line 843
    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 844
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_61
    instance-of v5, v0, Ljava/util/HashMap$TreeNode;

    if-eqz v5, :cond_6c

    .line 845
    move-object v5, v0

    check-cast v5, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v5, p0, v1, p5}, Ljava/util/HashMap$TreeNode;->removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V

    goto :goto_77

    .line 846
    :cond_6c
    if-ne v0, v4, :cond_73

    .line 847
    iget-object v5, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    aput-object v5, v1, v3

    goto :goto_77

    .line 849
    :cond_73
    iget-object v5, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v5, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 850
    :goto_77
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    .line 851
    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/HashMap;->size:I

    .line 852
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->afterNodeRemoval(Ljava/util/HashMap$Node;)V

    .line 853
    return-object v0

    .line 856
    .end local v0    # "node":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v2    # "n":I
    .end local v3    # "index":I
    .end local v4    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_87
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1177
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_f

    .line 1178
    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1179
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1180
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1181
    return-object v0

    .line 1183
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1165
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->getNode(Ljava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1b

    iget-object v0, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eq v0, p2, :cond_14

    if-eqz v2, :cond_1b

    .line 1166
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1167
    :cond_14
    iput-object p3, v1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1168
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->afterNodeAccess(Ljava/util/HashMap$Node;)V

    .line 1169
    const/4 v0, 0x1

    return v0

    .line 1171
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1442
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_31

    .line 1444
    iget v0, p0, Ljava/util/HashMap;->size:I

    if-lez v0, :cond_30

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v1, v0

    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_30

    .line 1445
    iget v0, p0, Ljava/util/HashMap;->modCount:I

    .line 1446
    .local v0, "mc":I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    .line 1447
    .local v4, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_13
    if-eqz v4, :cond_22

    .line 1448
    iget-object v5, v4, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    .line 1447
    iget-object v4, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_13

    .line 1446
    .end local v4    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1451
    :cond_25
    iget v2, p0, Ljava/util/HashMap;->modCount:I

    if-ne v2, v0, :cond_2a

    goto :goto_30

    .line 1452
    :cond_2a
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1454
    .end local v0    # "mc":I
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_30
    :goto_30
    return-void

    .line 1443
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;
    .registers 7
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

    .line 1912
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$Node;

    iget v1, p1, Ljava/util/HashMap$Node;->hash:I

    iget-object v2, p1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/HashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method greylist-max-o replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;
    .registers 7
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

    .line 1922
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local p2, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap$TreeNode;

    iget v1, p1, Ljava/util/HashMap$Node;->hash:I

    iget-object v2, p1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, p1, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/HashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    return-object v0
.end method

.method final greylist-max-o resize()[Ljava/util/HashMap$Node;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 683
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 684
    .local v0, "oldTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    array-length v1, v0

    .line 685
    .local v1, "oldCap":I
    :goto_7
    iget v2, p0, Ljava/util/HashMap;->threshold:I

    .line 686
    .local v2, "oldThr":I
    const/4 v3, 0x0

    .line 687
    .local v3, "newThr":I
    const v4, 0x7fffffff

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v1, :cond_22

    .line 688
    if-lt v1, v5, :cond_16

    .line 689
    iput v4, p0, Ljava/util/HashMap;->threshold:I

    .line 690
    return-object v0

    .line 692
    :cond_16
    shl-int/lit8 v6, v1, 0x1

    move v7, v6

    .local v7, "newCap":I
    if-ge v6, v5, :cond_2a

    const/16 v6, 0x10

    if-lt v1, v6, :cond_2a

    .line 694
    shl-int/lit8 v3, v2, 0x1

    goto :goto_2a

    .line 696
    .end local v7    # "newCap":I
    :cond_22
    if-lez v2, :cond_26

    .line 697
    move v7, v2

    .restart local v7    # "newCap":I
    goto :goto_2a

    .line 699
    .end local v7    # "newCap":I
    :cond_26
    const/16 v7, 0x10

    .line 700
    .restart local v7    # "newCap":I
    const/16 v3, 0xc

    .line 702
    :cond_2a
    :goto_2a
    if-nez v3, :cond_3c

    .line 703
    int-to-float v6, v7

    iget v8, p0, Ljava/util/HashMap;->loadFactor:F

    mul-float/2addr v6, v8

    .line 704
    .local v6, "ft":F
    if-ge v7, v5, :cond_3a

    const/high16 v5, 0x4e800000

    cmpg-float v5, v6, v5

    if-gez v5, :cond_3a

    .line 705
    float-to-int v4, v6

    goto :goto_3b

    :cond_3a
    nop

    :goto_3b
    move v3, v4

    .line 707
    .end local v6    # "ft":F
    :cond_3c
    iput v3, p0, Ljava/util/HashMap;->threshold:I

    .line 709
    new-array v4, v7, [Ljava/util/HashMap$Node;

    .line 710
    .local v4, "newTab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 711
    if-eqz v0, :cond_94

    .line 712
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_45
    if-ge v5, v1, :cond_94

    .line 714
    aget-object v6, v0, v5

    move-object v8, v6

    .local v8, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v6, :cond_91

    .line 715
    const/4 v6, 0x0

    aput-object v6, v0, v5

    .line 716
    iget-object v9, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    if-nez v9, :cond_5b

    .line 717
    iget v6, v8, Ljava/util/HashMap$Node;->hash:I

    add-int/lit8 v9, v7, -0x1

    and-int/2addr v6, v9

    aput-object v8, v4, v6

    goto :goto_91

    .line 718
    :cond_5b
    instance-of v9, v8, Ljava/util/HashMap$TreeNode;

    if-eqz v9, :cond_66

    .line 719
    move-object v6, v8

    check-cast v6, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v6, p0, v4, v5, v1}, Ljava/util/HashMap$TreeNode;->split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V

    goto :goto_91

    .line 721
    :cond_66
    const/4 v9, 0x0

    .local v9, "loHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v10, 0x0

    .line 722
    .local v10, "loTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v11, 0x0

    .local v11, "hiHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    .line 725
    .local v12, "hiTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_6a
    iget-object v13, v8, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 726
    .local v13, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget v14, v8, Ljava/util/HashMap$Node;->hash:I

    and-int/2addr v14, v1

    if-nez v14, :cond_79

    .line 727
    if-nez v10, :cond_75

    .line 728
    move-object v9, v8

    goto :goto_77

    .line 730
    :cond_75
    iput-object v8, v10, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 731
    :goto_77
    move-object v10, v8

    goto :goto_80

    .line 734
    :cond_79
    if-nez v12, :cond_7d

    .line 735
    move-object v11, v8

    goto :goto_7f

    .line 737
    :cond_7d
    iput-object v8, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 738
    :goto_7f
    move-object v12, v8

    .line 740
    :goto_80
    move-object v8, v13

    if-nez v13, :cond_6a

    .line 741
    if-eqz v10, :cond_89

    .line 742
    iput-object v6, v10, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 743
    aput-object v9, v4, v5

    .line 745
    :cond_89
    if-eqz v12, :cond_91

    .line 746
    iput-object v6, v12, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 747
    add-int v6, v5, v1

    aput-object v11, v4, v6

    .line 712
    .end local v8    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v9    # "loHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v10    # "loTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v11    # "hiHead":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v12    # "hiTail":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v13    # "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_91
    :goto_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 753
    .end local v5    # "j":I
    :cond_94
    return-object v4
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 532
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method final greylist-max-o treeifyBin([Ljava/util/HashMap$Node;I)V
    .registers 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 762
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz p1, :cond_2f

    array-length v0, p1

    move v1, v0

    .local v1, "n":I
    const/16 v2, 0x40

    if-ge v0, v2, :cond_9

    goto :goto_2f

    .line 764
    :cond_9
    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, p2

    move v2, v0

    .local v2, "index":I
    aget-object v0, p1, v0

    move-object v3, v0

    .local v3, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_32

    .line 765
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .line 767
    .local v4, "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_14
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Ljava/util/HashMap;->replacementTreeNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v5

    .line 768
    .local v5, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v4, :cond_1d

    .line 769
    move-object v0, v5

    goto :goto_21

    .line 771
    :cond_1d
    iput-object v4, v5, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 772
    iput-object v5, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 774
    :goto_21
    move-object v4, v5

    .line 775
    .end local v5    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v5, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move-object v3, v5

    if-nez v5, :cond_14

    .line 776
    aput-object v0, p1, v2

    if-eqz v0, :cond_32

    .line 777
    invoke-virtual {v0, p1}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_32

    .line 763
    .end local v0    # "hd":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v1    # "n":I
    .end local v2    # "index":I
    .end local v3    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v4    # "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Ljava/util/HashMap;->resize()[Ljava/util/HashMap$Node;

    .line 779
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1040
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 1041
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 1042
    new-instance v1, Ljava/util/HashMap$Values;

    invoke-direct {v1, p0}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    move-object v0, v1

    .line 1043
    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    .line 1045
    :cond_c
    return-object v0
.end method

.method blacklist valuesToArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 974
    .local p0, "this":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v0, p1

    .line 976
    .local v0, "r":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 977
    .local v1, "idx":I
    iget v2, p0, Ljava/util/HashMap;->size:I

    if-lez v2, :cond_20

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    move-object v3, v2

    .local v3, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v2, :cond_20

    .line 978
    array-length v2, v3

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_20

    aget-object v5, v3, v4

    .line 979
    .local v5, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_11
    if-eqz v5, :cond_1d

    .line 980
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "idx":I
    .local v6, "idx":I
    iget-object v7, v5, Ljava/util/HashMap$Node;->value:Ljava/lang/Object;

    aput-object v7, v0, v1

    .line 979
    iget-object v5, v5, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    move v1, v6

    goto :goto_11

    .line 978
    .end local v5    # "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v6    # "idx":I
    .restart local v1    # "idx":I
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 984
    .end local v3    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_20
    return-object p1
.end method
