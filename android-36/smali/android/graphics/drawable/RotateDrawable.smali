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
.field private static final greylist-max-o MAX_LEVEL:I = 0x2710


# instance fields
.field private greylist mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 65
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    .line 66
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 363
    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 364
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 115
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 116
    .local v0, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v0, :cond_5

    .line 117
    return-void

    .line 121
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;[I)V

    .line 126
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3d

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 128
    .local v1, "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v4

    :goto_2c
    iput-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 129
    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v2, :cond_37

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    :goto_3b
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 132
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_3d
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 134
    .restart local v1    # "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    iput-boolean v3, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 135
    iget-boolean v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v2, :cond_59

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_5d

    :cond_59
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    :goto_5d
    iput v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 138
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_5f
    const/4 v1, 0x2

    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 140
    const/4 v1, 0x3

    iget v2, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 142
    iget v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 143
    return-void
.end method

.method private greylist-max-o verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 108
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <rotate> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 84
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 87
    .local v0, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v0, :cond_8

    .line 88
    return-void

    .line 91
    :cond_8
    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 92
    invoke-static {v0}, Landroid/graphics/drawable/RotateDrawable$RotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/RotateDrawable$RotateState;)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 94
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 95
    invoke-direct {p0, v1}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 99
    :goto_1e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    goto :goto_2d

    .line 99
    :catchall_22
    move-exception v2

    goto :goto_29

    .line 96
    :catch_24
    move-exception v2

    .line 97
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_25
    invoke-static {v2}, Landroid/graphics/drawable/RotateDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1e

    .line 99
    :goto_29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw v2

    .line 102
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 149
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 150
    .local v2, "w":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 151
    .local v3, "h":I
    iget-object v4, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 152
    .local v4, "st":Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v5, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v5, :cond_1d

    int-to-float v5, v2

    iget v6, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float/2addr v5, v6

    goto :goto_1f

    :cond_1d
    iget v5, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 153
    .local v5, "px":F
    :goto_1f
    iget-boolean v6, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v6, :cond_28

    int-to-float v6, v3

    iget v7, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float/2addr v6, v7

    goto :goto_2a

    :cond_28
    iget v6, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 155
    .local v6, "py":F
    :goto_2a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 156
    .local v7, "saveCount":I
    iget v8, v4, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v5

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 159
    return-void
.end method

.method public whitelist getFromDegrees()F
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    return v0
.end method

.method public whitelist getPivotX()F
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    return v0
.end method

.method public whitelist getPivotY()F
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    return v0
.end method

.method public whitelist getToDegrees()F
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
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

    .line 72
    sget-object v0, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/RotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 77
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 78
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method public whitelist isPivotXRelative()Z
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    return v0
.end method

.method public whitelist isPivotYRelative()Z
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    return v0
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 4

    .line 325
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    return-object v0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 5
    .param p1, "level"    # I

    .line 313
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 315
    int-to-float v0, p1

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 316
    .local v0, "value":F
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v1, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 317
    .local v1, "degrees":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v1, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 319
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 320
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist setFromDegrees(F)V
    .registers 3
    .param p1, "fromDegrees"    # F

    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 173
    :cond_f
    return-void
.end method

.method public whitelist setPivotX(F)V
    .registers 3
    .param p1, "pivotX"    # F

    .line 220
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 222
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 224
    :cond_f
    return-void
.end method

.method public whitelist setPivotXRelative(Z)V
    .registers 3
    .param p1, "relative"    # Z

    .line 244
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eq v0, p1, :cond_d

    .line 245
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 246
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 248
    :cond_d
    return-void
.end method

.method public whitelist setPivotY(F)V
    .registers 3
    .param p1, "pivotY"    # F

    .line 272
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 273
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 274
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 276
    :cond_f
    return-void
.end method

.method public whitelist setPivotYRelative(Z)V
    .registers 3
    .param p1, "relative"    # Z

    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eq v0, p1, :cond_d

    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 298
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 300
    :cond_d
    return-void
.end method

.method public whitelist setToDegrees(F)V
    .registers 3
    .param p1, "toDegrees"    # F

    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 196
    :cond_f
    return-void
.end method
