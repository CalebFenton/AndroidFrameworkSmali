.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    #@9
    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 355
    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@5
    .line 352
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@e
    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    #@10
    const/4 v1, 0x1

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 80
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 81
    const-string/jumbo v2, ": <rotate> tag requires a \'drawable\' attribute or "

    #@27
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 82
    const-string/jumbo v2, "child tag defining a drawable"

    #@2e
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 121
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    .line 122
    .local v2, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v2, :cond_0

    #@4
    .line 123
    return-void

    #@5
    .line 126
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 127
    iget-object v3, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    #@b
    sget-object v4, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    #@d
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@14
    .line 130
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 140
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 120
    return-void

    #@1e
    .line 131
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@1f
    .line 132
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@21
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 133
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@26
    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 133
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    .line 146
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 147
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@a
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@c
    sub-int v7, v8, v9

    #@e
    .line 148
    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@10
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@12
    sub-int v2, v8, v9

    #@14
    .line 149
    .local v2, "h":I
    iget-object v6, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@16
    .line 150
    .local v6, "st":Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@18
    if-eqz v8, :cond_0

    #@1a
    int-to-float v8, v7

    #@1b
    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@1d
    mul-float v3, v8, v9

    #@1f
    .line 151
    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@21
    if-eqz v8, :cond_1

    #@23
    int-to-float v8, v2

    #@24
    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@26
    mul-float v4, v8, v9

    #@28
    .line 153
    .local v4, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2b
    move-result v5

    #@2c
    .line 154
    .local v5, "saveCount":I
    iget v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@2e
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@30
    int-to-float v9, v9

    #@31
    add-float/2addr v9, v3

    #@32
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@34
    int-to-float v10, v10

    #@35
    add-float/2addr v10, v4

    #@36
    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@39
    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3c
    .line 156
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@3f
    .line 144
    return-void

    #@40
    .line 150
    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "saveCount":I
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@42
    .restart local v3    # "px":F
    goto :goto_0

    #@43
    .line 151
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@45
    .restart local v4    # "py":F
    goto :goto_1
.end method

.method public getFromDegrees()F
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@4
    return v0
.end method

.method public getPivotX()F
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@4
    return v0
.end method

.method public getPivotY()F
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@4
    return v0
.end method

.method public getToDegrees()F
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@4
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@7
    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableWrapper;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    #@a
    .line 70
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@d
    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/RotateDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@10
    .line 72
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@13
    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 66
    return-void
.end method

.method public isPivotXRelative()Z
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@4
    return v0
.end method

.method public isPivotYRelative()Z
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@4
    return v0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 2

    #@0
    .prologue
    .line 319
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@4
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;)V

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@9
    .line 320
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@b
    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    #@0
    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    #@3
    .line 309
    int-to-float v2, p1

    #@4
    const v3, 0x461c4000    # 10000.0f

    #@7
    div-float v1, v2, v3

    #@9
    .line 310
    .local v1, "value":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@b
    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@d
    iget-object v3, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@f
    iget v3, v3, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@11
    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    #@14
    move-result v0

    #@15
    .line 311
    .local v0, "degrees":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@17
    iput v0, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@19
    .line 313
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@1c
    .line 314
    const/4 v2, 0x1

    #@1d
    return v2
.end method

.method public setFromDegrees(F)V
    .locals 1
    .param p1, "fromDegrees"    # F

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@c
    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 166
    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@c
    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 215
    :cond_0
    return-void
.end method

.method public setPivotXRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@a
    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@d
    .line 239
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 267
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@c
    .line 268
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 265
    :cond_0
    return-void
.end method

.method public setPivotYRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 291
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@a
    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@d
    .line 289
    :cond_0
    return-void
.end method

.method public setToDegrees(F)V
    .locals 1
    .param p1, "toDegrees"    # F

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@4
    cmpl-float v0, v0, p1

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@a
    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@c
    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    #@f
    .line 189
    :cond_0
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v6, 0x4

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    const/high16 v7, 0x3f800000    # 1.0f

    #@6
    .line 88
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 90
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    #@b
    .line 93
    .local v1, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v3

    #@f
    iput-object v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    #@11
    .line 95
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 96
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@1a
    move-result-object v2

    #@1b
    .line 97
    .local v2, "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@1d
    const/4 v6, 0x6

    #@1e
    if-ne v3, v6, :cond_4

    #@20
    move v3, v4

    #@21
    :goto_0
    iput-boolean v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@23
    .line 98
    iget-boolean v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    #@25
    if-eqz v3, :cond_5

    #@27
    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    #@2a
    move-result v3

    #@2b
    :goto_1
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    #@2d
    .line 101
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 102
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@36
    move-result-object v2

    #@37
    .line 103
    .restart local v2    # "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@39
    const/4 v6, 0x6

    #@3a
    if-ne v3, v6, :cond_1

    #@3c
    move v5, v4

    #@3d
    :cond_1
    iput-boolean v5, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@3f
    .line 104
    iget-boolean v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    #@41
    if-eqz v3, :cond_6

    #@43
    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    #@46
    move-result v3

    #@47
    :goto_2
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    #@49
    .line 108
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_2
    iget v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@4b
    const/4 v5, 0x2

    #@4c
    .line 107
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4f
    move-result v3

    #@50
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@52
    .line 110
    iget v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@54
    const/4 v5, 0x3

    #@55
    .line 109
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@58
    move-result v3

    #@59
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    #@5b
    .line 111
    iget v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    #@5d
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    #@5f
    .line 113
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@62
    move-result-object v0

    #@63
    .line 114
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@65
    .line 115
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@68
    .line 87
    :cond_3
    return-void

    #@69
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "tv":Landroid/util/TypedValue;
    :cond_4
    move v3, v5

    #@6a
    .line 97
    goto :goto_0

    #@6b
    .line 98
    :cond_5
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@6e
    move-result v3

    #@6f
    goto :goto_1

    #@70
    .line 104
    :cond_6
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@73
    move-result v3

    #@74
    goto :goto_2
.end method
