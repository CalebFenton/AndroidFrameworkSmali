.class final Landroid/media/internal/guava_common/collect/ComparatorOrdering;
.super Landroid/media/internal/guava_common/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Ordering;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 48
    :cond_4
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/ComparatorOrdering;

    if-eqz v0, :cond_13

    .line 49
    check-cast p1, Landroid/media/internal/guava_common/collect/ComparatorOrdering;

    .line 50
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object p1, p1, Landroid/media/internal/guava_common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {p0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 57
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
