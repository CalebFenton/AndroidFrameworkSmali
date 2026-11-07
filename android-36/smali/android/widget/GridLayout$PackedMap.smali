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
.field public final greylist-max-o index:[I

.field public final greylist-max-o keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public final greylist-max-o values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 2343
    .local p0, "this":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2344
    invoke-static {p1}, Landroid/widget/GridLayout$PackedMap;->createIndex([Ljava/lang/Object;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    .line 2346
    iget-object v0, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    invoke-static {p1, v0}, Landroid/widget/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    .line 2347
    iget-object v0, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    invoke-static {p2, v0}, Landroid/widget/GridLayout$PackedMap;->compact([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    .line 2348
    return-void
.end method

.method synthetic constructor blacklist <init>([Ljava/lang/Object;[Ljava/lang/Object;Landroid/widget/GridLayout-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private static greylist-max-o compact([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .registers 8
    .param p1, "index"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;[I)[TK;"
        }
    .end annotation

    .line 2375
    .local p0, "a":[Ljava/lang/Object;, "[TK;"
    array-length v0, p0

    .line 2376
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 2377
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, -0x1

    invoke-static {p1, v2}, Landroid/widget/GridLayout;->max2([II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2380
    .local v2, "result":[Ljava/lang/Object;, "[TK;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v0, :cond_22

    .line 2381
    aget v4, p1, v3

    aget-object v5, p0, v3

    aput-object v5, v2, v4

    .line 2380
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2383
    .end local v3    # "i":I
    :cond_22
    return-object v2
.end method

.method private static greylist-max-o createIndex([Ljava/lang/Object;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">([TK;)[I"
        }
    .end annotation

    .line 2355
    .local p0, "keys":[Ljava/lang/Object;, "[TK;"
    array-length v0, p0

    .line 2356
    .local v0, "size":I
    new-array v1, v0, [I

    .line 2358
    .local v1, "result":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2359
    .local v2, "keyToIndex":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_29

    .line 2360
    aget-object v4, p0, v3

    .line 2361
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 2362
    .local v5, "index":Ljava/lang/Integer;
    if-nez v5, :cond_20

    .line 2363
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2364
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    :cond_20
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v3

    .line 2359
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "index":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2368
    .end local v3    # "i":I
    :cond_29
    return-object v1
.end method


# virtual methods
.method public greylist-max-o getValue(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 2351
    .local p0, "this":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<TK;TV;>;"
    iget-object v0, p0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/widget/GridLayout$PackedMap;->index:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
