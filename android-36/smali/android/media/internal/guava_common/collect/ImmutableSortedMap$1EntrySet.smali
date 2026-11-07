.class Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;
.super Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->createEntrySet()Landroid/media/internal/guava_common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 849
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->this$0:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist createAsList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 857
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet$1;-><init>(Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;)V

    return-object v0
.end method

.method public blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;->asList()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 849
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method blacklist map()Landroid/media/internal/guava_common/collect/ImmutableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 887
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedMap$1EntrySet;->this$0:Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 896
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableMapEntrySet;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
