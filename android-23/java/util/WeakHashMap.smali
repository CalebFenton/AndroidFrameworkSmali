.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$Entry;,
        Ljava/util/WeakHashMap$HashIterator;
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
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 188
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    #@5
    .line 187
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 200
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 201
    if-gez p1, :cond_0

    #@6
    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "capacity < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 204
    :cond_0
    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@22
    .line 205
    if-nez p1, :cond_1

    #@24
    const/4 p1, 0x1

    #@25
    .end local p1    # "capacity":I
    :cond_1
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@2b
    .line 206
    const/16 v0, 0x1d4c

    #@2d
    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    #@2f
    .line 207
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    #@32
    .line 208
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@34
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@37
    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@39
    .line 200
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 223
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@4
    .line 224
    if-gez p1, :cond_0

    #@6
    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "capacity < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 227
    :cond_0
    const/4 v0, 0x0

    #@21
    cmpg-float v0, p2, v0

    #@23
    if-gtz v0, :cond_1

    #@25
    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "loadFactor <= 0: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 230
    :cond_1
    iput v1, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@41
    .line 231
    if-nez p1, :cond_2

    #@43
    const/4 p1, 0x1

    #@44
    .end local p1    # "capacity":I
    :cond_2
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@4a
    .line 232
    const v0, 0x461c4000    # 10000.0f

    #@4d
    mul-float/2addr v0, p2

    #@4e
    float-to-int v0, v0

    #@4f
    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    #@51
    .line 233
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    #@54
    .line 234
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@56
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@59
    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@5b
    .line 223
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
    .line 245
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
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
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    #@c
    .line 246
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    #@f
    .line 244
    return-void

    #@10
    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@13
    move-result v0

    #@14
    mul-int/lit8 v0, v0, 0x2

    #@16
    goto :goto_0
.end method

.method private computeMaxSize()V
    .locals 4

    #@0
    .prologue
    .line 268
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@2
    array-length v0, v0

    #@3
    int-to-long v0, v0

    #@4
    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:I

    #@6
    int-to-long v2, v2

    #@7
    mul-long/2addr v0, v2

    #@8
    const-wide/16 v2, 0x2710

    #@a
    div-long/2addr v0, v2

    #@b
    long-to-int v0, v0

    #@c
    iput v0, p0, Ljava/util/WeakHashMap;->threshold:I

    #@e
    .line 267
    return-void
.end method

