.class Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field blacklist nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

.field blacklist toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 552
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$300(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->multimapHeaderEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->access$300(Landroid/media/internal/guava_common/collect/LinkedHashMultimap;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p0

    if-eq v0, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 1

    .line 552
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 566
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 567
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 568
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInMultimap()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v1

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0

    .line 564
    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 574
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 575
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->this$0:Landroid/media/internal/guava_common/collect/LinkedHashMultimap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/ImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v2}, Landroid/media/internal/guava_common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 576
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method
