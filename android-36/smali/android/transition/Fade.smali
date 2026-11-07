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
.field private static greylist-max-o DBG:Z = false

.field public static final whitelist IN:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final whitelist OUT:I = 0x2

.field static final greylist-max-o PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroid/transition/Fade;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "fadingMode"    # I

    .line 97
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/transition/Fade;->setMode(I)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    sget-object v0, Lcom/android/internal/R$styleable;->Fade:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/transition/Fade;->getMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 105
    .local v1, "fadingMode":I
    invoke-virtual {p0, v1}, Landroid/transition/Fade;->setMode(I)V

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private greylist-max-o createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 120
    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const-string/jumbo v1, "transitionAlpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 125
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-boolean v1, Landroid/transition/Fade;->DBG:Z

    if-eqz v1, :cond_32

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created animator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fade"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_32
    new-instance v1, Landroid/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroid/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 129
    .local v1, "listener":Landroid/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    new-instance v2, Landroid/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/transition/Fade;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 137
    return-object v0
.end method

.method private static greylist-max-o getStartAlpha(Landroid/transition/TransitionValues;F)F
    .registers 5
    .param p0, "startValues"    # Landroid/transition/TransitionValues;
    .param p1, "fallbackValue"    # F

    .line 164
    move v0, p1

    .line 165
    .local v0, "startAlpha":F
    if-eqz p0, :cond_13

    .line 166
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 167
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_13

    .line 168
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 171
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_13
    return v0
.end method


# virtual methods
.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 111
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 112
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getTransitionAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 112
    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 144
    sget-boolean v0, Landroid/transition/Fade;->DBG:Z

    if-eqz v0, :cond_2c

    .line 145
    if-eqz p3, :cond_9

    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 146
    .local v0, "startView":Landroid/view/View;
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fade"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "startView":Landroid/view/View;
    :cond_2c
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    move-result v0

    .line 150
    .local v0, "startAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_38

    .line 151
    const/4 v0, 0x0

    .line 153
    :cond_38
    invoke-direct {p0, p2, v0, v1}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    move-result v0

    .line 160
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method
