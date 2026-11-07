.class public Lcom/android/internal/widget/ViewGroupFader;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;,
        Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$DefaultViewBoundsProvider;,
        Lcom/android/internal/widget/ViewGroupFader$ParentContainerBoundsProvider;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_LOWER_BOUND:F = 0.5f

.field private static final blacklist CHAINED_BOUNDS_BOTTOM_FRACTION:F = 0.2f

.field private static final blacklist CHAINED_BOUNDS_TOP_FRACTION:F = 0.6f

.field private static final blacklist CHAINED_LOWER_REGION_FRACTION:F = 0.35f

.field private static final blacklist CHAINED_UPPER_REGION_FRACTION:F = 0.55f

.field private static final blacklist SCALE_LOWER_BOUND:F = 0.7f


# instance fields
.field private blacklist mAlphaLowerBound:F

.field private blacklist mBottomBoundPixels:F

.field private blacklist mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

.field private final blacklist mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

.field private blacklist mChainedBoundsBottom:F

.field private blacklist mChainedBoundsTop:F

.field private blacklist mChainedLowerRegion:F

.field private blacklist mChainedUpperRegion:F

.field private final blacklist mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

.field private final blacklist mContainerBounds:Landroid/graphics/Rect;

.field private blacklist mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

.field private final blacklist mOffsetViewBounds:Landroid/graphics/Rect;

.field protected final blacklist mParent:Landroid/view/ViewGroup;

.field private blacklist mScaleLowerBound:F

.field private blacklist mTopBoundPixels:F

.field private blacklist mTopInterpolator:Landroid/view/animation/BaseInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewGroup;Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;)V
    .registers 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "callback"    # Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;
    .param p3, "childViewBoundsProvider"    # Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    .line 47
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    .line 54
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    .line 55
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    .line 56
    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    .line 57
    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 70
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 177
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    .line 178
    iput-object p2, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    .line 179
    iput-object p3, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    .line 180
    new-instance v0, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewGroupFader$ScreenContainerBoundsProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    .line 181
    return-void
.end method

.method private blacklist fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChildViewBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mOffsetViewBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    iget v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;->setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V

    .line 249
    return-void
.end method

.method private static blacklist lerp(FFF)F
    .registers 4
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "fraction"    # F

    .line 322
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private blacklist scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offsetFraction"    # F

    .line 299
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v0

    .line 300
    .local v0, "alpha":F
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 301
    iget v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    invoke-static {v2, v1, p2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v1

    .line 302
    .local v1, "scale":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 303
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 304
    return-void
.end method

.method private blacklist setDefaultSizeAndAlphaForView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 308
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 311
    return-void
.end method

.method private blacklist setViewPropertiesByPosition(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "topBoundPixels"    # F
    .param p4, "bottomBoundPixels"    # F

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_24

    .line 258
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    sub-float v3, p3, p4

    div-float/2addr v2, v3

    .line 258
    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;->lerp(FFF)F

    move-result v0

    .local v0, "fadeOutRegionFraction":F
    goto :goto_32

    .line 262
    .end local v0    # "fadeOutRegionFraction":F
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_30

    .line 263
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedLowerRegion:F

    .restart local v0    # "fadeOutRegionFraction":F
    goto :goto_32

    .line 265
    .end local v0    # "fadeOutRegionFraction":F
    :cond_30
    iget v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedUpperRegion:F

    .line 267
    .restart local v0    # "fadeOutRegionFraction":F
    :goto_32
    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 268
    .local v1, "fadeOutRegionHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    .line 269
    .local v2, "topFadeBoundary":I
    iget-object v3, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    .line 270
    .local v3, "bottomFadeBoundary":I
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_51

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    .line 272
    .local v4, "wasFullSize":Z
    :goto_52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 273
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    .line 274
    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-le v6, v3, :cond_8a

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromBottom(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 275
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    .line 276
    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    iget-object v7, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 278
    invoke-virtual {v6, v7}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v6

    .line 276
    invoke-direct {p0, p1, v6}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    goto :goto_c0

    .line 280
    :cond_8a
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v2, :cond_b6

    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->shouldFadeFromTop(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    .line 282
    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    .line 284
    invoke-virtual {v6, v7}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v6

    .line 282
    invoke-direct {p0, p1, v6}, Lcom/android/internal/widget/ViewGroupFader;->scaleAndFadeByRelativeOffsetFraction(Landroid/view/View;F)V

    goto :goto_c0

    .line 287
    :cond_b6
    if-nez v4, :cond_bd

    .line 288
    iget-object v6, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;->viewHasBecomeFullSize(Landroid/view/View;)V

    .line 290
    :cond_bd
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewGroupFader;->setDefaultSizeAndAlphaForView(Landroid/view/View;)V

    .line 292
    :goto_c0
    return-void
.end method


# virtual methods
.method blacklist getAnimationCallback()Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mCallback:Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;

    return-object v0
.end method

.method blacklist setAlphaLowerBound(F)V
    .registers 2
    .param p1, "alpha"    # F

    .line 202
    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mAlphaLowerBound:F

    .line 203
    return-void
.end method

.method blacklist setBottomInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/BaseInterpolator;

    .line 210
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 211
    return-void
.end method

.method blacklist setContainerBoundsProvider(Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;)V
    .registers 2
    .param p1, "boundsProvider"    # Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    .line 214
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    .line 215
    return-void
.end method

.method blacklist setScaleLowerBound(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 193
    iput p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mScaleLowerBound:F

    .line 194
    return-void
.end method

.method blacklist setTopInterpolator(Landroid/view/animation/BaseInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/BaseInterpolator;

    .line 206
    iput-object p1, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopInterpolator:Landroid/view/animation/BaseInterpolator;

    .line 207
    return-void
.end method

.method public blacklist updateFade()V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBoundsProvider:Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;

    iget-object v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;->provideBounds(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 219
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsTop:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mTopBoundPixels:F

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/ViewGroupFader;->mChainedBoundsBottom:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mBottomBoundPixels:F

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ViewGroupFader;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    .line 223
    return-void
.end method

.method public blacklist updateListElementFades(Landroid/view/ViewGroup;Z)V
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "shouldFade"    # Z

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_12

    .line 230
    goto :goto_35

    .line 233
    :cond_12
    invoke-static {}, Landroid/widget/flags/Flags;->enableFadingViewGroup()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 235
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_30

    .line 236
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewGroupFader;->updateListElementFades(Landroid/view/ViewGroup;Z)V

    .line 240
    :cond_30
    if-eqz p2, :cond_35

    .line 241
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/ViewGroupFader;->fadeElement(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 227
    .end local v1    # "child":Landroid/view/View;
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "i":I
    :cond_38
    return-void
.end method
