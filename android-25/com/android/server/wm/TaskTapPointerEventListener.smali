.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
    }
.end annotation


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInGestureDetection:Z

.field private final mNonResizeableRegion:Landroid/graphics/Region;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTwoFingerScrolling:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onTwoFingerScroll(Landroid/view/MotionEvent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Landroid/graphics/Region;

    #@5
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@a
    .line 41
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@11
    .line 42
    new-instance v0, Landroid/graphics/Region;

    #@13
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    #@18
    .line 46
    const/4 v0, 0x1

    #@19
    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    #@1b
    .line 50
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1d
    .line 51
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@1f
    .line 49
    return-void
.end method

.method private doGestureDetection(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 139
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@4
    if-eqz v7, :cond_0

    #@6
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    #@8
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 140
    :cond_0
    return-void

    #@f
    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@12
    move-result v7

    #@13
    and-int/lit16 v0, v7, 0xff

    #@15
    .line 143
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@18
    move-result v7

    #@19
    float-to-int v3, v7

    #@1a
    .line 144
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1d
    move-result v7

    #@1e
    float-to-int v4, v7

    #@1f
    .line 145
    .local v4, "y":I
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    #@21
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    #@24
    move-result v2

    #@25
    .line 146
    .local v2, "isTouchInside":Z
    iget-boolean v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    #@27
    if-nez v7, :cond_2

    #@29
    if-nez v0, :cond_3

    #@2b
    if-eqz v2, :cond_3

    #@2d
    .line 149
    :cond_2
    if-eqz v2, :cond_5

    #@2f
    .line 150
    if-eq v0, v5, :cond_5

    #@31
    .line 151
    const/4 v7, 0x6

    #@32
    if-eq v0, v7, :cond_5

    #@34
    .line 152
    const/4 v7, 0x3

    #@35
    if-eq v0, v7, :cond_4

    #@37
    .line 149
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    #@39
    .line 153
    iget-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    #@3b
    if-eqz v5, :cond_6

    #@3d
    .line 154
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@3f
    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@42
    .line 138
    :cond_3
    :goto_1
    return-void

    #@43
    :cond_4
    move v5, v6

    #@44
    .line 152
    goto :goto_0

    #@45
    :cond_5
    move v5, v6

    #@46
    .line 149
    goto :goto_0

    #@47
    .line 156
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    #@4a
    move-result-object v1

    #@4b
    .line 157
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->cancel()V

    #@4e
    .line 158
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@50
    invoke-virtual {v5, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@53
    .line 159
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    #@56
    goto :goto_1
.end method

.method private onTwoFingerScroll(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 165
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    #@4
    move-result v2

    #@5
    float-to-int v0, v2

    #@6
    .line 166
    .local v0, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    #@9
    move-result v2

    #@a
    float-to-int v1, v2

    #@b
    .line 167
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    #@d
    if-nez v2, :cond_0

    #@f
    .line 168
    const/4 v2, 0x1

    #@10
    iput-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    #@12
    .line 169
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@16
    .line 170
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@18
    const/16 v4, 0x2c

    #@1a
    .line 169
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@21
    .line 164
    :cond_0
    return-void
.end method

.method private stopTwoFingerScroll()V
    .locals 2

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 176
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    #@7
    .line 177
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@b
    const/16 v1, 0x28

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    #@0
    .prologue
    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    #@2
    .line 59
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    #@6
    new-instance v2, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V

    #@c
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@e
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@10
    .line 58
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    #@13
    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    #@15
    .line 57
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->doGestureDetection(Landroid/view/MotionEvent;)V

    #@4
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v0

    #@8
    .line 67
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    #@a
    packed-switch v6, :pswitch_data_0

    #@d
    .line 63
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@e
    .line 69
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@11
    move-result v6

    #@12
    float-to-int v4, v6

    #@13
    .line 70
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@16
    move-result v6

    #@17
    float-to-int v5, v6

    #@18
    .line 72
    .local v5, "y":I
    monitor-enter p0

    #@19
    .line 73
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@1b
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_1

    #@21
    .line 74
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@23
    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@25
    .line 75
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@27
    .line 74
    const/16 v8, 0x1f

    #@29
    invoke-virtual {v6, v8, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    :cond_1
    monitor-exit p0

    #@31
    goto :goto_0

    #@32
    .line 72
    :catchall_0
    move-exception v6

    #@33
    monitor-exit p0

    #@34
    throw v6

    #@35
    .line 82
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@38
    move-result v6

    #@39
    const/4 v7, 0x2

    #@3a
    if-eq v6, v7, :cond_0

    #@3c
    .line 83
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    #@3f
    goto :goto_0

    #@40
    .line 89
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@43
    move-result v6

    #@44
    float-to-int v4, v6

    #@45
    .line 90
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@48
    move-result v6

    #@49
    float-to-int v5, v6

    #@4a
    .line 91
    .restart local v5    # "y":I
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@4c
    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;

    #@4f
    move-result-object v3

    #@50
    .line 92
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    #@53
    move-result-object v2

    #@54
    .line 93
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v3, :cond_2

    #@56
    if-nez v2, :cond_3

    #@58
    .line 94
    :cond_2
    iput v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    #@5a
    goto :goto_0

    #@5b
    .line 97
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@5d
    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    #@60
    .line 98
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@62
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    #@65
    move-result v6

    #@66
    if-nez v6, :cond_4

    #@68
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    #@6d
    move-result v6

    #@6e
    if-eqz v6, :cond_5

    #@70
    .line 118
    :cond_4
    iput v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    #@72
    goto :goto_0

    #@73
    .line 99
    :cond_5
    const/16 v1, 0x3e8

    #@75
    .line 100
    .local v1, "iconType":I
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@77
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@79
    if-ge v4, v6, :cond_9

    #@7b
    .line 102
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@7d
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@7f
    if-ge v5, v6, :cond_7

    #@81
    const/16 v1, 0x3f9

    #@83
    .line 113
    :cond_6
    :goto_1
    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    #@85
    if-eq v6, v1, :cond_0

    #@87
    .line 114
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    #@89
    .line 115
    invoke-virtual {v2, v1}, Landroid/view/InputDevice;->setPointerType(I)V

    #@8c
    goto :goto_0

    #@8d
    .line 103
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@8f
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@91
    if-le v5, v6, :cond_8

    #@93
    const/16 v1, 0x3f8

    #@95
    goto :goto_1

    #@96
    .line 104
    :cond_8
    const/16 v1, 0x3f6

    #@98
    goto :goto_1

    #@99
    .line 105
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@9b
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@9d
    if-le v4, v6, :cond_c

    #@9f
    .line 107
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@a1
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@a3
    if-ge v5, v6, :cond_a

    #@a5
    const/16 v1, 0x3f8

    #@a7
    goto :goto_1

    #@a8
    .line 108
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@aa
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@ac
    if-le v5, v6, :cond_b

    #@ae
    const/16 v1, 0x3f9

    #@b0
    goto :goto_1

    #@b1
    .line 109
    :cond_b
    const/16 v1, 0x3f6

    #@b3
    goto :goto_1

    #@b4
    .line 110
    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@b6
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@b8
    if-lt v5, v6, :cond_d

    #@ba
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    #@bc
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@be
    if-le v5, v6, :cond_6

    #@c0
    .line 111
    :cond_d
    const/16 v1, 0x3f7

    #@c2
    goto :goto_1

    #@c3
    .line 123
    .end local v1    # "iconType":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_4
    iput v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    #@c5
    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    #@c8
    move-result-object v2

    #@c9
    .line 125
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_0

    #@cb
    .line 126
    const/16 v6, 0x3e8

    #@cd
    invoke-virtual {v2, v6}, Landroid/view/InputDevice;->setPointerType(I)V

    #@d0
    goto/16 :goto_0

    #@d2
    .line 132
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 67
    nop

    #@d8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "newRegion"    # Landroid/graphics/Region;
    .param p2, "nonResizeableRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 195
    monitor-enter p0

    #@1
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@3
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@6
    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    #@8
    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 194
    return-void

    #@d
    .line 195
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method
