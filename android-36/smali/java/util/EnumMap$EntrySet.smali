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
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 473
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method private greylist-max-o fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .param p1, "a"    # [Ljava/lang/Object;

    .line 506
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    .line 507
    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_38

    .line 508
    iget-object v2, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_35

    .line 509
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "j":I
    .local v2, "j":I
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v4, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v4}, Ljava/util/EnumMap;->-$$Nest$fgetkeyUniverse(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v5, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    iget-object v6, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-$$Nest$fgetvals(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v1

    .line 510
    invoke-static {v5, v6}, Ljava/util/EnumMap;->-$$Nest$munmaskNull(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v0

    move v0, v2

    .line 507
    .end local v2    # "j":I
    .restart local v0    # "j":I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 511
    .end local v1    # "i":I
    :cond_38
    return-object p1
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 490
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 491
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 480
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_19

    .line 479
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-$$Nest$mcontainsMapping(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_19
    const/4 v1, 0x0

    .line 479
    :goto_1a
    return v1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 475
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/EnumMap$EntryIterator;

    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap-IA;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 484
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_19

    .line 483
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-$$Nest$mremoveMapping(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_19
    const/4 v1, 0x0

    .line 483
    :goto_1a
    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 487
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 493
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-$$Nest$fgetsize(Ljava/util/EnumMap;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 497
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntrySet;->size()I

    move-result v0

    .line 498
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_17

    .line 499
    nop

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 501
    :cond_17
    array-length v1, p1

    if-le v1, v0, :cond_1d

    .line 502
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 503
    :cond_1d
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
