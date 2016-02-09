.class public Landroid/graphics/drawable/InsetDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/InsetDrawable$InsetState;
    }
.end annotation


# instance fields
.field private mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 61
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@9
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "inset"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move v2, p2

    #@3
    move v3, p2

    #@4
    move v4, p2

    #@5
    move v5, p2

    #@6
    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@9
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetLeft"    # I
    .param p3, "insetTop"    # I
    .param p4, "insetRight"    # I
    .param p5, "insetBottom"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@9
    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@b
    iput p2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@d
    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@f
    iput p3, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@11
    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@13
    iput p4, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@15
    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@17
    iput p5, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@19
    .line 92
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 53
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 280
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@c
    .line 277
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

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
    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 110
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@e
    iget-object v0, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    #@10
    const/4 v1, 0x1

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 111
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
    .line 112
    const-string/jumbo v2, ": <inset> tag requires a \'drawable\' attribute or "

    #@27
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 113
    const-string/jumbo v2, "child tag defining a drawable"

    #@2e
    .line 111
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
    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 159
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@2
    .line 160
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v2, :cond_0

    #@4
    .line 161
    return-void

    #@5
    .line 164
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 165
    iget-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    #@b
    sget-object v4, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    #@d
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@14
    .line 168
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 178
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 158
    return-void

    #@1e
    .line 169
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@1f
    .line 170
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
    .line 171
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@26
    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 171
    throw v3
.end method

.method public getIntrinsicHeight()I
    .locals 2

    #@0
    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v0

    #@8
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@a
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@c
    add-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@f
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v0

    #@8
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@a
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@c
    add-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@f
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method

.method public getOpacity()I
    .locals 3

    #@0
    .prologue
    .line 206
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@2
    .line 207
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@9
    move-result v0

    #@a
    .line 208
    .local v0, "opacity":I
    const/4 v2, -0x1

    #@b
    if-ne v0, v2, :cond_2

    #@d
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@f
    if-gtz v2, :cond_0

    #@11
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@13
    if-lez v2, :cond_1

    #@15
    .line 210
    :cond_0
    const/4 v2, -0x3

    #@16
    return v2

    #@17
    .line 209
    :cond_1
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@19
    if-gtz v2, :cond_0

    #@1b
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1d
    if-gtz v2, :cond_0

    #@1f
    .line 212
    :cond_2
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 6

    #@0
    .prologue
    .line 197
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpticalInsets()Landroid/graphics/Insets;

    #@3
    move-result-object v0

    #@4
    .line 198
    .local v0, "contentInsets":Landroid/graphics/Insets;
    iget v1, v0, Landroid/graphics/Insets;->left:I

    #@6
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@8
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@a
    add-int/2addr v1, v2

    #@b
    .line 199
    iget v2, v0, Landroid/graphics/Insets;->top:I

    #@d
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@f
    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@11
    add-int/2addr v2, v3

    #@12
    .line 200
    iget v3, v0, Landroid/graphics/Insets;->right:I

    #@14
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@16
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@18
    add-int/2addr v3, v4

    #@19
    .line 201
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    #@1b
    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@1d
    iget v5, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1f
    add-int/2addr v4, v5

    #@20
    .line 198
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@7
    .line 240
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 183
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    .line 185
    .local v0, "pad":Z
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@8
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@a
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@c
    add-int/2addr v3, v4

    #@d
    iput v3, p1, Landroid/graphics/Rect;->left:I

    #@f
    .line 186
    iget v3, p1, Landroid/graphics/Rect;->right:I

    #@11
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@13
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@15
    add-int/2addr v3, v4

    #@16
    iput v3, p1, Landroid/graphics/Rect;->right:I

    #@18
    .line 187
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@1a
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@1c
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@1e
    add-int/2addr v3, v4

    #@1f
    iput v3, p1, Landroid/graphics/Rect;->top:I

    #@21
    .line 188
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@23
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@25
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@27
    add-int/2addr v3, v4

    #@28
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 190
    if-nez v0, :cond_0

    #@2c
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@2e
    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@30
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@32
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@34
    or-int/2addr v3, v4

    #@35
    .line 191
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@37
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@39
    .line 190
    or-int/2addr v3, v4

    #@3a
    .line 191
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3c
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@3e
    .line 190
    or-int/2addr v3, v4

    #@3f
    if-eqz v3, :cond_1

    #@41
    :cond_0
    :goto_0
    return v1

    #@42
    :cond_1
    move v1, v2

    #@43
    goto :goto_0
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
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 100
    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/InsetDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 102
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/InsetDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@f
    .line 103
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@12
    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    .line 97
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 2

    #@0
    .prologue
    .line 246
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@4
    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    #@7
    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@9
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@b
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@2
    .line 218
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 220
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@7
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@9
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@b
    add-int/2addr v1, v2

    #@c
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@e
    .line 221
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@10
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@12
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@14
    add-int/2addr v1, v2

    #@15
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@17
    .line 222
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@19
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@1b
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@1d
    sub-int/2addr v1, v2

    #@1e
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@20
    .line 223
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@22
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@24
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@26
    sub-int/2addr v1, v2

    #@27
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@29
    .line 226
    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    #@2c
    .line 216
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/high16 v7, -0x80000000

    #@2
    .line 119
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@5
    .line 121
    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@7
    .line 122
    .local v5, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@a
    move-result v0

    #@b
    .line 123
    .local v0, "N":I
    const/4 v3, 0x0

    #@c
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@e
    .line 124
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@11
    move-result v1

    #@12
    .line 125
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    #@15
    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 127
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v2

    #@1c
    .line 128
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@1e
    .line 129
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@21
    goto :goto_1

    #@22
    .line 133
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@25
    move-result v4

    #@26
    .line 134
    .local v4, "inset":I
    if-eq v4, v7, :cond_0

    #@28
    .line 135
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@2a
    .line 136
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@2c
    .line 137
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@2e
    .line 138
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@30
    goto :goto_1

    #@31
    .line 142
    .end local v4    # "inset":I
    :pswitch_2
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@33
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@36
    move-result v6

    #@37
    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@39
    goto :goto_1

    #@3a
    .line 145
    :pswitch_3
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@3c
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3f
    move-result v6

    #@40
    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@42
    goto :goto_1

    #@43
    .line 148
    :pswitch_4
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@45
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@48
    move-result v6

    #@49
    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@4b
    goto :goto_1

    #@4c
    .line 151
    :pswitch_5
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@4e
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@51
    move-result v6

    #@52
    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@54
    goto :goto_1

    #@55
    .line 118
    .end local v1    # "attr":I
    :cond_1
    return-void

    #@56
    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
