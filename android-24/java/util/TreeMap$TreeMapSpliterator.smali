.class Ljava/util/TreeMap$TreeMapSpliterator;
.super Ljava/lang/Object;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeMapSpliterator"
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
.field current:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field side:I

.field final tree:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .locals 0
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2725
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap<TK;TV;>.TreeMapSpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2728
    iput-object p1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@5
    .line 2729
    iput-object p2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@7
    .line 2730
    iput-object p3, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    #@9
    .line 2731
    iput p4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    #@b
    .line 2732
    iput p5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@d
    .line 2733
    iput p6, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@f
    .line 2727
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 2751
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap<TK;TV;>.TreeMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    return-wide v0
.end method

.method final getEstimate()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap<TK;TV;>.TreeMapSpliterator<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 2738
    iget v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@3
    .local v0, "s":I
    if-gez v0, :cond_0

    #@5
    .line 2739
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@7
    .local v1, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    if-eqz v1, :cond_2

    #@9
    .line 2740
    const/4 v2, -0x1

    #@a
    if-ne v0, v2, :cond_1

    #@c
    invoke-virtual {v1}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@f
    move-result-object v2

    #@10
    :goto_0
    iput-object v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@12
    .line 2741
    invoke-static {v1}, Ljava/util/TreeMap;->-get4(Ljava/util/TreeMap;)I

    #@15
    move-result v0

    #@16
    .end local v0    # "s":I
    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@18
    .line 2742
    .restart local v0    # "s":I
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@1b
    move-result v2

    #@1c
    iput v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@1e
    .line 2747
    .end local v1    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :cond_0
    :goto_1
    return v0

    #@1f
    .line 2740
    .restart local v1    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    #@22
    move-result-object v2

    #@23
    goto :goto_0

    #@24
    .line 2745
    :cond_2
    iput v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@26
    const/4 v0, 0x0

    #@27
    goto :goto_1
.end method
