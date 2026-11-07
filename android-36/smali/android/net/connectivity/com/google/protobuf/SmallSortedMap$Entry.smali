.class Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/lang/Comparable<",
        "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
        "TK;TV;>.Entry;>;"
    }
.end annotation


# instance fields
.field private final blacklist key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

.field private blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 407
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p2, "key":Ljava/lang/Comparable;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    .line 409
    iput-object p3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 410
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 404
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p2, "copy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 405
    return-void
.end method

.method private blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 459
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method public blacklist compareTo(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;)I"
        }
    .end annotation

    .line 424
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p1, "other":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 398
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    check-cast p1, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->compareTo(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 437
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 438
    return v0

    .line 440
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 441
    return v2

    .line 443
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 444
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public blacklist getKey()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 414
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 398
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 419
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 449
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_d
    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_12

    goto :goto_18

    :cond_12
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_18
    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 429
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    # invokes: Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->checkMutable()V
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->access$300(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V

    .line 430
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 431
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 432
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 454
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
