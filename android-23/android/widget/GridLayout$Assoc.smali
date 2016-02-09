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
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2251
    .local p0, "this":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #@3
    .line 2252
    iput-object p1, p0, Landroid/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    #@5
    .line 2253
    iput-object p2, p0, Landroid/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    #@7
    .line 2251
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Landroid/widget/GridLayout$Assoc",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2257
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Landroid/widget/GridLayout$Assoc;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public pack()Landroid/widget/GridLayout$PackedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2266
    .local p0, "this":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<TK;TV;>;"
    invoke-virtual {p0}, Landroid/widget/GridLayout$Assoc;->size()I

    #@3
    move-result v0

    #@4
    .line 2267
    .local v0, "N":I
    iget-object v4, p0, Landroid/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    #@6
    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, [Ljava/lang/Object;

    #@c
    .line 2268
    .local v2, "keys":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Landroid/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    #@e
    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, [Ljava/lang/Object;

    #@14
    .line 2269
    .local v3, "values":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@17
    .line 2270
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/util/Pair;

    #@1d
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@1f
    aput-object v4, v2, v1

    #@21
    .line 2271
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Landroid/util/Pair;

    #@27
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@29
    aput-object v4, v3, v1

    #@2b
    .line 2269
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2273
    :cond_0
    new-instance v4, Landroid/widget/GridLayout$PackedMap;

    #@30
    const/4 v5, 0x0

    #@31
    invoke-direct {v4, v2, v3, v5}, Landroid/widget/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Landroid/widget/GridLayout$PackedMap;)V

    #@34
    return-object v4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2261
    .local p0, "this":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$Assoc;->add(Ljava/lang/Object;)Z

    #@7
    .line 2260
    return-void
.end method
