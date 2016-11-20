.class Landroid/graphics/drawable/RippleBackground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleBackground$1;,
        Landroid/graphics/drawable/RippleBackground$BackgroundProperty;
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

.field private static final OPACITY_ENTER_DURATION:I = 0x258

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final OPACITY_EXIT_DURATION:I = 0x1e0


# instance fields
.field private mIsBounded:Z

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
    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    .line 179
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

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZ)V
    .locals 1
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isBounded"    # Z
    .param p4, "forceSoftware"    # Z

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p4}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@6
    .line 59
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    #@8
    .line 56
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
    .line 131
    new-instance v4, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@4
    invoke-direct {v4}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    #@7
    .line 133
    .local v4, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    #@a
    move-result v5

    #@b
    .line 134
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
    .line 135
    .local v0, "currentAlpha":I
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@16
    .line 137
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    #@19
    move-result-object v6

    #@1a
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@1c
    .line 138
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    #@1e
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@21
    move-result-object v6

    #@22
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropRadius:Landroid/graphics/CanvasProperty;

    #@24
    .line 139
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@27
    move-result-object v6

    #@28
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropX:Landroid/graphics/CanvasProperty;

    #@2a
    .line 140
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@2d
    move-result-object v6

    #@2e
    iput-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropY:Landroid/graphics/CanvasProperty;

    #@30
    .line 142
    iget-boolean v6, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    #@32
    if-eqz v6, :cond_2

    #@34
    .line 143
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@36
    const/high16 v7, 0x3f800000    # 1.0f

    #@38
    sub-float v6, v7, v6

    #@3a
    const/high16 v7, 0x42f00000    # 120.0f

    #@3c
    mul-float/2addr v6, v7

    #@3d
    float-to-int v3, v6

    #@3e
    .line 146
    .local v3, "fastEnterDuration":I
    :goto_0
    new-instance v2, Landroid/view/RenderNodeAnimator;

    #@40
    .line 147
    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@42
    .line 146
    invoke-direct {v2, v6, v9, v8}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    #@45
    .line 148
    .local v2, "exit":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@47
    invoke-virtual {v2, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@4a
    .line 149
    const-wide/16 v6, 0x1e0

    #@4c
    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@4f
    .line 150
    if-lez v3, :cond_0

    #@51
    .line 151
    int-to-long v6, v3

    #@52
    invoke-virtual {v2, v6, v7}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    #@55
    .line 152
    int-to-float v6, v5

    #@56
    invoke-virtual {v2, v6}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    #@59
    .line 154
    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@5c
    .line 157
    if-lez v3, :cond_1

    #@5e
    .line 158
    new-instance v1, Landroid/view/RenderNodeAnimator;

    #@60
    .line 159
    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@62
    int-to-float v7, v5

    #@63
    .line 158
    invoke-direct {v1, v6, v9, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    #@66
    .line 160
    .local v1, "enter":Landroid/view/RenderNodeAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@68
    invoke-virtual {v1, v6}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@6b
    .line 161
    int-to-long v6, v3

    #@6c
    invoke-virtual {v1, v6, v7}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@6f
    .line 162
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@72
    .line 165
    .end local v1    # "enter":Landroid/view/RenderNodeAnimator;
    :cond_1
    return-object v4

    #@73
    .line 143
    .end local v2    # "exit":Landroid/view/RenderNodeAnimator;
    .end local v3    # "fastEnterDuration":I
    :cond_2
    const/4 v3, 0x0

    #@74
    .restart local v3    # "fastEnterDuration":I
    goto :goto_0
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
    .line 91
    if-eqz p1, :cond_0

    #@5
    const/16 v1, 0x78

    #@7
    .line 92
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
    .line 94
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
    .line 95
    .local v2, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@1c
    .line 96
    int-to-long v4, v0

    #@1d
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@20
    .line 97
    sget-object v3, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@22
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@25
    .line 99
    return-object v2

    #@26
    .line 91
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
    const/4 v9, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 104
    new-instance v4, Landroid/animation/AnimatorSet;

    #@6
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    #@9
    .line 107
    .local v4, "set":Landroid/animation/AnimatorSet;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    #@b
    new-array v7, v9, [F

    #@d
    const/4 v8, 0x0

    #@e
    aput v8, v7, v5

    #@10
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@13
    move-result-object v2

    #@14
    .line 108
    .local v2, "exit":Landroid/animation/ObjectAnimator;
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@16
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@19
    .line 109
    const-wide/16 v6, 0x1e0

    #@1b
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1e
    .line 110
    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@21
    .line 112
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@24
    move-result-object v0

    #@25
    .line 115
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v6, p0, Landroid/graphics/drawable/RippleBackground;->mIsBounded:Z

    #@27
    if-eqz v6, :cond_1

    #@29
    .line 116
    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@2b
    sub-float v6, v10, v6

    #@2d
    const/high16 v7, 0x42f00000    # 120.0f

    #@2f
    mul-float/2addr v6, v7

    #@30
    float-to-int v3, v6

    #@31
    .line 117
    .local v3, "fastEnterDuration":I
    :goto_0
    if-lez v3, :cond_0

    #@33
    .line 118
    sget-object v6, Landroid/graphics/drawable/RippleBackground;->OPACITY:Landroid/graphics/drawable/RippleBackground$BackgroundProperty;

    #@35
    new-array v7, v9, [F

    #@37
    aput v10, v7, v5

    #@39
    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@3c
    move-result-object v1

    #@3d
    .line 119
    .local v1, "enter":Landroid/animation/ObjectAnimator;
    sget-object v5, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3f
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@42
    .line 120
    int-to-long v6, v3

    #@43
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@46
    .line 121
    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@49
    .line 123
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@4c
    .line 126
    .end local v1    # "enter":Landroid/animation/ObjectAnimator;
    :cond_0
    return-object v4

    #@4d
    .end local v3    # "fastEnterDuration":I
    :cond_1
    move v3, v5

    #@4e
    .line 116
    goto :goto_0
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 84
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
    .line 85
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
    .line 68
    const/4 v1, 0x0

    #@2
    .line 70
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v2

    #@6
    .line 71
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
    .line 72
    .local v0, "alpha":I
    if-lez v0, :cond_0

    #@10
    .line 73
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@13
    .line 74
    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mTargetRadius:F

    #@15
    invoke-virtual {p1, v5, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@18
    .line 75
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    #@1b
    .line 76
    const/4 v1, 0x1

    #@1c
    .line 79
    :cond_0
    return v1
.end method

.method public isVisible()Z
    .locals 2

    #@0
    .prologue
    .line 63
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
    .line 170
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOpacity:F

    #@3
    .line 169
    return-void
.end method
