.class final Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntryIterator;
.super Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2722
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntryIterator;->this$0:Landroid/media/internal/guava_common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;-><init>(Landroid/media/internal/guava_common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 1

    .line 2722
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2726
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/MapMakerInternalMap$HashIterator;->nextEntry()Landroid/media/internal/guava_common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object p0

    return-object p0
.end method
