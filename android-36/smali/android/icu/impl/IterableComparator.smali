.class public Landroid/icu/impl/IterableComparator;
.super Ljava/lang/Object;
.source "IterableComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final blacklist NOCOMPARATOR:Landroid/icu/impl/IterableComparator;


# instance fields
.field private final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist shorterFirst:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/icu/impl/IterableComparator;

    invoke-direct {v0}, Landroid/icu/impl/IterableComparator;-><init>()V

    sput-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 25
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Comparator;Z)V
    .registers 4
    .param p2, "shorterFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    .line 34
    if-eqz p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    iput v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    .line 35
    return-void
.end method

.method public static blacklist compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 65
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    sget-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 39
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    .local p1, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 40
    if-nez p2, :cond_6

    goto :goto_9

    :cond_6
    iget v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    neg-int v0, v0

    :goto_9
    return v0

    .line 41
    :cond_a
    if-nez p2, :cond_f

    .line 42
    iget v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return v0

    .line 44
    :cond_f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    .local v1, "ai":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 47
    .local v2, "bi":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_27

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    iget v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    neg-int v0, v0

    :cond_26
    return v0

    .line 50
    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_30

    .line 51
    iget v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return v0

    .line 53
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, "aItem":Ljava/lang/Object;, "TT;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "bItem":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    if-eqz v5, :cond_43

    iget-object v5, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto :goto_4a

    :cond_43
    move-object v5, v3

    check-cast v5, Ljava/lang/Comparable;

    invoke-interface {v5, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    .line 57
    .local v5, "result":I
    :goto_4a
    if-eqz v5, :cond_4d

    .line 58
    return v5

    .line 60
    .end local v3    # "aItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "bItem":Ljava/lang/Object;, "TT;"
    .end local v5    # "result":I
    :cond_4d
    goto :goto_17
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

    .line 20
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p1

    return p1
.end method
