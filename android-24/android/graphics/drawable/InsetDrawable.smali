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
    .line 64
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@9
    .line 63
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
    .line 74
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@9
    .line 73
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
    .line 88
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@9
    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@b
    iput p2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@d
    .line 91
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@f
    iput p3, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@11
    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@13
    iput p4, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@15
    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@17
    iput p5, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@19
    .line 95
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1c
    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 322
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 56
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 324
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@c
    .line 321
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

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    .line 145
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3
    .line 146
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v1, :cond_0

    #@5
    .line 147
    return-void

    #@6
    .line 151
    :cond_0
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    #@8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@b
    move-result v3

    #@c
    or-int/2addr v2, v3

    #@d
    iput v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    #@f
    .line 154
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-set0(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)[I

    #@16
    .line 157
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 158
    const/4 v2, 0x0

    #@1d
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@20
    move-result v0

    #@21
    .line 159
    .local v0, "inset":I
    iput v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@23
    .line 160
    iput v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@25
    .line 161
    iput v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@27
    .line 162
    iput v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@29
    .line 166
    .end local v0    # "inset":I
    :cond_1
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@2b
    const/4 v3, 0x2

    #@2c
    .line 165
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@2f
    move-result v2

    #@30
    iput v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@32
    .line 168
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@34
    const/4 v3, 0x3

    #@35
    .line 167
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@38
    move-result v2

    #@39
    iput v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@3b
    .line 170
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@3d
    const/4 v3, 0x4

    #@3e
    .line 169
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@41
    move-result v2

    #@42
    iput v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@44
    .line 172
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@46
    const/4 v3, 0x5

    #@47
    .line 171
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@4a
    move-result v2

    #@4b
    iput v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@4d
    .line 144
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
    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@8
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 137
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@10
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x1

    #@15
    aget v0, v0, v1

    #@17
    if-nez v0, :cond_1

    #@19
    .line 138
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
    .line 139
    const-string/jumbo v2, ": <inset> tag requires a \'drawable\' attribute or "

    #@2b
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 140
    const-string/jumbo v2, "child tag defining a drawable"

    #@32
    .line 138
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
    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@3
    .line 116
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@5
    .line 117
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v2, :cond_0

    #@7
    .line 118
    return-void

    #@8
    .line 121
    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    #@b
    move-result-object v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 122
    invoke-static {v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    #@11
    move-result-object v3

    #@12
    sget-object v4, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    #@14
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object v0

    #@18
    .line 124
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@1b
    .line 125
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@21
    .line 113
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    return-void

    #@22
    .line 126
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@23
    .line 127
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/InsetDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    goto :goto_0

    #@2a
    .line 128
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@2b
    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2e
    .line 128
    throw v3
.end method

.method public getIntrinsicHeight()I
    .locals 3

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@7
    move-result v0

    #@8
    .line 235
    .local v0, "childHeight":I
    if-gez v0, :cond_0

    #@a
    .line 236
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 238
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@e
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@10
    add-int/2addr v1, v0

    #@11
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@13
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@15
    add-int/2addr v1, v2

    #@16
    return v1
.end method

.method public getIntrinsicWidth()I
    .locals 3

    #@0
    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v0

    #@8
    .line 226
    .local v0, "childWidth":I
    if-gez v0, :cond_0

    #@a
    .line 227
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 229
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@e
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@10
    add-int/2addr v1, v0

    #@11
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@13
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@15
    add-int/2addr v1, v2

    #@16
    return v1
.end method

.method public getOpacity()I
    .locals 3

    #@0
    .prologue
    .line 200
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@2
    .line 201
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@9
    move-result v0

    #@a
    .line 202
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
    .line 204
    :cond_0
    const/4 v2, -0x3

    #@16
    return v2

    #@17
    .line 203
    :cond_1
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@19
    if-gtz v2, :cond_0

    #@1b
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1d
    if-gtz v2, :cond_0

    #@1f
    .line 206
    :cond_2
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 6

    #@0
    .prologue
    .line 191
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpticalInsets()Landroid/graphics/Insets;

    #@3
    move-result-object v0

    #@4
    .line 192
    .local v0, "contentInsets":Landroid/graphics/Insets;
    iget v1, v0, Landroid/graphics/Insets;->left:I

    #@6
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@8
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    #@a
    add-int/2addr v1, v2

    #@b
    .line 193
    iget v2, v0, Landroid/graphics/Insets;->top:I

    #@d
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@f
    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@11
    add-int/2addr v2, v3

    #@12
    .line 194
    iget v3, v0, Landroid/graphics/Insets;->right:I

    #@14
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@16
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    #@18
    add-int/2addr v3, v4

    #@19
    .line 195
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    #@1b
    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@1d
    iget v5, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@1f
    add-int/2addr v4, v5

    #@20
    .line 192
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
    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    #@7
    .line 242
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
    .line 177
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    .line 179
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
    .line 180
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
    .line 181
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
    .line 182
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
    .line 184
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
    .line 185
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@37
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    #@39
    .line 184
    or-int/2addr v3, v4

    #@3a
    .line 185
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@3c
    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    #@3e
    .line 184
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
    .line 102
    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/InsetDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 105
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@9
    .line 107
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 108
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@f
    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 101
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    #@0
    .prologue
    .line 248
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@a
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    #@c
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@2
    .line 212
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 214
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
    .line 215
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
    .line 216
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
    .line 217
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
    .line 220
    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    #@2c
    .line 210
    return-void
.end method
