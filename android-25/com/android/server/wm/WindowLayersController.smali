.class public Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mInputMethodAnimLayerAdjustment:I

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    #@6
    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    #@d
    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    #@14
    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    #@1b
    .line 64
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@1e
    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@23
    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    #@25
    .line 57
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@27
    .line 56
    return-void
.end method

.method private adjustSpecialWindows()V
    .locals 3

    #@0
    .prologue
    .line 201
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    #@2
    add-int/lit8 v0, v2, 0x5

    #@4
    .line 204
    .local v0, "layer":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    #@6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 205
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    #@e
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@14
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    #@17
    move-result v0

    #@18
    goto :goto_0

    #@19
    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@1b
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    #@1e
    move-result v0

    #@1f
    .line 210
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@21
    if-eqz v2, :cond_2

    #@23
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@25
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 211
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    #@2d
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_2

    #@33
    .line 212
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    #@35
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@3b
    .line 214
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    #@3d
    if-le v0, v2, :cond_1

    #@3f
    .line 215
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    #@42
    move-result v0

    #@43
    goto :goto_1

    #@44
    .line 223
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    #@46
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_3

    #@4c
    .line 224
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    #@4e
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@51
    move-result-object v2

    #@52
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@54
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    #@57
    move-result v0

    #@58
    goto :goto_2

    #@59
    .line 227
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    #@5b
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@5e
    move-result v2

    #@5f
    if-nez v2, :cond_4

    #@61
    .line 228
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    #@63
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    #@66
    move-result-object v2

    #@67
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@69
    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    #@6c
    move-result v0

    #@6d
    goto :goto_3

    #@6e
    .line 200
    :cond_4
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    #@0
    .prologue
    .line 233
    if-eqz p1, :cond_0

    #@2
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    #@5
    .line 236
    add-int/lit8 p2, p2, 0x5

    #@7
    .line 238
    :cond_0
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    #@0
    .prologue
    .line 242
    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2
    .line 243
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    #@6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    #@9
    move-result v2

    #@a
    add-int/2addr v1, v2

    #@b
    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    #@e
    move-result v2

    #@f
    .line 243
    add-int/2addr v1, v2

    #@10
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@12
    .line 245
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@14
    if-eqz v0, :cond_0

    #@16
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@18
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@1a
    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 246
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@20
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@22
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@24
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@26
    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@28
    if-le v0, v1, :cond_0

    #@2a
    .line 247
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@2c
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@2e
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@30
    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@32
    iput v1, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    #@34
    .line 241
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 1

    #@0
    .prologue
    .line 169
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    #@3
    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    #@8
    .line 171
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    #@d
    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    #@12
    .line 173
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    #@17
    .line 174
    const/4 v0, 0x0

    #@18
    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@1a
    .line 168
    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 178
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    #@2
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    #@4
    const/16 v2, 0x7f2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 179
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@a
    .line 180
    return-void

    #@b
    .line 182
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 183
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    #@11
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@14
    .line 185
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 186
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    #@1a
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@1d
    .line 187
    return-void

    #@1e
    .line 189
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@21
    move-result-object v0

    #@22
    .line 190
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_3

    #@24
    .line 191
    return-void

    #@25
    .line 193
    :cond_3
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@27
    const/4 v2, 0x4

    #@28
    if-ne v1, v2, :cond_5

    #@2a
    .line 194
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    #@2c
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@2f
    .line 177
    :cond_4
    :goto_0
    return-void

    #@30
    .line 195
    :cond_5
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@32
    const/4 v2, 0x3

    #@33
    if-ne v1, v2, :cond_4

    #@35
    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    #@37
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_0
.end method

.method private logDebugLayers(Lcom/android/server/wm/WindowList;)V
    .locals 8
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    #@4
    move-result v1

    #@5
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 159
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@d
    .line 160
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@f
    .line 161
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-string/jumbo v5, "WindowManager"

    #@12
    new-instance v4, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "Assign layer "

    #@1a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    const-string/jumbo v6, ": "

    #@25
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-string/jumbo v6, "mBase="

    #@2c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    iget v6, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    .line 162
    const-string/jumbo v6, " mLayer="

    #@39
    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 162
    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    #@3f
    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v6

    #@43
    .line 162
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@45
    if-nez v4, :cond_0

    #@47
    .line 163
    const-string/jumbo v4, ""

    #@4a
    .line 161
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    .line 164
    const-string/jumbo v6, " =mAnimLayer="

    #@51
    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 164
    iget v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@57
    .line 161
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 158
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_0

    #@65
    .line 163
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v7, " mAppLayer="

    #@6d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@73
    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    #@75
    iget v7, v7, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    #@77
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    goto :goto_1

    #@80
    .line 157
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return-void
.end method


