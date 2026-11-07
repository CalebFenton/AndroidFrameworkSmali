.class Ljava/util/ReverseOrderSortedMapView$ViewEntry;
.super Ljava/lang/Object;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ReverseOrderSortedMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->map:Ljava/util/Map;

    .line 268
    iput-object p2, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->key:Ljava/lang/Object;

    .line 269
    iput-object p3, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->value:Ljava/lang/Object;

    .line 270
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 279
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_21

    .line 277
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->key:Ljava/lang/Object;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->value:Ljava/lang/Object;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_21
    const/4 v1, 0x0

    .line 277
    :goto_22
    return v1
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 272
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 273
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 283
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 274
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->map:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 287
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$ViewEntry;, "Ljava/util/ReverseOrderSortedMapView$ViewEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$ViewEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
