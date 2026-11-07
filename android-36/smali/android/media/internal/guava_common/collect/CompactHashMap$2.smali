.class Landroid/media/internal/guava_common/collect/CompactHashMap$2;
.super Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/CompactHashMap<",
        "TK;TV;>.Itr<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/CompactHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 810
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$2;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/internal/guava_common/collect/CompactHashMap$Itr;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;Landroid/media/internal/guava_common/collect/CompactHashMap$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic blacklist getOutput(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 810
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap$2;->getOutput(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method blacklist getOutput(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 813
    new-instance v0, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/CompactHashMap$2;->this$0:Landroid/media/internal/guava_common/collect/CompactHashMap;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/CompactHashMap$MapEntry;-><init>(Landroid/media/internal/guava_common/collect/CompactHashMap;I)V

    return-object v0
.end method
