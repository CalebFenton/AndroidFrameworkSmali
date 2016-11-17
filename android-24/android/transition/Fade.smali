.class public Landroid/transition/Fade;
.super Landroid/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Landroid/transition/Fade;->DBG:Z

    #@3
    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@3
    .line 98
    invoke-virtual {p0, p1}, Landroid/transition/Fade;->setMode(I)V

    #@6
    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 103
    sget-object v2, Lcom/android/internal/R$styleable;->Fade:[I

    #@5
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Landroid/transition/Fade;->getMode()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x0

    #@e
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@11
    move-result v1

    #@12
    .line 105
    .local v1, "fadingMode":I
    invoke-virtual {p0, v1}, Landroid/transition/Fade;->setMode(I)V

    #@15
    .line 101
    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    #@0
    .prologue
    .line 119
    cmpl-float v2, p2, p3

    #@2
    if-nez v2, :cond_0

    #@4
    .line 120
    const/4 v2, 0x0

    #@5
    return-object v2

    #@6
    .line 122
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    #@9
    .line 123
    const-string/jumbo v2, "transitionAlpha"

    #@c
    const/4 v3, 0x1

    #@d
    new-array v3, v3, [F

    #@f
    const/4 v4, 0x0

    #@10
    aput p3, v3, v4

    #@12
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    #@15
    move-result-object v0

    #@16
    .line 124
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-boolean v2, Landroid/transition/Fade;->DBG:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 125
    const-string/jumbo v2, "Fade"

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "Created animator "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 127
    :cond_1
    new-instance v1, Landroid/transition/Fade$FadeAnimatorListener;

    #@36
    invoke-direct {v1, p1}, Landroid/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    #@39
    .line 128
    .local v1, "listener":Landroid/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3c
    .line 129
    new-instance v2, Landroid/transition/Fade$1;

    #@3e
    invoke-direct {v2, p0, p1}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    #@41
    invoke-virtual {p0, v2}, Landroid/transition/Fade;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@44
    .line 135
    return-object v0
.end method

.method private static getStartAlpha(Landroid/transition/TransitionValues;F)F
    .locals 4
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "fallbackValue"    # F

    #@0
    .prologue
    .line 162
    move v0, p1

    #@1
    .line 163
    .local v0, "startAlpha":F
    if-eqz p0, :cond_0

    #@3
    .line 164
    iget-object v2, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@5
    const-string/jumbo v3, "android:fade:transitionAlpha"

    #@8
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/Float;

    #@e
    .line 165
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_0

    #@10
    .line 166
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@13
    move-result v0

    #@14
    .line 169
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_0
    return v0
.end method


# virtual methods
.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 111
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@5
    const-string/jumbo v1, "android:fade:transitionAlpha"

    #@8
    .line 112
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@a
    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    #@d
    move-result v2

    #@e
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@11
    move-result-object v2

    #@12
    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 109
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    .line 142
    sget-boolean v2, Landroid/transition/Fade;->DBG:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 143
    if-eqz p3, :cond_2

    #@8
    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@a
    .line 144
    :goto_0
    const-string/jumbo v2, "Fade"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Fade.onAppear: startView, startVis, endView, endVis = "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 145
    const-string/jumbo v4, ", "

    #@20
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 147
    :cond_0
    const/4 v2, 0x0

    #@30
    invoke-static {p3, v2}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    #@33
    move-result v0

    #@34
    .line 148
    .local v0, "startAlpha":F
    cmpl-float v2, v0, v5

    #@36
    if-nez v2, :cond_1

    #@38
    .line 149
    const/4 v0, 0x0

    #@39
    .line 151
    :cond_1
    invoke-direct {p0, p2, v0, v5}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    #@3c
    move-result-object v2

    #@3d
    return-object v2

    #@3e
    .line 143
    .end local v0    # "startAlpha":F
    :cond_2
    const/4 v1, 0x0

    #@3f
    .local v1, "startView":Landroid/view/View;
    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 157
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    invoke-static {p3, v1}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    #@5
    move-result v0

    #@6
    .line 158
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, p2, v0, v1}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
