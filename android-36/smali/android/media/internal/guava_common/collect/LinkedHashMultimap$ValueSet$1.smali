.class Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field blacklist expectedModCount:I

.field blacklist nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$1:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

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
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 409
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->access$000(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    .line 412
    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->access$100(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    return-void
.end method

.method private blacklist checkForComodification()V
    .registers 2

    .line 415
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->access$100(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iget p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    if-ne v0, p0, :cond_b

    return-void

    .line 416
    :cond_b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 422
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    .line 423
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

    if-eq v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 432
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    check-cast v0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 433
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 434
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    .line 435
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInValueSet()Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v1

    .line 430
    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 441
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    .line 442
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;

    # getter for: Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->modCount:I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;->access$100(Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iput v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Landroid/media/internal/guava_common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method
