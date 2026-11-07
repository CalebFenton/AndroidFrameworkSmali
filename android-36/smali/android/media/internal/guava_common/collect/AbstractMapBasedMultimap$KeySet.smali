.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;
.super Landroid/media/internal/guava_common/collect/Maps$KeySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/Maps$KeySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 938
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    .line 939
    invoke-direct {p0, p2}, Landroid/media/internal/guava_common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 988
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    return-void
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p0, p1, :cond_13

    .line 998
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1003
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 945
    new-instance v1, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v1, p0, v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 977
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 979
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 980
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 981
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # -= operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {p0, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$220(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    if-lez v1, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0
.end method
