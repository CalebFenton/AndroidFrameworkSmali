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
.field private static final greylist-max-o MAX_LEVEL:I = 0x2710


# instance fields
.field private greylist-max-r mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 75
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .registers 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "scaleWidth"    # F
    .param p4, "scaleHeight"    # F

    .line 91
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 94
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 95
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 97
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 294
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 296
    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 298
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    .line 299
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static greylist-max-o getPercent(Landroid/content/res/TypedArray;IF)F
    .registers 8
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    .line 176
    .local v0, "type":I
    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2c

    if-nez v0, :cond_b

    goto :goto_2c

    .line 181
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 183
    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "f":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    return v3

    .line 189
    .end local v2    # "f":Ljava/lang/String;
    :cond_2b
    return p2

    .line 177
    .end local v1    # "s":Ljava/lang/String;
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, v2, v2, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    return v1
.end method

.method private greylist-max-o updateLocalState()V
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    .line 303
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 152
    .local v0, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    if-nez v0, :cond_5

    .line 153
    return-void

    .line 157
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    .line 160
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)V

    .line 162
    const/4 v1, 0x1

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    invoke-static {p1, v1, v2}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 164
    const/4 v1, 0x2

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    invoke-static {p1, v1, v2}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 166
    const/4 v1, 0x3

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 168
    const/4 v1, 0x4

    iget-boolean v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 170
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    .line 172
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

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 144
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <scale> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 118
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 120
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 121
    .local v0, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    if-nez v0, :cond_8

    .line 122
    return-void

    .line 125
    :cond_8
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 126
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 128
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 129
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 133
    :goto_1e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    goto :goto_2d

    .line 133
    :catchall_22
    move-exception v2

    goto :goto_29

    .line 130
    :catch_24
    move-exception v2

    .line 131
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_25
    invoke-static {v2}, Landroid/graphics/drawable/ScaleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1e

    .line 133
    :goto_29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    throw v2

    .line 137
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    .line 138
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 194
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 195
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-eqz v1, :cond_f

    .line 196
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    :cond_f
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 5

    .line 202
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-nez v1, :cond_c

    .line 204
    const/4 v1, -0x2

    return v1

    .line 207
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 208
    .local v1, "opacity":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_1d

    .line 209
    const/4 v2, -0x3

    return v2

    .line 212
    :cond_1d
    return v1
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

    .line 104
    sget-object v0, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/ScaleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 109
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 110
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    .line 114
    return-void
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 4

    .line 252
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 253
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    return-object v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 227
    .local v5, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-boolean v7, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    .line 228
    .local v7, "min":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v8

    .line 230
    .local v8, "level":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 231
    .local v1, "w":I
    iget-object v2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v2, v2, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const v4, 0x461c4000    # 10000.0f

    const/4 v6, 0x0

    if-lez v2, :cond_37

    .line 232
    if-eqz v7, :cond_26

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v6

    .line 233
    .local v2, "iw":I
    :goto_27
    sub-int v9, v1, v2

    rsub-int v10, v8, 0x2710

    mul-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v10, v10, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v4

    float-to-int v9, v9

    sub-int/2addr v1, v9

    move v2, v1

    goto :goto_38

    .line 231
    .end local v2    # "iw":I
    :cond_37
    move v2, v1

    .line 236
    .end local v1    # "w":I
    .local v2, "w":I
    :goto_38
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 237
    .local v1, "h":I
    iget-object v9, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v9, v9, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v3, v9, v3

    if-lez v3, :cond_5a

    .line 238
    if-eqz v7, :cond_4a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 239
    .local v6, "ih":I
    :cond_4a
    sub-int v3, v1, v6

    rsub-int v9, v8, 0x2710

    mul-int/2addr v3, v9

    int-to-float v3, v3

    iget-object v9, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v9, v9, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v3, v9

    div-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    move v3, v1

    goto :goto_5b

    .line 237
    .end local v6    # "ih":I
    :cond_5a
    move v3, v1

    .line 242
    .end local v1    # "h":I
    .local v3, "h":I
    :goto_5b
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    move-result v6

    .line 243
    .local v6, "layoutDirection":I
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    move-object v4, p1

    .end local p1    # "bounds":Landroid/graphics/Rect;
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 245
    if-lez v2, :cond_76

    if-lez v3, :cond_76

    .line 246
    iget p1, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    :cond_76
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 217
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    .line 220
    const/4 v0, 0x1

    return v0
.end method
