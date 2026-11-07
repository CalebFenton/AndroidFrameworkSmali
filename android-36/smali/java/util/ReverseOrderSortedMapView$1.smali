.class Ljava/util/ReverseOrderSortedMapView$1;
.super Ljava/util/AbstractSet;
.source "ReverseOrderSortedMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
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

    .line 99
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$1;, "Ljava/util/ReverseOrderSortedMapView$1;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$1;->this$0:Ljava/util/ReverseOrderSortedMapView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 103
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$1;, "Ljava/util/ReverseOrderSortedMapView$1;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$1;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$1;, "Ljava/util/ReverseOrderSortedMapView$1;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$1;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$1;, "Ljava/util/ReverseOrderSortedMapView$1;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$1;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedMapView;->descendingKeyIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$1;, "Ljava/util/ReverseOrderSortedMapView$1;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$1;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 102
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$1;, "Ljava/util/ReverseOrderSortedMapView$1;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$1;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method
