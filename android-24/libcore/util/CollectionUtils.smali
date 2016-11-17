.class public final Llibcore/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;
    .locals 1
    .param p1, "trim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;Z)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/ref/Reference<TT;>;>;"
    new-instance v0, Llibcore/util/CollectionUtils$1;

    #@2
    invoke-direct {v0, p0, p1}, Llibcore/util/CollectionUtils$1;-><init>(Ljava/lang/Iterable;Z)V

    #@5
    return-object v0
.end method

.method public static removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@3
    .line 87
    const/4 v1, 0x1

    #@4
    .line 88
    .local v1, "j":I
    const/4 v0, 0x1

    #@5
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@8
    move-result v4

    #@9
    if-ge v0, v4, :cond_1

    #@b
    .line 89
    add-int/lit8 v4, v1, -0x1

    #@d
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    invoke-interface {p1, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .line 91
    .local v3, "object":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v1, 0x1

    #@21
    .end local v1    # "j":I
    .local v2, "j":I
    invoke-interface {p0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@24
    move v1, v2

    #@25
    .line 88
    .end local v2    # "j":I
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 94
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@2b
    move-result v4

    #@2c
    if-ge v1, v4, :cond_2

    #@2e
    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@31
    move-result v4

    #@32
    invoke-interface {p0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@35
    move-result-object v4

    #@36
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@39
    .line 85
    :cond_2
    return-void
.end method