.method private static newEntryArray(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    new-array v0, p0, [Ljava/util/WeakHashMap$Entry;

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
    .line 709
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 710
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    #@9
    .line 708
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 8

    #@0
    .prologue
    .line 622
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@2
    array-length v6, v6

    #@3
    mul-int/lit8 v3, v6, 0x2

    #@5
    .line 623
    .local v3, "length":I
    if-nez v3, :cond_0

    #@7
    .line 624
    const/4 v3, 0x1

    #@8
    .line 626
    :cond_0
    invoke-static {v3}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    #@b
    move-result-object v4

    #@c
    .line 627
    .local v4, "newData":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@f
    array-length v6, v6

    #@10
    if-ge v1, v6, :cond_3

    #@12
    .line 628
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@14
    aget-object v0, v6, v1

    #@16
    .line 629
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    #@18
    .line 630
    iget-boolean v6, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@1a
    if-eqz v6, :cond_1

    #@1c
    const/4 v2, 0x0

    #@1d
    .line 632
    .local v2, "index":I
    :goto_2
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@1f
    .line 633
    .local v5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    aget-object v6, v4, v2

    #@21
    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@23
    .line 634
    aput-object v0, v4, v2

    #@25
    .line 635
    move-object v0, v5

    #@26
    goto :goto_1

    #@27
    .line 630
    .end local v2    # "index":I
    .end local v5    # "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_1
    iget v6, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    #@29
    const v7, 0x7fffffff

    #@2c
    and-int/2addr v6, v7

    #@2d
    rem-int v2, v6, v3

    #@2f
    .restart local v2    # "index":I
    goto :goto_2

    #@30
    .line 627
    .end local v2    # "index":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 638
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iput-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@35
    .line 639
    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    #@38
    .line 621
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 257
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@4
    if-lez v0, :cond_1

    #@6
    .line 258
    iput v1, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@8
    .line 259
    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@a
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 260
    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    #@13
    .line 261
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@15
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@18
    move-result-object v0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 256
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 281
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 509
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@5
    .line 510
    if-eqz p1, :cond_3

    #@7
    .line 511
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@9
    array-length v1, v3

    #@a
    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@c
    if-ltz v1, :cond_7

    #@e
    .line 512
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@10
    aget-object v0, v3, v1

    #@12
    .line 513
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@14
    .line 514
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    .line 515
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_1

    #@1a
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@1c
    if-eqz v3, :cond_2

    #@1e
    .line 516
    :cond_1
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@20
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    .line 515
    if-eqz v3, :cond_2

    #@26
    .line 517
    return v5

    #@27
    .line 519
    :cond_2
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@29
    goto :goto_0

    #@2a
    .line 523
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@2c
    array-length v1, v3

    #@2d
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@2f
    if-ltz v1, :cond_7

    #@31
    .line 524
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@33
    aget-object v0, v3, v1

    #@35
    .line 525
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@37
    .line 526
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    .line 527
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_5

    #@3d
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@3f
    if-eqz v3, :cond_6

    #@41
    :cond_5
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@43
    if-nez v3, :cond_6

    #@45
    .line 528
    return v5

    #@46
    .line 530
    :cond_6
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@48
    goto :goto_1

    #@49
    .line 534
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_7
    return v4
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
    .line 294
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@3
    .line 295
    new-instance v0, Ljava/util/WeakHashMap$1;

    #@5
    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$1;-><init>(Ljava/util/WeakHashMap;)V

    #@8
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 454
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@4
    .line 455
    if-eqz p1, :cond_2

    #@6
    .line 456
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@9
    move-result v2

    #@a
    const v3, 0x7fffffff

    #@d
    and-int/2addr v2, v3

    #@e
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@10
    array-length v3, v3

    #@11
    rem-int v1, v2, v3

    #@13
    .line 457
    .local v1, "index":I
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@15
    aget-object v0, v2, v1

    #@17
    .line 458
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@19
    .line 459
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 460
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@25
    return-object v2

    #@26
    .line 462
    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@28
    goto :goto_0

    #@29
    .line 464
    :cond_1
    return-object v4

    #@2a
    .line 466
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@2c
    const/4 v3, 0x0

    #@2d
    aget-object v0, v2, v3

    #@2f
    .line 467
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@31
    .line 468
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@33
    if-eqz v2, :cond_3

    #@35
    .line 469
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@37
    return-object v2

    #@38
    .line 471
    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@3a
    goto :goto_1

    #@3b
    .line 473
    :cond_4
    return-object v4
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 477
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@4
    .line 478
    if-eqz p1, :cond_2

    #@6
    .line 479
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@9
    move-result v2

    #@a
    const v3, 0x7fffffff

    #@d
    and-int/2addr v2, v3

    #@e
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@10
    array-length v3, v3

    #@11
    rem-int v1, v2, v3

    #@13
    .line 480
    .local v1, "index":I
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@15
    aget-object v0, v2, v1

    #@17
    .line 481
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    #@19
    .line 482
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 483
    return-object v0

    #@24
    .line 485
    :cond_0
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@26
    goto :goto_0

    #@27
    .line 487
    :cond_1
    return-object v4

    #@28
    .line 489
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@2a
    const/4 v3, 0x0

    #@2b
    aget-object v0, v2, v3

    #@2d
    .line 490
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_4

    #@2f
    .line 491
    iget-boolean v2, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@31
    if-eqz v2, :cond_3

    #@33
    .line 492
    return-object v0

    #@34
    .line 494
    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@36
    goto :goto_1

    #@37
    .line 496
    :cond_4
    return-object v4
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 544
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
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
    .line 352
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@3
    .line 353
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 354
    new-instance v0, Ljava/util/WeakHashMap$2;

    #@9
    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$2;-><init>(Ljava/util/WeakHashMap;)V

    #@c
    iput-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    #@e
    .line 389
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->keySet:Ljava/util/Set;

    #@10
    return-object v0
.end method

.method poll()V
    .locals 2

    #@0
    .prologue
    .line 550
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/WeakHashMap$Entry;

    #@8
    .local v0, "toRemove":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@a
    .line 551
    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    #@d
    goto :goto_0

    #@e
    .line 548
    :cond_0
    return-void
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const v6, 0x7fffffff

    #@3
    const/4 v5, 0x0

    #@4
    .line 589
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@7
    .line 590
    const/4 v1, 0x0

    #@8
    .line 592
    .local v1, "index":I
    if-eqz p1, :cond_3

    #@a
    .line 593
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@d
    move-result v3

    #@e
    and-int/2addr v3, v6

    #@f
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@11
    array-length v4, v4

    #@12
    rem-int v1, v3, v4

    #@14
    .line 594
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@16
    aget-object v0, v3, v1

    #@18
    .line 595
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@1a
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 604
    :cond_0
    if-nez v0, :cond_5

    #@26
    .line 605
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    #@2c
    .line 606
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@2e
    add-int/lit8 v3, v3, 0x1

    #@30
    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@32
    iget v4, p0, Ljava/util/WeakHashMap;->threshold:I

    #@34
    if-le v3, v4, :cond_1

    #@36
    .line 607
    invoke-direct {p0}, Ljava/util/WeakHashMap;->rehash()V

    #@39
    .line 608
    if-nez p1, :cond_4

    #@3b
    const/4 v1, 0x0

    #@3c
    .line 611
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    #@3e
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@40
    invoke-direct {v0, p1, p2, v3}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@43
    .line 612
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@45
    aget-object v3, v3, v1

    #@47
    iput-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@49
    .line 613
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@4b
    aput-object v0, v3, v1

    #@4d
    .line 614
    return-object v5

    #@4e
    .line 596
    :cond_2
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@50
    goto :goto_0

    #@51
    .line 599
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@53
    const/4 v4, 0x0

    #@54
    aget-object v0, v3, v4

    #@56
    .line 600
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_0

    #@58
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@5a
    if-nez v3, :cond_0

    #@5c
    .line 601
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@5e
    goto :goto_2

    #@5f
    .line 608
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@62
    move-result v3

    #@63
    and-int/2addr v3, v6

    #@64
    .line 609
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@66
    array-length v4, v4

    #@67
    .line 608
    rem-int v1, v3, v4

    #@69
    goto :goto_1

    #@6a
    .line 616
    :cond_5
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@6c
    .line 617
    .local v2, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@6e
    .line 618
    return-object v2
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
    .line 654
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    #@3
    .line 653
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 667
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@4
    .line 668
    const/4 v1, 0x0

    #@5
    .line 669
    .local v1, "index":I
    const/4 v2, 0x0

    #@6
    .line 670
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    if-eqz p1, :cond_2

    #@8
    .line 671
    invoke-static {p1}, Ljava/util/Collections;->secondaryHash(Ljava/lang/Object;)I

    #@b
    move-result v3

    #@c
    const v4, 0x7fffffff

    #@f
    and-int/2addr v3, v4

    #@10
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@12
    array-length v4, v4

    #@13
    rem-int v1, v3, v4

    #@15
    .line 672
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@17
    aget-object v0, v3, v1

    #@19
    .line 673
    .end local v2    # "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@1b
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 684
    :cond_0
    if-eqz v0, :cond_4

    #@27
    .line 685
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    #@29
    add-int/lit8 v3, v3, 0x1

    #@2b
    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    #@2d
    .line 686
    if-nez v2, :cond_3

    #@2f
    .line 687
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@31
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@33
    aput-object v4, v3, v1

    #@35
    .line 691
    :goto_1
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@37
    add-int/lit8 v3, v3, -0x1

    #@39
    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@3b
    .line 692
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    #@3d
    return-object v3

    #@3e
    .line 674
    :cond_1
    move-object v2, v0

    #@3f
    .line 675
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@41
    goto :goto_0

    #@42
    .line 678
    .end local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_2
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@44
    const/4 v4, 0x0

    #@45
    aget-object v0, v3, v4

    #@47
    .line 679
    .end local v2    # "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v0    # "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_0

    #@49
    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    #@4b
    if-nez v3, :cond_0

    #@4d
    .line 680
    move-object v2, v0

    #@4e
    .line 681
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@50
    goto :goto_2

    #@51
    .line 689
    .end local v2    # "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@53
    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@55
    goto :goto_1

    #@56
    .line 694
    :cond_4
    return-object v5
.end method

.method removeEntry(Ljava/util/WeakHashMap$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 556
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .local p1, "toRemove":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 557
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v3, p1, Ljava/util/WeakHashMap$Entry;->hash:I

    #@3
    const v4, 0x7fffffff

    #@6
    and-int/2addr v3, v4

    #@7
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@9
    array-length v4, v4

    #@a
    rem-int v1, v3, v4

    #@c
    .line 558
    .local v1, "index":I
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@e
    aget-object v0, v3, v1

    #@10
    .line 561
    .end local v2    # "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .local v0, "entry":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    #@12
    .line 562
    if-ne p1, v0, :cond_2

    #@14
    .line 563
    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    #@16
    add-int/lit8 v3, v3, 0x1

    #@18
    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    #@1a
    .line 564
    if-nez v2, :cond_1

    #@1c
    .line 565
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    #@1e
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@20
    aput-object v4, v3, v1

    #@22
    .line 569
    :goto_1
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@24
    add-int/lit8 v3, v3, -0x1

    #@26
    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@28
    .line 555
    :cond_0
    return-void

    #@29
    .line 567
    :cond_1
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@2b
    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@2d
    goto :goto_1

    #@2e
    .line 572
    :cond_2
    move-object v2, v0

    #@2f
    .line 573
    .local v2, "last":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    #@31
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 704
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@3
    .line 705
    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    #@5
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
    .line 413
    .local p0, "this":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    #@3
    .line 414
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 415
    new-instance v0, Ljava/util/WeakHashMap$3;

    #@9
    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$3;-><init>(Ljava/util/WeakHashMap;)V

    #@c
    iput-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    #@e
    .line 441
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->valuesCollection:Ljava/util/Collection;

    #@10
    return-object v0
.end method
