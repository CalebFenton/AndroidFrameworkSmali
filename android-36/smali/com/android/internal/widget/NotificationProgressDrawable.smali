.class public final Lcom/android/internal/widget/NotificationProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationProgressDrawable$State;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;,
        Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NotifProgressDrawable"


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

.field private blacklist mEndDotColor:I

.field private final blacklist mFillPaint:Landroid/graphics/Paint;

.field private blacklist mMutated:Z

.field private final blacklist mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPointRectF:Landroid/graphics/RectF;

.field private final blacklist mSegRectF:Landroid/graphics/RectF;

.field private blacklist mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smscaleFromDensity(FII)F
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->scaleFromDensity(FII)F

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 83
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    .line 84
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "state"    # Lcom/android/internal/widget/NotificationProgressDrawable$State;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 659
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    .line 660
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 662
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 663
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    return-void
.end method

.method private blacklist applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 288
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-eqz v1, :cond_14

    .line 289
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 291
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 292
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_14
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-eqz v1, :cond_26

    .line 296
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 298
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 299
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_26
    return-void
.end method

.method private blacklist inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
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

    .line 254
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 256
    .local v0, "innerDepth":I
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_67

    .line 257
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_67

    .line 259
    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    .line 260
    goto :goto_6

    .line 263
    :cond_1b
    if-le v4, v0, :cond_1e

    .line 264
    goto :goto_6

    .line 267
    :cond_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "segments"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 270
    sget-object v5, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-static {p1, p4, p3, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 272
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 273
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_66

    .line 274
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_38
    const-string/jumbo v5, "points"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 275
    sget-object v5, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-static {p1, p4, p3, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 277
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 278
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_66

    .line 280
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad element under NotificationProgressDrawable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotifProgressDrawable"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v2    # "name":Ljava/lang/String;
    :goto_66
    goto :goto_6

    .line 283
    .end local v4    # "depth":I
    :cond_67
    return-void
.end method

.method static blacklist resolveDensity(Landroid/content/res/Resources;I)I
    .registers 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 341
    if-nez p0, :cond_4

    move v0, p1

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 342
    .local v0, "densityDpi":I
    :goto_a
    if-nez v0, :cond_f

    const/16 v1, 0xa0

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    return v1
.end method

.method private static blacklist scaleFromDensity(FII)F
    .registers 5
    .param p0, "pixels"    # F
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 350
    int-to-float v0, p2

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private static blacklist scaleFromDensity(IIIZ)I
    .registers 7
    .param p0, "pixels"    # I
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I
    .param p3, "isSize"    # Z

    .line 366
    if-eqz p0, :cond_1b

    if-ne p1, p2, :cond_5

    goto :goto_1b

    .line 370
    :cond_5
    mul-int v0, p0, p2

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 371
    .local v0, "result":F
    if-nez p3, :cond_e

    .line 372
    float-to-int v1, v0

    return v1

    .line 375
    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 376
    .local v1, "rounded":I
    if-eqz v1, :cond_15

    .line 377
    return v1

    .line 378
    :cond_15
    if-lez p0, :cond_19

    .line 379
    const/4 v2, 0x1

    return v2

    .line 381
    :cond_19
    const/4 v2, -0x1

    return v2

    .line 367
    .end local v0    # "result":F
    .end local v1    # "rounded":I
    :cond_1b
    :goto_1b
    return p0
.end method

.method private blacklist updateLocalState()V
    .registers 1

    .line 667
    return-void
.end method

.method private blacklist updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 323
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 326
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 329
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    .line 331
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 333
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 335
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 338
    return-void
.end method

.method private blacklist updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 307
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 310
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    .line 312
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 314
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 317
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 320
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 230
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 233
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    if-nez v0, :cond_8

    .line 234
    return-void

    .line 237
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 241
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 242
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public blacklist clearMutated()V
    .registers 2

    .line 534
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    .line 536
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v2, v2, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 123
    .local v2, "pointRadius":F
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 124
    .local v3, "left":F
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 126
    .local v4, "centerY":F
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 127
    .local v5, "numParts":I
    sub-float v6, v4, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 128
    .local v6, "pointTop":F
    add-float v7, v4, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 129
    .local v7, "pointBottom":F
    const/4 v8, 0x0

    .local v8, "iPart":I
    :goto_2d
    const/high16 v9, 0x40000000    # 2.0f

    if-ge v8, v5, :cond_e3

    .line 130
    iget-object v10, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 131
    .local v10, "part":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    iget v11, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    add-float/2addr v11, v3

    .line 132
    .local v11, "start":F
    iget v12, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    add-float/2addr v12, v3

    .line 133
    .local v12, "end":F
    instance-of v13, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v13, :cond_9e

    move-object v13, v10

    check-cast v13, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 135
    .local v13, "segment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    cmpl-float v14, v11, v12

    if-lez v14, :cond_54

    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v20, v5

    goto/16 :goto_d7

    .line 137
    :cond_54
    invoke-static {v13}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;)Z

    move-result v14

    if-eqz v14, :cond_60

    iget-object v14, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v14, v14, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    div-float/2addr v14, v9

    goto :goto_65

    .line 138
    :cond_60
    iget-object v14, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v14, v14, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    div-float/2addr v14, v9

    :goto_65
    nop

    .line 139
    .local v14, "radiusY":F
    iget-object v9, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v9, v9, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 141
    .local v9, "cornerRadius":F
    iget-object v15, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    .end local v2    # "pointRadius":F
    .local v16, "pointRadius":F
    iget v2, v13, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mColor:I

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    sub-float v17, v4, v14

    move/from16 v18, v3

    .end local v3    # "left":F
    .local v18, "left":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v17, v4

    .end local v4    # "centerY":F
    .local v17, "centerY":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float v19, v17, v14

    .line 144
    move/from16 v20, v5

    .end local v5    # "numParts":I
    .local v20, "numParts":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 143
    invoke-virtual {v2, v15, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 146
    .end local v9    # "cornerRadius":F
    .end local v14    # "radiusY":F
    goto :goto_d7

    .end local v13    # "segment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    .end local v16    # "pointRadius":F
    .end local v17    # "centerY":F
    .end local v18    # "left":F
    .end local v20    # "numParts":I
    .restart local v2    # "pointRadius":F
    .restart local v3    # "left":F
    .restart local v4    # "centerY":F
    .restart local v5    # "numParts":I
    :cond_9e
    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v20, v5

    .end local v2    # "pointRadius":F
    .end local v3    # "left":F
    .end local v4    # "centerY":F
    .end local v5    # "numParts":I
    .restart local v16    # "pointRadius":F
    .restart local v17    # "centerY":F
    .restart local v18    # "left":F
    .restart local v20    # "numParts":I
    instance-of v2, v10, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v2, :cond_d7

    move-object v2, v10

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 149
    .local v2, "point":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 150
    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v3, v3, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 151
    .local v3, "inset":F
    iget-object v4, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v4, v4, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 152
    .local v4, "cornerRadius":F
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 154
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v9, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->mColor:I

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 129
    .end local v2    # "point":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    .end local v3    # "inset":F
    .end local v4    # "cornerRadius":F
    .end local v10    # "part":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    .end local v11    # "start":F
    .end local v12    # "end":F
    :cond_d7
    :goto_d7
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    move/from16 v4, v17

    move/from16 v3, v18

    move/from16 v5, v20

    goto/16 :goto_2d

    .end local v16    # "pointRadius":F
    .end local v17    # "centerY":F
    .end local v18    # "left":F
    .end local v20    # "numParts":I
    .local v2, "pointRadius":F
    .local v3, "left":F
    .local v4, "centerY":F
    .restart local v5    # "numParts":I
    :cond_e3
    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v20, v5

    .line 160
    .end local v2    # "pointRadius":F
    .end local v3    # "left":F
    .end local v4    # "centerY":F
    .end local v5    # "numParts":I
    .end local v8    # "iPart":I
    .restart local v16    # "pointRadius":F
    .restart local v17    # "centerY":F
    .restart local v18    # "left":F
    .restart local v20    # "numParts":I
    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    if-eqz v2, :cond_134

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 162
    .local v2, "right":F
    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v3, v3, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    div-float/2addr v3, v9

    .line 163
    .local v3, "dotRadius":F
    iget-object v4, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v4, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v5, v5, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    sub-float v5, v2, v5

    .line 166
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v8, v17, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 167
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    add-float v10, v17, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    .line 165
    invoke-virtual {v4, v5, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 168
    iget-object v4, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v5, v5, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object v8, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v8, v8, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    iget-object v9, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 171
    .end local v2    # "right":F
    .end local v3    # "dotRadius":F
    :cond_134
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 175
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 648
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 649
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPointRadius()F
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
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

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationProgressDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 225
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 226
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 524
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    .line 525
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 526
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    .line 529
    :cond_1a
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 208
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    if-eqz v0, :cond_c

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    invoke-interface {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;->onDrawableBoundsChanged()V

    .line 213
    :cond_c
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 180
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    if-eq v0, p1, :cond_9

    .line 181
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 184
    :cond_9
    return-void
.end method

.method public blacklist setBoundsChangeListener(Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 203
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 204
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 194
    return-void
.end method

.method public blacklist setParts(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 101
    return-void
.end method

.method public varargs blacklist setParts([Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;)V
    .registers 3
    .param p1, "parts"    # [Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 107
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 108
    return-void
.end method

.method public blacklist updateEndDotColor(I)V
    .registers 3
    .param p1, "endDotColor"    # I

    .line 114
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    if-eq v0, p1, :cond_9

    .line 115
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mEndDotColor:I

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 118
    :cond_9
    return-void
.end method
