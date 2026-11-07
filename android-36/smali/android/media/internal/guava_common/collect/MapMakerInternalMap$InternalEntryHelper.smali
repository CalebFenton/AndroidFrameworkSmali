.class interface abstract Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntryHelper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InternalEntryHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist copy(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .param p3    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TE;)TE;"
        }
    .end annotation
.end method

.method public abstract blacklist keyStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
.end method

.method public abstract blacklist newEntry(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILandroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
    .param p4    # Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TK;ITE;)TE;"
        }
    .end annotation
.end method

.method public abstract blacklist newSegment(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;I)Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;I)TS;"
        }
    .end annotation
.end method

.method public abstract blacklist setValue(Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Segment;Landroid/media/internal/guava_common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TV;)V"
        }
    .end annotation
.end method

.method public abstract blacklist valueStrength()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$Strength;
.end method
