.class Landroid/media/internal/guava_common/collect/ImmutableList$SubList;
.super Landroid/media/internal/guava_common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient blacklist length:I

.field final transient blacklist offset:I

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/ImmutableList;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableList;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 465
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->this$0:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;-><init>()V

    .line 466
    iput p2, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->offset:I

    .line 467
    iput p3, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->length:I

    return-void
.end method


# virtual methods
.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 494
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkElementIndex(II)I

    .line 495
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->this$0:Landroid/media/internal/guava_common/collect/ImmutableList;

    iget p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist internalArray()[Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 479
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->this$0:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist internalArrayEnd()I
    .registers 3

    .line 489
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->this$0:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArrayStart()I

    move-result v0

    iget v1, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v0, v1

    iget p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->length:I

    add-int/2addr v0, p0

    return v0
.end method

.method blacklist internalArrayStart()I
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->this$0:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArrayStart()I

    move-result v0

    iget p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 472
    iget p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->length:I

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

    .line 500
    iget v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndexes(III)V

    .line 501
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->this$0:Landroid/media/internal/guava_common/collect/ImmutableList;

    iget p0, p0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

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

    .line 461
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 515
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
