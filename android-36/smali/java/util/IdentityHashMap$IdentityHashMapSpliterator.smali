.class Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapSpliterator"
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
.field greylist-max-o est:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o fence:I

.field greylist-max-o index:I

.field final greylist-max-o map:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/IdentityHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1459
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1460
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    .line 1461
    iput p2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .line 1462
    iput p3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .line 1463
    iput p4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1464
    iput p5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1465
    return-void
.end method


# virtual methods
.method public final whitelist test-api estimateSize()J
    .registers 3

    .line 1478
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    .line 1479
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final greylist-max-o getFence()I
    .registers 3

    .line 1469
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_19

    .line 1470
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1471
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1472
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    move v1, v0

    .line 1474
    :cond_19
    return v1
.end method
