.class final Landroid/media/internal/guava_common/collect/Cut$AboveValue;
.super Landroid/media/internal/guava_common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AboveValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Landroid/media/internal/guava_common/collect/Cut<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/Comparable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 400
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    return-void
.end method


# virtual methods
.method blacklist describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 3

    const/16 v0, 0x28

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method blacklist describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 2

    .line 451
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 473
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method blacklist isLessThan(Ljava/lang/Comparable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 405
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-gez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\\"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
