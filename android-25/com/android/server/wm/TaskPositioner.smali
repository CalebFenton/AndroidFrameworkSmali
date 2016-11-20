.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$CtrlType;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mCurrentDimSide:I

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 65
    const-string/jumbo v0, "WindowManager"

    #@3
    sput-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@5
    .line 63
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 95
    new-instance v0, Landroid/util/DisplayMetrics;

    #@6
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@b
    .line 99
    new-instance v0, Landroid/graphics/Rect;

    #@d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@12
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    #@14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@19
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    #@1b
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@20
    .line 111
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@22
    .line 112
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    #@24
    .line 225
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@26
    .line 224
    return-void
.end method

.method private endDragLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 382
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    #@3
    .line 383
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@5
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    #@8
    .line 381
    return-void
.end method

.method private getDimSide(I)I
    .locals 4
    .param p1, "x"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x2

    #@2
    .line 487
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@4
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@6
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@c
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 489
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@16
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@18
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@1a
    if-eq v0, v2, :cond_1

    #@1c
    .line 490
    :cond_0
    return v3

    #@1d
    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@1f
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@21
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@26
    .line 494
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    #@28
    sub-int v0, p1, v0

    #@2a
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@2c
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@2e
    if-gt v0, v1, :cond_2

    #@30
    .line 495
    const/4 v0, 0x1

    #@31
    return v0

    #@32
    .line 497
    :cond_2
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    #@34
    add-int/2addr v0, p1

    #@35
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@37
    iget v1, v1, Landroid/graphics/Rect;->right:I

    #@39
    if-lt v0, v1, :cond_3

    #@3b
    .line 498
    return v2

    #@3c
    .line 501
    :cond_3
    return v3
.end method

