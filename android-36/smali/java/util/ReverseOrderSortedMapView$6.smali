.class Ljava/util/ReverseOrderSortedMapView$6;
.super Ljava/lang/Object;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView;->descendingEntryIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field blacklist keyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$map:Ljava/util/SortedMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/SortedMap;)V
    .registers 2

    .line 243
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$6;->val$map:Ljava/util/SortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iget-object p1, p0, Ljava/util/ReverseOrderSortedMapView$6;->val$map:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/util/ReverseOrderSortedMapView;->descendingKeyIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$6;->keyIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 247
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$6;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 243
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$6;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$6;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/ReverseOrderSortedMapView$ViewEntry;

    iget-object v2, p0, Ljava/util/ReverseOrderSortedMapView$6;->val$map:Ljava/util/SortedMap;

    iget-object v3, p0, Ljava/util/ReverseOrderSortedMapView$6;->val$map:Ljava/util/SortedMap;

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Ljava/util/ReverseOrderSortedMapView$ViewEntry;-><init>(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 256
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$6;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 257
    return-void
.end method
