.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field protected mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mStatusBarManagerId:I

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mTransparentFlag:I

.field private final mUnhideFlag:I

.field protected mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/BarController;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    #@2
    return v0
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I
    .param p7, "transparentFlag"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    #@a
    .line 58
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    #@d
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "BarController."

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    #@23
    .line 69
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    #@25
    .line 70
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    #@27
    .line 71
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@29
    .line 72
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    #@2b
    .line 73
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    #@2d
    .line 74
    iput p7, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@2f
    .line 75
    new-instance v0, Landroid/os/Handler;

    #@31
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    #@36
    .line 67
    return-void
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 164
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_5

    #@9
    .line 165
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@c
    move-result v1

    #@d
    .line 166
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@10
    move-result v0

    #@11
    .line 167
    .local v0, "anim":Z
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    #@13
    if-ne v2, v4, :cond_0

    #@15
    if-eqz p4, :cond_1

    #@17
    .line 169
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    #@19
    if-ne v2, v5, :cond_2

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 170
    return v3

    #@1e
    .line 167
    :cond_1
    if-nez v1, :cond_0

    #@20
    .line 168
    return v5

    #@21
    .line 171
    :cond_2
    if-eqz p4, :cond_5

    #@23
    .line 172
    if-eqz p1, :cond_3

    #@25
    if-eqz v1, :cond_3

    #@27
    if-eqz p2, :cond_4

    #@29
    .line 175
    :cond_3
    return v3

    #@2a
    .line 172
    :cond_4
    if-eqz v0, :cond_3

    #@2c
    .line 173
    return v4

    #@2d
    .line 179
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_5
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    #@2f
    return v2
.end method

