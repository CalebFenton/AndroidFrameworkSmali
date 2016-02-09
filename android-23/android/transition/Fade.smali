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
    .line 62
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
    .line 112
    cmpl-float v2, p2, p3

    #@2
    if-nez v2, :cond_0

    #@4
    .line 113
    const/4 v2, 0x0

    #@5
    return-object v2

    #@6
    .line 115
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    #@9
    .line 116
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
    .line 117
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-boolean v2, Landroid/transition/Fade;->DBG:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 118
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
    .line 120
    :cond_1
    new-instance v1, Landroid/transition/Fade$FadeAnimatorListener;

    #@36
    invoke-direct {v1, p1}, Landroid/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    #@39
    .line 121
    .local v1, "listener":Landroid/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3c
    .line 122
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    #@3f
    .line 123
    new-instance v2, Landroid/transition/Fade$1;

    #@41
    invoke-direct {v2, p0, p1}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    #@44
    invoke-virtual {p0, v2}, Landroid/transition/Fade;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@47
    .line 129
    return-object v0
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 136
    sget-boolean v1, Landroid/transition/Fade;->DBG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 137
    if-eqz p3, :cond_1

    #@6
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@8
    .line 138
    :goto_0
    const-string/jumbo v1, "Fade"

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Fade.onAppear: startView, startVis, endView, endVis = "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 139
    const-string/jumbo v3, ", "

    #@1e
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 141
    :cond_0
    const/4 v1, 0x0

    #@2e
    const/high16 v2, 0x3f800000    # 1.0f

    #@30
    invoke-direct {p0, p2, v1, v2}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    #@33
    move-result-object v1

    #@34
    return-object v1

    #@35
    .line 137
    :cond_1
    const/4 v0, 0x0

    #@36
    .local v0, "startView":Landroid/view/View;
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
    .line 147
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p2, v0, v1}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
