.class Ljava/util/ReverseOrderSortedMapView$5;
.super Ljava/lang/Object;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView;->descendingValueIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
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

    .line 225
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$5;->val$map:Ljava/util/SortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iget-object p1, p0, Ljava/util/ReverseOrderSortedMapView$5;->val$map:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/util/ReverseOrderSortedMapView;->descendingKeyIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$5;->keyIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 229
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$5;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$5;->val$map:Ljava/util/SortedMap;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$5;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 237
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$5;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 238
    return-void
.end method
