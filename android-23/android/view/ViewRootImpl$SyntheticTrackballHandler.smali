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
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 4323
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 4324
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    #@7
    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    #@a
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@c
    .line 4325
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    #@e
    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    #@11
    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@13
    .line 4323
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4431
    const-wide/32 v0, -0x80000000

    #@3
    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    #@5
    .line 4436
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@7
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@d
    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 4437
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    #@17
    .line 4430
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 4331
    .local v4, "curTime":J
    move-object/from16 v0, p0

    #@6
    iget-wide v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    #@8
    const-wide/16 v12, 0xfa

    #@a
    add-long/2addr v6, v12

    #@b
    cmp-long v3, v6, v4

    #@d
    if-gez v3, :cond_0

    #@f
    .line 4334
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@13
    const/4 v6, 0x0

    #@14
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@17
    .line 4335
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@1f
    .line 4336
    move-object/from16 v0, p0

    #@21
    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    #@23
    .line 4339
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@26
    move-result v27

    #@27
    .line 4340
    .local v27, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@2a
    move-result v11

    #@2b
    .line 4341
    .local v11, "metaState":I
    packed-switch v27, :pswitch_data_0

    #@2e
    .line 4366
    :goto_0
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@32
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@35
    move-result v6

    #@36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@39
    move-result-wide v12

    #@3a
    const-string/jumbo v7, "X"

    #@3d
    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    #@40
    move-result v29

    #@41
    .line 4367
    .local v29, "xOff":F
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@45
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@48
    move-result v6

    #@49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@4c
    move-result-wide v12

    #@4d
    const-string/jumbo v7, "Y"

    #@50
    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    #@53
    move-result v30

    #@54
    .line 4375
    .local v30, "yOff":F
    const/4 v9, 0x0

    #@55
    .line 4376
    .local v9, "keycode":I
    const/16 v28, 0x0

    #@57
    .line 4377
    .local v28, "movement":I
    const/high16 v2, 0x3f800000    # 1.0f

    #@59
    .line 4378
    .local v2, "accel":F
    cmpl-float v3, v29, v30

    #@5b
    if-lez v3, :cond_5

    #@5d
    .line 4379
    move-object/from16 v0, p0

    #@5f
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@61
    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    #@64
    move-result v28

    #@65
    .line 4380
    if-eqz v28, :cond_1

    #@67
    .line 4381
    if-lez v28, :cond_4

    #@69
    const/16 v9, 0x16

    #@6b
    .line 4383
    :goto_1
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@6f
    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@71
    .line 4384
    move-object/from16 v0, p0

    #@73
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@75
    const/4 v6, 0x2

    #@76
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@79
    .line 4396
    :cond_1
    :goto_2
    if-eqz v9, :cond_8

    #@7b
    .line 4397
    if-gez v28, :cond_2

    #@7d
    move/from16 v0, v28

    #@7f
    neg-int v0, v0

    #@80
    move/from16 v28, v0

    #@82
    .line 4398
    :cond_2
    move/from16 v0, v28

    #@84
    int-to-float v3, v0

    #@85
    mul-float/2addr v3, v2

    #@86
    float-to-int v0, v3

    #@87
    move/from16 v26, v0

    #@89
    .line 4402
    .local v26, "accelMovement":I
    move/from16 v0, v26

    #@8b
    move/from16 v1, v28

    #@8d
    if-le v0, v1, :cond_3

    #@8f
    .line 4405
    add-int/lit8 v28, v28, -0x1

    #@91
    .line 4406
    sub-int v10, v26, v28

    #@93
    .line 4407
    .local v10, "repeatCount":I
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@97
    move-object/from16 v16, v0

    #@99
    new-instance v3, Landroid/view/KeyEvent;

    #@9b
    .line 4408
    const/4 v8, 0x2

    #@9c
    .line 4409
    const/4 v12, -0x1

    #@9d
    const/4 v13, 0x0

    #@9e
    const/16 v14, 0x400

    #@a0
    .line 4410
    const/16 v15, 0x101

    #@a2
    move-wide v6, v4

    #@a3
    .line 4407
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@a6
    move-object/from16 v0, v16

    #@a8
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@ab
    .line 4412
    .end local v10    # "repeatCount":I
    :cond_3
    :goto_3
    if-lez v28, :cond_7

    #@ad
    .line 4415
    add-int/lit8 v28, v28, -0x1

    #@af
    .line 4416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b2
    move-result-wide v4

    #@b3
    .line 4417
    move-object/from16 v0, p0

    #@b5
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@b7
    new-instance v13, Landroid/view/KeyEvent;

    #@b9
    .line 4418
    const/16 v18, 0x0

    #@bb
    const/16 v20, 0x0

    #@bd
    .line 4419
    const/16 v22, -0x1

    #@bf
    const/16 v23, 0x0

    #@c1
    const/16 v24, 0x400

    #@c3
    .line 4420
    const/16 v25, 0x101

    #@c5
    move-wide v14, v4

    #@c6
    move-wide/from16 v16, v4

    #@c8
    move/from16 v19, v9

    #@ca
    move/from16 v21, v11

    #@cc
    .line 4417
    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@cf
    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@d2
    .line 4421
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@d6
    new-instance v13, Landroid/view/KeyEvent;

    #@d8
    .line 4422
    const/16 v18, 0x1

    #@da
    const/16 v20, 0x0

    #@dc
    .line 4423
    const/16 v22, -0x1

    #@de
    const/16 v23, 0x0

    #@e0
    const/16 v24, 0x400

    #@e2
    .line 4424
    const/16 v25, 0x101

    #@e4
    move-wide v14, v4

    #@e5
    move-wide/from16 v16, v4

    #@e7
    move/from16 v19, v9

    #@e9
    move/from16 v21, v11

    #@eb
    .line 4421
    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@ee
    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@f1
    goto :goto_3

    #@f2
    .line 4343
    .end local v2    # "accel":F
    .end local v9    # "keycode":I
    .end local v26    # "accelMovement":I
    .end local v28    # "movement":I
    .end local v29    # "xOff":F
    .end local v30    # "yOff":F
    :pswitch_0
    move-object/from16 v0, p0

    #@f4
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@f6
    const/4 v6, 0x2

    #@f7
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@fa
    .line 4344
    move-object/from16 v0, p0

    #@fc
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@fe
    const/4 v6, 0x2

    #@ff
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@102
    .line 4345
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@106
    move-object/from16 v16, v0

    #@108
    new-instance v3, Landroid/view/KeyEvent;

    #@10a
    .line 4346
    const/4 v8, 0x0

    #@10b
    const/16 v9, 0x17

    #@10d
    const/4 v10, 0x0

    #@10e
    .line 4347
    const/4 v12, -0x1

    #@10f
    const/4 v13, 0x0

    #@110
    const/16 v14, 0x400

    #@112
    .line 4348
    const/16 v15, 0x101

    #@114
    move-wide v6, v4

    #@115
    .line 4345
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@118
    move-object/from16 v0, v16

    #@11a
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@11d
    goto/16 :goto_0

    #@11f
    .line 4351
    :pswitch_1
    move-object/from16 v0, p0

    #@121
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@123
    const/4 v6, 0x2

    #@124
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@127
    .line 4352
    move-object/from16 v0, p0

    #@129
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@12b
    const/4 v6, 0x2

    #@12c
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@12f
    .line 4353
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    #@133
    move-object/from16 v16, v0

    #@135
    new-instance v3, Landroid/view/KeyEvent;

    #@137
    .line 4354
    const/4 v8, 0x1

    #@138
    const/16 v9, 0x17

    #@13a
    const/4 v10, 0x0

    #@13b
    .line 4355
    const/4 v12, -0x1

    #@13c
    const/4 v13, 0x0

    #@13d
    const/16 v14, 0x400

    #@13f
    .line 4356
    const/16 v15, 0x101

    #@141
    move-wide v6, v4

    #@142
    .line 4353
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@145
    move-object/from16 v0, v16

    #@147
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@14a
    goto/16 :goto_0

    #@14c
    .line 4382
    .restart local v2    # "accel":F
    .restart local v9    # "keycode":I
    .restart local v28    # "movement":I
    .restart local v29    # "xOff":F
    .restart local v30    # "yOff":F
    :cond_4
    const/16 v9, 0x15

    #@14e
    goto/16 :goto_1

    #@150
    .line 4386
    :cond_5
    const/4 v3, 0x0

    #@151
    cmpl-float v3, v30, v3

    #@153
    if-lez v3, :cond_1

    #@155
    .line 4387
    move-object/from16 v0, p0

    #@157
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@159
    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    #@15c
    move-result v28

    #@15d
    .line 4388
    if-eqz v28, :cond_1

    #@15f
    .line 4389
    if-lez v28, :cond_6

    #@161
    const/16 v9, 0x14

    #@163
    .line 4391
    :goto_4
    move-object/from16 v0, p0

    #@165
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    #@167
    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    #@169
    .line 4392
    move-object/from16 v0, p0

    #@16b
    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    #@16d
    const/4 v6, 0x2

    #@16e
    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    #@171
    goto/16 :goto_2

    #@173
    .line 4390
    :cond_6
    const/16 v9, 0x13

    #@175
    goto :goto_4

    #@176
    .line 4426
    .restart local v26    # "accelMovement":I
    :cond_7
    move-object/from16 v0, p0

    #@178
    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    #@17a
    .line 4328
    .end local v26    # "accelMovement":I
    :cond_8
    return-void

    #@17b
    .line 4341
    nop

    #@17c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
