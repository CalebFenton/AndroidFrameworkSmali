.class final Landroid/icu/util/Currency$EquivalenceRelation;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EquivalenceRelation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 949
    .local p0, "this":Landroid/icu/util/Currency$EquivalenceRelation;, "Landroid/icu/util/Currency$EquivalenceRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 951
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    #@a
    .line 949
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Currency$EquivalenceRelation;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Landroid/icu/util/Currency$EquivalenceRelation;, "Landroid/icu/util/Currency$EquivalenceRelation<TT;>;"
    invoke-direct {p0}, Landroid/icu/util/Currency$EquivalenceRelation;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Landroid/icu/util/Currency$EquivalenceRelation",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/util/Currency$EquivalenceRelation;, "Landroid/icu/util/Currency$EquivalenceRelation<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    #@1
    .line 955
    new-instance v0, Ljava/util/HashSet;

    #@3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 956
    .local v0, "group":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    array-length v4, p1

    #@7
    move v3, v2

    #@8
    :goto_0
    if-ge v3, v4, :cond_1

    #@a
    aget-object v1, p1, v3

    #@c
    .line 957
    .local v1, "item":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    #@e
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_0

    #@14
    .line 958
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@16
    const-string/jumbo v3, "All groups passed to add must be disjoint."

    #@19
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 960
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    .line 956
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 962
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    array-length v3, p1

    #@24
    :goto_1
    if-ge v2, v3, :cond_2

    #@26
    aget-object v1, p1, v2

    #@28
    .line 963
    .restart local v1    # "item":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    #@2a
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 962
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_1

    #@30
    .line 965
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 969
    .local p0, "this":Landroid/icu/util/Currency$EquivalenceRelation;, "Landroid/icu/util/Currency$EquivalenceRelation<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/icu/util/Currency$EquivalenceRelation;->data:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Set;

    #@8
    .line 970
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez v0, :cond_0

    #@a
    .line 971
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 973
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method
