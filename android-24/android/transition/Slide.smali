.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Slide$1;,
        Landroid/transition/Slide$2;,
        Landroid/transition/Slide$3;,
        Landroid/transition/Slide$4;,
        Landroid/transition/Slide$5;,
        Landroid/transition/Slide$6;,
        Landroid/transition/Slide$CalculateSlide;,
        Landroid/transition/Slide$CalculateSlideHorizontal;,
        Landroid/transition/Slide$CalculateSlideVertical;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final TAG:Ljava/lang/String; = "Slide"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroid/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

.field private mSlideEdge:I

.field private mSlideFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@7
    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@c
    sput-object v0, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@e
    .line 82
    new-instance v0, Landroid/transition/Slide$1;

    #@10
    invoke-direct {v0}, Landroid/transition/Slide$1;-><init>()V

    #@13
    sput-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    #@15
    .line 89
    new-instance v0, Landroid/transition/Slide$2;

    #@17
    invoke-direct {v0}, Landroid/transition/Slide$2;-><init>()V

    #@1a
    sput-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    #@1c
    .line 103
    new-instance v0, Landroid/transition/Slide$3;

    #@1e
    invoke-direct {v0}, Landroid/transition/Slide$3;-><init>()V

    #@21
    sput-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    #@23
    .line 110
    new-instance v0, Landroid/transition/Slide$4;

    #@25
    invoke-direct {v0}, Landroid/transition/Slide$4;-><init>()V

    #@28
    sput-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    #@2a
    .line 117
    new-instance v0, Landroid/transition/Slide$5;

    #@2c
    invoke-direct {v0}, Landroid/transition/Slide$5;-><init>()V

    #@2f
    sput-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    #@31
    .line 131
    new-instance v0, Landroid/transition/Slide$6;

    #@33
    invoke-direct {v0}, Landroid/transition/Slide$6;-><init>()V

    #@36
    sput-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@38
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x50

    #@2
    .line 142
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@5
    .line 48
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@7
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@9
    .line 49
    iput v1, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@b
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    #@d
    iput v0, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@f
    .line 143
    invoke-virtual {p0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    #@12
    .line 142
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    #@0
    .prologue
    .line 149
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@3
    .line 48
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@5
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@7
    .line 49
    const/16 v0, 0x50

    #@9
    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@b
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    #@d
    iput v0, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@f
    .line 150
    invoke-virtual {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    #@12
    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/16 v3, 0x50

    #@2
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 48
    sget-object v2, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@7
    iput-object v2, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@9
    .line 49
    iput v3, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@b
    .line 50
    const/high16 v2, 0x3f800000    # 1.0f

    #@d
    iput v2, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@f
    .line 155
    sget-object v2, Lcom/android/internal/R$styleable;->Slide:[I

    #@11
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@14
    move-result-object v0

    #@15
    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v1

    #@1a
    .line 157
    .local v1, "edge":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@1d
    .line 158
    invoke-virtual {p0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    #@20
    .line 153
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 162
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 163
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 164
    .local v0, "position":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 165
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    const-string/jumbo v3, "android:slide:screenPosition"

    #@d
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 161
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 177
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 175
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 171
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 169
    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@2
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 235
    if-nez p4, :cond_0

    #@3
    .line 236
    return-object v0

    #@4
    .line 238
    :cond_0
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v1, "android:slide:screenPosition"

    #@9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v10

    #@d
    check-cast v10, [I

    #@f
    .line 239
    .local v10, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@12
    move-result v6

    #@13
    .line 240
    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@16
    move-result v7

    #@17
    .line 241
    .local v7, "endY":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@19
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@1b
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    #@1e
    move-result v4

    #@1f
    .line 242
    .local v4, "startX":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@21
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@23
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    #@26
    move-result v5

    #@27
    .line 244
    .local v5, "startY":F
    const/4 v0, 0x0

    #@28
    aget v2, v10, v0

    #@2a
    const/4 v0, 0x1

    #@2b
    aget v3, v10, v0

    #@2d
    .line 245
    sget-object v8, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@2f
    move-object v0, p2

    #@30
    move-object v1, p4

    #@31
    move-object v9, p0

    #@32
    .line 243
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 251
    if-nez p3, :cond_0

    #@3
    .line 252
    return-object v0

    #@4
    .line 254
    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v1, "android:slide:screenPosition"

    #@9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v10

    #@d
    check-cast v10, [I

    #@f
    .line 255
    .local v10, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@12
    move-result v4

    #@13
    .line 256
    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@16
    move-result v5

    #@17
    .line 257
    .local v5, "startY":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@19
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@1b
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    #@1e
    move-result v6

    #@1f
    .line 258
    .local v6, "endX":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@21
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@23
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    #@26
    move-result v7

    #@27
    .line 260
    .local v7, "endY":F
    const/4 v0, 0x0

    #@28
    aget v2, v10, v0

    #@2a
    const/4 v0, 0x1

    #@2b
    aget v3, v10, v0

    #@2d
    .line 261
    sget-object v8, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@2f
    move-object v0, p2

    #@30
    move-object v1, p3

    #@31
    move-object v9, p0

    #@32
    .line 259
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public setSlideEdge(I)V
    .locals 3
    .param p1, "slideEdge"    # I

    #@0
    .prologue
    .line 190
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Invalid slide direction"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 192
    :sswitch_0
    sget-object v1, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    #@e
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@10
    .line 212
    :goto_0
    iput p1, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@12
    .line 213
    new-instance v0, Landroid/transition/SidePropagation;

    #@14
    invoke-direct {v0}, Landroid/transition/SidePropagation;-><init>()V

    #@17
    .line 214
    .local v0, "propagation":Landroid/transition/SidePropagation;
    invoke-virtual {v0, p1}, Landroid/transition/SidePropagation;->setSide(I)V

    #@1a
    .line 215
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setPropagation(Landroid/transition/TransitionPropagation;)V

    #@1d
    .line 189
    return-void

    #@1e
    .line 195
    .end local v0    # "propagation":Landroid/transition/SidePropagation;
    :sswitch_1
    sget-object v1, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    #@20
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@22
    goto :goto_0

    #@23
    .line 198
    :sswitch_2
    sget-object v1, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    #@25
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@27
    goto :goto_0

    #@28
    .line 201
    :sswitch_3
    sget-object v1, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@2a
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@2c
    goto :goto_0

    #@2d
    .line 204
    :sswitch_4
    sget-object v1, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    #@2f
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@31
    goto :goto_0

    #@32
    .line 207
    :sswitch_5
    sget-object v1, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    #@34
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@36
    goto :goto_0

    #@37
    .line 190
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method public setSlideFraction(F)V
    .locals 0
    .param p1, "slideFraction"    # F

    #@0
    .prologue
    .line 266
    iput p1, p0, Landroid/transition/Slide;->mSlideFraction:F

    #@2
    .line 265
    return-void
.end method
