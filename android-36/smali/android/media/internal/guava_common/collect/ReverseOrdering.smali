.class final Landroid/media/internal/guava_common/collect/ReverseOrdering;
.super Landroid/media/internal/guava_common/collect/Ordering;
.source "ReverseOrdering.java"

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
.field final blacklist forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/Ordering;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Ordering;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/guava_common/collect/Ordering;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

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
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {p0, p2, p1}, Landroid/media/internal/guava_common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

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

    .line 103
    :cond_4
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/ReverseOrdering;

    if-eqz v0, :cond_13

    .line 104
    check-cast p1, Landroid/media/internal/guava_common/collect/ReverseOrdering;

    .line 105
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

    iget-object p1, p1, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 95
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public blacklist reverse()Landroid/media/internal/guava_common/collect/Ordering;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ReverseOrdering;->forwardOrder:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".reverse()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
