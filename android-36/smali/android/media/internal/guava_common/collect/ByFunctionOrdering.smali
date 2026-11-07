.class final Landroid/media/internal/guava_common/collect/ByFunctionOrdering;
.super Landroid/media/internal/guava_common/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Ordering<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field final blacklist function:Landroid/media/internal/guava_common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/base/Function<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field final blacklist ordering:Landroid/media/internal/guava_common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/base/Function;Landroid/media/internal/guava_common/collect/Ordering;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/base/Function<",
            "TF;+TT;>;",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/Ordering;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/guava_common/base/Function;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    .line 41
    invoke-static {p2}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/internal/guava_common/collect/Ordering;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->ordering:Landroid/media/internal/guava_common/collect/Ordering;

    return-void
.end method


# virtual methods
.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->ordering:Landroid/media/internal/guava_common/collect/Ordering;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    invoke-interface {v1, p1}, Landroid/media/internal/guava_common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    invoke-interface {p0, p2}, Landroid/media/internal/guava_common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/media/internal/guava_common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 54
    :cond_4
    instance-of v1, p1, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 55
    check-cast p1, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;

    .line 56
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    iget-object v3, p1, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    invoke-interface {v1, v3}, Landroid/media/internal/guava_common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->ordering:Landroid/media/internal/guava_common/collect/Ordering;

    iget-object p1, p1, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->ordering:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->ordering:Landroid/media/internal/guava_common/collect/Ordering;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->ordering:Landroid/media/internal/guava_common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;->function:Landroid/media/internal/guava_common/base/Function;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
