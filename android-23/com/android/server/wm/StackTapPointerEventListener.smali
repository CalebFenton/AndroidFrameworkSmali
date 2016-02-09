.class public Lcom/android/server/wm/StackTapPointerEventListener;
.super Ljava/lang/Object;
.source "StackTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final TAP_MOTION_SLOP_INCHES:F = 0.125f

.field private static final TAP_TIMEOUT_MSEC:I = 0x12c


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDownX:F

.field private mDownY:F

.field private final mMotionSlop:I

.field private mPointerId:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v1, Landroid/graphics/Region;

    #@5
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@a
    .line 40
    iput-object p1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@c
    .line 41
    iput-object p2, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@e
    .line 42
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    #@11
    move-result-object v0

    #@12
    .line 43
    .local v0, "info":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    #@14
    int-to-float v1, v1

    #@15
    const/high16 v2, 0x3e000000    # 0.125f

    #@17
    mul-float/2addr v1, v2

    #@18
    float-to-int v1, v1

    #@19
    iput v1, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    #@1b
    .line 39
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const-wide/16 v10, 0x12c

    #@2
    const/4 v8, -0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@7
    move-result v0

    #@8
    .line 49
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    #@a
    packed-switch v4, :pswitch_data_0

    #@d
    .line 47
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@e
    .line 51
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@11
    move-result v4

    #@12
    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    #@14
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@17
    move-result v4

    #@18
    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    #@1a
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1d
    move-result v4

    #@1e
    iput v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    #@20
    goto :goto_0

    #@21
    .line 56
    :pswitch_2
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    #@23
    if-ltz v4, :cond_0

    #@25
    .line 57
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    #@27
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@2a
    move-result v1

    #@2b
    .line 58
    .local v1, "index":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@2e
    move-result-wide v4

    #@2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@32
    move-result-wide v6

    #@33
    sub-long/2addr v4, v6

    #@34
    cmp-long v4, v4, v10

    #@36
    if-gtz v4, :cond_1

    #@38
    .line 59
    if-gez v1, :cond_2

    #@3a
    .line 62
    :cond_1
    :goto_1
    iput v8, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    #@3c
    goto :goto_0

    #@3d
    .line 60
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@40
    move-result v4

    #@41
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    #@43
    sub-float/2addr v4, v5

    #@44
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@47
    move-result v4

    #@48
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    #@4a
    int-to-float v5, v5

    #@4b
    cmpl-float v4, v4, v5

    #@4d
    if-gtz v4, :cond_1

    #@4f
    .line 61
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@52
    move-result v4

    #@53
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    #@55
    sub-float/2addr v4, v5

    #@56
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@59
    move-result v4

    #@5a
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    #@5c
    int-to-float v5, v5

    #@5d
    cmpl-float v4, v4, v5

    #@5f
    if-lez v4, :cond_0

    #@61
    goto :goto_1

    #@62
    .line 68
    .end local v1    # "index":I
    :pswitch_3
    const v4, 0xff00

    #@65
    and-int/2addr v4, v0

    #@66
    shr-int/lit8 v1, v4, 0x8

    #@68
    .line 71
    .restart local v1    # "index":I
    iget v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    #@6a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@6d
    move-result v5

    #@6e
    if-ne v4, v5, :cond_0

    #@70
    .line 72
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@73
    move-result v4

    #@74
    float-to-int v2, v4

    #@75
    .line 73
    .local v2, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@78
    move-result v4

    #@79
    float-to-int v3, v4

    #@7a
    .line 74
    .local v3, "y":I
    monitor-enter p0

    #@7b
    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@7e
    move-result-wide v4

    #@7f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@82
    move-result-wide v6

    #@83
    sub-long/2addr v4, v6

    #@84
    cmp-long v4, v4, v10

    #@86
    if-gez v4, :cond_3

    #@88
    .line 77
    int-to-float v4, v2

    #@89
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownX:F

    #@8b
    sub-float/2addr v4, v5

    #@8c
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@8f
    move-result v4

    #@90
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    #@92
    int-to-float v5, v5

    #@93
    cmpg-float v4, v4, v5

    #@95
    if-gez v4, :cond_3

    #@97
    .line 78
    int-to-float v4, v3

    #@98
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDownY:F

    #@9a
    sub-float/2addr v4, v5

    #@9b
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@9e
    move-result v4

    #@9f
    iget v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mMotionSlop:I

    #@a1
    int-to-float v5, v5

    #@a2
    cmpg-float v4, v4, v5

    #@a4
    if-gez v4, :cond_3

    #@a6
    .line 79
    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@a8
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Region;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_4

    #@ae
    :cond_3
    :goto_2
    monitor-exit p0

    #@af
    .line 84
    iput v8, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mPointerId:I

    #@b1
    goto/16 :goto_0

    #@b3
    .line 80
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    #@b5
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    #@b7
    .line 81
    iget-object v5, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    #@b9
    .line 80
    const/16 v6, 0x1f

    #@bb
    invoke-virtual {v4, v6, v2, v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@be
    move-result-object v4

    #@bf
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c2
    goto :goto_2

    #@c3
    .line 74
    :catchall_0
    move-exception v4

    #@c4
    monitor-exit p0

    #@c5
    throw v4

    #@c6
    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "newRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 92
    monitor-enter p0

    #@1
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/StackTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    #@3
    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 91
    return-void

    #@8
    .line 92
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