.method private notifyMoveLocked(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 392
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@3
    if-eqz v9, :cond_4

    #@5
    .line 394
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    #@7
    sub-float v9, p1, v9

    #@9
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@c
    move-result v1

    #@d
    .line 395
    .local v1, "deltaX":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    #@f
    sub-float v9, p2, v9

    #@11
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@14
    move-result v2

    #@15
    .line 396
    .local v2, "deltaY":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@17
    iget v4, v9, Landroid/graphics/Rect;->left:I

    #@19
    .line 397
    .local v4, "left":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@1b
    iget v8, v9, Landroid/graphics/Rect;->top:I

    #@1d
    .line 398
    .local v8, "top":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@1f
    iget v7, v9, Landroid/graphics/Rect;->right:I

    #@21
    .line 399
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@23
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    #@25
    .line 400
    .local v0, "bottom":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@27
    and-int/lit8 v9, v9, 0x1

    #@29
    if-eqz v9, :cond_0

    #@2b
    .line 401
    add-int v9, v4, v1

    #@2d
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    #@2f
    sub-int v10, v7, v10

    #@31
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@34
    move-result v4

    #@35
    .line 403
    :cond_0
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@37
    and-int/lit8 v9, v9, 0x4

    #@39
    if-eqz v9, :cond_1

    #@3b
    .line 404
    add-int v9, v8, v2

    #@3d
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    #@3f
    sub-int v10, v0, v10

    #@41
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    #@44
    move-result v8

    #@45
    .line 406
    :cond_1
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@47
    and-int/lit8 v9, v9, 0x2

    #@49
    if-eqz v9, :cond_2

    #@4b
    .line 407
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    #@4d
    add-int/2addr v9, v4

    #@4e
    add-int v10, v7, v1

    #@50
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    #@53
    move-result v7

    #@54
    .line 409
    :cond_2
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@56
    and-int/lit8 v9, v9, 0x8

    #@58
    if-eqz v9, :cond_3

    #@5a
    .line 410
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    #@5c
    add-int/2addr v9, v8

    #@5d
    add-int v10, v0, v2

    #@5f
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    #@62
    move-result v0

    #@63
    .line 412
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@65
    invoke-virtual {v9, v4, v8, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@68
    .line 413
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@6a
    const/4 v10, 0x1

    #@6b
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    #@6e
    .line 414
    return v11

    #@6f
    .line 418
    .end local v0    # "bottom":I
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    .end local v4    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@71
    iget-object v9, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@73
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@75
    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@78
    .line 422
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@7a
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    #@7d
    move-result v9

    #@7e
    if-nez v9, :cond_5

    #@80
    .line 423
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@82
    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    #@84
    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    #@86
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->inset(II)V

    #@89
    .line 426
    :cond_5
    const/4 v3, 0x0

    #@8a
    .line 427
    .local v3, "dragEnded":Z
    float-to-int v5, p1

    #@8b
    .line 428
    .local v5, "nX":I
    float-to-int v6, p2

    #@8c
    .line 429
    .local v6, "nY":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@8e
    invoke-virtual {v9, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    #@91
    move-result v9

    #@92
    if-nez v9, :cond_6

    #@94
    .line 433
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@96
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@98
    int-to-float v9, v9

    #@99
    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    #@9c
    move-result v9

    #@9d
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@9f
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@a1
    int-to-float v10, v10

    #@a2
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    #@a5
    move-result p1

    #@a6
    .line 434
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@a8
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@aa
    int-to-float v9, v9

    #@ab
    invoke-static {p2, v9}, Ljava/lang/Math;->max(FF)F

    #@ae
    move-result v9

    #@af
    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@b1
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@b3
    int-to-float v10, v10

    #@b4
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    #@b7
    move-result p2

    #@b8
    .line 435
    const/4 v3, 0x1

    #@b9
    .line 438
    :cond_6
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(II)V

    #@bc
    .line 439
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(I)V

    #@bf
    .line 440
    return v3
.end method

.method private showDimLayer()V
    .locals 5

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@4
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    #@9
    .line 506
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@b
    const/4 v1, 0x1

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 507
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@10
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@12
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@15
    move-result v1

    #@16
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@18
    .line 512
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@1a
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    #@1f
    .line 513
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@21
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    #@26
    move-result v1

    #@27
    .line 514
    const-wide/16 v2, 0x0

    #@29
    .line 513
    const/high16 v4, 0x3f000000    # 0.5f

    #@2b
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    #@2e
    .line 504
    return-void

    #@2f
    .line 508
    :cond_1
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@31
    const/4 v1, 0x2

    #@32
    if-ne v0, v1, :cond_0

    #@34
    .line 509
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@36
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@38
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    #@3b
    move-result v1

    #@3c
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@3e
    goto :goto_0
.end method

.method private updateDimLayerVisibility(I)V
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->getDimSide(I)I

    #@3
    move-result v0

    #@4
    .line 463
    .local v0, "dimSide":I
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 464
    return-void

    #@9
    .line 467
    :cond_0
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@b
    .line 470
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    #@e
    .line 471
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@10
    if-nez v1, :cond_1

    #@12
    .line 472
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@14
    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->hide()V

    #@17
    .line 476
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    #@1a
    .line 460
    return-void

    #@1b
    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->showDimLayer()V

    #@1e
    goto :goto_0
.end method

.method private updateWindowDragBounds(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 444
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@3
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@8
    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@a
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 448
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    #@14
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    #@16
    const/4 v1, 0x2

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 449
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@1b
    int-to-float v1, p1

    #@1c
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    #@1e
    sub-float/2addr v1, v2

    #@1f
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@22
    move-result v1

    #@23
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    #@26
    .line 443
    :goto_0
    return-void

    #@27
    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@29
    int-to-float v1, p2

    #@2a
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    #@2c
    sub-float/2addr v1, v2

    #@2d
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    #@34
    goto :goto_0

    #@35
    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    #@37
    int-to-float v1, p1

    #@38
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    #@3a
    sub-float/2addr v1, v2

    #@3b
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v1

    #@3f
    int-to-float v2, p2

    #@40
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    #@42
    sub-float/2addr v2, v3

    #@43
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@46
    move-result v2

    #@47
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    #@4a
    goto :goto_0
.end method


# virtual methods
.method public dimFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->isFullscreen()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 532
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    #@4
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method isFullscreen()Z
    .locals 1

    #@0
    .prologue
    .line 523
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    #@0
    .prologue
    const-wide v10, 0x12a05f200L

    #@5
    const/4 v8, 0x1

    #@6
    const/4 v7, 0x0

    #@7
    const/4 v6, 0x0

    #@8
    .line 236
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 237
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v3, "Task positioner already registered"

    #@11
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 238
    return-void

    #@15
    .line 241
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    #@17
    .line 242
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    #@19
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@1b
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@1e
    .line 243
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@20
    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@23
    move-result-object v0

    #@24
    .line 244
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    #@26
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    #@28
    .line 245
    aget-object v2, v0, v8

    #@2a
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    #@2c
    .line 246
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@30
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    #@32
    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    #@35
    .line 248
    new-instance v2, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    #@37
    .line 249
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    #@39
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@3b
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@3d
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    #@40
    move-result-object v4

    #@41
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@43
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    #@45
    .line 248
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    #@48
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    #@4a
    .line 251
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    #@4c
    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@4f
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@51
    .line 252
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@53
    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@55
    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@57
    .line 253
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@59
    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@5b
    .line 256
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    #@5d
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@5f
    .line 257
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    #@61
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    #@64
    move-result v4

    #@65
    .line 256
    invoke-direct {v2, v3, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@68
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6a
    .line 258
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6c
    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@6e
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@70
    .line 259
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@72
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    #@74
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@76
    .line 260
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@78
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    #@7d
    move-result v3

    #@7e
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@80
    .line 261
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@82
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@84
    .line 262
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@86
    const/16 v3, 0x7e0

    #@88
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@8a
    .line 263
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@8c
    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@8e
    .line 265
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@90
    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@92
    .line 266
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@94
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@96
    .line 267
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@98
    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@9a
    .line 268
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@9c
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@9e
    .line 269
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a0
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@a2
    .line 270
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a4
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@a7
    move-result v3

    #@a8
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@aa
    .line 271
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@ac
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@af
    move-result v3

    #@b0
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@b2
    .line 272
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@b4
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@b6
    .line 273
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@b8
    const/high16 v3, 0x3f800000    # 1.0f

    #@ba
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@bc
    .line 276
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@be
    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@c0
    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    #@c3
    .line 279
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@c5
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@c7
    .line 280
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@c9
    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@cb
    .line 281
    new-instance v1, Landroid/graphics/Point;

    #@cd
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@d0
    .line 282
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    #@d2
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@d5
    .line 283
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@d7
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@d9
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@db
    .line 284
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@dd
    iget v3, v1, Landroid/graphics/Point;->y:I

    #@df
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@e1
    .line 290
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    #@e6
    .line 292
    new-instance v2, Lcom/android/server/wm/DimLayer;

    #@e8
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@ea
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    #@ec
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    #@ef
    move-result v4

    #@f0
    const-string/jumbo v5, "TaskPositioner"

    #@f3
    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    #@f6
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@f8
    .line 293
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@fa
    const/16 v3, 0x64

    #@fc
    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@ff
    move-result v2

    #@100
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    #@102
    .line 294
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@104
    const/16 v3, 0x30

    #@106
    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@109
    move-result v2

    #@10a
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    #@10c
    .line 295
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    #@10e
    const/16 v3, 0x20

    #@110
    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    #@113
    move-result v2

    #@114
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    #@116
    .line 297
    iput-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    #@118
    .line 231
    return-void
.end method

.method startDragLocked(Lcom/android/server/wm/WindowState;ZFF)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    #@0
    .prologue
    .line 342
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@3
    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@9
    .line 344
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    #@b
    .line 345
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    #@d
    .line 347
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@f
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_5

    #@15
    .line 352
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@17
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    #@1c
    .line 362
    :goto_0
    if-eqz p2, :cond_4

    #@1e
    .line 363
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@20
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@22
    int-to-float v0, v0

    #@23
    cmpg-float v0, p3, v0

    #@25
    if-gez v0, :cond_0

    #@27
    .line 364
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@29
    or-int/lit8 v0, v0, 0x1

    #@2b
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@2d
    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@2f
    iget v0, v0, Landroid/graphics/Rect;->right:I

    #@31
    int-to-float v0, v0

    #@32
    cmpl-float v0, p3, v0

    #@34
    if-lez v0, :cond_1

    #@36
    .line 367
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@38
    or-int/lit8 v0, v0, 0x2

    #@3a
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@3c
    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@3e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@40
    int-to-float v0, v0

    #@41
    cmpg-float v0, p4, v0

    #@43
    if-gez v0, :cond_2

    #@45
    .line 370
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@47
    or-int/lit8 v0, v0, 0x4

    #@49
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@4b
    .line 372
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@4d
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@4f
    int-to-float v0, v0

    #@50
    cmpl-float v0, p4, v0

    #@52
    if-lez v0, :cond_3

    #@54
    .line 373
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@56
    or-int/lit8 v0, v0, 0x8

    #@58
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    #@5a
    .line 375
    :cond_3
    const/4 v0, 0x1

    #@5b
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    #@5d
    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    #@5f
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@61
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@64
    .line 337
    return-void

    #@65
    .line 359
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    #@67
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    #@69
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    #@6c
    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 538
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method unregister()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 305
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 306
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    #@7
    const-string/jumbo v1, "Task positioner not registered"

    #@a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 307
    return-void

    #@e
    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@12
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@17
    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    #@19
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    #@1c
    .line 313
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    #@1e
    .line 314
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    #@20
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@23
    .line 315
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    #@25
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@28
    .line 316
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    #@2a
    .line 317
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    #@2c
    .line 319
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@2e
    .line 320
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@30
    .line 321
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    #@32
    .line 323
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@34
    if-eqz v0, :cond_1

    #@36
    .line 324
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@38
    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    #@3b
    .line 325
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    #@3d
    .line 327
    :cond_1
    const/4 v0, 0x0

    #@3e
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    #@40
    .line 328
    const/4 v0, 0x1

    #@41
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    #@43
    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    #@45
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    #@48
    .line 300
    return-void
.end method
