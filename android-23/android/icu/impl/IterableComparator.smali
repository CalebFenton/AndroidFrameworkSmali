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
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final NOCOMPARATOR:Landroid/icu/impl/IterableComparator;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final shorterFirst:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    new-instance v0, Landroid/icu/impl/IterableComparator;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/IterableComparator;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    #@7
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 17
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    #@5
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 21
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    #@4
    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 1
    .param p2, "shorterFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 24
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    #@5
    .line 26
    if-eqz p2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    iput v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    #@a
    .line 24
    return-void

    #@b
    .line 26
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public static compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 56
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    sget-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    .local p1, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 30
    if-nez p1, :cond_1

    #@3
    .line 31
    if-nez p2, :cond_0

    #@5
    :goto_0
    return v5

    #@6
    :cond_0
    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    #@8
    neg-int v5, v5

    #@9
    goto :goto_0

    #@a
    .line 32
    :cond_1
    if-nez p2, :cond_2

    #@c
    .line 33
    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    #@e
    return v5

    #@f
    .line 35
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .line 36
    .local v1, "ai":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    .line 38
    .local v3, "bi":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v6

    #@1b
    if-nez v6, :cond_5

    #@1d
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_4

    #@23
    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    #@25
    neg-int v5, v5

    #@26
    :cond_4
    return v5

    #@27
    .line 41
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_6

    #@2d
    .line 42
    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    #@2f
    return v5

    #@30
    .line 44
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    .line 45
    .local v0, "aItem":Ljava/lang/Object;, "TT;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    .line 47
    .local v2, "bItem":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    #@3a
    if-eqz v6, :cond_7

    #@3c
    iget-object v6, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    #@3e
    invoke-interface {v6, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@41
    move-result v4

    #@42
    .line 48
    .end local v0    # "aItem":Ljava/lang/Object;, "TT;"
    .local v4, "result":I
    :goto_1
    if-eqz v4, :cond_3

    #@44
    .line 49
    return v4

    #@45
    .line 47
    .end local v4    # "result":I
    .restart local v0    # "aItem":Ljava/lang/Object;, "TT;"
    :cond_7
    check-cast v0, Ljava/lang/Comparable;

    #@47
    .end local v0    # "aItem":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@4a
    move-result v4

    #@4b
    .restart local v4    # "result":I
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 29
    .local p0, "this":Landroid/icu/impl/IterableComparator;, "Landroid/icu/impl/IterableComparator<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Iterable;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
