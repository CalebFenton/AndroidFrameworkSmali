.class Ljava/util/EnumMap$EnumMapEntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 301
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    .local p1, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@3
    .line 302
    iput-object p1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@5
    .line 301
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 307
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    #@5
    .line 306
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 312
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    const/4 v2, 0x0

    #@1
    .line 313
    .local v2, "isEqual":Z
    instance-of v4, p1, Ljava/util/Map$Entry;

    #@3
    if-eqz v4, :cond_0

    #@5
    move-object v4, p1

    #@6
    .line 314
    check-cast v4, Ljava/util/Map$Entry;

    #@8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 315
    .local v0, "enumKey":Ljava/lang/Object;
    check-cast p1, Ljava/util/Map$Entry;

    #@e
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    .line 316
    .local v1, "enumValue":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@14
    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_0

    #@1a
    .line 317
    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@1c
    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    .line 318
    .local v3, "value":Ljava/lang/Object;, "TVT;"
    if-nez v3, :cond_2

    #@22
    .line 319
    if-nez v1, :cond_1

    #@24
    const/4 v2, 0x1

    #@25
    .line 325
    .end local v0    # "enumKey":Ljava/lang/Object;
    .end local v1    # "enumValue":Ljava/lang/Object;
    .end local v2    # "isEqual":Z
    .end local v3    # "value":Ljava/lang/Object;, "TVT;"
    :cond_0
    :goto_0
    return v2

    #@26
    .line 319
    .restart local v0    # "enumKey":Ljava/lang/Object;
    .restart local v1    # "enumValue":Ljava/lang/Object;
    .restart local v2    # "isEqual":Z
    .restart local v3    # "value":Ljava/lang/Object;, "TVT;"
    :cond_1
    const/4 v2, 0x0

    #@27
    goto :goto_0

    #@28
    .line 321
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    .local v2, "isEqual":Z
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 330
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/EnumMap$EnumMapEntryIterator;

    #@2
    .line 331
    new-instance v1, Ljava/util/EnumMap$EnumMapEntrySet$1;

    #@4
    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapEntrySet$1;-><init>(Ljava/util/EnumMap$EnumMapEntrySet;)V

    #@7
    .line 335
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@9
    .line 330
    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapEntryIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 340
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapEntrySet;->contains(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 341
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@8
    check-cast p1, Ljava/util/Map$Entry;

    #@a
    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 342
    const/4 v0, 0x1

    #@12
    return v0

    #@13
    .line 344
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 349
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 354
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    iget-object v1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v1}, Ljava/util/EnumMap;->size()I

    #@5
    move-result v1

    #@6
    new-array v0, v1, [Ljava/lang/Object;

    #@8
    .line 355
    .local v0, "entryArray":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap$EnumMapEntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 360
    .local p0, "this":Ljava/util/EnumMap$EnumMapEntrySet;, "Ljava/util/EnumMap<TK;TV;>.EnumMapEntrySet<TKT;TVT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v8, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v8}, Ljava/util/EnumMap;->size()I

    #@5
    move-result v7

    #@6
    .line 361
    .local v7, "size":I
    const/4 v3, 0x0

    #@7
    .line 362
    .local v3, "index":I
    move-object v2, p1

    #@8
    .line 363
    .local v2, "entryArray":[Ljava/lang/Object;, "[TT;"
    array-length v8, p1

    #@9
    if-le v7, v8, :cond_0

    #@b
    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@12
    move-result-object v0

    #@13
    .line 365
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@16
    move-result-object v5

    #@17
    check-cast v5, [Ljava/lang/Object;

    #@19
    .line 366
    .local v5, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object v2, v5

    #@1a
    .line 368
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapEntrySet;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v4

    #@1e
    .line 369
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TKT;TVT;>;>;"
    :goto_0
    if-ge v3, v7, :cond_1

    #@20
    .line 370
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/util/Map$Entry;

    #@26
    .line 372
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKT;TVT;>;"
    new-instance v6, Ljava/util/MapEntry;

    #@28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2b
    move-result-object v8

    #@2c
    check-cast v8, Ljava/lang/Enum;

    #@2e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v9

    #@32
    invoke-direct {v6, v8, v9}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@35
    .line 373
    .local v6, "newEntry":Ljava/lang/Object;, "TT;"
    aput-object v6, v2, v3

    #@37
    .line 369
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 375
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TKT;TVT;>;"
    .end local v6    # "newEntry":Ljava/lang/Object;, "TT;"
    :cond_1
    array-length v8, p1

    #@3b
    if-ge v3, v8, :cond_2

    #@3d
    .line 376
    const/4 v8, 0x0

    #@3e
    aput-object v8, v2, v3

    #@40
    .line 378
    :cond_2
    return-object v2
.end method
