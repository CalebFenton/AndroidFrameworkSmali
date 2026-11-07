.class Ljava/util/ReverseOrderSortedMapView$4;
.super Ljava/lang/Object;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView;->descendingKeyIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field blacklist prev:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field blacklist root:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$map:Ljava/util/SortedMap;

.field blacklist view:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/SortedMap;)V
    .registers 2

    .line 196
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$4;->val$map:Ljava/util/SortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iget-object p1, p0, Ljava/util/ReverseOrderSortedMapView$4;->val$map:Ljava/util/SortedMap;

    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$4;->root:Ljava/util/SortedMap;

    .line 198
    iget-object p1, p0, Ljava/util/ReverseOrderSortedMapView$4;->val$map:Ljava/util/SortedMap;

    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$4;->view:Ljava/util/SortedMap;

    .line 199
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$4;->prev:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 202
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->view:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->view:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 208
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->view:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->prev:Ljava/lang/Object;

    .line 209
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$4;->root:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ReverseOrderSortedMapView$4;->view:Ljava/util/SortedMap;

    .line 210
    return-object v0

    .line 207
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 214
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->prev:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 217
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->root:Ljava/util/SortedMap;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$4;->prev:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView$4;->prev:Ljava/lang/Object;

    .line 220
    return-void

    .line 215
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
