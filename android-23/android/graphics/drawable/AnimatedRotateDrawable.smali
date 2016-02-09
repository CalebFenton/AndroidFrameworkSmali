.class public Landroid/graphics/drawable/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;,
        Landroid/graphics/drawable/AnimatedRotateDrawable$1;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private final mNextFrame:Ljava/lang/Runnable;

.field private mRunning:Z

.field private mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 53
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    #@9
    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 264
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$1;

    #@5
    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    #@a
    .line 244
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@c
    .line 246
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    #@f
    .line 241
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private nextFrame()V
    .locals 6

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@5
    .line 107
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    #@7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v2

    #@b
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@d
    iget v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    #@f
    int-to-long v4, v1

    #@10
    add-long/2addr v2, v4

    #@11
    invoke-virtual {p0, v0, v2, v3}, Landroid/graphics/drawable/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@14
    .line 105
    return-void
.end method

.method private updateLocalState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 250
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@3
    .line 251
    .local v1, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget v2, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@5
    int-to-float v2, v2

    #@6
    const/high16 v3, 0x43b40000    # 360.0f

    #@8
    div-float v2, v3, v2

    #@a
    iput v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    #@c
    .line 255
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    .line 256
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@12
    .line 257
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    #@15
    .line 258
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 259
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #@1b
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    #@1e
    .line 249
    :cond_0
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
    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@e
    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    #@10
    const/4 v1, 0x1

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 143
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
    .line 144
    const-string/jumbo v2, ": <animated-rotate> tag requires a \'drawable\' attribute or "

    #@27
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 145
    const-string/jumbo v2, "child tag defining a drawable"

    #@2e
    .line 143
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
    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 180
    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@2
    .line 181
    .local v2, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    if-nez v2, :cond_0

    #@4
    .line 182
    return-void

    #@5
    .line 185
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 187
    iget-object v3, v2, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mThemeAttrs:[I

    #@b
    sget-object v4, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    #@d
    .line 186
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@14
    .line 190
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 200
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    #@20
    .line 179
    return-void

    #@21
    .line 191
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@22
    .line 192
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@24
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    .line 193
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@29
    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    .line 193
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    .line 59
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    .line 60
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    #@a
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@c
    sub-int v7, v8, v9

    #@e
    .line 61
    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    #@10
    iget v9, v0, Landroid/graphics/Rect;->top:I

    #@12
    sub-int v2, v8, v9

    #@14
    .line 63
    .local v2, "h":I
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@16
    .line 64
    .local v6, "st":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    #@18
    if-eqz v8, :cond_0

    #@1a
    int-to-float v8, v7

    #@1b
    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    #@1d
    mul-float v3, v8, v9

    #@1f
    .line 65
    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    #@21
    if-eqz v8, :cond_1

    #@23
    int-to-float v8, v2

    #@24
    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    #@26
    mul-float v4, v8, v9

    #@28
    .line 67
    .local v4, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2b
    move-result v5

    #@2c
    .line 68
    .local v5, "saveCount":I
    iget v8, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

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
    .line 69
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@3c
    .line 70
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@3f
    .line 57
    return-void

    #@40
    .line 64
    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "saveCount":I
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    #@42
    .restart local v3    # "px":F
    goto :goto_0

    #@43
    .line 65
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    #@45
    .restart local v4    # "py":F
    goto :goto_1
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
    .line 128
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@7
    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableWrapper;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    #@a
    .line 131
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@d
    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedRotateDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@10
    .line 133
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@13
    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    #@19
    .line 127
    return-void
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    #@2
    return v0
.end method

.method public setFramesCount(I)V
    .locals 2
    .param p1, "framesCount"    # I

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@4
    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@6
    iget v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@8
    int-to-float v0, v0

    #@9
    const/high16 v1, 0x43b40000    # 360.0f

    #@b
    div-float v0, v1, v0

    #@d
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    #@f
    .line 205
    return-void
.end method

.method public setFramesDuration(I)V
    .locals 1
    .param p1, "framesDuration"    # I

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@2
    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    #@4
    .line 210
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    #@3
    move-result v0

    #@4
    .line 113
    .local v0, "changed":Z
    if-eqz p1, :cond_2

    #@6
    .line 114
    if-nez v0, :cond_0

    #@8
    if-eqz p2, :cond_1

    #@a
    .line 115
    :cond_0
    const/4 v1, 0x0

    #@b
    iput v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    #@d
    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    #@10
    .line 121
    :cond_1
    :goto_0
    return v0

    #@11
    .line 119
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    #@13
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@16
    goto :goto_0
.end method

.method public start()V
    .locals 1

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 84
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    #@7
    .line 85
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    #@a
    .line 82
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    #@3
    .line 97
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@8
    .line 95
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    const/high16 v7, 0x3f800000    # 1.0f

    #@6
    .line 151
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 153
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    #@b
    .line 155
    .local v1, "state":Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 156
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@14
    move-result-object v2

    #@15
    .line 157
    .local v2, "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@17
    const/4 v6, 0x6

    #@18
    if-ne v3, v6, :cond_4

    #@1a
    move v3, v4

    #@1b
    :goto_0
    iput-boolean v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    #@1d
    .line 158
    iget-boolean v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    #@1f
    if-eqz v3, :cond_5

    #@21
    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    #@24
    move-result v3

    #@25
    :goto_1
    iput v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    #@27
    .line 161
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 162
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@30
    move-result-object v2

    #@31
    .line 163
    .restart local v2    # "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@33
    const/4 v6, 0x6

    #@34
    if-ne v3, v6, :cond_1

    #@36
    move v5, v4

    #@37
    :cond_1
    iput-boolean v5, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    #@39
    .line 164
    iget-boolean v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    #@3b
    if-eqz v3, :cond_6

    #@3d
    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    #@40
    move-result v3

    #@41
    :goto_2
    iput v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    #@43
    .line 168
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_2
    iget v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    #@45
    const/4 v5, 0x5

    #@46
    .line 167
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@49
    move-result v3

    #@4a
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    #@4d
    .line 170
    iget v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    #@4f
    const/4 v5, 0x4

    #@50
    .line 169
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@53
    move-result v3

    #@54
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    #@57
    .line 172
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@5a
    move-result-object v0

    #@5b
    .line 173
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@5d
    .line 174
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@60
    .line 150
    :cond_3
    return-void

    #@61
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "tv":Landroid/util/TypedValue;
    :cond_4
    move v3, v5

    #@62
    .line 157
    goto :goto_0

    #@63
    .line 158
    :cond_5
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@66
    move-result v3

    #@67
    goto :goto_1

    #@68
    .line 164
    :cond_6
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@6b
    move-result v3

    #@6c
    goto :goto_2
.end method
