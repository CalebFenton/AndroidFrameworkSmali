.class final Landroid/widget/GridLayout$PackedMap;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final index:[I

.field public final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2297
    .local p0, "this":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2298
    invoke-static {p1}, Landroid/widget/GridLayout$PackedMap;->createIndex([Ljava/lang/Object;)[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    #@9
    .line 2300
    iget-object v0, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    #@b
    invoke-static {p1, v0}, Landroid/widget/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    #@11
    .line 2301
    iget-object v0, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    #@13
    invoke-static {p2, v0}, Landroid/widget/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    #@19
    .line 2297
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;Landroid/widget/GridLayout$PackedMap;)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method private static compact([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;[I)[TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 2329
    .local p0, "a":[Ljava/lang/Object;, "[TK;"
    array-length v3, p0

    #@1
    .line 2330
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    .line 2331
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, -0x1

    #@a
    invoke-static {p1, v4}, Landroid/widget/GridLayout;->max2([II)I

    #@d
    move-result v4

    #@e
    add-int/lit8 v4, v4, 0x1

    #@10
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, [Ljava/lang/Object;

    #@16
    .line 2334
    .local v2, "result":[Ljava/lang/Object;, "[TK;"
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@19
    .line 2335
    aget v4, p1, v1

    #@1b
    aget-object v5, p0, v1

    #@1d
    aput-object v5, v2, v4

    #@1f
    .line 2334
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 2337
    :cond_0
    return-object v2
.end method

.method private static createIndex([Ljava/lang/Object;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;)[I"
        }
    .end annotation

    #@0
    .prologue
    .line 2309
    .local p0, "keys":[Ljava/lang/Object;, "[TK;"
    array-length v5, p0

    #@1
    .line 2310
    .local v5, "size":I
    new-array v4, v5, [I

    #@3
    .line 2312
    .local v4, "result":[I
    new-instance v3, Ljava/util/HashMap;

    #@5
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 2313
    .local v3, "keyToIndex":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    #@b
    .line 2314
    aget-object v2, p0, v0

    #@d
    .line 2315
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/lang/Integer;

    #@13
    .line 2316
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@15
    .line 2317
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@18
    move-result v6

    #@19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    .line 2318
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 2320
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v6

    #@24
    aput v6, v4, v0

    #@26
    .line 2313
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 2322
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2305
    .local p0, "this":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    #@2
    iget-object v1, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    #@4
    aget v1, v1, p1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method
