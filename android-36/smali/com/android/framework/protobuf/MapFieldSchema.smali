.class interface abstract Lcom/android/framework/protobuf/MapFieldSchema;
.super Ljava/lang/Object;
.source "MapFieldSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# virtual methods
.method public abstract blacklist forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract blacklist forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract blacklist forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end method

.method public abstract blacklist getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method public abstract blacklist isImmutable(Ljava/lang/Object;)Z
.end method

.method public abstract blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract blacklist newMapField(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
.end method
