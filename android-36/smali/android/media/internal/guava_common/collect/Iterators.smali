.class public final Landroid/media/internal/guava_common/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/Iterators$SingletonIterator;,
        Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;
    }
.end annotation


# direct methods
.method public static blacklist addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 362
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 365
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 366
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_7

    :cond_17
    return v0
.end method

.method static blacklist clear(Ljava/util/Iterator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 1040
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1042
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1043
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_10
    return-void
.end method

.method public static blacklist elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 269
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 273
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 274
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 275
    invoke-static {v0, v2}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 895
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method public static blacklist peekingIterator(Ljava/util/Iterator;)Landroid/media/internal/guava_common/collect/PeekingIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Landroid/media/internal/guava_common/collect/PeekingIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1265
    instance-of v0, p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;

    if-eqz v0, :cond_7

    .line 1269
    check-cast p0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;

    return-object p0

    .line 1272
    :cond_7
    new-instance v0, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Iterators$PeekingImpl;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static blacklist pollNext(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1027
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1028
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1029
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 205
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_4

    :cond_19
    return v0
.end method

.method public static blacklist singletonIterator(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1103
    new-instance v0, Landroid/media/internal/guava_common/collect/Iterators$SingletonIterator;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Iterators$SingletonIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist size(Ljava/util/Iterator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 168
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 169
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    .line 172
    :cond_f
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method
