.class Ljava/util/ReverseOrderSortedMapView$3;
.super Ljava/util/AbstractSet;
.source "ReverseOrderSortedMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
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

    .line 121
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$3;, "Ljava/util/ReverseOrderSortedMapView$3;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$3;->this$0:Ljava/util/ReverseOrderSortedMapView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 125
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$3;, "Ljava/util/ReverseOrderSortedMapView$3;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$3;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$3;, "Ljava/util/ReverseOrderSortedMapView$3;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$3;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$3;, "Ljava/util/ReverseOrderSortedMapView$3;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$3;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedMapView;->descendingEntryIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$3;, "Ljava/util/ReverseOrderSortedMapView$3;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$3;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 124
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$3;, "Ljava/util/ReverseOrderSortedMapView$3;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$3;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method
