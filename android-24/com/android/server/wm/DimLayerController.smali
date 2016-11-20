.class Lcom/android/server/wm/DimLayerController;
.super Ljava/lang/Object;
.source "DimLayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayerController$DimLayerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "DimLayerController"


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

.field private mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/DimLayer$DimLayerUser;",
            "Lcom/android/server/wm/DimLayerController$DimLayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 24
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    #@5
    .line 22
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@a
    .line 43
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@11
    .line 46
    iput-object p1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@13
    .line 45
    return-void
.end method

.method private animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 10
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    .line 222
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@8
    .line 229
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@a
    if-nez v6, :cond_2

    #@c
    .line 230
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@e
    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    #@11
    move-result v1

    #@12
    .line 231
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    #@13
    .line 241
    .local v0, "dimAmount":F
    :goto_0
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@15
    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    #@18
    move-result v5

    #@19
    .line 242
    .local v5, "targetAlpha":F
    cmpl-float v6, v5, v0

    #@1b
    if-eqz v6, :cond_7

    #@1d
    .line 243
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@1f
    if-nez v6, :cond_4

    #@21
    .line 244
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@23
    const-wide/16 v8, 0xc8

    #@25
    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/DimLayer;->hide(J)V

    #@28
    .line 257
    :cond_0
    :goto_1
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@2a
    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 258
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@32
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@34
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_8

    #@3a
    .line 260
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@3c
    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->show()V

    #@3f
    .line 265
    :cond_1
    const/4 v6, 0x0

    #@40
    return v6

    #@41
    .line 233
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v5    # "targetAlpha":F
    :cond_2
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    #@43
    if-eqz v6, :cond_3

    #@45
    .line 234
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@47
    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@49
    add-int/lit8 v1, v6, 0x1

    #@4b
    .line 235
    .restart local v1    # "dimLayer":I
    const/high16 v0, 0x3f000000    # 0.5f

    #@4d
    .restart local v0    # "dimAmount":F
    goto :goto_0

    #@4e
    .line 237
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    :cond_3
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@50
    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@52
    add-int/lit8 v1, v6, -0x1

    #@54
    .line 238
    .restart local v1    # "dimLayer":I
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@56
    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@58
    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@5a
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    #@5c
    .restart local v0    # "dimAmount":F
    goto :goto_0

    #@5d
    .line 246
    .restart local v5    # "targetAlpha":F
    :cond_4
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@5f
    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    #@61
    if-eqz v6, :cond_6

    #@63
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@65
    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@67
    if-eqz v6, :cond_6

    #@69
    .line 247
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@6b
    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    #@6d
    invoke-virtual {v6}, Landroid/view/animation/Animation;->computeDurationHint()J

    #@70
    move-result-wide v2

    #@71
    .line 249
    .local v2, "duration":J
    :goto_2
    cmpl-float v6, v5, v0

    #@73
    if-lez v6, :cond_5

    #@75
    .line 250
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DimLayerController;->getDimLayerFadeDuration(J)J

    #@78
    move-result-wide v2

    #@79
    .line 252
    :cond_5
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@7b
    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@7e
    goto :goto_1

    #@7f
    .line 248
    .end local v2    # "duration":J
    :cond_6
    const-wide/16 v2, 0xc8

    #@81
    .restart local v2    # "duration":J
    goto :goto_2

    #@82
    .line 254
    .end local v2    # "duration":J
    :cond_7
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@84
    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    #@87
    move-result v6

    #@88
    if-eq v6, v1, :cond_0

    #@8a
    .line 255
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@8c
    invoke-virtual {v6, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    #@8f
    goto :goto_1

    #@90
    .line 262
    :cond_8
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@92
    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    #@95
    move-result v6

    #@96
    return v6
.end method

.method private getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@8
    .line 133
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    #@a
    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method private getDimLayerFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 274
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 275
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@7
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    .line 276
    const/high16 v2, 0x1130000

    #@11
    const/4 v3, 0x1

    #@12
    .line 275
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    #@15
    .line 277
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@17
    const/4 v2, 0x6

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    .line 278
    long-to-float v1, p1

    #@1b
    long-to-float v2, p1

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    #@1f
    move-result v1

    #@20
    float-to-long p1, v1

    #@21
    .line 282
    :cond_0
    :goto_0
    return-wide p1

    #@22
    .line 279
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@24
    const/16 v2, 0x10

    #@26
    if-lt v1, v2, :cond_0

    #@28
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@2a
    const/16 v2, 0x1f

    #@2c
    if-gt v1, v2, :cond_0

    #@2e
    .line 280
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@30
    int-to-long p1, v1

    #@31
    goto :goto_0
.end method

.method private static getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;
    .locals 2
    .param p0, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DimLayerController/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-interface {p0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 97
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@9
    .line 98
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_0

    #@b
    .line 99
    new-instance v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@d
    .end local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-direct {v0, v2}, Lcom/android/server/wm/DimLayerController$DimLayerState;-><init>(Lcom/android/server/wm/DimLayerController$DimLayerState;)V

    #@10
    .line 100
    .restart local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@12
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 102
    :cond_0
    return-object v0
.end method

.method private setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@8
    .line 107
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_0

    #@a
    .line 110
    return-void

    #@b
    .line 112
    :cond_0
    const/4 v1, 0x1

    #@c
    iput-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    #@e
    .line 105
    return-void
.end method

.method private stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 170
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@9
    .line 175
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@f
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@11
    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 176
    return-void

    #@16
    .line 179
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    #@18
    if-nez v1, :cond_1

    #@1a
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 180
    iput-object v2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@24
    .line 181
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@26
    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    #@29
    .line 182
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@2b
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@30
    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 187
    const/4 v0, -0x1

    #@2
    .line 188
    .local v0, "fullScreen":I
    const/4 v1, -0x1

    #@3
    .line 189
    .local v1, "fullScreenAndDimming":I
    const/4 v3, 0x0

    #@4
    .line 191
    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@9
    move-result v6

    #@a
    add-int/lit8 v2, v6, -0x1

    #@c
    .end local v3    # "result":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@e
    .line 192
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@16
    .line 193
    .local v5, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@1e
    .line 198
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_1

    #@24
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@26
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@28
    if-ne v6, v7, :cond_1

    #@2a
    .line 199
    move v0, v2

    #@2b
    .line 200
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@33
    iget-boolean v6, v6, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    #@35
    if-eqz v6, :cond_0

    #@37
    .line 201
    move v1, v2

    #@38
    .line 191
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 206
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    #@3e
    move-result v6

    #@3f
    or-int/2addr v3, v6

    #@40
    .local v3, "result":Z
    goto :goto_1

    #@41
    .line 211
    .end local v3    # "result":Z
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v5    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_2
    if-eq v1, v8, :cond_4

    #@43
    .line 212
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@48
    move-result-object v6

    #@49
    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@4b
    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    #@4e
    move-result v6

    #@4f
    or-int/2addr v3, v6

    #@50
    .line 218
    :cond_3
    :goto_2
    return v3

    #@51
    .line 213
    :cond_4
    if-eq v0, v8, :cond_3

    #@53
    .line 216
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@55
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@5b
    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    #@5e
    move-result v6

    #@5f
    or-int/2addr v3, v6

    #@60
    .restart local v3    # "result":Z
    goto :goto_2
.end method

.method applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    #@0
    .prologue
    .line 315
    if-nez p1, :cond_0

    #@2
    .line 316
    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Trying to apply dim layer for: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 317
    const-string/jumbo v2, ", but no dim layer user found."

    #@17
    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 318
    return-void

    #@23
    .line 320
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_1

    #@29
    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@2c
    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_1

    #@32
    .line 324
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DimLayerController;->startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    #@35
    .line 314
    :cond_1
    return-void
.end method

.method applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 310
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    #@4
    .line 309
    return-void
.end method

.method applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 306
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    #@4
    .line 305
    return-void
.end method

.method close()V
    .locals 3

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 287
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@12
    .line 288
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@14
    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@17
    .line 286
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 290
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    #@1f
    .line 291
    const/4 v2, 0x0

    #@20
    iput-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@22
    .line 285
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v5

    #@9
    const-string/jumbo v6, "DimLayerController"

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 341
    const-string/jumbo v0, "  "

    #@1a
    .line 342
    .local v0, "doubleSpace":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    const-string/jumbo v6, "  "

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 344
    .local v3, "prefixPlusDoubleSpace":Ljava/lang/String;
    const/4 v1, 0x0

    #@2f
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@31
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@34
    move-result v2

    #@35
    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@37
    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@48
    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 346
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@59
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5c
    move-result-object v4

    #@5d
    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@5f
    .line 347
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    const-string/jumbo v6, "  "

    #@6b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    const-string/jumbo v6, "dimLayer="

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v6

    #@76
    .line 348
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@78
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@7a
    if-ne v5, v7, :cond_1

    #@7c
    const-string/jumbo v5, "shared"

    #@7f
    .line 347
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    .line 349
    const-string/jumbo v6, ", animator="

    #@86
    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    .line 349
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@8c
    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    .line 349
    const-string/jumbo v6, ", continueDimming="

    #@93
    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    .line 349
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    #@99
    .line 347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v5

    #@a1
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a4
    .line 350
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@a6
    if-eqz v5, :cond_0

    #@a8
    .line 351
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@aa
    new-instance v6, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    const-string/jumbo v7, "  "

    #@b6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@c1
    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@c3
    goto/16 :goto_0

    #@c5
    .line 348
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@c7
    goto :goto_1

    #@c8
    .line 339
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_2
    return-void
.end method

.method isDimming()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 117
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@13
    .line 118
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@15
    if-eqz v2, :cond_0

    #@17
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@19
    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 119
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 116
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 122
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_1
    return v3
.end method

.method isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    #@0
    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@8
    .line 270
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    #@a
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@c
    if-ne v1, p2, :cond_0

    #@e
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@10
    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    #@13
    move-result v1

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@8
    .line 296
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_1

    #@a
    .line 298
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@c
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@e
    if-eq v1, v2, :cond_0

    #@10
    .line 299
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@15
    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@17
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 294
    :cond_1
    return-void
.end method

.method resetDimming()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 126
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@b
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@13
    iput-boolean v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    #@15
    .line 126
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 125
    :cond_0
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    #@0
    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@3
    move-result-object v0

    #@4
    .line 141
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iput-boolean p3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    #@6
    .line 146
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 147
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 148
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@1a
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@1c
    iget v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@1e
    if-gt v1, v2, :cond_2

    #@20
    .line 149
    :cond_0
    iput-object p2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@22
    .line 150
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    #@24
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    #@26
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@28
    if-nez v1, :cond_1

    #@2a
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@32
    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    #@35
    .line 156
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@37
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@3c
    .line 137
    :cond_2
    return-void

    #@3d
    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@3f
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@41
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@44
    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 3

    #@0
    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 163
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@12
    .line 164
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@15
    .line 162
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 160
    .end local v0    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_0
    return-void
.end method

.method updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 6
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    #@3
    move-result-object v3

    #@4
    .line 52
    .local v3, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 53
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@a
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@c
    if-ne v4, v5, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    .line 55
    .local v2, "previousFullscreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@11
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    #@14
    move-result v0

    #@15
    .line 56
    .local v0, "displayId":I
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_6

    #@1b
    .line 57
    if-eqz v2, :cond_2

    #@1d
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 59
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@23
    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->setBoundsForFullscreen()V

    #@26
    .line 60
    return-void

    #@27
    .line 53
    .end local v0    # "displayId":I
    .end local v2    # "previousFullscreen":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    #@29
    .line 52
    .end local v2    # "previousFullscreen":Z
    :cond_1
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    #@2b
    .line 63
    .restart local v0    # "displayId":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@2d
    .line 64
    .local v1, "newDimLayer":Lcom/android/server/wm/DimLayer;
    if-nez v1, :cond_5

    #@2f
    .line 65
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@31
    if-eqz v4, :cond_4

    #@33
    .line 67
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@35
    .line 73
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@37
    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    #@3a
    .line 74
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@3c
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@3f
    .line 75
    iput-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    #@41
    .line 87
    :cond_3
    :goto_2
    iput-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@43
    .line 50
    return-void

    #@44
    .line 70
    :cond_4
    new-instance v1, Lcom/android/server/wm/DimLayer;

    #@46
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@48
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4a
    .line 71
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    .line 70
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    #@51
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_1

    #@52
    .line 76
    :cond_5
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@54
    if-eqz v4, :cond_3

    #@56
    .line 77
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@58
    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@5b
    goto :goto_2

    #@5c
    .line 80
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_6
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@5e
    if-eqz v4, :cond_7

    #@60
    if-eqz v2, :cond_8

    #@62
    .line 81
    :cond_7
    new-instance v1, Lcom/android/server/wm/DimLayer;

    #@64
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@66
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@68
    .line 82
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    .line 81
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    #@6f
    .line 84
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@71
    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    #@74
    .line 85
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    #@76
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@79
    goto :goto_2

    #@7a
    .line 83
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_8
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    #@7c
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_3
.end method
