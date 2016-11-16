.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticJoystickHandler"
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SyntheticJoystickHandler"


# instance fields
.field private mLastXDirection:I

.field private mLastXKeyCode:I

.field private mLastYDirection:I

.field private mLastYKeyCode:I

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -wrap0(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 4890
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4891
    const/4 v0, 0x1

    #@3
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    #@6
    .line 4890
    return-void
.end method

.method private cancel(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4927
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    #@4
    .line 4928
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    #@8
    .line 4929
    const/4 v0, 0x0

    #@9
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    #@c
    .line 4926
    return-void
.end method

.method private joystickAxisValueToDirection(F)I
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 5000
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 5001
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 5002
    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    #@a
    cmpg-float v0, p1, v0

    #@c
    if-gtz v0, :cond_1

    #@e
    .line 5003
    const/4 v0, -0x1

    #@f
    return v0

    #@10
    .line 5005
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0
.end method

.method private update(Landroid/view/MotionEvent;Z)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "synthesizeNewKeys"    # Z

    #@0
    .prologue
    .line 4933
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    #@3
    move-result-wide v4

    #@4
    .line 4934
    .local v4, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    #@7
    move-result v11

    #@8
    .line 4935
    .local v11, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    #@b
    move-result v12

    #@c
    .line 4936
    .local v12, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    #@f
    move-result v15

    #@10
    .line 4939
    .local v15, "source":I
    const/16 v6, 0xf

    #@12
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@17
    move-result v6

    #@18
    .line 4938
    move-object/from16 v0, p0

    #@1a
    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    #@1d
    move-result v16

    #@1e
    .line 4940
    .local v16, "xDirection":I
    if-nez v16, :cond_0

    #@20
    .line 4941
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@23
    move-result v6

    #@24
    move-object/from16 v0, p0

    #@26
    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    #@29
    move-result v16

    #@2a
    .line 4945
    :cond_0
    const/16 v6, 0x10

    #@2c
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@31
    move-result v6

    #@32
    .line 4944
    move-object/from16 v0, p0

    #@34
    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    #@37
    move-result v30

    #@38
    .line 4946
    .local v30, "yDirection":I
    if-nez v30, :cond_1

    #@3a
    .line 4947
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@3d
    move-result v6

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    #@43
    move-result v30

    #@44
    .line 4950
    :cond_1
    move-object/from16 v0, p0

    #@46
    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    #@48
    move/from16 v0, v16

    #@4a
    if-eq v0, v6, :cond_3

    #@4c
    .line 4951
    move-object/from16 v0, p0

    #@4e
    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    #@50
    if-eqz v6, :cond_2

    #@52
    .line 4952
    const/4 v6, 0x1

    #@53
    move-object/from16 v0, p0

    #@55
    invoke-virtual {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    #@58
    .line 4953
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@5c
    move-object/from16 v17, v0

    #@5e
    new-instance v3, Landroid/view/KeyEvent;

    #@60
    .line 4954
    move-object/from16 v0, p0

    #@62
    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    #@64
    const/4 v8, 0x1

    #@65
    const/4 v10, 0x0

    #@66
    .line 4955
    const/4 v13, 0x0

    #@67
    const/16 v14, 0x400

    #@69
    move-wide v6, v4

    #@6a
    .line 4953
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@6d
    move-object/from16 v0, v17

    #@6f
    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@72
    .line 4956
    const/4 v6, 0x0

    #@73
    move-object/from16 v0, p0

    #@75
    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    #@77
    .line 4959
    :cond_2
    move/from16 v0, v16

    #@79
    move-object/from16 v1, p0

    #@7b
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    #@7d
    .line 4961
    if-eqz v16, :cond_3

    #@7f
    if-eqz p2, :cond_3

    #@81
    .line 4962
    if-lez v16, :cond_6

    #@83
    .line 4963
    const/16 v6, 0x16

    #@85
    .line 4962
    :goto_0
    move-object/from16 v0, p0

    #@87
    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    #@89
    .line 4964
    new-instance v3, Landroid/view/KeyEvent;

    #@8b
    .line 4965
    move-object/from16 v0, p0

    #@8d
    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    #@8f
    const/4 v8, 0x0

    #@90
    const/4 v10, 0x0

    #@91
    .line 4966
    const/4 v13, 0x0

    #@92
    const/16 v14, 0x400

    #@94
    move-wide v6, v4

    #@95
    .line 4964
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@98
    .line 4967
    .local v3, "e":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@9a
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@9c
    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@9f
    .line 4968
    const/4 v6, 0x1

    #@a0
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a5
    move-result-object v2

    #@a6
    .line 4969
    .local v2, "m":Landroid/os/Message;
    const/4 v6, 0x1

    #@a7
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@aa
    .line 4970
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    #@ad
    move-result v6

    #@ae
    int-to-long v6, v6

    #@af
    move-object/from16 v0, p0

    #@b1
    invoke-virtual {v0, v2, v6, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@b4
    .line 4974
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/view/KeyEvent;
    :cond_3
    move-object/from16 v0, p0

    #@b6
    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    #@b8
    move/from16 v0, v30

    #@ba
    if-eq v0, v6, :cond_5

    #@bc
    .line 4975
    move-object/from16 v0, p0

    #@be
    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    #@c0
    if-eqz v6, :cond_4

    #@c2
    .line 4976
    const/4 v6, 0x2

    #@c3
    move-object/from16 v0, p0

    #@c5
    invoke-virtual {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    #@c8
    .line 4977
    move-object/from16 v0, p0

    #@ca
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@cc
    new-instance v17, Landroid/view/KeyEvent;

    #@ce
    .line 4978
    move-object/from16 v0, p0

    #@d0
    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    #@d2
    move/from16 v23, v0

    #@d4
    const/16 v22, 0x1

    #@d6
    const/16 v24, 0x0

    #@d8
    .line 4979
    const/16 v27, 0x0

    #@da
    const/16 v28, 0x400

    #@dc
    move-wide/from16 v18, v4

    #@de
    move-wide/from16 v20, v4

    #@e0
    move/from16 v25, v11

    #@e2
    move/from16 v26, v12

    #@e4
    move/from16 v29, v15

    #@e6
    .line 4977
    invoke-direct/range {v17 .. v29}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@e9
    move-object/from16 v0, v17

    #@eb
    invoke-virtual {v6, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@ee
    .line 4980
    const/4 v6, 0x0

    #@ef
    move-object/from16 v0, p0

    #@f1
    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    #@f3
    .line 4983
    :cond_4
    move/from16 v0, v30

    #@f5
    move-object/from16 v1, p0

    #@f7
    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    #@f9
    .line 4985
    if-eqz v30, :cond_5

    #@fb
    if-eqz p2, :cond_5

    #@fd
    .line 4986
    if-lez v30, :cond_7

    #@ff
    .line 4987
    const/16 v6, 0x14

    #@101
    .line 4986
    :goto_1
    move-object/from16 v0, p0

    #@103
    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    #@105
    .line 4988
    new-instance v3, Landroid/view/KeyEvent;

    #@107
    .line 4989
    move-object/from16 v0, p0

    #@109
    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    #@10b
    const/4 v8, 0x0

    #@10c
    const/4 v10, 0x0

    #@10d
    .line 4990
    const/4 v13, 0x0

    #@10e
    const/16 v14, 0x400

    #@110
    move-wide v6, v4

    #@111
    .line 4988
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@114
    .line 4991
    .restart local v3    # "e":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@116
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@118
    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@11b
    .line 4992
    const/4 v6, 0x2

    #@11c
    move-object/from16 v0, p0

    #@11e
    invoke-virtual {v0, v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@121
    move-result-object v2

    #@122
    .line 4993
    .restart local v2    # "m":Landroid/os/Message;
    const/4 v6, 0x1

    #@123
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    #@126
    .line 4994
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    #@129
    move-result v6

    #@12a
    int-to-long v6, v6

    #@12b
    move-object/from16 v0, p0

    #@12d
    invoke-virtual {v0, v2, v6, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@130
    .line 4932
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/view/KeyEvent;
    :cond_5
    return-void

    #@131
    .line 4963
    :cond_6
    const/16 v6, 0x15

    #@133
    goto/16 :goto_0

    #@135
    .line 4987
    :cond_7
    const/16 v6, 0x13

    #@137
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4896
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v3, :pswitch_data_0

    #@5
    .line 4895
    :cond_0
    :goto_0
    return-void

    #@6
    .line 4899
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v2, Landroid/view/KeyEvent;

    #@a
    .line 4901
    .local v2, "oldEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@d
    move-result-wide v4

    #@e
    .line 4902
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@11
    move-result v3

    #@12
    add-int/lit8 v3, v3, 0x1

    #@14
    .line 4900
    invoke-static {v2, v4, v5, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    #@17
    move-result-object v0

    #@18
    .line 4903
    .local v0, "e":Landroid/view/KeyEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@1a
    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@1c
    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 4904
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@22
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    #@25
    .line 4905
    iget v3, p1, Landroid/os/Message;->what:I

    #@27
    invoke-virtual {p0, v3, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a
    move-result-object v1

    #@2b
    .line 4906
    .local v1, "m":Landroid/os/Message;
    const/4 v3, 0x1

    #@2c
    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    #@2f
    .line 4907
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    #@32
    move-result v3

    #@33
    int-to-long v4, v3

    #@34
    invoke-virtual {p0, v1, v4, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@37
    goto :goto_0

    #@38
    .line 4896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 4914
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 4922
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    #@9
    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Unexpected action: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 4913
    :goto_0
    return-void

    #@29
    .line 4916
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    #@2c
    goto :goto_0

    #@2d
    .line 4919
    :pswitch_1
    const/4 v0, 0x1

    #@2e
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    #@31
    goto :goto_0

    #@32
    .line 4914
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
