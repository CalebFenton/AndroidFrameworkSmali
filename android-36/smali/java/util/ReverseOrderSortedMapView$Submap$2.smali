.class Ljava/util/ReverseOrderSortedMapView$Submap$2;
.super Ljava/util/AbstractSet;
.source "ReverseOrderSortedMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView$Submap;->entrySet()Ljava/util/Set;
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
.field final synthetic blacklist this$1:Ljava/util/ReverseOrderSortedMapView$Submap;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderSortedMapView$Submap;)V
    .registers 2
    .param p1, "this$1"    # Ljava/util/ReverseOrderSortedMapView$Submap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 397
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$2;, "Ljava/util/ReverseOrderSortedMapView$Submap$2;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$Submap$2;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 399
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$2;, "Ljava/util/ReverseOrderSortedMapView$Submap$2;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$2;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-virtual {v0}, Ljava/util/ReverseOrderSortedMapView$Submap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 4

    .line 403
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$2;, "Ljava/util/ReverseOrderSortedMapView$Submap$2;"
    const/4 v0, 0x0

    .line 404
    .local v0, "sz":I
    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap$2;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-virtual {v1}, Ljava/util/ReverseOrderSortedMapView$Submap;->entryIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 408
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_13
    return v0
.end method
