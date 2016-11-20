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
.method static synthetic -wrap0(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .locals 2
    .param p0, "openAnimation"    # Landroid/view/animation/Animation;
    .param p1, "closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/policy/StatusBarController;->calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public constructor <init>()V
    .locals 8

    #@0
    .prologue
    const/high16 v2, 0x4000000

    #@2
    .line 105
    const-string/jumbo v1, "StatusBar"

    #@5
    .line 107
    const/high16 v3, 0x10000000

    #@7
    .line 108
    const/high16 v4, 0x40000000    # 2.0f

    #@9
    .line 109
    const/4 v5, 0x1

    #@a
    .line 111
    const/16 v7, 0x8

    #@c
    move-object v0, p0

    #@d
    move v6, v2

    #@e
    .line 105
    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    #@11
    .line 43
    new-instance v0, Lcom/android/server/policy/StatusBarController$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1;-><init>(Lcom/android/server/policy/StatusBarController;)V

    #@16
    .line 42
    iput-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@18
    .line 104
    return-void
.end method

.method private static calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .locals 8
    .param p0, "openAnimation"    # Landroid/view/animation/Animation;
    .param p1, "closeAnimation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 131
    if-eqz p0, :cond_2

    #@2
    if-eqz p1, :cond_2

    #@4
    .line 132
    invoke-static {p0}, Lcom/android/server/policy/StatusBarController;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    #@7
    move-result-object v1

    #@8
    .line 133
    .local v1, "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-static {p1}, Lcom/android/server/policy/StatusBarController;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    #@b
    move-result-object v0

    #@c
    .line 134
    .local v0, "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz v1, :cond_0

    #@e
    .line 139
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    #@11
    move-result-object v3

    #@12
    invoke-static {v3}, Lcom/android/server/policy/StatusBarController;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    #@15
    move-result v2

    #@16
    .line 140
    .local v2, "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19
    move-result-wide v4

    #@1a
    .line 141
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    #@1d
    move-result-wide v6

    #@1e
    .line 140
    add-long/2addr v4, v6

    #@1f
    .line 142
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
    .line 140
    add-long/2addr v4, v6

    #@27
    .line 142
    const-wide/16 v6, 0x78

    #@29
    .line 140
    sub-long/2addr v4, v6

    #@2a
    return-wide v4

    #@2b
    .line 143
    .end local v2    # "t":F
    :cond_0
    if-eqz v0, :cond_1

    #@2d
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v4

    #@31
    return-wide v4

    #@32
    .line 146
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@35
    move-result-wide v4

    #@36
    return-wide v4

    #@37
    .line 149
    .end local v0    # "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3a
    move-result-wide v4

    #@3b
    return-wide v4
.end method

.method private static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .locals 4
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 178
    const/high16 v1, 0x3f000000    # 0.5f

    #@2
    .line 179
    .local v1, "val":F
    const/high16 v0, 0x3e800000    # 0.25f

    #@4
    .line 180
    .local v0, "adj":F
    :goto_0
    const v2, 0x3c23d70a    # 0.01f

    #@7
    cmpl-float v2, v0, v2

    #@9
    if-ltz v2, :cond_1

    #@b
    .line 181
    invoke-interface {p0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@e
    move-result v2

    #@f
    const v3, 0x3f7d70a4    # 0.99f

    #@12
    cmpg-float v2, v2, v3

    #@14
    if-gez v2, :cond_0

    #@16
    .line 182
    add-float/2addr v1, v0

    #@17
    .line 186
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    #@19
    div-float/2addr v0, v2

    #@1a
    goto :goto_0

    #@1b
    .line 184
    :cond_0
    sub-float/2addr v1, v0

    #@1c
    goto :goto_1

    #@1d
    .line 188
    :cond_1
    return v1
.end method

.method private static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .locals 4
    .param p0, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 159
    instance-of v3, p0, Landroid/view/animation/TranslateAnimation;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 160
    check-cast p0, Landroid/view/animation/TranslateAnimation;

    #@6
    .end local p0    # "animation":Landroid/view/animation/Animation;
    return-object p0

    #@7
    .line 161
    .restart local p0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    instance-of v3, p0, Landroid/view/animation/AnimationSet;

    #@9
    if-eqz v3, :cond_2

    #@b
    move-object v2, p0

    #@c
    .line 162
    check-cast v2, Landroid/view/animation/AnimationSet;

    #@e
    .line 163
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
    .line 164
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
    .line 165
    .local v0, "a":Landroid/view/animation/Animation;
    instance-of v3, v0, Landroid/view/animation/TranslateAnimation;

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 166
    check-cast v0, Landroid/view/animation/TranslateAnimation;

    #@29
    .end local v0    # "a":Landroid/view/animation/Animation;
    return-object v0

    #@2a
    .line 163
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 170
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
    .line 120
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    #@2
    return-object v0
.end method

.method protected skipAnimation()Z
    .locals 2

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    #@8
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method
