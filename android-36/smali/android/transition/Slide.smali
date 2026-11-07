.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Slide$CalculateSlide;,
        Landroid/transition/Slide$CalculateSlideVertical;,
        Landroid/transition/Slide$CalculateSlideHorizontal;,
        Landroid/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final greylist-max-o PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Slide"

.field private static final greylist-max-o sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final greylist-max-o sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

.field private static final greylist-max-o sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

.field private static final greylist-max-o sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

.field private static final greylist-max-o sCalculateRight:Landroid/transition/Slide$CalculateSlide;

.field private static final greylist-max-o sCalculateStart:Landroid/transition/Slide$CalculateSlide;

.field private static final greylist-max-o sCalculateTop:Landroid/transition/Slide$CalculateSlide;

.field private static final greylist-max-o sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private greylist-max-o mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

.field private greylist-max-o mSlideEdge:I

.field private greylist-max-o mSlideFraction:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 47
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 83
    new-instance v0, Landroid/transition/Slide$1;

    invoke-direct {v0}, Landroid/transition/Slide$1;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    .line 90
    new-instance v0, Landroid/transition/Slide$2;

    invoke-direct {v0}, Landroid/transition/Slide$2;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    .line 104
    new-instance v0, Landroid/transition/Slide$3;

    invoke-direct {v0}, Landroid/transition/Slide$3;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    .line 111
    new-instance v0, Landroid/transition/Slide$4;

    invoke-direct {v0}, Landroid/transition/Slide$4;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    .line 118
    new-instance v0, Landroid/transition/Slide$5;

    invoke-direct {v0}, Landroid/transition/Slide$5;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    .line 132
    new-instance v0, Landroid/transition/Slide$6;

    invoke-direct {v0}, Landroid/transition/Slide$6;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 143
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 49
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 144
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 145
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "slideEdge"    # I

    .line 150
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 49
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 151
    invoke-virtual {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 156
    sget-object v1, Lcom/android/internal/R$styleable;->Slide:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 157
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 158
    .local v0, "edge":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setSlideEdge(I)V

    .line 160
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 163
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 164
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 165
    .local v1, "position":[I
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 166
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:slide:screenPosition"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 177
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 178
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 179
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 171
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 172
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 173
    return-void
.end method

.method public whitelist getSlideEdge()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    return v0
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 236
    if-nez p4, :cond_4

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_4
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 240
    .local v0, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 241
    .local v7, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    .line 242
    .local v8, "endY":F
    iget-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v2, p0, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v1, p1, p2, v2}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v5

    .line 243
    .local v5, "startX":F
    iget-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v2, p0, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v1, p1, p2, v2}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v6

    .line 244
    .local v6, "startY":F
    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    sget-object v9, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 245
    move-object v10, p0

    move-object v1, p2

    move-object v2, p4

    .end local p2    # "view":Landroid/view/View;
    .end local p4    # "endValues":Landroid/transition/TransitionValues;
    .local v1, "view":Landroid/view/View;
    .local v2, "endValues":Landroid/transition/TransitionValues;
    invoke-static/range {v1 .. v10}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object p2

    .line 244
    return-object p2
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 252
    if-nez p3, :cond_4

    .line 253
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_4
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 256
    .local v0, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 257
    .local v5, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 258
    .local v6, "startY":F
    iget-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v2, p0, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v1, p1, p2, v2}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v7

    .line 259
    .local v7, "endX":F
    iget-object v1, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    iget v2, p0, Landroid/transition/Slide;->mSlideFraction:F

    invoke-interface {v1, p1, p2, v2}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    move-result v8

    .line 260
    .local v8, "endY":F
    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    sget-object v9, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 261
    move-object v10, p0

    move-object v1, p2

    move-object v2, p3

    .end local p2    # "view":Landroid/view/View;
    .end local p3    # "startValues":Landroid/transition/TransitionValues;
    .local v1, "view":Landroid/view/View;
    .local v2, "startValues":Landroid/transition/TransitionValues;
    invoke-static/range {v1 .. v10}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    move-result-object p2

    .line 260
    return-object p2
.end method

.method public whitelist setSlideEdge(I)V
    .registers 4
    .param p1, "slideEdge"    # I

    .line 191
    sparse-switch p1, :sswitch_data_38

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :sswitch_b
    sget-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 209
    goto :goto_29

    .line 205
    :sswitch_10
    sget-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 206
    goto :goto_29

    .line 202
    :sswitch_15
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 203
    goto :goto_29

    .line 196
    :sswitch_1a
    sget-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 197
    goto :goto_29

    .line 199
    :sswitch_1f
    sget-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 200
    goto :goto_29

    .line 193
    :sswitch_24
    sget-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 194
    nop

    .line 213
    :goto_29
    iput p1, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 214
    new-instance v0, Landroid/transition/SidePropagation;

    invoke-direct {v0}, Landroid/transition/SidePropagation;-><init>()V

    .line 215
    .local v0, "propagation":Landroid/transition/SidePropagation;
    invoke-virtual {v0, p1}, Landroid/transition/SidePropagation;->setSide(I)V

    .line 216
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 217
    return-void

    nop

    :sswitch_data_38
    .sparse-switch
        0x3 -> :sswitch_24
        0x5 -> :sswitch_1f
        0x30 -> :sswitch_1a
        0x50 -> :sswitch_15
        0x800003 -> :sswitch_10
        0x800005 -> :sswitch_b
    .end sparse-switch
.end method

.method public greylist-max-o setSlideFraction(F)V
    .registers 2
    .param p1, "slideFraction"    # F

    .line 267
    iput p1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 268
    return-void
.end method
