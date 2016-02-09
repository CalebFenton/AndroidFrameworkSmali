.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Slide$CalculateSlide;,
        Landroid/transition/Slide$CalculateSlideHorizontal;,
        Landroid/transition/Slide$CalculateSlideVertical;,
        Landroid/transition/Slide$1;,
        Landroid/transition/Slide$2;,
        Landroid/transition/Slide$3;,
        Landroid/transition/Slide$4;,
        Landroid/transition/Slide$5;,
        Landroid/transition/Slide$6;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@7
    .line 42
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@c
    sput-object v0, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@e
    .line 72
    new-instance v0, Landroid/transition/Slide$1;

    #@10
    invoke-direct {v0}, Landroid/transition/Slide$1;-><init>()V

    #@13
    sput-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    #@15
    .line 79
    new-instance v0, Landroid/transition/Slide$2;

    #@17
    invoke-direct {v0}, Landroid/transition/Slide$2;-><init>()V

    #@1a
    sput-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    #@1c
    .line 93
    new-instance v0, Landroid/transition/Slide$3;

    #@1e
    invoke-direct {v0}, Landroid/transition/Slide$3;-><init>()V

    #@21
    sput-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    #@23
    .line 100
    new-instance v0, Landroid/transition/Slide$4;

    #@25
    invoke-direct {v0}, Landroid/transition/Slide$4;-><init>()V

    #@28
    sput-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    #@2a
    .line 107
    new-instance v0, Landroid/transition/Slide$5;

    #@2c
    invoke-direct {v0}, Landroid/transition/Slide$5;-><init>()V

    #@2f
    sput-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    #@31
    .line 121
    new-instance v0, Landroid/transition/Slide$6;

    #@33
    invoke-direct {v0}, Landroid/transition/Slide$6;-><init>()V

    #@36
    sput-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x50

    #@2
    .line 132
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@5
    .line 44
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@7
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@9
    .line 45
    iput v1, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@b
    .line 133
    invoke-virtual {p0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    #@e
    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@3
    .line 44
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@5
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@7
    .line 45
    const/16 v0, 0x50

    #@9
    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@b
    .line 140
    invoke-virtual {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    #@e
    .line 139
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
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 44
    sget-object v2, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@7
    iput-object v2, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@9
    .line 45
    iput v3, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@b
    .line 145
    sget-object v2, Lcom/android/internal/R$styleable;->Slide:[I

    #@d
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 146
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@15
    move-result v1

    #@16
    .line 147
    .local v1, "edge":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    .line 148
    invoke-virtual {p0, v1}, Landroid/transition/Slide;->setSlideEdge(I)V

    #@1c
    .line 143
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 152
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 153
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 154
    .local v0, "position":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@8
    .line 155
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    const-string/jumbo v3, "android:slide:screenPosition"

    #@d
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 151
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 167
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 165
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 161
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 159
    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    #@0
    .prologue
    .line 218
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
    .line 224
    if-nez p4, :cond_0

    #@3
    .line 225
    return-object v0

    #@4
    .line 227
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
    .line 228
    .local v10, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@12
    move-result v6

    #@13
    .line 229
    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@16
    move-result v7

    #@17
    .line 230
    .local v7, "endY":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@19
    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@1c
    move-result v4

    #@1d
    .line 231
    .local v4, "startX":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@1f
    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@22
    move-result v5

    #@23
    .line 233
    .local v5, "startY":F
    const/4 v0, 0x0

    #@24
    aget v2, v10, v0

    #@26
    const/4 v0, 0x1

    #@27
    aget v3, v10, v0

    #@29
    .line 234
    sget-object v8, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@2b
    move-object v0, p2

    #@2c
    move-object v1, p4

    #@2d
    move-object v9, p0

    #@2e
    .line 232
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    #@31
    move-result-object v0

    #@32
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
    .line 240
    if-nez p3, :cond_0

    #@3
    .line 241
    return-object v0

    #@4
    .line 243
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
    .line 244
    .local v10, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@12
    move-result v4

    #@13
    .line 245
    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@16
    move-result v5

    #@17
    .line 246
    .local v5, "startY":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@19
    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@1c
    move-result v6

    #@1d
    .line 247
    .local v6, "endX":F
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@1f
    invoke-interface {v0, p1, p2}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    #@22
    move-result v7

    #@23
    .line 249
    .local v7, "endY":F
    const/4 v0, 0x0

    #@24
    aget v2, v10, v0

    #@26
    const/4 v0, 0x1

    #@27
    aget v3, v10, v0

    #@29
    .line 250
    sget-object v8, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@2b
    move-object v0, p2

    #@2c
    move-object v1, p3

    #@2d
    move-object v9, p0

    #@2e
    .line 248
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public setSlideEdge(I)V
    .locals 3
    .param p1, "slideEdge"    # I

    #@0
    .prologue
    .line 180
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 200
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Invalid slide direction"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 182
    :sswitch_0
    sget-object v1, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    #@e
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@10
    .line 202
    :goto_0
    iput p1, p0, Landroid/transition/Slide;->mSlideEdge:I

    #@12
    .line 203
    new-instance v0, Landroid/transition/SidePropagation;

    #@14
    invoke-direct {v0}, Landroid/transition/SidePropagation;-><init>()V

    #@17
    .line 204
    .local v0, "propagation":Landroid/transition/SidePropagation;
    invoke-virtual {v0, p1}, Landroid/transition/SidePropagation;->setSide(I)V

    #@1a
    .line 205
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setPropagation(Landroid/transition/TransitionPropagation;)V

    #@1d
    .line 179
    return-void

    #@1e
    .line 185
    .end local v0    # "propagation":Landroid/transition/SidePropagation;
    :sswitch_1
    sget-object v1, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    #@20
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@22
    goto :goto_0

    #@23
    .line 188
    :sswitch_2
    sget-object v1, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    #@25
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@27
    goto :goto_0

    #@28
    .line 191
    :sswitch_3
    sget-object v1, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    #@2a
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@2c
    goto :goto_0

    #@2d
    .line 194
    :sswitch_4
    sget-object v1, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    #@2f
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@31
    goto :goto_0

    #@32
    .line 197
    :sswitch_5
    sget-object v1, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    #@34
    iput-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    #@36
    goto :goto_0

    #@37
    .line 180
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
