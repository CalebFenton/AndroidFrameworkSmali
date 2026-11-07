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
.field greylist-max-o current:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o fence:I

.field greylist-max-o index:I

.field final greylist-max-o map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1079
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap$WeakHashMapSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1080
    iput-object p1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1081
    iput p2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .line 1082
    iput p3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .line 1083
    iput p4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1084
    iput p5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1085
    return-void
.end method


# virtual methods
.method public final whitelist test-api estimateSize()J
    .registers 3

    .line 1099
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap$WeakHashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    .line 1100
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final greylist-max-o getFence()I
    .registers 4

    .line 1089
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap$WeakHashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_17

    .line 1090
    iget-object v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1091
    .local v0, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1092
    iget v2, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1093
    iget-object v2, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v2

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    move v1, v2

    .line 1095
    .end local v0    # "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    :cond_17
    return v1
.end method
