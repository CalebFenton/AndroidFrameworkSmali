.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field mContentRect:Landroid/graphics/Rect;

.field mDeferredRemoval:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field mDisplayScalingDisabled:Z

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field mTmpRect:Landroid/graphics/Rect;

.field final mTmpTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private final mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 50
    new-instance v1, Lcom/android/server/wm/WindowList;

    #@6
    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    #@b
    .line 62
    new-instance v1, Ljava/lang/Object;

    #@d
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    #@12
    .line 63
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@14
    .line 64
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@16
    .line 65
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@18
    .line 66
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@1a
    .line 67
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@1c
    .line 68
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@1e
    .line 70
    new-instance v1, Landroid/view/DisplayInfo;

    #@20
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    #@23
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@25
    .line 73
    new-instance v1, Landroid/graphics/Rect;

    #@27
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2a
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    #@2c
    .line 74
    new-instance v1, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@31
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    #@33
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    #@35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@38
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@3a
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    #@3c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3f
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@41
    .line 90
    const/4 v1, 0x0

    #@42
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@44
    .line 96
    new-instance v1, Landroid/graphics/Region;

    #@46
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@49
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@4b
    .line 99
    new-instance v1, Landroid/graphics/Rect;

    #@4d
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@50
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@52
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    #@54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@57
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@59
    .line 114
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@5b
    .line 115
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    #@5e
    move-result v1

    #@5f
    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@61
    .line 116
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@63
    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@66
    .line 117
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@68
    if-nez v1, :cond_0

    #@6a
    const/4 v0, 0x1

    #@6b
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    #@6d
    .line 118
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@6f
    .line 113
    return-void
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    #@0
    .prologue
    .line 349
    sub-int v0, p1, p0

    #@2
    .line 350
    .local v0, "delta":I
    if-gez v0, :cond_0

    #@4
    add-int/lit8 v0, v0, 0x4

    #@6
    .line 351
    :cond_0
    return v0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 3

    #@0
    .prologue
    .line 276
    const/4 v0, 0x0

    #@1
    .line 277
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .end local v0    # "result":Z
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 278
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/wm/TaskStack;

    #@13
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    #@16
    move-result v2

    #@17
    or-int/2addr v0, v2

    #@18
    .line 277
    .local v0, "result":Z
    add-int/lit8 v1, v1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 280
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method attachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    #@0
    .prologue
    .line 195
    iget v0, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@2
    if-nez v0, :cond_1

    #@4
    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "attachStack: HOME_STACK_ID (0) not first."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 199
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@13
    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 202
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@1b
    .line 194
    return-void
.end method

