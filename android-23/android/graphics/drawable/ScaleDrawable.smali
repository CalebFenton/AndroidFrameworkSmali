.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 60
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@9
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "scaleWidth"    # F
    .param p4, "scaleHeight"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 76
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@9
    .line 78
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@b
    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@d
    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@f
    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@11
    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@13
    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@15
    .line 82
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 263
    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@c
    .line 260
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method private static getPercent(Landroid/content/res/TypedArray;IF)F
    .locals 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 128
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    #@5
    move-result v2

    #@6
    .line 129
    .local v2, "type":I
    const/4 v3, 0x6

    #@7
    if-eq v2, v3, :cond_0

    #@9
    if-nez v2, :cond_1

    #@b
    .line 130
    :cond_0
    invoke-virtual {p0, p1, v5, v5, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 135
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@16
    .line 136
    const-string/jumbo v3, "%"

    #@19
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    add-int/lit8 v3, v3, -0x1

    #@25
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 138
    .local v0, "f":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@2c
    move-result v3

    #@2d
    const/high16 v4, 0x42c80000    # 100.0f

    #@2f
    div-float/2addr v3, v4

    #@30
    return v3

    #@31
    .line 142
    .end local v0    # "f":Ljava/lang/String;
    :cond_2
    return p2
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
    const/4 v1, 0x0

    #@1
    .line 99
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@9
    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 100
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@f
    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 101
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
    .line 102
    const-string/jumbo v2, ": <scale> tag requires a \'drawable\' attribute or "

    #@27
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 103
    const-string/jumbo v2, "child tag defining a drawable"

    #@2e
    .line 101
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
    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 147
    iget-object v2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2
    .line 148
    .local v2, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    if-nez v2, :cond_0

    #@4
    .line 149
    return-void

    #@5
    .line 152
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 154
    iget-object v3, v2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mThemeAttrs:[I

    #@b
    sget-object v4, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    #@d
    .line 153
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@14
    .line 157
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 167
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 146
    return-void

    #@1e
    .line 158
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@1f
    .line 159
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
    .line 160
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@26
    .line 161
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 160
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 173
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 174
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@f
    .line 171
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 4

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 181
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 182
    const/4 v2, -0x2

    #@b
    return v2

    #@c
    .line 185
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@f
    move-result v1

    #@10
    .line 186
    .local v1, "opacity":I
    const/4 v2, -0x1

    #@11
    if-ne v1, v2, :cond_1

    #@13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@16
    move-result v2

    #@17
    const/16 v3, 0x2710

    #@19
    if-ge v2, v3, :cond_1

    #@1b
    .line 187
    const/4 v2, -0x3

    #@1c
    return v2

    #@1d
    .line 190
    :cond_1
    return v1
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
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 90
    sget-object v1, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ScaleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ScaleDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@f
    .line 93
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@12
    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    .line 87
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 2

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@4
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@9
    .line 231
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@b
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const v12, 0x461c4000    # 10000.0f

    #@3
    const/4 v11, 0x0

    #@4
    .line 203
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v6

    #@8
    .line 204
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 205
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@c
    iget-boolean v10, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@e
    .line 206
    .local v10, "min":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    #@11
    move-result v9

    #@12
    .line 208
    .local v9, "level":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@15
    move-result v1

    #@16
    .line 209
    .local v1, "w":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@18
    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@1a
    cmpl-float v0, v0, v11

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 210
    if-eqz v10, :cond_3

    #@20
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@23
    move-result v8

    #@24
    .line 211
    .local v8, "iw":I
    :goto_0
    sub-int v0, v1, v8

    #@26
    rsub-int v3, v9, 0x2710

    #@28
    mul-int/2addr v0, v3

    #@29
    int-to-float v0, v0

    #@2a
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2c
    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@2e
    mul-float/2addr v0, v3

    #@2f
    div-float/2addr v0, v12

    #@30
    float-to-int v0, v0

    #@31
    sub-int/2addr v1, v0

    #@32
    .line 214
    .end local v8    # "iw":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@35
    move-result v2

    #@36
    .line 215
    .local v2, "h":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@38
    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@3a
    cmpl-float v0, v0, v11

    #@3c
    if-lez v0, :cond_1

    #@3e
    .line 216
    if-eqz v10, :cond_4

    #@40
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@43
    move-result v7

    #@44
    .line 217
    .local v7, "ih":I
    :goto_1
    sub-int v0, v2, v7

    #@46
    rsub-int v3, v9, 0x2710

    #@48
    mul-int/2addr v0, v3

    #@49
    int-to-float v0, v0

    #@4a
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@4c
    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@4e
    mul-float/2addr v0, v3

    #@4f
    div-float/2addr v0, v12

    #@50
    float-to-int v0, v0

    #@51
    sub-int/2addr v2, v0

    #@52
    .line 220
    .end local v7    # "ih":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    #@55
    move-result v5

    #@56
    .line 221
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@58
    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@5a
    move-object v3, p1

    #@5b
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@5e
    .line 223
    if-lez v1, :cond_2

    #@60
    if-lez v2, :cond_2

    #@62
    .line 224
    iget v0, v4, Landroid/graphics/Rect;->left:I

    #@64
    iget v3, v4, Landroid/graphics/Rect;->top:I

    #@66
    iget v11, v4, Landroid/graphics/Rect;->right:I

    #@68
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    #@6a
    invoke-virtual {v6, v0, v3, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@6d
    .line 202
    :cond_2
    return-void

    #@6e
    .line 210
    .end local v2    # "h":I
    .end local v5    # "layoutDirection":I
    :cond_3
    const/4 v8, 0x0

    #@6f
    .restart local v8    # "iw":I
    goto :goto_0

    #@70
    .line 216
    .end local v8    # "iw":I
    .restart local v2    # "h":I
    :cond_4
    const/4 v7, 0x0

    #@71
    .restart local v7    # "ih":I
    goto :goto_1
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    #@3
    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@a
    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    #@d
    .line 198
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@3
    .line 111
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@5
    .line 113
    .local v1, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    iget v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@7
    const/4 v3, 0x1

    #@8
    .line 112
    invoke-static {p1, v3, v2}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    #@b
    move-result v2

    #@c
    iput v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@e
    .line 115
    iget v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@10
    const/4 v3, 0x2

    #@11
    .line 114
    invoke-static {p1, v3, v2}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    #@14
    move-result v2

    #@15
    iput v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@17
    .line 117
    iget v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@19
    const/4 v3, 0x3

    #@1a
    .line 116
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1d
    move-result v2

    #@1e
    iput v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@20
    .line 119
    iget-boolean v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@22
    const/4 v3, 0x4

    #@23
    .line 118
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@26
    move-result v2

    #@27
    iput-boolean v2, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@29
    .line 121
    const/4 v2, 0x0

    #@2a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2d
    move-result-object v0

    #@2e
    .line 122
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@30
    .line 123
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@33
    .line 108
    :cond_0
    return-void
.end method
