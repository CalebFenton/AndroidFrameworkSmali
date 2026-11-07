.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private greylist-max-o mLastTime:J

.field private final greylist-max-o mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final greylist-max-o mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8508
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8509
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 8510
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .registers 3

    .line 8616
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8621
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_17

    .line 8622
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 8624
    :cond_17
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .registers 34
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8515
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 8516
    .local v2, "curTime":J
    iget-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gez v1, :cond_1c

    .line 8519
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8520
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8521
    iput-wide v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 8524
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    .line 8525
    .local v14, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 8526
    .local v9, "metaState":I
    const/4 v15, 0x2

    packed-switch v14, :pswitch_data_150

    goto :goto_6f

    .line 8536
    :pswitch_29
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8537
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8538
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object v4, v1

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v16, v4

    move-wide v4, v2

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_6f

    .line 8528
    :pswitch_4e
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8529
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v4}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 8530
    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8534
    nop

    .line 8551
    :goto_6f
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "X"

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v28

    .line 8552
    .local v28, "xOff":F
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const-string v7, "Y"

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 8560
    .local v29, "yOff":F
    const/4 v1, 0x0

    .line 8561
    .local v1, "keycode":I
    const/4 v4, 0x0

    .line 8562
    .local v4, "movement":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 8563
    .local v5, "accel":F
    cmpl-float v6, v28, v29

    if-lez v6, :cond_bb

    .line 8564
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v4

    .line 8565
    if-eqz v4, :cond_b6

    .line 8566
    if-lez v4, :cond_a4

    const/16 v6, 0x16

    goto :goto_a6

    .line 8567
    :cond_a4
    const/16 v6, 0x15

    :goto_a6
    move v1, v6

    .line 8568
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8569
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_e8

    .line 8565
    :cond_b6
    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_e8

    .line 8571
    :cond_bb
    const/4 v6, 0x0

    cmpl-float v6, v29, v6

    if-lez v6, :cond_e4

    .line 8572
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v4

    .line 8573
    if-eqz v4, :cond_df

    .line 8574
    if-lez v4, :cond_cd

    const/16 v6, 0x14

    goto :goto_cf

    .line 8575
    :cond_cd
    const/16 v6, 0x13

    :goto_cf
    move v1, v6

    .line 8576
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 8577
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_e8

    .line 8573
    :cond_df
    move/from16 v21, v1

    move/from16 v30, v5

    goto :goto_e8

    .line 8571
    :cond_e4
    move/from16 v21, v1

    move/from16 v30, v5

    .line 8581
    .end local v1    # "keycode":I
    .end local v5    # "accel":F
    .local v21, "keycode":I
    .local v30, "accel":F
    :goto_e8
    if-eqz v21, :cond_14d

    .line 8582
    if-gez v4, :cond_ed

    neg-int v4, v4

    .line 8583
    :cond_ed
    int-to-float v1, v4

    mul-float v1, v1, v30

    float-to-int v15, v1

    .line 8587
    .local v15, "accelMovement":I
    if-le v15, v4, :cond_113

    .line 8590
    add-int/lit8 v16, v4, -0x1

    .line 8591
    .end local v4    # "movement":I
    .local v16, "movement":I
    sub-int v8, v15, v16

    .line 8592
    .local v8, "repeatCount":I
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object v4, v1

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x400

    const/16 v13, 0x101

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v7, v4

    move-wide v4, v2

    move/from16 v31, v14

    move-object v14, v7

    move/from16 v7, v21

    .end local v14    # "action":I
    .end local v21    # "keycode":I
    .local v7, "keycode":I
    .local v31, "action":I
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .end local v7    # "keycode":I
    .restart local v21    # "keycode":I
    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v4, v16

    goto :goto_115

    .line 8587
    .end local v8    # "repeatCount":I
    .end local v16    # "movement":I
    .end local v31    # "action":I
    .restart local v4    # "movement":I
    .restart local v14    # "action":I
    :cond_113
    move/from16 v31, v14

    .line 8597
    .end local v14    # "action":I
    .restart local v31    # "action":I
    :goto_115
    if-lez v4, :cond_149

    .line 8600
    add-int/lit8 v4, v4, -0x1

    .line 8601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 8602
    .end local v2    # "curTime":J
    .local v16, "curTime":J
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move v2, v15

    .end local v15    # "accelMovement":I
    .local v2, "accelMovement":I
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v26, 0x400

    const/16 v27, 0x101

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-wide/from16 v18, v16

    move v5, v2

    move/from16 v23, v9

    .end local v2    # "accelMovement":I
    .end local v9    # "metaState":I
    .local v5, "accelMovement":I
    .local v23, "metaState":I
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .end local v23    # "metaState":I
    .restart local v9    # "metaState":I
    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8606
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    .end local v9    # "metaState":I
    .restart local v23    # "metaState":I
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .end local v23    # "metaState":I
    .restart local v9    # "metaState":I
    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move v15, v5

    move-wide/from16 v2, v16

    goto :goto_115

    .line 8611
    .end local v5    # "accelMovement":I
    .end local v16    # "curTime":J
    .local v2, "curTime":J
    .restart local v15    # "accelMovement":I
    :cond_149
    move v5, v15

    .end local v15    # "accelMovement":I
    .restart local v5    # "accelMovement":I
    iput-wide v2, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    goto :goto_14f

    .line 8581
    .end local v5    # "accelMovement":I
    .end local v31    # "action":I
    .restart local v14    # "action":I
    :cond_14d
    move/from16 v31, v14

    .line 8613
    .end local v14    # "action":I
    .restart local v31    # "action":I
    :goto_14f
    return-void

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method
