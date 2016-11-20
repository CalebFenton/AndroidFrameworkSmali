.class Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakHashMapSpliterator"
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
.field current:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:I

.field index:I

.field final map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1046
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.WeakHashMapSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1049
    iput-object p1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@5
    .line 1050
    iput p2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    #@7
    .line 1051
    iput p3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@9
    .line 1052
    iput p4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@b
    .line 1053
    iput p5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@d
    .line 1048
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1068
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.WeakHashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    #@3
    .line 1069
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@5
    int-to-long v0, v0

    #@6
    return-wide v0
.end method

.method final getFence()I
    .locals 3

    #@0
    .prologue
    .line 1058
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.WeakHashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@2
    .local v0, "hi":I
    if-gez v0, :cond_0

    #@4
    .line 1059
    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    #@6
    .line 1060
    .local v1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    #@9
    move-result v2

    #@a
    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    #@c
    .line 1061
    iget v2, v1, Ljava/util/WeakHashMap;->modCount:I

    #@e
    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    #@10
    .line 1062
    iget-object v2, v1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    #@12
    array-length v0, v2

    #@13
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    #@15
    .line 1064
    .end local v1    # "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .restart local v0    # "hi":I
    :cond_0
    return v0
.end method
