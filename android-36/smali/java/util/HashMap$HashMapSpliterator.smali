.class Ljava/util/HashMap$HashMapSpliterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field greylist-max-o current:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o fence:I

.field greylist-max-o index:I

.field final greylist-max-o map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/HashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1652
    .local p0, "this":Ljava/util/HashMap$HashMapSpliterator;, "Ljava/util/HashMap$HashMapSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1653
    iput-object p1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    .line 1654
    iput p2, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    .line 1655
    iput p3, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    .line 1656
    iput p4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    .line 1657
    iput p5, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    .line 1658
    return-void
.end method


# virtual methods
.method public final whitelist test-api estimateSize()J
    .registers 3

    .line 1673
    .local p0, "this":Ljava/util/HashMap$HashMapSpliterator;, "Ljava/util/HashMap$HashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    .line 1674
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final greylist-max-o getFence()I
    .registers 5

    .line 1662
    .local p0, "this":Ljava/util/HashMap$HashMapSpliterator;, "Ljava/util/HashMap$HashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_19

    .line 1663
    iget-object v0, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    .line 1664
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v2, v0, Ljava/util/HashMap;->size:I

    iput v2, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    .line 1665
    iget v2, v0, Ljava/util/HashMap;->modCount:I

    iput v2, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    .line 1666
    iget-object v2, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1667
    .local v2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v2, :cond_15

    const/4 v3, 0x0

    goto :goto_16

    :cond_15
    array-length v3, v2

    :goto_16
    iput v3, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    move v1, v3

    .line 1669
    .end local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .end local v2    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_19
    return v1
.end method
