.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$IdentityHashMapEntry;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x15

.field private static final NULL_OBJECT:Ljava/lang/Object;

.field private static final loadFactor:I = 0x1d4c

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field transient modCount:I

.field size:I

.field transient threshold:I


# direct methods
.method static synthetic -wrap0(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@7
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 253
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/16 v0, 0x15

    #@2
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    #@5
    .line 252
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 263
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 76
    iput v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@6
    .line 264
    if-gez p1, :cond_0

    #@8
    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "maxSize < 0: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 267
    :cond_0
    iput v0, p0, Ljava/util/IdentityHashMap;->size:I

    #@24
    .line 268
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    #@27
    move-result v0

    #@28
    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    #@2a
    .line 269
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    #@2d
    move-result v0

    #@2e
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@34
    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x6

    #@5
    if-ge v0, v1, :cond_0

    #@7
    const/16 v0, 0xb

    #@9
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    #@c
    .line 304
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    #@f
    .line 302
    return-void

    #@10
    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@13
    move-result v0

    #@14
    mul-int/lit8 v0, v0, 0x2

    #@16
    goto :goto_0
.end method

.method private computeElementArraySize()I
    .locals 6

    #@0
    .prologue
    .line 279
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v1, p0, Ljava/util/IdentityHashMap;->threshold:I

    #@2
    int-to-long v2, v1

    #@3
    const-wide/16 v4, 0x2710

    #@5
    mul-long/2addr v2, v4

    #@6
    const-wide/16 v4, 0x1d4c

    #@8
    div-long/2addr v2, v4

    #@9
    long-to-int v1, v2

    #@a
    mul-int/lit8 v0, v1, 0x2

    #@c
    .line 282
    .local v0, "arraySize":I
    if-gez v0, :cond_0

    #@e
    neg-int v0, v0

    #@f
    .end local v0    # "arraySize":I
    :cond_0
    return v0
.end method

.method private computeMaxSize()V
    .locals 4

    #@0
    .prologue
    .line 526
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    div-int/lit8 v0, v0, 0x2

    #@5
    int-to-long v0, v0

    #@6
    const-wide/16 v2, 0x1d4c

    #@8
    mul-long/2addr v0, v2

    #@9
    const-wide/16 v2, 0x2710

    #@b
    div-long/2addr v0, v2

    #@c
    long-to-int v0, v0

    #@d
    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    #@f
    .line 525
    return-void
.end method

.method private findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 427
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    array-length v2, p2

    #@1
    .line 428
    .local v2, "length":I
    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    .line 429
    .local v0, "index":I
    add-int v3, v0, v2

    #@7
    add-int/lit8 v3, v3, -0x2

    #@9
    rem-int v1, v3, v2

    #@b
    .line 430
    .local v1, "last":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@d
    .line 431
    aget-object v3, p2, v0

    #@f
    if-eq v3, p1, :cond_0

    #@11
    aget-object v3, p2, v0

    #@13
    if-nez v3, :cond_1

    #@15
    .line 440
    :cond_0
    return v0

    #@16
    .line 438
    :cond_1
    add-int/lit8 v3, v0, 0x2

    #@18
    rem-int v0, v3, v2

    #@1a
    goto :goto_0
.end method

.method private getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 409
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@2
    aget-object v0, v2, p1

    #@4
    .line 410
    .local v0, "key":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@6
    add-int/lit8 v3, p1, 0x1

    #@8
    aget-object v1, v2, v3

    #@a
    .line 412
    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@c
    if-ne v0, v2, :cond_0

    #@e
    .line 413
    const/4 v0, 0x0

    #@f
    .line 415
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 416
    const/4 v1, 0x0

    #@14
    .line 419
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    #@16
    invoke-direct {v2, p0, v0, v1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;-><init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    #@19
    return-object v2
.end method

.method private getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 391
    if-nez p1, :cond_0

    #@3
    .line 392
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@5
    .line 395
    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@7
    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 396
    .local v0, "index":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@d
    aget-object v1, v1, v0

    #@f
    if-ne v1, p1, :cond_1

    #@11
    .line 397
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 400
    :cond_1
    return-object v2
.end method

.method private getModuloHash(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 444
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Collections;->secondaryIdentityHash(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    const v1, 0x7fffffff

    #@7
    and-int/2addr v0, v1

    #@8
    div-int/lit8 v1, p2, 0x2

    #@a
    rem-int/2addr v0, v1

    #@b
    mul-int/lit8 v0, v0, 0x2

    #@d
    return v0
.end method

.method private getThreshold(I)I
    .locals 1
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x3

    #@1
    .line 275
    if-le p1, v0, :cond_0

    #@3
    .end local p1    # "maxSize":I
    :goto_0
    return p1

    #@4
    .restart local p1    # "maxSize":I
    :cond_0
    move p1, v0

    #@5
    goto :goto_0
.end method

.method private massageValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 p1, 0x0

    #@5
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 293
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    new-array v0, p1, [Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 820
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 821
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    #@9
    .line 819
    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 808
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 809
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@6
    move-result v2

    #@7
    .line 810
    .local v2, "savedSize":I
    const/16 v3, 0x15

    #@9
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    #@c
    move-result v3

    #@d
    iput v3, p0, Ljava/util/IdentityHashMap;->threshold:I

    #@f
    .line 811
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    #@12
    move-result v3

    #@13
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@19
    .line 812
    move v0, v2

    #@1a
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@1c
    if-ltz v0, :cond_0

    #@1e
    .line 813
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    .line 814
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    goto :goto_0

    #@2a
    .line 816
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    #@2c
    .line 807
    return-void
.end method

.method private rehash()V
    .locals 8

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@2
    array-length v5, v5

    #@3
    mul-int/lit8 v4, v5, 0x2

    #@5
    .line 508
    .local v4, "newlength":I
    if-nez v4, :cond_0

    #@7
    .line 509
    const/4 v4, 0x1

    #@8
    .line 511
    :cond_0
    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    .line 512
    .local v3, "newData":[Ljava/lang/Object;
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@f
    array-length v5, v5

    #@10
    if-ge v0, v5, :cond_2

    #@12
    .line 513
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@14
    aget-object v2, v5, v0

    #@16
    .line 514
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    #@18
    .line 516
    invoke-direct {p0, v2, v3}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@1b
    move-result v1

    #@1c
    .line 517
    .local v1, "index":I
    aput-object v2, v3, v1

    #@1e
    .line 518
    add-int/lit8 v5, v1, 0x1

    #@20
    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@22
    add-int/lit8 v7, v0, 0x1

    #@24
    aget-object v6, v6, v7

    #@26
    aput-object v6, v3, v5

    #@28
    .line 512
    .end local v1    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@2a
    goto :goto_0

    #@2b
    .line 521
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@2d
    .line 522
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeMaxSize()V

    #@30
    .line 506
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 795
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 796
    iget v2, p0, Ljava/util/IdentityHashMap;->size:I

    #@5
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@8
    .line 797
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .line 798
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/MapEntry;

    #@1c
    .line 800
    .local v0, "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<**>;"
    iget-object v2, v0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    #@1e
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@21
    .line 801
    iget-object v2, v0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    #@23
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@26
    goto :goto_0

    #@27
    .line 794
    .end local v0    # "entry":Ljava/util/MapEntry;, "Ljava/util/MapEntry<**>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 320
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    iput v1, p0, Ljava/util/IdentityHashMap;->size:I

    #@3
    .line 321
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 322
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v2, v1, v0

    #@e
    .line 321
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 324
    :cond_0
    iget v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    iput v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@17
    .line 319
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 763
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/IdentityHashMap;

    #@6
    .line 764
    .local v0, "cloneHashMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@8
    array-length v2, v2

    #@9
    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@f
    .line 765
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@11
    iget-object v3, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@13
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@15
    array-length v4, v4

    #@16
    const/4 v5, 0x0

    #@17
    const/4 v6, 0x0

    #@18
    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 766
    return-object v0

    #@1c
    .line 767
    .end local v0    # "cloneHashMap":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :catch_0
    move-exception v1

    #@1d
    .line 768
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@22
    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 337
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 338
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@4
    .line 341
    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@6
    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 342
    .local v0, "index":I
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    if-ne v1, p1, :cond_1

    #@10
    const/4 v1, 0x1

    #@11
    :goto_0
    return v1

    #@12
    :cond_1
    const/4 v1, 0x0

    #@13
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 355
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    .line 356
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@4
    .line 359
    :cond_0
    const/4 v0, 0x1

    #@5
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_2

    #@a
    .line 360
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@c
    aget-object v1, v1, v0

    #@e
    if-ne v1, p1, :cond_1

    #@10
    .line 361
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 359
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@14
    goto :goto_0

    #@15
    .line 364
    :cond_2
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 598
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;

    #@2
    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    #@5
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 737
    if-ne p0, p1, :cond_0

    #@3
    .line 738
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 740
    :cond_0
    instance-of v2, p1, Ljava/util/Map;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 741
    check-cast v0, Ljava/util/Map;

    #@c
    .line 742
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    #@f
    move-result v2

    #@10
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@13
    move-result v3

    #@14
    if-eq v2, v3, :cond_1

    #@16
    .line 743
    return v4

    #@17
    .line 746
    :cond_1
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v1

    #@1b
    .line 748
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1e
    move-result-object v2

    #@1f
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 750
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_2
    return v4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 376
    if-nez p1, :cond_0

    #@3
    .line 377
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@5
    .line 380
    :cond_0
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@7
    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@a
    move-result v0

    #@b
    .line 382
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@d
    aget-object v2, v2, v0

    #@f
    if-ne v2, p1, :cond_1

    #@11
    .line 383
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@13
    add-int/lit8 v3, v0, 0x1

    #@15
    aget-object v1, v2, v3

    #@17
    .line 384
    .local v1, "result":Ljava/lang/Object;
    invoke-direct {p0, v1}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 387
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 781
    iget v1, p0, Ljava/util/IdentityHashMap;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 610
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 611
    new-instance v0, Ljava/util/IdentityHashMap$1;

    #@6
    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$1;-><init>(Ljava/util/IdentityHashMap;)V

    #@9
    iput-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    #@b
    .line 647
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    #@d
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    #@1
    .line 459
    move-object v0, p1

    #@2
    .line 460
    .local v0, "_key":Ljava/lang/Object;
    move-object v1, p2

    #@3
    .line 461
    .local v1, "_value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@5
    .line 462
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@7
    .line 465
    :cond_0
    if-nez v1, :cond_1

    #@9
    .line 466
    sget-object v1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@b
    .line 469
    :cond_1
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@d
    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@10
    move-result v2

    #@11
    .line 472
    .local v2, "index":I
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@13
    aget-object v4, v4, v2

    #@15
    if-eq v4, v0, :cond_3

    #@17
    .line 473
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@19
    add-int/lit8 v4, v4, 0x1

    #@1b
    iput v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@1d
    .line 474
    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    #@1f
    add-int/lit8 v4, v4, 0x1

    #@21
    iput v4, p0, Ljava/util/IdentityHashMap;->size:I

    #@23
    iget v5, p0, Ljava/util/IdentityHashMap;->threshold:I

    #@25
    if-le v4, v5, :cond_2

    #@27
    .line 475
    invoke-direct {p0}, Ljava/util/IdentityHashMap;->rehash()V

    #@2a
    .line 476
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@2c
    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@2f
    move-result v2

    #@30
    .line 480
    :cond_2
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@32
    aput-object v0, v4, v2

    #@34
    .line 481
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@36
    add-int/lit8 v5, v2, 0x1

    #@38
    aput-object v6, v4, v5

    #@3a
    .line 485
    :cond_3
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@3c
    add-int/lit8 v5, v2, 0x1

    #@3e
    aget-object v3, v4, v5

    #@40
    .line 486
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@42
    add-int/lit8 v5, v2, 0x1

    #@44
    aput-object v1, v4, v5

    #@46
    .line 488
    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    return-object v4
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 503
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    #@3
    .line 502
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v11, 0x0

    #@1
    .line 539
    if-nez p1, :cond_0

    #@3
    .line 540
    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    #@5
    .line 546
    :cond_0
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@7
    invoke-direct {p0, p1, v7}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    #@a
    move-result v4

    #@b
    .local v4, "next":I
    move v2, v4

    #@c
    .line 548
    .local v2, "index":I
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@e
    aget-object v7, v7, v2

    #@10
    if-eq v7, p1, :cond_1

    #@12
    .line 549
    return-object v11

    #@13
    .line 553
    :cond_1
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@15
    add-int/lit8 v8, v2, 0x1

    #@17
    aget-object v6, v7, v8

    #@19
    .line 557
    .local v6, "result":Ljava/lang/Object;
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@1b
    array-length v3, v7

    #@1c
    .line 559
    .local v3, "length":I
    :cond_2
    :goto_0
    add-int/lit8 v7, v4, 0x2

    #@1e
    rem-int v4, v7, v3

    #@20
    .line 560
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@22
    aget-object v5, v7, v4

    #@24
    .line 561
    .local v5, "object":Ljava/lang/Object;
    if-nez v5, :cond_3

    #@26
    .line 579
    iget v7, p0, Ljava/util/IdentityHashMap;->size:I

    #@28
    add-int/lit8 v7, v7, -0x1

    #@2a
    iput v7, p0, Ljava/util/IdentityHashMap;->size:I

    #@2c
    .line 580
    iget v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@2e
    add-int/lit8 v7, v7, 0x1

    #@30
    iput v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    #@32
    .line 583
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@34
    aput-object v11, v7, v2

    #@36
    .line 584
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@38
    add-int/lit8 v8, v2, 0x1

    #@3a
    aput-object v11, v7, v8

    #@3c
    .line 586
    invoke-direct {p0, v6}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v7

    #@40
    return-object v7

    #@41
    .line 565
    :cond_3
    invoke-direct {p0, v5, v3}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    #@44
    move-result v0

    #@45
    .line 566
    .local v0, "hash":I
    if-le v0, v2, :cond_5

    #@47
    const/4 v1, 0x1

    #@48
    .line 567
    .local v1, "hashedOk":Z
    :goto_1
    if-ge v4, v2, :cond_7

    #@4a
    .line 568
    if-nez v1, :cond_4

    #@4c
    if-gt v0, v4, :cond_6

    #@4e
    :cond_4
    const/4 v1, 0x1

    #@4f
    .line 572
    :goto_2
    if-nez v1, :cond_2

    #@51
    .line 573
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@53
    aput-object v5, v7, v2

    #@55
    .line 574
    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@57
    add-int/lit8 v8, v2, 0x1

    #@59
    iget-object v9, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    #@5b
    add-int/lit8 v10, v4, 0x1

    #@5d
    aget-object v9, v9, v10

    #@5f
    aput-object v9, v7, v8

    #@61
    .line 575
    move v2, v4

    #@62
    goto :goto_0

    #@63
    .line 566
    .end local v1    # "hashedOk":Z
    :cond_5
    const/4 v1, 0x0

    #@64
    .restart local v1    # "hashedOk":Z
    goto :goto_1

    #@65
    .line 568
    :cond_6
    const/4 v1, 0x0

    #@66
    goto :goto_2

    #@67
    .line 570
    :cond_7
    if-eqz v1, :cond_8

    #@69
    if-gt v0, v4, :cond_8

    #@6b
    const/4 v1, 0x1

    #@6c
    goto :goto_2

    #@6d
    :cond_8
    const/4 v1, 0x0

    #@6e
    goto :goto_2
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 791
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    #@2
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 671
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 672
    new-instance v0, Ljava/util/IdentityHashMap$2;

    #@6
    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$2;-><init>(Ljava/util/IdentityHashMap;)V

    #@9
    iput-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    #@b
    .line 711
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap;->valuesCollection:Ljava/util/Collection;

    #@d
    return-object v0
.end method
