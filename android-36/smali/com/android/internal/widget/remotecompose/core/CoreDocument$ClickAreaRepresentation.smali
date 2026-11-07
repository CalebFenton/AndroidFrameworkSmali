.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickAreaRepresentation"
.end annotation


# instance fields
.field blacklist mBottom:F

.field final blacklist mContentDescription:Ljava/lang/String;

.field blacklist mId:I

.field blacklist mLeft:F

.field final blacklist mMetadata:Ljava/lang/String;

.field blacklist mRight:F

.field blacklist mTop:F


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;FFFFLjava/lang/String;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # Ljava/lang/String;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    .line 715
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    .line 716
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    .line 717
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    .line 718
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    .line 719
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    .line 720
    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    .line 721
    return-void
.end method


# virtual methods
.method public blacklist contains(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 731
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 693
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 694
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 695
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 696
    .local v1, "that":Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget v4, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v3, v4, :cond_28

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    .line 697
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    .line 698
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    .line 696
    :goto_29
    return v0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .registers 2

    .line 765
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 761
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    return v0
.end method

.method public blacklist getLeft()F
    .registers 2

    .line 735
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    return v0
.end method

.method public blacklist getMetadata()Ljava/lang/String;
    .registers 2

    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTop()F
    .registers 2

    .line 739
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 703
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist height()F
    .registers 3

    .line 757
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mBottom:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mTop:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public blacklist width()F
    .registers 3

    .line 748
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mLeft:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
