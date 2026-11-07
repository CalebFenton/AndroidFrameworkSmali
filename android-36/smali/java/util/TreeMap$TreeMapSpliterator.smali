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
.field greylist-max-o current:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o fence:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o side:I

.field final greylist-max-o tree:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .registers 7
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 3064
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap$TreeMapSpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3065
    iput-object p1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    .line 3066
    iput-object p2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3067
    iput-object p3, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3068
    iput p4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    .line 3069
    iput p5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    .line 3070
    iput p6, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    .line 3071
    return-void
.end method


# virtual methods
.method public final whitelist test-api estimateSize()J
    .registers 3

    .line 3088
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap$TreeMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method final greylist-max-o getEstimate()I
    .registers 4

    .line 3075
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap$TreeMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_2a

    .line 3076
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    move-object v2, v0

    .local v2, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    if-eqz v0, :cond_26

    .line 3077
    const/4 v0, -0x1

    if-ne v1, v0, :cond_12

    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3078
    invoke-static {v2}, Ljava/util/TreeMap;->-$$Nest$fgetsize(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    move v1, v0

    .line 3079
    invoke-static {v2}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    goto :goto_2a

    .line 3082
    :cond_26
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    move v1, v0

    .line 3084
    .end local v2    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :cond_2a
    :goto_2a
    return v1
.end method
