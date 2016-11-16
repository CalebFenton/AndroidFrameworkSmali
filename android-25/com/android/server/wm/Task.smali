.class Lcom/android/server/wm/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mBounds:Landroid/graphics/Rect;

.field mDeferRemoval:Z

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private mFullscreen:Z

.field private mHomeTask:Z

.field mOverrideConfig:Landroid/content/res/Configuration;

.field private mPreScrollBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenBounds:Landroid/graphics/Rect;

.field final mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

.field private mResizeMode:I

.field mRotation:I

.field private mScrollValid:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mTaskId:I

.field private final mTempInsetBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/Task;->TAG:Ljava/lang/String;

    #@5
    .line 48
    return-void
.end method

.method constructor <init>(ILcom/android/server/wm/TaskStack;ILcom/android/server/wm/WindowManagerService;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "userId"    # I
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .param p6, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    #@5
    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@a
    .line 61
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@d
    .line 65
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@14
    .line 66
    new-instance v0, Landroid/graphics/Rect;

    #@16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    #@1b
    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    #@1d
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@22
    .line 69
    new-instance v0, Landroid/graphics/Rect;

    #@24
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@29
    .line 73
    new-instance v0, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2e
    iput-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    #@30
    .line 79
    const/4 v0, 0x1

    #@31
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@33
    .line 83
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@35
    iput-object v0, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@37
    .line 86
    new-instance v0, Landroid/graphics/Rect;

    #@39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@3e
    .line 88
    new-instance v0, Landroid/graphics/Rect;

    #@40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@43
    iput-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@45
    .line 101
    iput p1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@47
    .line 102
    iput-object p2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@49
    .line 103
    iput p3, p0, Lcom/android/server/wm/Task;->mUserId:I

    #@4b
    .line 104
    iput-object p4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4d
    .line 105
    invoke-direct {p0, p5, p6}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    #@50
    .line 100
    return-void
.end method

.method private hasWindowsAlive()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 132
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 133
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@13
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasWindowsAlive()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 134
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 132
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 137
    :cond_1
    return v2
.end method

.method private inCropWindowsResizeMode()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 301
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    #@4
    if-nez v2, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    :cond_0
    move v0, v1

    #@d
    :goto_0
    return v0

    #@e
    :cond_1
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    #@10
    if-ne v2, v0, :cond_0

    #@12
    goto :goto_0
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 212
    if-nez p2, :cond_0

    #@3
    .line 213
    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@5
    .line 215
    :cond_0
    if-nez p1, :cond_1

    #@7
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@9
    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_2

    #@f
    .line 219
    :cond_1
    if-eqz p1, :cond_3

    #@11
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@13
    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 220
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v5, "non null bounds, but empty configuration"

    #@1e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v4

    #@22
    .line 216
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "null bounds but non empty configuration: "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v4

    #@3c
    .line 222
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@3e
    .line 223
    .local v2, "oldFullscreen":Z
    const/4 v3, 0x0

    #@3f
    .line 224
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@41
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@44
    move-result-object v1

    #@45
    .line 225
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_4

    #@47
    .line 226
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@49
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@4c
    .line 227
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@4f
    move-result-object v4

    #@50
    iget v3, v4, Landroid/view/DisplayInfo;->rotation:I

    #@52
    .line 228
    if-nez p1, :cond_5

    #@54
    const/4 v4, 0x1

    #@55
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@57
    .line 229
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@59
    if-eqz v4, :cond_4

    #@5b
    .line 230
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@5d
    .line 234
    :cond_4
    if-nez p1, :cond_6

    #@5f
    .line 236
    return v5

    #@60
    :cond_5
    move v4, v5

    #@61
    .line 228
    goto :goto_0

    #@62
    .line 238
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@64
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_7

    #@6a
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@6c
    if-ne v2, v4, :cond_7

    #@6e
    iget v4, p0, Lcom/android/server/wm/Task;->mRotation:I

    #@70
    if-ne v4, v3, :cond_7

    #@72
    .line 239
    return v5

    #@73
    .line 242
    :cond_7
    const/4 v0, 0x0

    #@74
    .line 243
    .local v0, "boundsChange":I
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@76
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@78
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@7a
    if-ne v4, v5, :cond_8

    #@7c
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@7e
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@80
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@82
    if-eq v4, v5, :cond_9

    #@84
    .line 244
    :cond_8
    const/4 v0, 0x1

    #@85
    .line 246
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@87
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    #@8a
    move-result v4

    #@8b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@8e
    move-result v5

    #@8f
    if-ne v4, v5, :cond_a

    #@91
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@93
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    #@96
    move-result v4

    #@97
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@9a
    move-result v5

    #@9b
    if-eq v4, v5, :cond_b

    #@9d
    .line 247
    :cond_a
    or-int/lit8 v0, v0, 0x2

    #@9f
    .line 251
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@a1
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a4
    .line 253
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetScrollLocked()V

    #@a7
    .line 255
    iput v3, p0, Lcom/android/server/wm/Task;->mRotation:I

    #@a9
    .line 256
    if-eqz v1, :cond_c

    #@ab
    .line 257
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@ad
    invoke-virtual {v4, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@b0
    .line 259
    :cond_c
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@b2
    if-eqz v4, :cond_d

    #@b4
    sget-object p2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@b6
    .end local p2    # "config":Landroid/content/res/Configuration;
    :cond_d
    iput-object p2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@b8
    .line 260
    return v0
.end method

.method private useCurrentBounds()Z
    .locals 2

    #@0
    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    .line 420
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@8
    if-nez v1, :cond_0

    #@a
    .line 421
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@c
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@e
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isTaskResizeableByDockedStack(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 422
    if-nez v0, :cond_1

    #@16
    .line 424
    :cond_0
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 423
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    #@1b
    move-result-object v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 426
    const/4 v1, 0x0

    #@1f
    return v1
.end method


# virtual methods
.method addAppToken(ILcom/android/server/wm/AppWindowToken;IZ)V
    .locals 3
    .param p1, "addPos"    # I
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "resizeMode"    # I
    .param p4, "homeTask"    # Z

    #@0
    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v0

    #@6
    .line 114
    .local v0, "lastPos":I
    if-lt p1, v0, :cond_1

    #@8
    .line 115
    move p1, v0

    #@9
    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/AppTokenList;->add(ILjava/lang/Object;)V

    #@e
    .line 125
    iput-object p0, p2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@10
    .line 126
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@13
    .line 127
    iput p3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    #@15
    .line 128
    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    #@17
    .line 112
    return-void

    #@18
    .line 117
    :cond_1
    const/4 v1, 0x0

    #@19
    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1b
    if-ge v1, p1, :cond_0

    #@1d
    .line 118
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1f
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    #@25
    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    #@27
    if-eqz v2, :cond_2

    #@29
    .line 120
    add-int/lit8 p1, p1, 0x1

    #@2b
    .line 117
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0
.end method

.method addWindowsWaitingForDrawnIfResizingChanged()V
    .locals 5

    #@0
    .prologue
    .line 562
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v4

    #@6
    add-int/lit8 v0, v4, -0x1

    #@8
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 563
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@14
    .line 564
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v2, v4, -0x1

    #@1a
    .local v2, "winNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@1c
    .line 565
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@22
    .line 566
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_0

    #@28
    .line 567
    iget-object v4, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2a
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 564
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_1

    #@32
    .line 562
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_0

    #@35
    .line 561
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    return-void
.end method

.method alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 5
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "alignBottom"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@9
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 342
    :cond_0
    return-void

    #@e
    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    #@13
    .line 346
    if-eqz p3, :cond_2

    #@15
    .line 347
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    #@17
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@19
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    #@1b
    sub-int v0, v1, v2

    #@1d
    .line 348
    .local v0, "offsetY":I
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    #@22
    .line 352
    .end local v0    # "offsetY":I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    #@25
    .line 353
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@27
    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@29
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    #@2c
    .line 340
    return-void

    #@2d
    .line 350
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@2f
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@31
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@33
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    #@36
    goto :goto_0
.end method

.method applyScrollToAllWindows(II)V
    .locals 5
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    #@0
    .prologue
    .line 365
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v4

    #@6
    add-int/lit8 v0, v4, -0x1

    #@8
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 366
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@14
    .line 367
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v2, v4, -0x1

    #@1a
    .local v2, "winNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1c
    .line 368
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@22
    .line 369
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iput p1, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@24
    .line 370
    iput p2, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@26
    .line 367
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_1

    #@29
    .line 365
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 364
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    return-void
.end method

.method applyScrollToWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 377
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@6
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@8
    iput v0, p1, Lcom/android/server/wm/WindowState;->mXOffset:I

    #@a
    .line 378
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@c
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@e
    iput v0, p1, Lcom/android/server/wm/WindowState;->mYOffset:I

    #@10
    .line 375
    :cond_0
    return-void
.end method

.method cancelTaskThumbnailTransition()V
    .locals 2

    #@0
    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 672
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    #@17
    .line 671
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 670
    :cond_0
    return-void
.end method

.method cancelTaskWindowTransition()V
    .locals 2

    #@0
    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 663
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    #@17
    .line 662
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 661
    :cond_0
    return-void
.end method

.method cropWindowsToStackBounds()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 293
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    #@4
    if-nez v2, :cond_1

    #@6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    #@e
    if-ne v2, v0, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public dimFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "  "

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 791
    .local v0, "doublePrefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "taskId="

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, "mFullscreen="

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    const-string/jumbo v5, "mBounds="

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    iget-object v5, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@60
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6f
    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    const-string/jumbo v5, "mdr="

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    const-string/jumbo v5, "appTokens="

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a9
    .line 796
    new-instance v4, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v4

    #@b2
    const-string/jumbo v5, "mTempInsetBounds="

    #@b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    iget-object v5, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    #@bb
    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v4

    #@c3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v4

    #@c7
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ca
    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v4

    #@d3
    const-string/jumbo v5, "  "

    #@d6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v4

    #@da
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v2

    #@de
    .line 800
    .local v2, "triplePrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@e0
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@e3
    move-result v4

    #@e4
    add-int/lit8 v1, v4, -0x1

    #@e6
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@e8
    .line 801
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@ea
    invoke-virtual {v4, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@ed
    move-result-object v3

    #@ee
    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    #@f0
    .line 802
    .local v3, "wtoken":Lcom/android/server/wm/AppWindowToken;
    new-instance v4, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v4

    #@f9
    const-string/jumbo v5, "Activity #"

    #@fc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v4

    #@100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@103
    move-result-object v4

    #@104
    const-string/jumbo v5, " "

    #@107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v4

    #@10b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v4

    #@10f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v4

    #@113
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@116
    .line 803
    invoke-virtual {v3, p2, v2}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@119
    .line 800
    add-int/lit8 v1, v1, -0x1

    #@11b
    goto :goto_0

    #@11c
    .line 788
    .end local v3    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    return-void
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 434
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@8
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@b
    .line 435
    return-void

    #@c
    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@15
    .line 430
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    .line 494
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    #@8
    .line 495
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    #@a
    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    #@d
    move-result v1

    #@e
    .line 496
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_4

    #@14
    .line 497
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Landroid/graphics/Rect;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 498
    return-void

    #@21
    .line 495
    :cond_0
    const/4 v1, 0x0

    #@22
    .local v1, "dockedResizing":Z
    goto :goto_0

    #@23
    .line 501
    .end local v1    # "dockedResizing":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@25
    if-nez v2, :cond_3

    #@27
    .line 508
    if-eqz v1, :cond_2

    #@29
    .line 509
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2b
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@2e
    .line 514
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@30
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@33
    .line 518
    :goto_2
    return-void

    #@34
    .line 511
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@36
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@3b
    .line 512
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@3d
    iget-object v3, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@3f
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@42
    goto :goto_1

    #@43
    .line 516
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@45
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@48
    goto :goto_2

    #@49
    .line 524
    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    #@4c
    .line 490
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method getDragResizeMode()I
    .locals 1

    #@0
    .prologue
    .line 554
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    #@2
    return v0
.end method

.method getMaxVisibleBounds(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 456
    const/4 v0, 0x0

    #@1
    .line 457
    .local v0, "foundTop":Z
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v1, v4, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    #@b
    .line 458
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@d
    invoke-virtual {v4, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    #@13
    .line 460
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@15
    if-nez v4, :cond_0

    #@17
    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@19
    if-nez v4, :cond_0

    #@1b
    iget-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 457
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 463
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    #@25
    move-result-object v3

    #@26
    .line 464
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    #@28
    .line 467
    if-nez v0, :cond_2

    #@2a
    .line 468
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2f
    .line 469
    const/4 v0, 0x1

    #@30
    .line 470
    goto :goto_1

    #@31
    .line 472
    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@33
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@35
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@37
    if-ge v4, v5, :cond_3

    #@39
    .line 473
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@3b
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@3d
    iput v4, p1, Landroid/graphics/Rect;->left:I

    #@3f
    .line 475
    :cond_3
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@41
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@43
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@45
    if-ge v4, v5, :cond_4

    #@47
    .line 476
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@49
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@4b
    iput v4, p1, Landroid/graphics/Rect;->top:I

    #@4d
    .line 478
    :cond_4
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@4f
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@51
    iget v5, p1, Landroid/graphics/Rect;->right:I

    #@53
    if-le v4, v5, :cond_5

    #@55
    .line 479
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@57
    iget v4, v4, Landroid/graphics/Rect;->right:I

    #@59
    iput v4, p1, Landroid/graphics/Rect;->right:I

    #@5b
    .line 481
    :cond_5
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@5d
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@5f
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@61
    if-le v4, v5, :cond_0

    #@63
    .line 482
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@65
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@67
    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    #@69
    goto :goto_1

    #@6a
    .line 485
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    return v0
.end method

.method getTempInsetBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 279
    return-void
.end method

.method getTopAppToken()Lcom/android/server/wm/AppWindowToken;
    .locals 2

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@a
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    #@18
    :goto_0
    return-object v0

    #@19
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 730
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    #@4
    move-result-object v0

    #@5
    .line 731
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;
    .locals 3

    #@0
    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 736
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@12
    .line 738
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@14
    if-nez v2, :cond_0

    #@16
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->clientHidden:Z

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 735
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 738
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 739
    return-object v1

    #@22
    .line 742
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    const/4 v2, 0x0

    #@23
    return-object v2
.end method

.method inDockedWorkspace()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 700
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@7
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@9
    const/4 v2, 0x3

    #@a
    if-ne v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method inFreeformWorkspace()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 696
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@7
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@9
    const/4 v2, 0x2

    #@a
    if-ne v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method inHomeStack()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 692
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@7
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method inPinnedWorkspace()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 704
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@7
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@9
    const/4 v2, 0x4

    #@a
    if-ne v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method isDockedInEffect()Z
    .locals 1

    #@0
    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inDockedWorkspace()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeableByDockedStack()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method isDragResizing()Z
    .locals 1

    #@0
    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isDragResizing()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method isFloating()Z
    .locals 1

    #@0
    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@4
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method isFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/server/wm/Task;->useCurrentBounds()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 756
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@8
    return v0

    #@9
    .line 761
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0
.end method

.method isHomeTask()Z
    .locals 1

    #@0
    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    #@2
    return v0
.end method

.method isResizeable()Z
    .locals 1

    #@0
    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHomeTask:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 289
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    #@6
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    #@10
    .line 288
    :goto_0
    return v0

    #@11
    .line 289
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 288
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method isResizeableByDockedStack()Z
    .locals 2

    #@0
    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@3
    move-result-object v0

    #@4
    .line 709
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 710
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@e
    if-eqz v1, :cond_0

    #@10
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@12
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@14
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isTaskResizeableByDockedStack(I)Z

    #@17
    move-result v1

    #@18
    .line 709
    :goto_0
    return v1

    #@19
    :cond_0
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method isTwoFingerScrollMode()Z
    .locals 1

    #@0
    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/server/wm/Task;->inCropWindowsResizeMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method isVisible()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 682
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 683
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@d
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    #@13
    .line 684
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 685
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 682
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 688
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return v3
.end method

.method moveTaskToStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 159
    return-void

    #@5
    .line 163
    :cond_0
    const/4 v0, 0x2

    #@6
    new-array v0, v0, [Ljava/lang/Object;

    #@8
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    const-string/jumbo v1, "moveTask"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    const/16 v1, 0x791b

    #@19
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1c
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@22
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    #@25
    .line 167
    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    #@28
    .line 157
    return-void
.end method

.method moveWindows()V
    .locals 5

    #@0
    .prologue
    .line 648
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v4

    #@6
    add-int/lit8 v0, v4, -0x1

    #@8
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 649
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@14
    .line 650
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v2, v4, -0x1

    #@1a
    .local v2, "winNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1c
    .line 651
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@22
    .line 653
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x1

    #@23
    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    #@25
    .line 650
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_1

    #@28
    .line 648
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 647
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    return-void
.end method

.method overridePlayingAppAnimations(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 774
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@12
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->overridePlayingAppAnimations(Landroid/view/animation/Animation;)V

    #@15
    .line 773
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 772
    :cond_0
    return-void
.end method

.method positionTaskInStack(Lcom/android/server/wm/TaskStack;ILandroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "position"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 171
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@7
    if-eq p1, v4, :cond_0

    #@9
    .line 174
    const/4 v4, 0x2

    #@a
    new-array v4, v4, [Ljava/lang/Object;

    #@c
    iget v5, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v5

    #@12
    aput-object v5, v4, v7

    #@14
    const-string/jumbo v5, "moveTask"

    #@17
    const/4 v6, 0x1

    #@18
    aput-object v5, v4, v6

    #@1a
    const/16 v5, 0x791b

    #@1c
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@1f
    .line 175
    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@21
    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    #@24
    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    #@27
    move-result v4

    #@28
    invoke-virtual {p1, p0, p2, v4}, Lcom/android/server/wm/TaskStack;->positionTask(Lcom/android/server/wm/Task;IZ)V

    #@2b
    .line 178
    invoke-virtual {p0, p3, p4, v7}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    #@2e
    .line 180
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@30
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@33
    move-result v4

    #@34
    add-int/lit8 v0, v4, -0x1

    #@36
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@38
    .line 181
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3a
    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@40
    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@42
    .line 182
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v4

    #@46
    add-int/lit8 v2, v4, -0x1

    #@48
    .local v2, "winNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@4a
    .line 183
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v1

    #@4e
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@50
    .line 184
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyMovedInStack()V

    #@53
    .line 182
    add-int/lit8 v2, v2, -0x1

    #@55
    goto :goto_1

    #@56
    .line 180
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@58
    goto :goto_0

    #@59
    .line 170
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    return-void
.end method

.method prepareFreezingBounds()V
    .locals 2

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 326
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@9
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@d
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    #@10
    .line 327
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    #@12
    iget-object v1, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@14
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    #@17
    .line 324
    return-void
.end method

.method removeAppToken(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 4
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 190
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    .line 191
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@9
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 192
    const/4 v1, 0x2

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    aput-object v2, v1, v3

    #@1a
    const-string/jumbo v2, "removeAppToken: last token"

    #@1d
    const/4 v3, 0x1

    #@1e
    aput-object v2, v1, v3

    #@20
    const/16 v2, 0x791b

    #@22
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@25
    .line 193
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeLocked()V

    #@2c
    .line 197
    :cond_0
    const/4 v1, 0x0

    #@2d
    iput-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    #@2f
    .line 201
    return v0
.end method

.method removeLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 141
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@a
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 143
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@12
    .line 144
    return-void

    #@13
    .line 147
    :cond_0
    const/4 v1, 0x2

    #@14
    new-array v1, v1, [Ljava/lang/Object;

    #@16
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v1, v3

    #@1e
    const-string/jumbo v2, "removeTask"

    #@21
    aput-object v2, v1, v4

    #@23
    const/16 v2, 0x791b

    #@25
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@28
    .line 148
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@2a
    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    #@2d
    move-result-object v0

    #@2e
    .line 150
    .local v0, "content":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    #@30
    .line 151
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    #@32
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    #@35
    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@37
    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskStack;->removeTask(Lcom/android/server/wm/Task;)V

    #@3a
    .line 154
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3c
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    #@3e
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@40
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    #@43
    .line 140
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 5

    #@0
    .prologue
    .line 540
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@2
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    #@5
    move-result v4

    #@6
    add-int/lit8 v0, v4, -0x1

    #@8
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 541
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@c
    invoke-virtual {v4, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    #@12
    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@14
    .line 542
    .local v3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v2, v4, -0x1

    #@1a
    .local v2, "winNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1c
    .line 543
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@22
    .line 544
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    #@25
    .line 542
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_1

    #@28
    .line 540
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 539
    .end local v2    # "winNdx":I
    .end local v3    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    return-void
.end method

.method resetScrollLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 357
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 358
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    #@7
    .line 359
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/Task;->applyScrollToAllWindows(II)V

    #@a
    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@c
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@11
    .line 356
    return-void
.end method

.method resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "forced"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    #@4
    move-result v0

    #@5
    .line 306
    .local v0, "boundsChanged":I
    if-eqz p3, :cond_0

    #@7
    .line 307
    or-int/lit8 v0, v0, 0x2

    #@9
    .line 309
    :cond_0
    if-nez v0, :cond_1

    #@b
    .line 310
    return v1

    #@c
    .line 312
    :cond_1
    and-int/lit8 v1, v0, 0x2

    #@e
    const/4 v2, 0x2

    #@f
    if-ne v1, v2, :cond_2

    #@11
    .line 313
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resizeWindows()V

    #@14
    .line 317
    :goto_0
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->moveWindows()V

    #@19
    goto :goto_0
.end method

.method resizeWindows()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 609
    iget-object v6, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3
    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    #@5
    .line 610
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@7
    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    #@a
    move-result v6

    #@b
    add-int/lit8 v0, v6, -0x1

    #@d
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_4

    #@f
    .line 611
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@11
    invoke-virtual {v6, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@17
    .line 615
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    #@1a
    .line 616
    iget-object v5, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    #@1c
    .line 617
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v6

    #@20
    add-int/lit8 v4, v6, -0x1

    #@22
    .local v4, "winNdx":I
    :goto_1
    if-ltz v4, :cond_3

    #@24
    .line 618
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lcom/android/server/wm/WindowState;

    #@2a
    .line 619
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    #@2c
    if-eqz v6, :cond_0

    #@2e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_2

    #@34
    .line 640
    :cond_0
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_1

    #@3a
    .line 641
    iput-boolean v7, v3, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    #@3c
    .line 617
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 621
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    .line 634
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    #@45
    move-result v6

    #@46
    if-nez v6, :cond_0

    #@48
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@4a
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4c
    if-ne v6, v7, :cond_0

    #@4e
    .line 635
    iget-object v6, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@50
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getBoundsAnimating()Z

    #@53
    move-result v6

    #@54
    if-nez v6, :cond_0

    #@56
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    #@59
    move-result v6

    #@5a
    if-nez v6, :cond_0

    #@5c
    .line 636
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWorkspace()Z

    #@5f
    move-result v6

    #@60
    if-nez v6, :cond_0

    #@62
    .line 637
    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowState;->setResizedWhileNotDragResizing(Z)V

    #@65
    goto :goto_2

    #@66
    .line 610
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@68
    goto :goto_0

    #@69
    .line 608
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    return-void
.end method

.method scrollLocked(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 384
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@8
    .line 385
    iget-object v0, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@a
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@c
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@e
    const/4 v1, 0x2

    #@f
    if-ne v0, v1, :cond_2

    #@11
    .line 386
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@13
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@15
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@17
    if-le v0, v1, :cond_1

    #@19
    .line 387
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@1b
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@1d
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@1f
    .line 388
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@21
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@23
    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@28
    move-result v1

    #@29
    add-int/2addr v0, v1

    #@2a
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@2c
    .line 404
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    #@2e
    if-eqz v0, :cond_4

    #@30
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@32
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 405
    const/4 v0, 0x0

    #@39
    return v0

    #@3a
    .line 389
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    #@3c
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@3e
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@40
    if-ge v0, v1, :cond_0

    #@42
    .line 390
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@44
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@46
    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@48
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    #@4b
    move-result v1

    #@4c
    sub-int/2addr v0, v1

    #@4d
    iput v0, p1, Landroid/graphics/Rect;->left:I

    #@4f
    .line 391
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@51
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@53
    iput v0, p1, Landroid/graphics/Rect;->right:I

    #@55
    goto :goto_0

    #@56
    .line 394
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@58
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@5a
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@5c
    if-le v0, v1, :cond_3

    #@5e
    .line 395
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@60
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@62
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@64
    .line 396
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@66
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@68
    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@6d
    move-result v1

    #@6e
    add-int/2addr v0, v1

    #@6f
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@71
    goto :goto_0

    #@72
    .line 397
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    #@74
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@76
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@78
    if-ge v0, v1, :cond_0

    #@7a
    .line 398
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@7c
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@7e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@80
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@83
    move-result v1

    #@84
    sub-int/2addr v0, v1

    #@85
    iput v0, p1, Landroid/graphics/Rect;->top:I

    #@87
    .line 399
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    #@89
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@8b
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@8d
    goto :goto_0

    #@8e
    .line 411
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mBounds:Landroid/graphics/Rect;

    #@90
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@93
    .line 412
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mScrollValid:Z

    #@95
    .line 413
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@97
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@99
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->applyScrollToAllWindows(II)V

    #@9c
    .line 414
    return v2
.end method

.method setDragResizing(ZI)V
    .locals 3
    .param p1, "dragResizing"    # Z
    .param p2, "dragResizeMode"    # I

    #@0
    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    #@2
    if-eq v0, p1, :cond_1

    #@4
    .line 529
    iget-object v0, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@6
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@8
    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForStack(II)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Drag resize mode not allow for stack stackId="

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 531
    iget-object v2, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@1e
    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@20
    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 531
    const-string/jumbo v2, " dragResizeMode="

    #@27
    .line 530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 533
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    #@39
    .line 534
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    #@3b
    .line 535
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    #@3e
    .line 527
    :cond_1
    return-void
.end method

.method setResizeable(I)V
    .locals 0
    .param p1, "resizeMode"    # I

    #@0
    .prologue
    .line 284
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    #@2
    .line 283
    return-void
.end method

.method setSendingToBottom(Z)V
    .locals 2
    .param p1, "toBottom"    # Z

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    .local v0, "appTokenNdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 206
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@11
    iput-boolean p1, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    #@13
    .line 205
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 204
    :cond_0
    return-void
.end method

.method setTempInsetBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "tempInsetBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 268
    if-eqz p1, :cond_0

    #@2
    .line 269
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 267
    :goto_0
    return-void

    #@8
    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTempInsetBounds:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@d
    goto :goto_0
.end method

.method showForAllUsers()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 677
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    #@6
    move-result v0

    #@7
    .line 678
    .local v0, "tokensCount":I
    if-eqz v0, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@b
    add-int/lit8 v2, v0, -0x1

    #@d
    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    #@13
    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    #@15
    :cond_0
    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Task="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{taskId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " appTokens="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " mdr="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 574
    if-nez p1, :cond_0

    #@3
    .line 575
    return-void

    #@4
    .line 577
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFullscreen:Z

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 578
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@a
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    #@d
    .line 579
    return-void

    #@e
    .line 581
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@11
    move-result-object v1

    #@12
    iget v0, v1, Landroid/view/DisplayInfo;->rotation:I

    #@14
    .line 582
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    #@16
    if-ne v1, v0, :cond_2

    #@18
    .line 583
    return-void

    #@19
    .line 591
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@1b
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@1d
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@20
    .line 593
    iget-object v1, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@22
    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@24
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isTaskResizeAllowed(I)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_3

    #@2a
    .line 594
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@2c
    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@2e
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    #@31
    .line 595
    return-void

    #@32
    .line 598
    :cond_3
    iget v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    #@34
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@36
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    #@39
    .line 599
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    #@3b
    iget-object v2, p0, Lcom/android/server/wm/Task;->mOverrideConfig:Landroid/content/res/Configuration;

    #@3d
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)I

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_4

    #@43
    .line 603
    iget-object v1, p0, Lcom/android/server/wm/Task;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@47
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    #@49
    .line 604
    iget-object v3, p0, Lcom/android/server/wm/Task;->mPreScrollBounds:Landroid/graphics/Rect;

    #@4b
    .line 603
    const/16 v4, 0x2b

    #@4d
    .line 604
    const/4 v5, 0x1

    #@4e
    .line 603
    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@55
    .line 573
    :cond_4
    return-void
.end method
