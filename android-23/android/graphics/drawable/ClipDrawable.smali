.class public Landroid/graphics/drawable/ClipDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ClipDrawable$ClipState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field private static final MAX_LEVEL:I = 0x2710

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    #@9
    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    #@3
    .line 57
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@a
    .line 225
    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@c
    .line 222
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "orientation"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    #@9
    .line 77
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@b
    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@d
    .line 78
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@f
    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@11
    .line 80
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 74
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
    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@8
    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@e
    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    #@10
    const/4 v1, 0x1

    #@11
    aget v0, v0, v1

    #@13
    if-nez v0, :cond_1

    #@15
    .line 99
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
    .line 100
    const-string/jumbo v2, ": <clip> tag requires a \'drawable\' attribute or "

    #@27
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    .line 101
    const-string/jumbo v2, "child tag defining a drawable"

    #@2e
    .line 99
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
    .line 95
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 123
    iget-object v2, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@2
    .line 124
    .local v2, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v2, :cond_0

    #@4
    .line 125
    return-void

    #@5
    .line 128
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 129
    iget-object v3, v2, Landroid/graphics/drawable/ClipDrawable$ClipState;->mThemeAttrs:[I

    #@b
    sget-object v4, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    #@d
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@14
    .line 132
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 142
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 122
    return-void

    #@1e
    .line 133
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    #@1f
    .line 134
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
    .line 135
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    #@26
    .line 136
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 135
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v6

    #@4
    .line 172
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 173
    return-void

    #@b
    .line 176
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@d
    .line 177
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    #@10
    move-result-object v3

    #@11
    .line 178
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    #@14
    move-result v9

    #@15
    .line 180
    .local v9, "level":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    #@18
    move-result v1

    #@19
    .line 181
    .local v1, "w":I
    const/4 v8, 0x0

    #@1a
    .line 182
    .local v8, "iw":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@1c
    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@1e
    and-int/lit8 v0, v0, 0x1

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 183
    add-int/lit8 v0, v1, 0x0

    #@24
    rsub-int v10, v9, 0x2710

    #@26
    mul-int/2addr v0, v10

    #@27
    div-int/lit16 v0, v0, 0x2710

    #@29
    sub-int/2addr v1, v0

    #@2a
    .line 186
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    #@2d
    move-result v2

    #@2e
    .line 187
    .local v2, "h":I
    const/4 v7, 0x0

    #@2f
    .line 188
    .local v7, "ih":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@31
    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@33
    and-int/lit8 v0, v0, 0x2

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 189
    add-int/lit8 v0, v2, 0x0

    #@39
    rsub-int v10, v9, 0x2710

    #@3b
    mul-int/2addr v0, v10

    #@3c
    div-int/lit16 v0, v0, 0x2710

    #@3e
    sub-int/2addr v2, v0

    #@3f
    .line 192
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLayoutDirection()I

    #@42
    move-result v5

    #@43
    .line 193
    .local v5, "layoutDirection":I
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@45
    iget v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@47
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@4a
    .line 195
    if-lez v1, :cond_3

    #@4c
    if-lez v2, :cond_3

    #@4e
    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@51
    .line 197
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@54
    .line 198
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@57
    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@5a
    .line 170
    :cond_3
    return-void
.end method

.method public getOpacity()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x2

    #@1
    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 155
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@8
    move-result v2

    #@9
    .line 156
    .local v2, "opacity":I
    if-eq v2, v4, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_1

    #@11
    .line 157
    :cond_0
    return v4

    #@12
    .line 160
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    #@15
    move-result v1

    #@16
    .line 161
    .local v1, "level":I
    const/16 v3, 0x2710

    #@18
    if-lt v1, v3, :cond_2

    #@1a
    .line 162
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@1d
    move-result v3

    #@1e
    return v3

    #@1f
    .line 166
    :cond_2
    const/4 v3, -0x3

    #@20
    return v3
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
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3
    .line 88
    sget-object v1, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    #@5
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/ClipDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 89
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@c
    .line 90
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ClipDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@f
    .line 91
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    #@12
    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    .line 85
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    #@3
    .line 148
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    #@6
    .line 149
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@3
    .line 109
    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    #@5
    .line 111
    .local v1, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    iget v2, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@7
    const/4 v3, 0x2

    #@8
    .line 110
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b
    move-result v2

    #@c
    iput v2, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    #@e
    .line 113
    iget v2, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@10
    const/4 v3, 0x0

    #@11
    .line 112
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@14
    move-result v2

    #@15
    iput v2, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    #@17
    .line 115
    const/4 v2, 0x1

    #@18
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@1b
    move-result-object v0

    #@1c
    .line 116
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@1e
    .line 117
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    #@21
    .line 106
    :cond_0
    return-void
.end method