.method checkForDeferredActions()V
    .locals 11

    #@0
    .prologue
    .line 321
    const/4 v0, 0x0

    #@1
    .line 322
    .local v0, "animating":Z
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v9

    #@7
    add-int/lit8 v2, v9, -0x1

    #@9
    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_5

    #@b
    .line 323
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@13
    .line 324
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    #@16
    move-result v9

    #@17
    if-eqz v9, :cond_1

    #@19
    .line 325
    const/4 v0, 0x1

    #@1a
    .line 322
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 327
    :cond_1
    iget-boolean v9, v1, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    #@1f
    if-eqz v9, :cond_2

    #@21
    .line 328
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    invoke-virtual {v9, p0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStackLocked(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)V

    #@26
    .line 330
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@29
    move-result-object v5

    #@2a
    .line 331
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v9

    #@2e
    add-int/lit8 v4, v9, -0x1

    #@30
    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_0

    #@32
    .line 332
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/wm/Task;

    #@38
    .line 333
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v7, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@3a
    .line 334
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    #@3d
    move-result v9

    #@3e
    add-int/lit8 v6, v9, -0x1

    #@40
    .local v6, "tokenNdx":I
    :goto_2
    if-ltz v6, :cond_4

    #@42
    .line 335
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v8

    #@46
    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    #@48
    .line 336
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v9, v8, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    #@4a
    if-eqz v9, :cond_3

    #@4c
    .line 337
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    #@4f
    .line 334
    :cond_3
    add-int/lit8 v6, v6, -0x1

    #@51
    goto :goto_2

    #@52
    .line 331
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@54
    goto :goto_1

    #@55
    .line 343
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "taskNdx":I
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    if-nez v0, :cond_6

    #@57
    iget-boolean v9, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    #@59
    if-eqz v9, :cond_6

    #@5b
    .line 344
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    #@5d
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@5f
    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    #@62
    .line 320
    :cond_6
    return-void
.end method

.method close()V
    .locals 2

    #@0
    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 306
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->close()V

    #@15
    .line 305
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 304
    :cond_0
    return-void
.end method

.method detachStack(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 212
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 355
    move-object/from16 v0, p2

    #@2
    move-object/from16 v1, p1

    #@4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7
    const-string/jumbo v14, "Display: mDisplayId="

    #@a
    move-object/from16 v0, p2

    #@c
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f
    move-object/from16 v0, p0

    #@11
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@13
    move-object/from16 v0, p2

    #@15
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@18
    .line 356
    new-instance v14, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v15, "  "

    #@20
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v14

    #@24
    move-object/from16 v0, p1

    #@26
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v14

    #@2a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 357
    .local v6, "subPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    #@30
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    const-string/jumbo v14, "init="

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@44
    const-string/jumbo v14, "x"

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4c
    .line 358
    move-object/from16 v0, p0

    #@4e
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@50
    move-object/from16 v0, p2

    #@52
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@55
    const-string/jumbo v14, " "

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@61
    move-object/from16 v0, p2

    #@63
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@66
    .line 359
    const-string/jumbo v14, "dpi"

    #@69
    move-object/from16 v0, p2

    #@6b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 360
    move-object/from16 v0, p0

    #@70
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    #@72
    move-object/from16 v0, p0

    #@74
    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@76
    if-ne v14, v15, :cond_0

    #@78
    .line 361
    move-object/from16 v0, p0

    #@7a
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@80
    if-eq v14, v15, :cond_3

    #@82
    .line 363
    :cond_0
    :goto_0
    const-string/jumbo v14, " base="

    #@85
    move-object/from16 v0, p2

    #@87
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    .line 364
    move-object/from16 v0, p0

    #@8c
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@93
    const-string/jumbo v14, "x"

    #@96
    move-object/from16 v0, p2

    #@98
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@9f
    move-object/from16 v0, p2

    #@a1
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@a4
    .line 365
    const-string/jumbo v14, " "

    #@a7
    move-object/from16 v0, p2

    #@a9
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@b0
    move-object/from16 v0, p2

    #@b2
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@b5
    const-string/jumbo v14, "dpi"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bd
    .line 367
    :cond_1
    move-object/from16 v0, p0

    #@bf
    iget-boolean v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    #@c1
    if-eqz v14, :cond_2

    #@c3
    .line 368
    const-string/jumbo v14, " noscale"

    #@c6
    move-object/from16 v0, p2

    #@c8
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cb
    .line 370
    :cond_2
    const-string/jumbo v14, " cur="

    #@ce
    move-object/from16 v0, p2

    #@d0
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d3
    .line 371
    move-object/from16 v0, p0

    #@d5
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@d7
    iget v14, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    #@d9
    move-object/from16 v0, p2

    #@db
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@de
    .line 372
    const-string/jumbo v14, "x"

    #@e1
    move-object/from16 v0, p2

    #@e3
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@ea
    iget v14, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    #@ec
    move-object/from16 v0, p2

    #@ee
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@f1
    .line 373
    const-string/jumbo v14, " app="

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f9
    .line 374
    move-object/from16 v0, p0

    #@fb
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@fd
    iget v14, v14, Landroid/view/DisplayInfo;->appWidth:I

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@104
    .line 375
    const-string/jumbo v14, "x"

    #@107
    move-object/from16 v0, p2

    #@109
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@110
    iget v14, v14, Landroid/view/DisplayInfo;->appHeight:I

    #@112
    move-object/from16 v0, p2

    #@114
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@117
    .line 376
    const-string/jumbo v14, " rng="

    #@11a
    move-object/from16 v0, p2

    #@11c
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11f
    move-object/from16 v0, p0

    #@121
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@123
    iget v14, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    #@125
    move-object/from16 v0, p2

    #@127
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@12a
    .line 377
    const-string/jumbo v14, "x"

    #@12d
    move-object/from16 v0, p2

    #@12f
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    move-object/from16 v0, p0

    #@134
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@136
    iget v14, v14, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@13d
    .line 378
    const-string/jumbo v14, "-"

    #@140
    move-object/from16 v0, p2

    #@142
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@149
    iget v14, v14, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    #@150
    .line 379
    const-string/jumbo v14, "x"

    #@153
    move-object/from16 v0, p2

    #@155
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@15c
    iget v14, v14, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    #@15e
    move-object/from16 v0, p2

    #@160
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@163
    .line 380
    move-object/from16 v0, p2

    #@165
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@168
    const-string/jumbo v14, "deferred="

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    move-object/from16 v0, p0

    #@172
    iget-boolean v14, v0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Z)V

    #@179
    .line 381
    const-string/jumbo v14, " layoutNeeded="

    #@17c
    move-object/from16 v0, p2

    #@17e
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@181
    move-object/from16 v0, p0

    #@183
    iget-boolean v14, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Z)V

    #@18a
    .line 382
    move-object/from16 v0, p0

    #@18c
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@18e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@191
    move-result v14

    #@192
    add-int/lit8 v5, v14, -0x1

    #@194
    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_4

    #@196
    .line 383
    move-object/from16 v0, p0

    #@198
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@19a
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19d
    move-result-object v4

    #@19e
    check-cast v4, Lcom/android/server/wm/TaskStack;

    #@1a0
    .line 384
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p2

    #@1a2
    move-object/from16 v1, p1

    #@1a4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a7
    new-instance v14, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v15, "mStacks["

    #@1af
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v14

    #@1b3
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v14

    #@1b7
    const-string/jumbo v15, "]"

    #@1ba
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v14

    #@1be
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c1
    move-result-object v14

    #@1c2
    move-object/from16 v0, p2

    #@1c4
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c7
    iget v14, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@1ce
    .line 385
    new-instance v14, Ljava/lang/StringBuilder;

    #@1d0
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1d3
    move-object/from16 v0, p1

    #@1d5
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v14

    #@1d9
    const-string/jumbo v15, "  "

    #@1dc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v14

    #@1e0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v14

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v4, v14, v0}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@1e9
    .line 382
    add-int/lit8 v5, v5, -0x1

    #@1eb
    goto :goto_1

    #@1ec
    .line 362
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v5    # "stackNdx":I
    :cond_3
    move-object/from16 v0, p0

    #@1ee
    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    iget v15, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    #@1f4
    if-eq v14, v15, :cond_1

    #@1f6
    goto/16 :goto_0

    #@1f8
    .line 387
    .restart local v5    # "stackNdx":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@1fb
    .line 388
    const-string/jumbo v14, "  Application tokens in top down Z order:"

    #@1fe
    move-object/from16 v0, p2

    #@200
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@203
    .line 389
    const/4 v3, 0x0

    #@204
    .line 390
    .local v3, "ndx":I
    move-object/from16 v0, p0

    #@206
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@208
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@20b
    move-result v14

    #@20c
    add-int/lit8 v5, v14, -0x1

    #@20e
    :goto_2
    if-ltz v5, :cond_7

    #@210
    .line 391
    move-object/from16 v0, p0

    #@212
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@214
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@217
    move-result-object v4

    #@218
    check-cast v4, Lcom/android/server/wm/TaskStack;

    #@21a
    .line 392
    .restart local v4    # "stack":Lcom/android/server/wm/TaskStack;
    const-string/jumbo v14, "  mStackId="

    #@21d
    move-object/from16 v0, p2

    #@21f
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@222
    iget v14, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@224
    move-object/from16 v0, p2

    #@226
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@229
    .line 393
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@22c
    move-result-object v9

    #@22d
    .line 394
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@230
    move-result v14

    #@231
    add-int/lit8 v8, v14, -0x1

    #@233
    .local v8, "taskNdx":I
    :goto_3
    if-ltz v8, :cond_6

    #@235
    .line 395
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@238
    move-result-object v7

    #@239
    check-cast v7, Lcom/android/server/wm/Task;

    #@23b
    .line 396
    .local v7, "task":Lcom/android/server/wm/Task;
    const-string/jumbo v14, "    mTaskId="

    #@23e
    move-object/from16 v0, p2

    #@240
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@243
    iget v14, v7, Lcom/android/server/wm/Task;->mTaskId:I

    #@245
    move-object/from16 v0, p2

    #@247
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(I)V

    #@24a
    .line 397
    iget-object v12, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    #@24c
    .line 398
    .local v12, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v12}, Lcom/android/server/wm/AppTokenList;->size()I

    #@24f
    move-result v14

    #@250
    add-int/lit8 v11, v14, -0x1

    #@252
    .local v11, "tokenNdx":I
    :goto_4
    if-ltz v11, :cond_5

    #@254
    .line 399
    invoke-virtual {v12, v11}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    #@257
    move-result-object v13

    #@258
    check-cast v13, Lcom/android/server/wm/AppWindowToken;

    #@25a
    .line 400
    .local v13, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const-string/jumbo v14, "    Activity #"

    #@25d
    move-object/from16 v0, p2

    #@25f
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@262
    move-object/from16 v0, p2

    #@264
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    #@267
    .line 401
    const/16 v14, 0x20

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    #@26e
    move-object/from16 v0, p2

    #@270
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@273
    const-string/jumbo v14, ":"

    #@276
    move-object/from16 v0, p2

    #@278
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27b
    .line 402
    const-string/jumbo v14, "      "

    #@27e
    move-object/from16 v0, p2

    #@280
    invoke-virtual {v13, v0, v14}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@283
    .line 398
    add-int/lit8 v11, v11, -0x1

    #@285
    add-int/lit8 v3, v3, 0x1

    #@287
    goto :goto_4

    #@288
    .line 394
    .end local v13    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    add-int/lit8 v8, v8, -0x1

    #@28a
    goto :goto_3

    #@28b
    .line 390
    .end local v7    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "tokenNdx":I
    .end local v12    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    #@28d
    goto :goto_2

    #@28e
    .line 406
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v8    # "taskNdx":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    if-nez v3, :cond_8

    #@290
    .line 407
    const-string/jumbo v14, "    None"

    #@293
    move-object/from16 v0, p2

    #@295
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@298
    .line 409
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@29b
    .line 410
    move-object/from16 v0, p0

    #@29d
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@29f
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    #@2a2
    move-result v14

    #@2a3
    if-nez v14, :cond_9

    #@2a5
    .line 411
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2a8
    .line 412
    const-string/jumbo v14, "  Exiting tokens:"

    #@2ab
    move-object/from16 v0, p2

    #@2ad
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b0
    .line 413
    move-object/from16 v0, p0

    #@2b2
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@2b4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@2b7
    move-result v14

    #@2b8
    add-int/lit8 v2, v14, -0x1

    #@2ba
    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_9

    #@2bc
    .line 414
    move-object/from16 v0, p0

    #@2be
    iget-object v14, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    #@2c0
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c3
    move-result-object v10

    #@2c4
    check-cast v10, Lcom/android/server/wm/WindowToken;

    #@2c6
    .line 415
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v14, "  Exiting #"

    #@2c9
    move-object/from16 v0, p2

    #@2cb
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2ce
    move-object/from16 v0, p2

    #@2d0
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    #@2d3
    .line 416
    const/16 v14, 0x20

    #@2d5
    move-object/from16 v0, p2

    #@2d7
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    #@2da
    move-object/from16 v0, p2

    #@2dc
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@2df
    .line 417
    const/16 v14, 0x3a

    #@2e1
    move-object/from16 v0, p2

    #@2e3
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(C)V

    #@2e6
    .line 418
    const-string/jumbo v14, "    "

    #@2e9
    move-object/from16 v0, p2

    #@2eb
    invoke-virtual {v10, v0, v14}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@2ee
    .line 413
    add-int/lit8 v2, v2, -0x1

    #@2f0
    goto :goto_5

    #@2f1
    .line 421
    .end local v2    # "i":I
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2f4
    .line 354
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@2
    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@2
    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@2
    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 3

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 167
    const-string/jumbo v0, "WindowManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "getHomeStack: Returning null from this="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    #@24
    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 181
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@2
    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    #@4
    .line 182
    .local v2, "orientation":I
    const/4 v8, 0x1

    #@5
    if-eq v2, v8, :cond_0

    #@7
    .line 183
    const/4 v8, 0x3

    #@8
    if-ne v2, v8, :cond_1

    #@a
    const/4 v5, 0x1

    #@b
    .line 184
    .local v5, "rotated":Z
    :goto_0
    if-eqz v5, :cond_2

    #@d
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@f
    .line 185
    .local v4, "physWidth":I
    :goto_1
    if-eqz v5, :cond_3

    #@11
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@13
    .line 186
    .local v3, "physHeight":I
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@15
    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    #@17
    .line 187
    .local v7, "width":I
    sub-int v8, v4, v7

    #@19
    div-int/lit8 v1, v8, 0x2

    #@1b
    .line 188
    .local v1, "left":I
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@1d
    iget v0, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    #@1f
    .line 189
    .local v0, "height":I
    sub-int v8, v3, v0

    #@21
    div-int/lit8 v6, v8, 0x2

    #@23
    .line 190
    .local v6, "top":I
    add-int v8, v1, v7

    #@25
    add-int v9, v6, v0

    #@27
    invoke-virtual {p1, v1, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@2a
    .line 179
    return-void

    #@2b
    .line 182
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v3    # "physHeight":I
    .end local v4    # "physWidth":I
    .end local v5    # "rotated":Z
    .end local v6    # "top":I
    .end local v7    # "width":I
    :cond_0
    const/4 v5, 0x1

    #@2c
    .restart local v5    # "rotated":Z
    goto :goto_0

    #@2d
    .line 183
    .end local v5    # "rotated":Z
    :cond_1
    const/4 v5, 0x0

    #@2e
    .restart local v5    # "rotated":Z
    goto :goto_0

    #@2f
    .line 184
    :cond_2
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    #@31
    .restart local v4    # "physWidth":I
    goto :goto_1

    #@32
    .line 185
    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    #@34
    .restart local v3    # "physHeight":I
    goto :goto_2
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 158
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 159
    .local v0, "numStacks":I
    const/4 v1, 0x0

    #@c
    .local v1, "stackNdx":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@e
    .line 160
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@10
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/wm/TaskStack;

    #@18
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1f
    .line 159
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskHistory:Ljava/util/ArrayList;

    #@24
    return-object v2
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    #@2
    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isAnimating()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 311
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 312
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@13
    .line 313
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimating()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 314
    const/4 v2, 0x1

    #@1a
    return v2

    #@1b
    .line 311
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 317
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    return v3
.end method

.method isDimming()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 290
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 291
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@13
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 292
    const/4 v1, 0x1

    #@1a
    return v1

    #@1b
    .line 290
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 295
    :cond_1
    return v2
.end method

.method public isPrivate()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 145
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@3
    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x4

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method moveStack(Lcom/android/server/wm/TaskStack;Z)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "toTop"    # Z

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 207
    const-string/jumbo v0, "WindowManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "moving stack that was not added: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    new-instance v2, Ljava/lang/Throwable;

    #@21
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@24
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@29
    if-eqz p2, :cond_1

    #@2b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v0

    #@31
    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@34
    .line 205
    return-void

    #@35
    .line 209
    :cond_1
    const/4 v0, 0x0

    #@36
    goto :goto_0
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    #@0
    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 271
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    #@15
    .line 270
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 269
    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 2

    #@0
    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 285
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    #@15
    .line 284
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 283
    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 220
    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 7
    .param p1, "focusedStack"    # Lcom/android/server/wm/TaskStack;

    #@0
    .prologue
    .line 236
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@2
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    #@7
    .line 237
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@a
    move-result-object v3

    #@b
    .line 238
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@e
    move-result v4

    #@f
    add-int/lit8 v0, v4, -0x1

    #@11
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@13
    .line 239
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@19
    .line 240
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    #@1c
    move-result-object v1

    #@1d
    .line 241
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_0

    #@23
    if-eqz v1, :cond_0

    #@25
    if-eq v1, p1, :cond_0

    #@27
    .line 242
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@29
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    #@2b
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@2e
    .line 244
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@30
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    #@32
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@35
    .line 245
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@37
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@39
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@3b
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@3e
    .line 238
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_0

    #@41
    .line 248
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 249
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

    #@47
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@49
    invoke-virtual {v4, v5}, Lcom/android/server/wm/StackTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    #@4c
    .line 235
    :cond_2
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 226
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wm/TaskStack;

    #@12
    .line 227
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    #@17
    .line 228
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 229
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@21
    return v2

    #@22
    .line 225
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 232
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    const/4 v2, -0x1

    #@26
    return v2
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    #@0
    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 300
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    #@15
    .line 299
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 298
    :cond_0
    return-void
.end method

.method switchUserStacks()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    #@4
    move-result-object v3

    #@5
    .line 255
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    #@9
    move-result v4

    #@a
    if-ge v0, v4, :cond_1

    #@c
    .line 256
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lcom/android/server/wm/WindowState;

    #@12
    .line 257
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 260
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    #@1b
    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 264
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v4

    #@24
    add-int/lit8 v1, v4, -0x1

    #@26
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@28
    .line 265
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Lcom/android/server/wm/TaskStack;

    #@30
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->switchUser()V

    #@33
    .line 264
    add-int/lit8 v1, v1, -0x1

    #@35
    goto :goto_1

    #@36
    .line 253
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Display "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " info="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " stacks="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 3

    #@0
    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    #@2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    #@4
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    #@7
    .line 174
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v0, v1, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@11
    .line 175
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/server/wm/TaskStack;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    #@1c
    .line 174
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 172
    :cond_0
    return-void
.end method
