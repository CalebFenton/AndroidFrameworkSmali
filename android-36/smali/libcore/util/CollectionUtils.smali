.class public final Llibcore/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;
    .registers 3
    .param p1, "trim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/ref/Reference<",
            "TT;>;>;Z)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 38
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/ref/Reference<TT;>;>;"
    new-instance v0, Llibcore/util/CollectionUtils$1;

    invoke-direct {v0, p0, p1}, Llibcore/util/CollectionUtils$1;-><init>(Ljava/lang/Iterable;Z)V

    return-object v0
.end method

.method public static blacklist removeDuplicates(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "j":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 89
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_25

    .line 90
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 91
    .local v2, "object":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "j":I
    .local v3, "j":I
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 88
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    .end local v3    # "j":I
    .restart local v0    # "j":I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 94
    .end local v1    # "i":I
    :cond_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 95
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 97
    :cond_39
    return-void
.end method
