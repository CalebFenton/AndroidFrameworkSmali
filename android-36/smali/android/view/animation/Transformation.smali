.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# static fields
.field public static final whitelist TYPE_ALPHA:I = 0x1

.field public static final whitelist TYPE_BOTH:I = 0x3

.field public static final whitelist TYPE_IDENTITY:I = 0x0

.field public static final whitelist TYPE_MATRIX:I = 0x2


# instance fields
.field protected whitelist mAlpha:F

.field private greylist-max-o mClipRect:Landroid/graphics/Rect;

.field private greylist-max-o mHasClipRect:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field protected whitelist mMatrix:Landroid/graphics/Matrix;

.field protected whitelist mTransformationType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    .line 57
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 63
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_11

    .line 75
    :cond_c
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 77
    :goto_11
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 81
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 82
    return-void
.end method

.method public whitelist compose(Landroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 128
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 129
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 130
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_41

    .line 131
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 132
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v1, :cond_3e

    .line 133
    iget-object v1, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    goto :goto_41

    .line 136
    :cond_3e
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 139
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_41
    :goto_41
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->add(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setInsets(Landroid/graphics/Insets;)V

    .line 140
    return-void
.end method

.method public whitelist getAlpha()F
    .registers 2

    .line 181
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return v0
.end method

.method public greylist-max-o getClipRect()Landroid/graphics/Rect;
    .registers 2

    .line 206
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getInsets()Landroid/graphics/Insets;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public whitelist getTransformationType()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return v0
.end method

.method public greylist-max-o hasClipRect()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    return v0
.end method

.method public greylist-max-o postCompose(Landroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 148
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 149
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 150
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_41

    .line 151
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 152
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v1, :cond_3e

    .line 153
    iget-object v1, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    goto :goto_41

    .line 156
    :cond_3e
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 159
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_41
    :goto_41
    return-void
.end method

.method public greylist printShortString(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 273
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 274
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->dump(Ljava/io/PrintWriter;)V

    .line 276
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 277
    return-void
.end method

.method public whitelist set(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .line 111
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 112
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 113
    iget-boolean v0, p1, Landroid/view/animation/Transformation;->mHasClipRect:Z

    if-eqz v0, :cond_1b

    .line 114
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->setClipRect(Landroid/graphics/Rect;)V

    goto :goto_23

    .line 116
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 117
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 119
    :goto_23
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 120
    return-void
.end method

.method public whitelist setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 174
    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 175
    return-void
.end method

.method public greylist-max-o setClipRect(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 197
    iget-object v0, p0, Landroid/view/animation/Transformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Transformation;->mHasClipRect:Z

    .line 199
    return-void
.end method

.method public greylist-max-o setClipRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 189
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 190
    return-void
.end method

.method public blacklist setInsets(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 230
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 231
    return-void
.end method

.method public blacklist setInsets(Landroid/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 222
    iput-object p1, p0, Landroid/view/animation/Transformation;->mInsets:Landroid/graphics/Insets;

    .line 223
    return-void
.end method

.method public whitelist setTransformationType(I)V
    .registers 2
    .param p1, "transformationType"    # I

    .line 102
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 103
    return-void
.end method

.method public whitelist toShortString()Ljava/lang/String;
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 263
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
