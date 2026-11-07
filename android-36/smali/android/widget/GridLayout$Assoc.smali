.class final Landroid/widget/GridLayout$Assoc;
.super Ljava/util/ArrayList;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Assoc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Landroid/util/Pair<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 2297
    .local p0, "this":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2298
    iput-object p1, p0, Landroid/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    .line 2299
    iput-object p2, p0, Landroid/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    .line 2300
    return-void
.end method

.method public static greylist-max-o of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Landroid/widget/GridLayout$Assoc<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2303
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Landroid/widget/GridLayout$Assoc;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o pack()Landroid/widget/GridLayout$PackedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2312
    .local p0, "this":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<TK;TV;>;"
    invoke-virtual {p0}, Landroid/widget/GridLayout$Assoc;->size()I

    move-result v0

    .line 2313
    .local v0, "N":I
    iget-object v1, p0, Landroid/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2314
    .local v1, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Landroid/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 2315
    .local v2, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_2e

    .line 2316
    invoke-virtual {p0, v3}, Landroid/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v1, v3

    .line 2317
    invoke-virtual {p0, v3}, Landroid/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 2315
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2319
    .end local v3    # "i":I
    :cond_2e
    new-instance v3, Landroid/widget/GridLayout$PackedMap;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroid/widget/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Landroid/widget/GridLayout-IA;)V

    return-object v3
.end method

.method public greylist-max-o put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 2307
    .local p0, "this":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$Assoc;->add(Ljava/lang/Object;)Z

    .line 2308
    return-void
.end method