# virtual methods
.method final assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    .locals 10
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->clear()V

    #@3
    .line 72
    const/4 v1, 0x0

    #@4
    .line 73
    .local v1, "curBaseLayer":I
    const/4 v2, 0x0

    #@5
    .line 74
    .local v2, "curLayer":I
    const/4 v0, 0x0

    #@6
    .line 75
    .local v0, "anyLayerChanged":Z
    const/4 v3, 0x0

    #@7
    .local v3, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    #@a
    move-result v7

    #@b
    .local v7, "windowCount":I
    :goto_0
    if-ge v3, v7, :cond_6

    #@d
    .line 76
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Lcom/android/server/wm/WindowState;

    #@13
    .line 77
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x0

    #@14
    .line 79
    .local v4, "layerChanged":Z
    iget v5, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    #@16
    .line 80
    .local v5, "oldLayer":I
    iget v8, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@18
    if-eq v8, v1, :cond_0

    #@1a
    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@1c
    if-nez v8, :cond_0

    #@1e
    if-lez v3, :cond_5

    #@20
    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@22
    if-eqz v8, :cond_5

    #@24
    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x5

    #@26
    .line 85
    :goto_1
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    #@29
    .line 90
    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    #@2b
    if-ne v8, v5, :cond_1

    #@2d
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@2f
    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@31
    if-eq v8, v5, :cond_2

    #@33
    .line 91
    :cond_1
    const/4 v4, 0x1

    #@34
    .line 92
    const/4 v0, 0x1

    #@35
    .line 95
    :cond_2
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    #@37
    if-eqz v8, :cond_3

    #@39
    .line 96
    iget v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    #@3b
    .line 97
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@3d
    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@3f
    .line 96
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@42
    move-result v8

    #@43
    iput v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    #@45
    .line 99
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    #@48
    .line 101
    if-eqz v4, :cond_4

    #@4a
    .line 102
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    #@4d
    .line 75
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 83
    :cond_5
    iget v2, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    #@52
    move v1, v2

    #@53
    goto :goto_1

    #@54
    .line 106
    .end local v4    # "layerChanged":Z
    .end local v5    # "oldLayer":I
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    #@57
    .line 109
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@59
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@5b
    if-eqz v8, :cond_7

    #@5d
    if-eqz v0, :cond_7

    #@5f
    .line 110
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    #@62
    move-result v8

    #@63
    add-int/lit8 v8, v8, -0x1

    #@65
    invoke-virtual {p1, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v8

    #@69
    check-cast v8, Lcom/android/server/wm/WindowState;

    #@6b
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    #@6e
    move-result v8

    #@6f
    if-nez v8, :cond_7

    #@71
    .line 111
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@73
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    #@75
    invoke-virtual {v8}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    #@78
    .line 67
    :cond_7
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 253
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@8
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 254
    :cond_0
    const-string/jumbo v0, "  mInputMethodAnimLayerAdjustment="

    #@11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 255
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    #@16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    #@19
    .line 256
    const-string/jumbo v0, "  mWallpaperAnimLayerAdjustment="

    #@1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    .line 257
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@21
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@23
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    #@26
    move-result v0

    #@27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    #@2a
    .line 251
    :cond_1
    return-void
.end method

.method getResizeDimLayer()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    #@6
    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    #@0
    .prologue
    .line 141
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 142
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    #@6
    return v0

    #@7
    .line 143
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    #@12
    move-result v0

    #@13
    return v0

    #@14
    .line 146
    :cond_1
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 6
    .param p1, "adj"    # I

    #@0
    .prologue
    .line 119
    iput p1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    #@2
    .line 120
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    #@6
    .line 121
    .local v3, "imw":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    #@8
    .line 122
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@a
    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    #@c
    add-int/2addr v5, p1

    #@d
    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@f
    .line 125
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@11
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    #@14
    move-result v4

    #@15
    add-int/lit8 v2, v4, -0x1

    #@17
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    #@19
    .line 126
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    #@1b
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/android/server/wm/WindowState;

    #@21
    .line 127
    .local v0, "childWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@23
    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    #@25
    add-int/2addr v5, p1

    #@26
    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@28
    .line 125
    add-int/lit8 v2, v2, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 132
    .end local v0    # "childWindow":Lcom/android/server/wm/WindowState;
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v4

    #@33
    add-int/lit8 v2, v4, -0x1

    #@35
    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    #@37
    .line 133
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    #@39
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Lcom/android/server/wm/WindowState;

    #@41
    .line 134
    .local v1, "dialog":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    #@43
    iget v5, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    #@45
    add-int/2addr v5, p1

    #@46
    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    #@48
    .line 132
    add-int/lit8 v2, v2, -0x1

    #@4a
    goto :goto_1

    #@4b
    .line 117
    .end local v1    # "dialog":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method
