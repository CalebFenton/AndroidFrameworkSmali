.class Ljava/util/ReverseOrderSortedMapView$2;
.super Ljava/util/AbstractCollection;
.source "ReverseOrderSortedMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/ReverseOrderSortedMapView;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderSortedMapView;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/ReverseOrderSortedMapView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$2;, "Ljava/util/ReverseOrderSortedMapView$2;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$2;->this$0:Ljava/util/ReverseOrderSortedMapView;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 114
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$2;, "Ljava/util/ReverseOrderSortedMapView$2;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$2;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$2;, "Ljava/util/ReverseOrderSortedMapView$2;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$2;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$2;, "Ljava/util/ReverseOrderSortedMapView$2;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$2;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedMapView;->descendingValueIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$2;, "Ljava/util/ReverseOrderSortedMapView$2;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$2;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 113
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$2;, "Ljava/util/ReverseOrderSortedMapView$2;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$2;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method
