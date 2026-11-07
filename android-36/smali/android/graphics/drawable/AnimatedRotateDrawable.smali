.class public Landroid/graphics/drawable/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private greylist-max-o mCurrentDegrees:F

.field private greylist-max-o mIncrement:F

.field private final greylist-max-o mNextFrame:Ljava/lang/Runnable;

.field private greylist-max-o mRunning:Z

.field private greylist-max-o mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDegrees(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncrement(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentDegrees(Landroid/graphics/drawable/AnimatedRotateDrawable;F)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnextFrame(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 54
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    .line 55
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 253
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 275
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    .line 255
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 257
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    .line 258
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o nextFrame()V
    .registers 6

    .line 107
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v3, v3, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 109
    return-void
.end method

.method private greylist-max-o updateLocalState()V
    .registers 5

    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 262
    .local v0, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    .line 266
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 267
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1e

    .line 268
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 269
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1e

    .line 270
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 273
    :cond_1e
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 178
    .local v0, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    if-nez v0, :cond_5

    .line 179
    return-void

    .line 183
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;[I)V

    .line 188
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3d

    .line 189
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 190
    .local v1, "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v4

    :goto_2c
    iput-boolean v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    .line 191
    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v2, :cond_37

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    :goto_3b
    iput v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 194
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_3d
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 195
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 196
    .restart local v1    # "tv":Landroid/util/TypedValue;
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v4

    :goto_4e
    iput-boolean v3, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    .line 197
    iget-boolean v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v2, :cond_59

    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_5d

    :cond_59
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    :goto_5d
    iput v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 200
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_5f
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 202
    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 204
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

    .line 168
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 170
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <animated-rotate> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 143
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 146
    .local v0, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    if-nez v0, :cond_8

    .line 147
    return-void

    .line 150
    :cond_8
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 151
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 154
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 155
    invoke-direct {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 159
    :goto_1e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    goto :goto_2d

    .line 159
    :catchall_22
    move-exception v2

    goto :goto_29

    .line 156
    :catch_24
    move-exception v2

    .line 157
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_25
    invoke-static {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1e

    .line 159
    :goto_29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    throw v2

    .line 163
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    .line 164
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 61
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 62
    .local v2, "w":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 64
    .local v3, "h":I
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 65
    .local v4, "st":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget-boolean v5, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v5, :cond_1d

    int-to-float v5, v2

    iget v6, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    mul-float/2addr v5, v6

    goto :goto_1f

    :cond_1d
    iget v5, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 66
    .local v5, "px":F
    :goto_1f
    iget-boolean v6, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v6, :cond_28

    int-to-float v6, v3

    iget v7, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    mul-float/2addr v6, v7

    goto :goto_2a

    :cond_28
    iget v6, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 68
    .local v6, "py":F
    :goto_2a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 69
    .local v7, "saveCount":I
    iget v8, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v5

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 72
    return-void
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

    .line 129
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 134
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 135
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    .line 139
    return-void
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 4

    .line 219
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 220
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    return-object v0
.end method

.method public greylist setFramesCount(I)V
    .registers 4
    .param p1, "framesCount"    # I

    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    .line 210
    return-void
.end method

.method public greylist setFramesDuration(I)V
    .registers 3
    .param p1, "framesDuration"    # I

    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 215
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 113
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 114
    .local v0, "changed":Z
    if-eqz p1, :cond_11

    .line 115
    if-nez v0, :cond_a

    if-eqz p2, :cond_16

    .line 116
    :cond_a
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 117
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    goto :goto_16

    .line 120
    :cond_11
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 122
    :cond_16
    :goto_16
    return v0
.end method

.method public whitelist start()V
    .registers 2

    .line 84
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    if-nez v0, :cond_a

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    .line 88
    :cond_a
    return-void
.end method

.method public whitelist stop()V
    .registers 2

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
