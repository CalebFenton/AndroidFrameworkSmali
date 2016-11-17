.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# static fields
.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2


# instance fields
.field protected mAlpha:F

.field private mClipRect:Landroid/graphics/Rect;

.field private mHasClipRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@a
    .line 59
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    #@d
    .line 58
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@b
    .line 73
    :goto_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@10
    .line 74
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@13
    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    #@15
    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@17
    .line 76
    const/4 v0, 0x3

    #@18
    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    #@1a
    .line 67
    return-void

    #@1b
    .line 71
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@1d
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@20
    goto :goto_0
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 123
    iget v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@2
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    #@5
    move-result v2

    #@6
    mul-float/2addr v1, v2

    #@7
    iput v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@9
    .line 124
    iget-object v1, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@b
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@12
    .line 125
    iget-boolean v1, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 126
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@19
    move-result-object v0

    #@1a
    .line 127
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 128
    iget-object v1, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@20
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@22
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@24
    add-int/2addr v1, v2

    #@25
    iget-object v2, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@27
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@29
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@2b
    add-int/2addr v2, v3

    #@2c
    .line 129
    iget-object v3, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@2e
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@30
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@32
    add-int/2addr v3, v4

    #@33
    iget-object v4, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@35
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@37
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@39
    add-int/2addr v4, v5

    #@3a
    .line 128
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@3d
    .line 122
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 131
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    #@41
    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    #@0
    .prologue
    .line 208
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@2
    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public getTransformationType()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    #@2
    return v0
.end method

.method public hasClipRect()Z
    .locals 1

    #@0
    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@2
    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 142
    iget v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@2
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    #@5
    move-result v2

    #@6
    mul-float/2addr v1, v2

    #@7
    iput v1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@9
    .line 143
    iget-object v1, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@b
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@12
    .line 144
    iget-boolean v1, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 145
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@19
    move-result-object v0

    #@1a
    .line 146
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 147
    iget-object v1, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@20
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@22
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@24
    add-int/2addr v1, v2

    #@25
    iget-object v2, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@27
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@29
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@2b
    add-int/2addr v2, v3

    #@2c
    .line 148
    iget-object v3, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@2e
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@30
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@32
    add-int/2addr v3, v4

    #@33
    iget-object v4, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@35
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@37
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@39
    add-int/2addr v4, v5

    #@3a
    .line 147
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@3d
    .line 141
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 150
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    #@41
    goto :goto_0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 242
    const-string/jumbo v0, "{alpha="

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    #@b
    .line 243
    const-string/jumbo v0, " matrix="

    #@e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 244
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@13
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    #@16
    .line 245
    const/16 v0, 0x7d

    #@18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@1b
    .line 241
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@6
    .line 107
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@8
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@f
    .line 108
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 109
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    #@1a
    .line 114
    :goto_0
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    #@20
    .line 105
    return-void

    #@21
    .line 111
    :cond_0
    const/4 v0, 0x0

    #@22
    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@24
    .line 112
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@29
    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 168
    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@2
    .line 167
    return-void
.end method

.method public setClipRect(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@5
    .line 185
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    #@8
    .line 183
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 176
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@b
    .line 175
    return-void
.end method

.method public setTransformationType(I)V
    .locals 0
    .param p1, "transformationType"    # I

    #@0
    .prologue
    .line 97
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    #@2
    .line 96
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    #@a
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 232
    const-string/jumbo v0, "{alpha="

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b
    .line 233
    const-string/jumbo v0, " matrix="

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    #@13
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    #@16
    .line 234
    const/16 v0, 0x7d

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Transformation"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 215
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method
