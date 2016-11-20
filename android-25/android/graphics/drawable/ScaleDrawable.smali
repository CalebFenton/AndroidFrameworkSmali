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
    .line 72
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@9
    .line 71
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
    .line 88
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@9
    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@b
    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@d
    .line 91
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@f
    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@11
    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@13
    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@15
    .line 94
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@18
    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 293
    iput-object p1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@c
    .line 295
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    #@f
    .line 290
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
    .line 172
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    #@5
    move-result v2

    #@6
    .line 173
    .local v2, "type":I
    const/4 v3, 0x6

    #@7
    if-eq v2, v3, :cond_0

    #@9
    if-nez v2, :cond_1

    #@b
    .line 174
    :cond_0
    invoke-virtual {p0, p1, v5, v5, p2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    #@e
    move-result v3

    #@f
    return v3

    #@10
    .line 178
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 179
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@16
    .line 180
    const-string/jumbo v3, "%"

    #@19
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 181
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
    .line 182
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
    .line 186
    .end local v0    # "f":Ljava/lang/String;
    :cond_2
    return p2
.end method

.method private updateLocalState()V
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2
    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    #@7
    .line 298
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2
    .line 149
    .local v0, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    if-nez v0, :cond_0

    #@4
    .line 150
    return-void

    #@5
    .line 154
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    #@7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@a
    move-result v2

    #@b
    or-int/2addr v1, v2

    #@c
    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    #@e
    .line 157
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-set0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;[I)[I

    #@15
    .line 160
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@17
    const/4 v2, 0x1

    #@18
    .line 159
    invoke-static {p1, v2, v1}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    #@1b
    move-result v1

    #@1c
    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@1e
    .line 162
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@20
    const/4 v2, 0x2

    #@21
    .line 161
    invoke-static {p1, v2, v1}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;IF)F

    #@24
    move-result v1

    #@25
    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@27
    .line 164
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@29
    const/4 v2, 0x3

    #@2a
    .line 163
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2d
    move-result v1

    #@2e
    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@30
    .line 166
    iget-boolean v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@32
    const/4 v2, 0x4

    #@33
    .line 165
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@36
    move-result v1

    #@37
    iput-boolean v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@39
    .line 168
    iget v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    #@3b
    const/4 v2, 0x5

    #@3c
    .line 167
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3f
    move-result v1

    #@40
    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mInitialLevel:I

    #@42
    .line 147
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
    const/4 v1, 0x0

    #@1
    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@9
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 140
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@11
    invoke-static {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    #@14
    move-result-object v0

    #@15
    aget v0, v0, v1

    #@17
    if-nez v0, :cond_1

    #@19
    .line 141
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 142
    const-string/jumbo v2, ": <scale> tag requires a \'drawable\' attribute or "

    #@2b
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 143
    const-string/jumbo v2, "child tag defining a drawable"

    #@32
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 117
    iget-object v2, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@5
    .line 118
    .local v2, "state":Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    if-nez v2, :cond_0

    #@7
    .line 119
    return-void

    #@8
    .line 122
    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    #@b
    move-result-object v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 123
    invoke-static {v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->-get0(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)[I

    #@11
    move-result-object v3

    #@12
    sget-object v4, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    #@14
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object v0

    #@18
    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@1b
    .line 126
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@21
    .line 134
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    #@24
    .line 114
    return-void

    #@25
    .line 127
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@26
    .line 128
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/ScaleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    goto :goto_0

    #@2d
    .line 129
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@2e
    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@31
    .line 129
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 192
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 193
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@f
    .line 190
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 4

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 200
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 201
    const/4 v2, -0x2

    #@b
    return v2

    #@c
    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@f
    move-result v1

    #@10
    .line 205
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
    .line 206
    const/4 v2, -0x3

    #@1c
    return v2

    #@1d
    .line 209
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
    .line 101
    sget-object v1, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ScaleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@9
    .line 106
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 107
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@f
    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 110
    invoke-direct {p0}, Landroid/graphics/drawable/ScaleDrawable;->updateLocalState()V

    #@15
    .line 100
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    #@0
    .prologue
    .line 249
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@a
    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@c
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const v13, 0x461c4000    # 10000.0f

    #@3
    const/4 v12, 0x0

    #@4
    const/4 v0, 0x0

    #@5
    .line 222
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v6

    #@9
    .line 223
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@b
    .line 224
    .local v4, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@d
    iget-boolean v10, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    #@f
    .line 225
    .local v10, "min":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    #@12
    move-result v9

    #@13
    .line 227
    .local v9, "level":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@16
    move-result v1

    #@17
    .line 228
    .local v1, "w":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@19
    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@1b
    cmpl-float v3, v3, v12

    #@1d
    if-lez v3, :cond_0

    #@1f
    .line 229
    if-eqz v10, :cond_3

    #@21
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@24
    move-result v8

    #@25
    .line 230
    .local v8, "iw":I
    :goto_0
    sub-int v3, v1, v8

    #@27
    rsub-int v11, v9, 0x2710

    #@29
    mul-int/2addr v3, v11

    #@2a
    int-to-float v3, v3

    #@2b
    iget-object v11, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@2d
    iget v11, v11, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    #@2f
    mul-float/2addr v3, v11

    #@30
    div-float/2addr v3, v13

    #@31
    float-to-int v3, v3

    #@32
    sub-int/2addr v1, v3

    #@33
    .line 233
    .end local v8    # "iw":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@36
    move-result v2

    #@37
    .line 234
    .local v2, "h":I
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@39
    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@3b
    cmpl-float v3, v3, v12

    #@3d
    if-lez v3, :cond_1

    #@3f
    .line 235
    if-eqz v10, :cond_4

    #@41
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@44
    move-result v7

    #@45
    .line 236
    .local v7, "ih":I
    :goto_1
    sub-int v0, v2, v7

    #@47
    rsub-int v3, v9, 0x2710

    #@49
    mul-int/2addr v0, v3

    #@4a
    int-to-float v0, v0

    #@4b
    iget-object v3, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@4d
    iget v3, v3, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    #@4f
    mul-float/2addr v0, v3

    #@50
    div-float/2addr v0, v13

    #@51
    float-to-int v0, v0

    #@52
    sub-int/2addr v2, v0

    #@53
    .line 239
    .end local v7    # "ih":I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLayoutDirection()I

    #@56
    move-result v5

    #@57
    .line 240
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    #@59
    iget v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    #@5b
    move-object v3, p1

    #@5c
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@5f
    .line 242
    if-lez v1, :cond_2

    #@61
    if-lez v2, :cond_2

    #@63
    .line 243
    iget v0, v4, Landroid/graphics/Rect;->left:I

    #@65
    iget v3, v4, Landroid/graphics/Rect;->top:I

    #@67
    iget v11, v4, Landroid/graphics/Rect;->right:I

    #@69
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    #@6b
    invoke-virtual {v6, v0, v3, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@6e
    .line 221
    :cond_2
    return-void

    #@6f
    .end local v2    # "h":I
    .end local v5    # "layoutDirection":I
    :cond_3
    move v8, v0

    #@70
    .line 229
    goto :goto_0

    #@71
    .restart local v2    # "h":I
    :cond_4
    move v7, v0

    #@72
    .line 235
    goto :goto_1
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    #@3
    .line 215
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@a
    .line 216
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    #@d
    .line 217
    const/4 v0, 0x1

    #@e
    return v0
.end method
