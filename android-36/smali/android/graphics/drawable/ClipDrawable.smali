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
.field public static final whitelist HORIZONTAL:I = 0x1

.field private static final greylist-max-o MAX_LEVEL:I = 0x2710

.field public static final whitelist VERTICAL:I = 0x2


# instance fields
.field private greylist mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final greylist-max-o mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 68
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 69
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/ClipDrawable$ClipState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 241
    iput-object p1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 242
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;II)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I
    .param p3, "orientation"    # I

    .line 81
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 83
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 84
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 86
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 136
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 137
    .local v0, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v0, :cond_5

    .line 138
    return-void

    .line 142
    :cond_5
    iget v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;[I)V

    .line 147
    const/4 v1, 0x2

    iget v2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 149
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 151
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

    .line 127
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_1a

    goto :goto_37

    .line 129
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <clip> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 105
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 107
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 108
    .local v0, "state":Landroid/graphics/drawable/ClipDrawable$ClipState;
    if-nez v0, :cond_8

    .line 109
    return-void

    .line 112
    :cond_8
    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 113
    invoke-static {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->-$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/ClipDrawable$ClipState;)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 115
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 116
    invoke-direct {p0, v1}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 120
    :goto_1e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    goto :goto_2d

    .line 120
    :catchall_22
    move-exception v2

    goto :goto_29

    .line 117
    :catch_24
    move-exception v2

    .line 118
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_25
    invoke-static {v2}, Landroid/graphics/drawable/ClipDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1e

    .line 120
    :goto_29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    throw v2

    .line 123
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 179
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    if-nez v1, :cond_b

    .line 181
    return-void

    .line 184
    :cond_b
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 185
    .local v6, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 186
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v1

    .line 188
    .local v1, "level":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 189
    .local v2, "w":I
    const/4 v8, 0x0

    .line 190
    .local v8, "iw":I
    iget-object v3, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v3, v3, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2c

    .line 191
    add-int/lit8 v3, v2, 0x0

    rsub-int v4, v1, 0x2710

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x2710

    sub-int/2addr v2, v3

    move v3, v2

    goto :goto_2d

    .line 190
    :cond_2c
    move v3, v2

    .line 194
    .end local v2    # "w":I
    .local v3, "w":I
    :goto_2d
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 195
    .local v2, "h":I
    const/4 v9, 0x0

    .line 196
    .local v9, "ih":I
    iget-object v4, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v4, v4, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_44

    .line 197
    add-int/lit8 v4, v2, 0x0

    rsub-int v7, v1, 0x2710

    mul-int/2addr v4, v7

    div-int/lit16 v4, v4, 0x2710

    sub-int/2addr v2, v4

    move v4, v2

    goto :goto_45

    .line 196
    :cond_44
    move v4, v2

    .line 200
    .end local v2    # "h":I
    .local v4, "h":I
    :goto_45
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLayoutDirection()I

    move-result v7

    .line 201
    .local v7, "layoutDirection":I
    iget-object v2, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v2, v2, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    invoke-static/range {v2 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 203
    if-lez v3, :cond_60

    if-lez v4, :cond_60

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 206
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 209
    :cond_60
    return-void
.end method

.method public whitelist getOpacity()I
    .registers 5

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 164
    .local v1, "opacity":I
    const/4 v2, -0x2

    if-eq v1, v2, :cond_21

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_21

    .line 168
    :cond_12
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v2

    .line 169
    .local v2, "level":I
    const/16 v3, 0x2710

    if-lt v2, v3, :cond_1f

    .line 170
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    return v3

    .line 174
    :cond_1f
    const/4 v3, -0x3

    return v3

    .line 165
    .end local v2    # "level":I
    :cond_21
    :goto_21
    return v2
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

    .line 93
    sget-object v0, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/ClipDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 98
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 99
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ClipDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method greylist-max-o mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 4

    .line 213
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    return-object v0
.end method

.method protected whitelist onLevelChange(I)Z
    .registers 3
    .param p1, "level"    # I

    .line 155
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 156
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
