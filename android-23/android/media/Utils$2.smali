.class final Landroid/media/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Range",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Range;Landroid/util/Range;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<TT;>;",
            "Landroid/util/Range",
            "<TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "lhs":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p2, "rhs":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 96
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    if-gez v0, :cond_0

    #@f
    .line 97
    const/4 v0, -0x1

    #@10
    return v0

    #@11
    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@1c
    move-result v0

    #@1d
    if-lez v0, :cond_1

    #@1f
    .line 99
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 101
    :cond_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 95
    check-cast p1, Landroid/util/Range;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/util/Range;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/Utils$2;->compare(Landroid/util/Range;Landroid/util/Range;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
