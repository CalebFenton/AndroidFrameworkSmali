.class Landroid/net/connectivity/com/google/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 10
    .param p0, "fieldNumber"    # I
    .param p1, "mapField"    # Ljava/lang/Object;
    .param p2, "defaultEntry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 96
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 97
    .local v0, "mapFieldLite":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    move-object v1, p2

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    .line 99
    .local v1, "defaultEntryLite":Landroid/net/connectivity/com/google/protobuf/MapEntryLite;, "Landroid/net/connectivity/com/google/protobuf/MapEntryLite<TK;TV;>;"
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 100
    const/4 v2, 0x0

    return v2

    .line 102
    :cond_e
    const/4 v2, 0x0

    .line 103
    .local v2, "size":I
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 104
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, p0, v5, v6}, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 105
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_17

    .line 106
    :cond_31
    return v2
.end method

.method private static blacklist mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapFieldLite;
    .registers 5
    .param p0, "destMapField"    # Ljava/lang/Object;
    .param p1, "srcMapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 77
    move-object v0, p0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 78
    .local v0, "mine":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    .line 79
    .local v1, "other":Landroid/net/connectivity/com/google/protobuf/MapFieldLite;, "Landroid/net/connectivity/com/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 80
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v2

    if-nez v2, :cond_16

    .line 81
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->mutableCopy()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 83
    :cond_16
    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/MapFieldLite;)V

    .line 85
    :cond_19
    return-object v0
.end method


# virtual methods
.method public blacklist forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 51
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public blacklist forMapMetadata(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;
    .registers 3
    .param p1, "mapDefaultEntry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapEntryLite;->getMetadata()Landroid/net/connectivity/com/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public blacklist forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public blacklist getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "fieldNumber"    # I
    .param p2, "mapField"    # Ljava/lang/Object;
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;

    .line 90
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemaLite;->getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isImmutable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "mapField"    # Ljava/lang/Object;

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "destMapField"    # Ljava/lang/Object;
    .param p2, "srcMapField"    # Ljava/lang/Object;

    .line 72
    invoke-static {p1, p2}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "unused"    # Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->emptyMapField()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->mutableCopy()Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "mapField"    # Ljava/lang/Object;

    .line 61
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/MapFieldLite;->makeImmutable()V

    .line 62
    return-object p1
.end method
