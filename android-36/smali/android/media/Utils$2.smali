.class Landroid/media/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Range<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/util/Range;Landroid/util/Range;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;",
            "Landroid/util/Range<",
            "TT;>;)I"
        }
    .end annotation

    .line 154
    .local p1, "lhs":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    .local p2, "rhs":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_10

    .line 155
    const/4 v0, -0x1

    return v0

    .line 156
    :cond_10
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_20

    .line 157
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 151
    check-cast p1, Landroid/util/Range;

    check-cast p2, Landroid/util/Range;

    invoke-virtual {p0, p1, p2}, Landroid/media/Utils$2;->compare(Landroid/util/Range;Landroid/util/Range;)I

    move-result p1

    return p1
.end method
