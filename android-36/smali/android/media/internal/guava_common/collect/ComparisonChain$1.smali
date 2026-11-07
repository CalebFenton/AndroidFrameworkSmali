.class Landroid/media/internal/guava_common/collect/ComparisonChain$1;
.super Landroid/media/internal/guava_common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ComparisonChain;-><init>(Landroid/media/internal/guava_common/collect/ComparisonChain$1;)V

    return-void
.end method


# virtual methods
.method blacklist classify(I)Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 2

    if-gez p1, :cond_7

    .line 111
    # getter for: Landroid/media/internal/guava_common/collect/ComparisonChain;->LESS:Landroid/media/internal/guava_common/collect/ComparisonChain;
    invoke-static {}, Landroid/media/internal/guava_common/collect/ComparisonChain;->access$100()Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object p0

    return-object p0

    :cond_7
    if-lez p1, :cond_e

    # getter for: Landroid/media/internal/guava_common/collect/ComparisonChain;->GREATER:Landroid/media/internal/guava_common/collect/ComparisonChain;
    invoke-static {}, Landroid/media/internal/guava_common/collect/ComparisonChain;->access$200()Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object p0

    return-object p0

    :cond_e
    # getter for: Landroid/media/internal/guava_common/collect/ComparisonChain;->ACTIVE:Landroid/media/internal/guava_common/collect/ComparisonChain;
    invoke-static {}, Landroid/media/internal/guava_common/collect/ComparisonChain;->access$300()Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public blacklist compare(II)Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 3

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ComparisonChain$1;->classify(I)Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public blacklist compare(JJ)Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 5

    .line 87
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ComparisonChain$1;->classify(I)Landroid/media/internal/guava_common/collect/ComparisonChain;

    move-result-object p0

    return-object p0
.end method

.method public blacklist result()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
