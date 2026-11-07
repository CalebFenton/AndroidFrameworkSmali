.class final Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;
.super Landroid/media/internal/guava_common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InactiveComparisonChain"
.end annotation


# instance fields
.field final blacklist result:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Landroid/media/internal/guava_common/collect/ComparisonChain;-><init>(Landroid/media/internal/guava_common/collect/ComparisonChain$1;)V

    .line 128
    iput p1, p0, Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return-void
.end method


# virtual methods
.method public blacklist compare(II)Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 3

    .line 0
    return-object p0
.end method

.method public blacklist compare(JJ)Landroid/media/internal/guava_common/collect/ComparisonChain;
    .registers 5

    .line 0
    return-object p0
.end method

.method public blacklist result()I
    .registers 1

    .line 174
    iget p0, p0, Landroid/media/internal/guava_common/collect/ComparisonChain$InactiveComparisonChain;->result:I

    return p0
.end method
