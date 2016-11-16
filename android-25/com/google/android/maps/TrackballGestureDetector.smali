.class public Lcom/google/android/maps/TrackballGestureDetector;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mCurrentDownX:F

.field private mCurrentDownY:F

.field private mDownTime:J

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTap:Z

.field private mIsScroll:Z

.field private mIsTap:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOurLongPressRunnable:Ljava/lang/Runnable;

.field private mPreviousDownTime:J

.field private mScrollX:F

.field private mScrollY:F

.field private mUserLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/google/android/maps/TrackballGestureDetector;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/google/android/maps/TrackballGestureDetector;->dispatchLongPress()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    #@5
    .line 63
    new-instance v0, Lcom/google/android/maps/TrackballGestureDetector$1;

    #@7
    invoke-direct {v0, p0}, Lcom/google/android/maps/TrackballGestureDetector$1;-><init>(Lcom/google/android/maps/TrackballGestureDetector;)V

    #@a
    iput-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    #@c
    .line 61
    return-void
.end method

.method private dispatchLongPress()V
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    #@3
    .line 149
    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 150
    iget-object v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    #@9
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@c
    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public analyze(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v0

    #@6
    .line 77
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@9
    move-result v5

    #@a
    .line 78
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@d
    move-result v4

    #@e
    .line 80
    .local v4, "x":F
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    #@10
    .line 81
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    #@12
    .line 82
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    #@14
    .line 84
    packed-switch v0, :pswitch_data_0

    #@17
    .line 75
    :cond_0
    :goto_0
    return-void

    #@18
    .line 87
    :pswitch_0
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    #@1a
    .line 88
    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    #@1c
    .line 89
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    #@1e
    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownX:F

    #@20
    .line 90
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    #@22
    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownY:F

    #@24
    .line 91
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    #@26
    .line 92
    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    #@28
    .line 93
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    #@2a
    iput-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mPreviousDownTime:J

    #@2c
    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    #@2f
    move-result-wide v6

    #@30
    iput-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    #@32
    .line 95
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    #@34
    .line 96
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    #@36
    .line 97
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    #@38
    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    #@3a
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3d
    .line 98
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    #@3f
    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    #@41
    .line 99
    iget-wide v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    #@43
    const-wide/16 v10, 0x5dc

    #@45
    add-long/2addr v8, v10

    #@46
    .line 98
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    #@49
    goto :goto_0

    #@4a
    .line 103
    :pswitch_1
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    #@4c
    if-nez v6, :cond_0

    #@4e
    .line 106
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    #@50
    sub-float/2addr v6, v4

    #@51
    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollX:F

    #@53
    .line 107
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    #@55
    sub-float/2addr v6, v5

    #@56
    iput v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollY:F

    #@58
    .line 108
    iput v4, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionX:F

    #@5a
    .line 109
    iput v5, p0, Lcom/google/android/maps/TrackballGestureDetector;->mLastMotionY:F

    #@5c
    .line 110
    iget v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    #@5e
    sub-float v6, v4, v6

    #@60
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@63
    move-result v6

    #@64
    .line 111
    iget v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    #@66
    sub-float v7, v5, v7

    #@68
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    #@6b
    move-result v7

    #@6c
    .line 110
    add-float/2addr v6, v7

    #@6d
    float-to-int v1, v6

    #@6e
    .line 112
    .local v1, "manhattanTapDistance":I
    const/4 v6, 0x5

    #@6f
    if-le v1, v6, :cond_1

    #@71
    .line 113
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    #@73
    .line 114
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    #@75
    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    #@77
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7a
    .line 116
    :cond_1
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    #@7c
    goto :goto_0

    #@7d
    .line 120
    .end local v1    # "manhattanTapDistance":I
    :pswitch_2
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    #@7f
    if-eqz v6, :cond_2

    #@81
    .line 121
    iput-boolean v8, p0, Lcom/google/android/maps/TrackballGestureDetector;->mInLongPress:Z

    #@83
    goto :goto_0

    #@84
    .line 124
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mAlwaysInTapRegion:Z

    #@86
    if-eqz v6, :cond_3

    #@88
    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@8b
    move-result-wide v2

    #@8c
    .line 126
    .local v2, "eventTime":J
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mPreviousDownTime:J

    #@8e
    sub-long v6, v2, v6

    #@90
    const-wide/16 v8, 0x258

    #@92
    cmp-long v6, v6, v8

    #@94
    if-gez v6, :cond_4

    #@96
    .line 127
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    #@98
    .line 132
    .end local v2    # "eventTime":J
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mHandler:Landroid/os/Handler;

    #@9a
    iget-object v7, p0, Lcom/google/android/maps/TrackballGestureDetector;->mOurLongPressRunnable:Ljava/lang/Runnable;

    #@9c
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 128
    .restart local v2    # "eventTime":J
    :cond_4
    iget-wide v6, p0, Lcom/google/android/maps/TrackballGestureDetector;->mDownTime:J

    #@a3
    sub-long v6, v2, v6

    #@a5
    const-wide/16 v8, 0x12c

    #@a7
    cmp-long v6, v6, v8

    #@a9
    if-gez v6, :cond_3

    #@ab
    .line 129
    iput-boolean v10, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    #@ad
    goto :goto_1

    #@ae
    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDownX()F
    .locals 1

    #@0
    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownX:F

    #@2
    return v0
.end method

.method public getCurrentDownY()F
    .locals 1

    #@0
    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mCurrentDownY:F

    #@2
    return v0
.end method

.method public getFirstDownX()F
    .locals 1

    #@0
    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownX:F

    #@2
    return v0
.end method

.method public getFirstDownY()F
    .locals 1

    #@0
    .prologue
    .line 241
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mFirstDownY:F

    #@2
    return v0
.end method

.method public isDoubleTap()Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsDoubleTap:Z

    #@2
    return v0
.end method

.method public isScroll()Z
    .locals 1

    #@0
    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsScroll:Z

    #@2
    return v0
.end method

.method public isTap()Z
    .locals 1

    #@0
    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mIsTap:Z

    #@2
    return v0
.end method

.method public registerLongPressCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/maps/TrackballGestureDetector;->mUserLongPressRunnable:Ljava/lang/Runnable;

    #@2
    .line 143
    return-void
.end method

.method public scrollX()F
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollX:F

    #@2
    return v0
.end method

.method public scrollY()F
    .locals 1

    #@0
    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/maps/TrackballGestureDetector;->mScrollY:F

    #@2
    return v0
.end method
