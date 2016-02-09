.class public Lcom/android/server/policy/StatusBarController;
.super Lcom/android/server/policy/BarController;
.source "StatusBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/StatusBarController$1;
    }
.end annotation


# static fields
.field private static final TRANSITION_DURATION:J = 0x78L


# instance fields
.field private final mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/StatusBarController;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .locals 2
    .param p1, "openAnimation"    # Landroid/view/animation/Animation;
    .param p2, "closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/StatusBarController;->calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/high16 v2, 0x4000000

    #@2
    .line 107
    const-string/jumbo v1, "StatusBar"

    #@5
    .line 109
    const/high16 v3, 0x10000000

    #@7
    .line 110
    const/high16 v4, 0x40000000    # 2.0f

    #@9
    .line 111
    const/4 v5, 0x1

    #@a
    move-object v0, p0

    #@b
    move v6, v2

    #@c
    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    #@f
    .line 43
    new-instance v0, Lcom/android/server/policy/StatusBarController$1;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1;-><init>(Lcom/android/server/policy/StatusBarController;)V

    #@14
    .line 42
    iput-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@16
    .line 106
    return-void
.end method

.method private calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .locals 8
    .param p1, "openAnimation"    # Landroid/view/animation/Animation;
    .param p2, "closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 127
    if-eqz p1, :cond_2

    #@2
    if-eqz p2, :cond_2

    #@4
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/policy/StatusBarController;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    #@7
    move-result-object v1

    #@8
    .line 129
    .local v1, "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-direct {p0, p2}, Lcom/android/server/policy/StatusBarController;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    #@b
    move-result-object v0

    #@c
    .line 130
    .local v0, "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz v1, :cond_0

    #@e
    .line 135
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    #@11
    move-result-object v3

    #@12
    invoke-direct {p0, v3}, Lcom/android/server/policy/StatusBarController;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    #@15
    move-result v2

    #@16
    .line 136
    .local v2, "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19
    move-result-wide v4

    #@1a
    .line 137
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    #@1d
    move-result-wide v6

    #@1e
    .line 136
    add-long/2addr v4, v6

    #@1f
    .line 138
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    #@22
    move-result-wide v6

    #@23
    long-to-float v3, v6

    #@24
    mul-float/2addr v3, v2

    #@25
    float-to-long v6, v3

    #@26
    .line 136
    add-long/2addr v4, v6

    #@27
    .line 138
    const-wide/16 v6, 0x78

    #@29
    .line 136
    sub-long/2addr v4, v6

    #@2a
    return-wide v4

    #@2b
    .line 139
    .end local v2    # "t":F
    :cond_0
    if-eqz v0, :cond_1

    #@2d
    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v4

    #@31
    return-wide v4

    #@32
    .line 142
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@35
    move-result-wide v4

    #@36
    return-wide v4

    #@37
    .line 145
    .end local v0    # "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3a
    move-result-wide v4

    #@3b
    return-wide v4
.end method

.method private findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .locals 4
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 174
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    .line 175
    .local v1, "val":F
    const/high16 v0, 0x3e800000    # 0.25f

    #@4
    .line 176
    .local v0, "adj":F
    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    #@7
    cmpl-float v2, v0, v2

    #@9
    if-ltz v2, :cond_1

    #@b
    .line 177
    invoke-interface {p1, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@e
    move-result v2

    #@f
    const v3, 0x3f7d70a4    # 0.99f

    #@12
    cmpg-float v2, v2, v3

    #@14
    if-gez v2, :cond_0

    #@16
    .line 178
    add-float/2addr v1, v0

    #@17
    .line 182
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    #@19
    div-float/2addr v0, v2

    #@1a
    goto :goto_0

    #@1b
    .line 180
    :cond_0
    sub-float/2addr v1, v0

    #@1c
    goto :goto_1

    #@1d
    .line 184
    :cond_1
    return v1
.end method

.method private findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 155
    instance-of v3, p1, Landroid/view/animation/TranslateAnimation;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 156
    check-cast p1, Landroid/view/animation/TranslateAnimation;

    #@6
    .end local p1    # "animation":Landroid/view/animation/Animation;
    return-object p1

    #@7
    .line 157
    .restart local p1    # "animation":Landroid/view/animation/Animation;
    :cond_0
    instance-of v3, p1, Landroid/view/animation/AnimationSet;

    #@9
    if-eqz v3, :cond_2

    #@b
    move-object v2, p1

    #@c
    .line 158
    check-cast v2, Landroid/view/animation/AnimationSet;

    #@e
    .line 159
    .local v2, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@12
    move-result-object v3

    #@13
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    if-ge v1, v3, :cond_2

    #@19
    .line 160
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/view/animation/Animation;

    #@23
    .line 161
    .local v0, "a":Landroid/view/animation/Animation;
    instance-of v3, v0, Landroid/view/animation/TranslateAnimation;

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 162
    check-cast v0, Landroid/view/animation/TranslateAnimation;

    #@29
    .end local v0    # "a":Landroid/view/animation/Animation;
    return-object v0

    #@2a
    .line 159
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 166
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    const/4 v3, 0x0

    #@2e
    return-object v3
.end method


# virtual methods
.method public getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@2
    return-object v0
.end method