.method private setTransientBarState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 268
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-eqz v0, :cond_2

    #@5
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@7
    if-eq p1, v0, :cond_2

    #@9
    .line 269
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@b
    if-eq v0, v1, :cond_0

    #@d
    if-ne p1, v1, :cond_1

    #@f
    .line 270
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    #@15
    .line 272
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@17
    .line 267
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    #@0
    .prologue
    .line 287
    const/4 v0, 0x3

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const-string/jumbo v0, "TRANSIENT_BAR_HIDING"

    #@6
    return-object v0

    #@7
    .line 288
    :cond_0
    const/4 v0, 0x2

    #@8
    if-ne p0, v0, :cond_1

    #@a
    const-string/jumbo v0, "TRANSIENT_BAR_SHOWING"

    #@d
    return-object v0

    #@e
    .line 289
    :cond_1
    const/4 v0, 0x1

    #@f
    if-ne p0, v0, :cond_2

    #@11
    const-string/jumbo v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    #@14
    return-object v0

    #@15
    .line 290
    :cond_2
    if-nez p0, :cond_3

    #@17
    const-string/jumbo v0, "TRANSIENT_BAR_NONE"

    #@1a
    return-object v0

    #@1b
    .line 291
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Unknown state "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 183
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 184
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    #@6
    .line 186
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    #@8
    new-instance v1, Lcom/android/server/policy/BarController$1;

    #@a
    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@10
    .line 195
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 197
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 3
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 109
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-eqz v0, :cond_1

    #@5
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 110
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    #@c
    and-int/2addr v0, p2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 112
    const/4 v0, 0x3

    #@10
    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    #@13
    .line 113
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@16
    .line 108
    :cond_0
    :goto_0
    return-void

    #@17
    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    if-eqz v0, :cond_0

    #@1b
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    #@1d
    and-int/2addr v0, p1

    #@1e
    if-eqz v0, :cond_0

    #@20
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    #@22
    and-int/2addr v0, p2

    #@23
    if-nez v0, :cond_0

    #@25
    .line 116
    const/4 v0, 0x1

    #@26
    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@29
    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 121
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 122
    if-eqz p1, :cond_3

    #@7
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@d
    and-int/lit16 v1, v1, 0x200

    #@f
    if-nez v1, :cond_3

    #@11
    .line 124
    invoke-static {p1, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    #@14
    move-result v0

    #@15
    .line 125
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    #@17
    and-int/2addr v1, v0

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 126
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@1c
    or-int/2addr p2, v1

    #@1d
    .line 130
    :goto_0
    const/high16 v1, -0x80000000

    #@1f
    and-int/2addr v1, v0

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 131
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@24
    or-int/2addr p2, v1

    #@25
    .line 140
    .end local v0    # "fl":I
    :cond_0
    :goto_1
    return p2

    #@26
    .line 128
    .restart local v0    # "fl":I
    :cond_1
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@28
    not-int v1, v1

    #@29
    and-int/2addr p2, v1

    #@2a
    goto :goto_0

    #@2b
    .line 133
    :cond_2
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@2d
    not-int v1, v1

    #@2e
    and-int/2addr p2, v1

    #@2f
    goto :goto_1

    #@30
    .line 136
    .end local v0    # "fl":I
    :cond_3
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@32
    not-int v1, v1

    #@33
    and-int/2addr v1, p2

    #@34
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@36
    and-int/2addr v2, p3

    #@37
    or-int p2, v1, v2

    #@39
    .line 137
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@3b
    not-int v1, v1

    #@3c
    and-int/2addr v1, p2

    #@3d
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@3f
    and-int/2addr v2, p3

    #@40
    or-int p2, v1, v2

    #@42
    goto :goto_1
.end method

.method public checkHiddenLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 201
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_1

    #@6
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@8
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 202
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@10
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@18
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 205
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@20
    const/4 v1, 0x3

    #@21
    if-ne v0, v1, :cond_1

    #@23
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@25
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 215
    :cond_1
    return v2

    #@2c
    .line 203
    :cond_2
    const/4 v0, 0x2

    #@2d
    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    #@30
    goto :goto_0

    #@31
    .line 207
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    #@34
    .line 208
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 209
    invoke-virtual {p0, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    #@3b
    .line 210
    iput-boolean v2, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    #@3d
    .line 212
    :cond_4
    return v3
.end method

.method public checkShowTransientBarLw()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 219
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 221
    return v2

    #@8
    .line 222
    :cond_0
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@a
    if-ne v0, v3, :cond_1

    #@c
    .line 224
    return v2

    #@d
    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@f
    if-nez v0, :cond_2

    #@11
    .line 227
    return v2

    #@12
    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@14
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 230
    return v2

    #@1b
    .line 232
    :cond_3
    return v3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x3d

    #@2
    .line 295
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v0, "  "

    #@14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    const-string/jumbo v0, "mState"

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@20
    .line 298
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    #@22
    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 299
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string/jumbo v0, "  "

    #@2f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@32
    const-string/jumbo v0, "mTransientBar"

    #@35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3b
    .line 300
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@3d
    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 294
    :cond_0
    return-void
.end method

.method protected getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    #@0
    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 280
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@9
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@f
    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    #@11
    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    .line 278
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public isTransientShowRequested()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 101
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 2

    #@0
    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public setBarShowingLw(Z)Z
    .locals 9
    .param p1, "show"    # Z

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 144
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@4
    if-nez v5, :cond_0

    #@6
    return v6

    #@7
    .line 145
    :cond_0
    if-eqz p1, :cond_1

    #@9
    iget v5, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@b
    const/4 v8, 0x3

    #@c
    if-ne v5, v8, :cond_1

    #@e
    .line 146
    iput-boolean v7, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    #@10
    .line 147
    return v6

    #@11
    .line 149
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@13
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    #@16
    move-result v4

    #@17
    .line 150
    .local v4, "wasVis":Z
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@19
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    #@1c
    move-result v3

    #@1d
    .line 151
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_5

    #@1f
    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@21
    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    #@23
    if-nez v5, :cond_2

    #@25
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_4

    #@2b
    :cond_2
    move v5, v6

    #@2c
    :goto_0
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    #@2f
    move-result v0

    #@30
    .line 153
    .local v0, "change":Z
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    #@32
    .line 154
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@34
    invoke-direct {p0, v4, v3, v5, v0}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    #@37
    move-result v1

    #@38
    .line 155
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    #@3b
    move-result v2

    #@3c
    .line 156
    .local v2, "stateChanged":Z
    if-nez v0, :cond_3

    #@3e
    move v7, v2

    #@3f
    :cond_3
    return v7

    #@40
    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_4
    move v5, v7

    #@41
    .line 151
    goto :goto_0

    #@42
    .line 152
    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@44
    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    #@46
    if-nez v5, :cond_6

    #@48
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->skipAnimation()Z

    #@4b
    move-result v5

    #@4c
    if-eqz v5, :cond_7

    #@4e
    :cond_6
    move v5, v6

    #@4f
    :goto_2
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    #@52
    move-result v0

    #@53
    .restart local v0    # "change":Z
    goto :goto_1

    #@54
    .end local v0    # "change":Z
    :cond_7
    move v5, v7

    #@55
    goto :goto_2
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    #@6
    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    #@8
    .line 86
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    #@b
    .line 82
    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    #@0
    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    .line 78
    return-void
.end method

.method public showTransient()V
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 92
    const/4 v0, 0x1

    #@5
    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    #@8
    .line 90
    :cond_0
    return-void
.end method

.method protected skipAnimation()Z
    .locals 1

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public updateVisibilityLw(ZII)I
    .locals 2
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    #@3
    if-nez v0, :cond_0

    #@5
    return p3

    #@6
    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 239
    :cond_1
    if-eqz p1, :cond_8

    #@14
    .line 240
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    #@16
    or-int/2addr p3, v0

    #@17
    .line 241
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    #@19
    and-int/2addr v0, p2

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 242
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    #@1e
    or-int/2addr p3, v0

    #@1f
    .line 244
    :cond_2
    const/4 v0, 0x2

    #@20
    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    #@23
    .line 249
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    #@25
    if-eqz v0, :cond_4

    #@27
    .line 250
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@29
    or-int/2addr p3, v0

    #@2a
    .line 251
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    #@2c
    if-eqz v0, :cond_4

    #@2e
    .line 252
    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    #@30
    or-int/2addr p3, v0

    #@31
    .line 253
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    #@33
    .line 256
    :cond_4
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    #@35
    if-eqz v0, :cond_5

    #@37
    .line 257
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    #@39
    or-int/2addr p3, v0

    #@3a
    .line 258
    and-int/lit8 p3, p3, -0x2

    #@3c
    .line 260
    :cond_5
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@3e
    and-int/2addr v0, p3

    #@3f
    if-nez v0, :cond_6

    #@41
    iget v0, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    #@43
    and-int/2addr v0, p2

    #@44
    if-eqz v0, :cond_9

    #@46
    .line 262
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@49
    move-result-wide v0

    #@4a
    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    #@4c
    .line 264
    :cond_7
    return p3

    #@4d
    .line 246
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    #@50
    goto :goto_0

    #@51
    .line 261
    :cond_9
    or-int v0, p3, p2

    #@53
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransparentFlag:I

    #@55
    and-int/2addr v0, v1

    #@56
    if-eqz v0, :cond_7

    #@58
    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    #@0
    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    #@6
    sub-long/2addr v0, v2

    #@7
    const-wide/16 v2, 0x3e8

    #@9
    cmp-long v0, v0, v2

    #@b
    if-gez v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method
