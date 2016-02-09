.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;,
        Landroid/graphics/drawable/RippleBackground$1;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_ENTER_DURATION:I = 0x258

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final OPACITY_EXIT_DURATION:I = 0x1e0


# instance fields
.field private mOpacity:F

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/RippleBackground;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/RippleBackground;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    .line 166
    new-instance v0, Landroid/graphics/drawable/RippleBackground$1;

    #@9
    const-string/jumbo v1, "opacity"

    #@c
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Ljava/lang/String;)V

    #@f
    sput-object v0, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    #@11
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@6
    .line 51
    return-void
.end method


# virtual methods
.method protected createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 10
    .param p1, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 123
    new-instance v4, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@4
    invoke-direct {v4}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    #@7
    .line 125
    .local v4, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    #@a
    move-result v5

    #@b
    .line 126
    .local v5, "targetAlpha":I
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@d
    int-to-float v7, v5

    #@e
    mul-float/2addr v6, v7

    #@f
    const/high16 v7, 0x3f000000    # 0.5f

    #@11
    add-float/2addr v6, v7

    #@12
    float-to-int v0, v6

    #@13
    .line 127
    .local v0, "currentAlpha":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@16
    .line 129
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    #@19
    move-result-object v6

    #@1a
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@1c
    .line 130
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    #@1e
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@21
    move-result-object v6

    #@22
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    #@24
    .line 131
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@27
    move-result-object v6

    #@28
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    #@2a
    .line 132
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@2d
    move-result-object v6

    #@2e
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    #@30
    .line 135
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@32
    const/high16 v7, 0x3f800000    # 1.0f

    #@34
    sub-float v6, v7, v6

    #@36
    const/high16 v7, 0x42f00000    # 120.0f

    #@38
    mul-float/2addr v6, v7

    #@39
    float-to-int v3, v6

    #@3a
    .line 136
    .local v3, "fastEnterDuration":I
    if-lez v3, :cond_0

    #@3c
    .line 137
    new-instance v1, Landroid/view/RenderNodeAnimator;

    #@3e
    .line 138
    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@40
    int-to-float v7, v5

    #@41
    .line 137
    invoke-direct {v1, v6, v9, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    #@44
    .line 139
    .local v1, "enter":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@46
    invoke-virtual {v1, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@49
    .line 140
    int-to-long v6, v3

    #@4a
    invoke-virtual {v1, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@4d
    .line 141
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@50
    .line 145
    .end local v1    # "enter":Landroid/view/RenderNodeAnimator;
    :cond_0
    new-instance v2, Landroid/view/RenderNodeAnimator;

    #@52
    .line 146
    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@54
    .line 145
    invoke-direct {v2, v6, v9, v8}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    #@57
    .line 147
    .local v2, "exit":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@59
    invoke-virtual {v2, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@5c
    .line 148
    const-wide/16 v6, 0x1e0

    #@5e
    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@61
    .line 149
    int-to-long v6, v3

    #@62
    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    #@65
    .line 150
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@68
    .line 152
    return-object v4
.end method

.method protected createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 8
    .param p1, "fast"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    .line 84
    if-eqz p1, :cond_0

    #@5
    const/16 v1, 0x78

    #@7
    .line 85
    .local v1, "maxDuration":I
    :goto_0
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@9
    sub-float v3, v6, v3

    #@b
    int-to-float v4, v1

    #@c
    mul-float/2addr v3, v4

    #@d
    float-to-int v0, v3

    #@e
    .line 87
    .local v0, "duration":I
    sget-object v3, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    #@10
    new-array v4, v7, [F

    #@12
    const/4 v5, 0x0

    #@13
    aput v6, v4, v5

    #@15
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@18
    move-result-object v2

    #@19
    .line 88
    .local v2, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@1c
    .line 89
    int-to-long v4, v0

    #@1d
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@20
    .line 90
    sget-object v3, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@22
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@25
    .line 92
    return-object v2

    #@26
    .line 84
    .end local v0    # "duration":I
    .end local v1    # "maxDuration":I
    .end local v2    # "opacity":Landroid/animation/ObjectAnimator;
    :cond_0
    const/16 v1, 0x258

    #@28
    .restart local v1    # "maxDuration":I
    goto :goto_0
.end method

.method protected createSoftwareExit()Landroid/animation/Animator;
    .locals 11

    #@0
    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v8, 0x1

    #@4
    .line 97
    new-instance v4, Landroid/animation/AnimatorSet;

    #@6
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    #@9
    .line 100
    .local v4, "set":Landroid/animation/AnimatorSet;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    #@b
    new-array v6, v8, [F

    #@d
    const/4 v7, 0x0

    #@e
    aput v7, v6, v9

    #@10
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@13
    move-result-object v2

    #@14
    .line 101
    .local v2, "exit":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@16
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@19
    .line 102
    const-wide/16 v6, 0x1e0

    #@1b
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1e
    .line 103
    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@21
    .line 105
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@24
    move-result-object v0

    #@25
    .line 108
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@27
    sub-float v5, v10, v5

    #@29
    const/high16 v6, 0x42f00000    # 120.0f

    #@2b
    mul-float/2addr v5, v6

    #@2c
    float-to-int v3, v5

    #@2d
    .line 109
    .local v3, "fastEnterDuration":I
    if-lez v3, :cond_0

    #@2f
    .line 110
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    #@31
    new-array v6, v8, [F

    #@33
    aput v10, v6, v9

    #@35
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@38
    move-result-object v1

    #@39
    .line 111
    .local v1, "enter":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3b
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@3e
    .line 112
    int-to-long v6, v3

    #@3f
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@42
    .line 113
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@45
    .line 115
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@48
    .line 118
    .end local v1    # "enter":Landroid/animation/ObjectAnimator;
    :cond_0
    return-object v4
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    #@4
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    #@6
    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    #@b
    .line 78
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method protected drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 61
    const/4 v1, 0x0

    #@2
    .line 63
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v2

    #@6
    .line 64
    .local v2, "origAlpha":I
    int-to-float v3, v2

    #@7
    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@9
    mul-float/2addr v3, v4

    #@a
    const/high16 v4, 0x3f000000    # 0.5f

    #@c
    add-float/2addr v3, v4

    #@d
    float-to-int v0, v3

    #@e
    .line 65
    .local v0, "alpha":I
    if-lez v0, :cond_0

    #@10
    .line 66
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@13
    .line 67
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    #@15
    invoke-virtual {p1, v5, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@18
    .line 68
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    #@1b
    .line 69
    const/4 v1, 0x1

    #@1c
    .line 72
    :cond_0
    return v1
.end method

.method public isVisible()Z
    .locals 2

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-gtz v0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->isHardwareAnimating()Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method protected jumpValuesToExit()V
    .locals 1

    #@0
    .prologue
    .line 157
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@3
    .line 156
    return-void
.end method
