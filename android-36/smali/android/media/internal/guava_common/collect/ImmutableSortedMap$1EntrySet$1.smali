.class Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;
.super Landroid/media/internal/guava_common/collect/ImmutableList;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->createAsList()Landroid/media/internal/guava_common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 857
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 857
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist get(I)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 860
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;

    iget-object v1, v1, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->this$0:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    .line 861
    # getter for: Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->keySet:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->access$100(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->this$0:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    # getter for: Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->valueList:Landroid/media/internal/guava_common/collect/ImmutableList;
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->access$200(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 871
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;->this$1:Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->this$0:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->size()I

    move-result p0

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 880
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
