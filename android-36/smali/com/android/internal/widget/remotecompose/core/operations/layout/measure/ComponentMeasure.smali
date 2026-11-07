.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
.super Ljava/lang/Object;
.source "ComponentMeasure.java"


# instance fields
.field blacklist mH:F

.field blacklist mId:I

.field blacklist mVisibility:I

.field blacklist mW:F

.field blacklist mX:F

.field blacklist mY:F


# direct methods
.method public constructor blacklist <init>(IFFFF)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F

    .line 81
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "id":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "w":F
    .end local p5    # "h":F
    .local v1, "id":I
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "w":F
    .local v5, "h":F
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(IFFFFI)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F
    .param p6, "visibility"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 72
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mId:I

    .line 73
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    .line 74
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    .line 75
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    .line 76
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    .line 77
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 9
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 85
    nop

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v2

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v3

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v4

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v5

    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mVisibility:I

    .line 85
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;-><init>(IFFFFI)V

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist addVisibilityOverride(I)V
    .registers 3
    .param p1, "value"    # I

    .line 151
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->clearOverride(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 152
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->add(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 153
    return-void
.end method

.method public blacklist clearVisibilityOverride()V
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->clearOverride(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 147
    return-void
.end method

.method public blacklist copyFrom(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V
    .registers 3
    .param p1, "m"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 100
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    .line 101
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    .line 102
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    .line 103
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    .line 104
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 105
    return-void
.end method

.method public blacklist getH()F
    .registers 2

    .line 60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    return v0
.end method

.method public blacklist getVisibility()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    return v0
.end method

.method public blacklist getW()F
    .registers 2

    .line 56
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    return v0
.end method

.method public blacklist getX()F
    .registers 2

    .line 48
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    return v0
.end method

.method public blacklist getY()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    return v0
.end method

.method public blacklist isGone()Z
    .registers 2

    .line 123
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isGone(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isInvisible()Z
    .registers 2

    .line 141
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isInvisible(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method public blacklist same(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Z
    .registers 4
    .param p1, "m"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 114
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public blacklist setH(F)V
    .registers 2
    .param p1, "value"    # F

    .line 44
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mH:F

    .line 45
    return-void
.end method

.method public blacklist setVisibility(I)V
    .registers 2
    .param p1, "visibility"    # I

    .line 68
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mVisibility:I

    .line 69
    return-void
.end method

.method public blacklist setW(F)V
    .registers 2
    .param p1, "value"    # F

    .line 40
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mW:F

    .line 41
    return-void
.end method

.method public blacklist setX(F)V
    .registers 2
    .param p1, "value"    # F

    .line 32
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mX:F

    .line 33
    return-void
.end method

.method public blacklist setY(F)V
    .registers 2
    .param p1, "value"    # F

    .line 36
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->mY:F

    .line 37
    return-void
.end method
