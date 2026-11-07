.class Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Landroid/media/internal/guava_common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/internal/guava_common/collect/PeekingIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist hasPeeked:Z

.field private final blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field private blacklist peekedElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1193
    iget-boolean v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_f

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1199
    iget-boolean v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_b

    .line 1200
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1203
    :cond_b
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1204
    iput-boolean v1, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    const/4 v1, 0x0

    .line 1205
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1218
    iget-boolean v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    if-nez v0, :cond_f

    .line 1219
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1220
    iput-boolean v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    .line 1223
    :cond_f
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->peekedElement:Ljava/lang/Object;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1211
    iget-boolean v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->hasPeeked:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1212
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
