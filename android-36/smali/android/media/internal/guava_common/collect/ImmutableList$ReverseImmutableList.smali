.class Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;
.super Landroid/media/internal/guava_common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient blacklist forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;-><init>()V

    .line 612
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-void
.end method

.method private blacklist reverseIndex(I)I
    .registers 2

    .line 616
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0
.end method

.method private blacklist reversePosition(I)I
    .registers 2

    .line 620
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result p0

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 630
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkElementIndex(II)I

    .line 654
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 635
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    .line 636
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 641
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    .line 642
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist reverse()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 625
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 659
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public blacklist subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndexes(III)V

    .line 648
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->forwardList:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-direct {p0, p2}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result p2

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->reverse()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subList(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 608
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 673
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
