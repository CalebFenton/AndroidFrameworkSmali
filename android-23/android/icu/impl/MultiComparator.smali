.class public Landroid/icu/impl/MultiComparator;
.super Ljava/lang/Object;
.source "MultiComparator.java"

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
        "<TT;>;"
    }
.end annotation


# instance fields
.field private comparators:[Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 15
    .local p0, "this":Landroid/icu/impl/MultiComparator;, "Landroid/icu/impl/MultiComparator<TT;>;"
    .local p1, "comparators":[Ljava/util/Comparator;, "[Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    iput-object p1, p0, Landroid/icu/impl/MultiComparator;->comparators:[Ljava/util/Comparator;

    #@5
    .line 15
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/MultiComparator;, "Landroid/icu/impl/MultiComparator<TT;>;"
    .local p1, "arg0":Ljava/lang/Object;, "TT;"
    .local p2, "arg1":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    #@1
    .line 25
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/MultiComparator;->comparators:[Ljava/util/Comparator;

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_2

    #@7
    .line 26
    iget-object v2, p0, Landroid/icu/impl/MultiComparator;->comparators:[Ljava/util/Comparator;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    .line 27
    .local v1, "result":I
    if-nez v1, :cond_0

    #@11
    .line 25
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 30
    :cond_0
    if-lez v1, :cond_1

    #@16
    .line 31
    add-int/lit8 v2, v0, 0x1

    #@18
    return v2

    #@19
    .line 33
    :cond_1
    add-int/lit8 v2, v0, 0x1

    #@1b
    neg-int v2, v2

    #@1c
    return v2

    #@1d
    .line 35
    .end local v1    # "result":I
    :cond_2
    return v3
.end method
