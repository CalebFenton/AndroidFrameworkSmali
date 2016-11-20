.class Ljava/util/EnumMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    #@0
    .prologue
    .line 471
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/EnumMap;

    #@0
    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;)V

    #@3
    return-void
.end method

.method private fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p1, "a"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 508
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    const/4 v1, 0x0

    #@1
    .line 509
    .local v1, "j":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@4
    invoke-static {v3}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@7
    move-result-object v3

    #@8
    array-length v3, v3

    #@9
    if-ge v0, v3, :cond_1

    #@b
    .line 510
    iget-object v3, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@d
    invoke-static {v3}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    aget-object v3, v3, v0

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 511
    add-int/lit8 v2, v1, 0x1

    #@17
    .end local v1    # "j":I
    .local v2, "j":I
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    #@19
    .line 512
    iget-object v4, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@1b
    invoke-static {v4}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    #@1e
    move-result-object v4

    #@1f
    aget-object v4, v4, v0

    #@21
    iget-object v5, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@23
    iget-object v6, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@25
    invoke-static {v6}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    #@28
    move-result-object v6

    #@29
    aget-object v6, v6, v0

    #@2b
    invoke-static {v5, v6}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    .line 511
    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@32
    aput-object v3, p1, v1

    #@34
    move v1, v2

    #@35
    .line 509
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 513
    :cond_1
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 492
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    #@5
    .line 491
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 477
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 478
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 479
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 480
    .local v0, "entry":Ljava/util/Map$Entry;
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-wrap0(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 473
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/EnumMap$EntryIterator;

    #@2
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntryIterator;)V

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 483
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 484
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 485
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 486
    .local v0, "entry":Ljava/util/Map$Entry;
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 489
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 495
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    #@2
    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    #@5
    move-result v0

    #@6
    new-array v0, v0, [Ljava/lang/Object;

    #@8
    invoke-direct {p0, v0}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 499
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntrySet;->size()I

    #@3
    move-result v0

    #@4
    .line 500
    .local v0, "size":I
    array-length v1, p1

    #@5
    if-ge v1, v0, :cond_0

    #@7
    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    .line 501
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@12
    move-result-object p1

    #@13
    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    #@15
    .line 503
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    array-length v1, p1

    #@16
    if-le v1, v0, :cond_1

    #@18
    .line 504
    const/4 v1, 0x0

    #@19
    aput-object v1, p1, v0

    #@1b
    .line 505
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method
