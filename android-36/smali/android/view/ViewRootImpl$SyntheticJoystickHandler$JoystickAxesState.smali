.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JoystickAxesState"
.end annotation


# static fields
.field private static final greylist-max-o STATE_DOWN_OR_RIGHT:I = 0x1

.field private static final greylist-max-o STATE_NEUTRAL:I = 0x0

.field private static final greylist-max-o STATE_UP_OR_LEFT:I = -0x1


# instance fields
.field final greylist-max-o mAxisStatesHat:[I

.field final greylist-max-o mAxisStatesStick:[I

.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V
    .registers 4
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8878
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8887
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    .line 8888
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    return-void
.end method

.method private greylist-max-o isXAxis(I)Z
    .registers 3
    .param p1, "axis"    # I

    .line 8968
    if-eqz p1, :cond_9

    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private greylist-max-o isYAxis(I)Z
    .registers 4
    .param p1, "axis"    # I

    .line 8971
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/16 v1, 0x10

    if-ne p1, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0
.end method

.method private greylist-max-o joystickAxisAndStateToKeycode(II)I
    .registers 6
    .param p1, "axis"    # I
    .param p2, "state"    # I

    .line 8975
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    if-ne p2, v1, :cond_c

    .line 8976
    const/16 v0, 0x15

    return v0

    .line 8978
    :cond_c
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    if-ne p2, v2, :cond_18

    .line 8979
    const/16 v0, 0x16

    return v0

    .line 8981
    :cond_18
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_23

    if-ne p2, v1, :cond_23

    .line 8982
    const/16 v0, 0x13

    return v0

    .line 8984
    :cond_23
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-ne p2, v2, :cond_2e

    .line 8985
    const/16 v0, 0x14

    return v0

    .line 8987
    :cond_2e
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown axis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8988
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o joystickAxisValueToState(F)I
    .registers 3
    .param p1, "value"    # F

    .line 8992
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 8993
    const/4 v0, 0x1

    return v0

    .line 8994
    :cond_8
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 8995
    const/4 v0, -0x1

    return v0

    .line 8997
    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method greylist-max-o resetState()V
    .registers 4

    .line 8891
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 8892
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 8893
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v1

    .line 8894
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v1, v0, v2

    .line 8895
    return-void
.end method

.method greylist-max-o updateStateForAxis(Landroid/view/MotionEvent;JIF)V
    .registers 29
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "time"    # J
    .param p4, "axis"    # I
    .param p5, "value"    # F

    .line 8902
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isXAxis(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8903
    const/4 v2, 0x0

    .line 8904
    .local v2, "axisStateIndex":I
    const/4 v3, 0x1

    .local v3, "repeatMessage":I
    goto :goto_15

    .line 8905
    .end local v2    # "axisStateIndex":I
    .end local v3    # "repeatMessage":I
    :cond_d
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->isYAxis(I)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 8906
    const/4 v2, 0x1

    .line 8907
    .restart local v2    # "axisStateIndex":I
    const/4 v3, 0x2

    .line 8912
    .restart local v3    # "repeatMessage":I
    :goto_15
    move/from16 v4, p5

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisValueToState(F)I

    move-result v5

    .line 8915
    .local v5, "newState":I
    const/4 v6, 0x1

    if-eqz v1, :cond_26

    if-ne v1, v6, :cond_21

    goto :goto_26

    .line 8918
    :cond_21
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aget v7, v7, v2

    .local v7, "currentState":I
    goto :goto_2a

    .line 8916
    .end local v7    # "currentState":I
    :cond_26
    :goto_26
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aget v7, v7, v2

    .line 8921
    .restart local v7    # "currentState":I
    :goto_2a
    if-ne v7, v5, :cond_2d

    .line 8922
    return-void

    .line 8925
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 8926
    .local v16, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    .line 8927
    .local v17, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 8929
    .local v20, "source":I
    const/4 v8, -0x1

    if-eq v7, v6, :cond_45

    if-ne v7, v8, :cond_3f

    goto :goto_45

    :cond_3f
    move/from16 v21, v2

    move v2, v8

    move/from16 v8, v17

    goto :goto_7e

    .line 8931
    :cond_45
    :goto_45
    invoke-direct {v0, v1, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v14

    .line 8932
    .local v14, "keyCode":I
    if-eqz v14, :cond_74

    .line 8933
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v9, v9, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    move v10, v8

    new-instance v8, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x400

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-wide/from16 v11, p2

    move/from16 v21, v2

    move-object v6, v9

    move v2, v10

    move-wide/from16 v9, p2

    .end local v2    # "axisStateIndex":I
    .local v21, "axisStateIndex":I
    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v9, v8

    move/from16 v8, v17

    .end local v17    # "deviceId":I
    .local v8, "deviceId":I
    invoke-virtual {v6, v9}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8936
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_79

    .line 8932
    .end local v8    # "deviceId":I
    .end local v21    # "axisStateIndex":I
    .restart local v2    # "axisStateIndex":I
    .restart local v17    # "deviceId":I
    :cond_74
    move/from16 v21, v2

    move v2, v8

    move/from16 v8, v17

    .line 8938
    .end local v2    # "axisStateIndex":I
    .end local v17    # "deviceId":I
    .restart local v8    # "deviceId":I
    .restart local v21    # "axisStateIndex":I
    :goto_79
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 8941
    .end local v14    # "keyCode":I
    :goto_7e
    const/4 v6, 0x1

    if-eq v5, v6, :cond_83

    if-ne v5, v2, :cond_d0

    .line 8943
    :cond_83
    invoke-direct {v0, v1, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->joystickAxisAndStateToKeycode(II)I

    move-result v14

    .line 8944
    .restart local v14    # "keyCode":I
    if-eqz v14, :cond_d0

    .line 8945
    move/from16 v17, v8

    .end local v8    # "deviceId":I
    .restart local v17    # "deviceId":I
    new-instance v8, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x400

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-wide/from16 v11, p2

    move-wide/from16 v9, p2

    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v2, v8

    .line 8947
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v6, v6, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8948
    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-virtual {v6, v3, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 8949
    .local v6, "m":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8950
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8953
    iget-object v8, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    invoke-static {v8}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->-$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;

    move-result-object v8

    move-object v9, v8

    new-instance v8, Landroid/view/KeyEvent;

    const/16 v19, 0x420

    const/4 v13, 0x1

    move-object/from16 v22, v2

    move-object v2, v9

    move-wide/from16 v9, p2

    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    .local v22, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct/range {v8 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v9, v8

    move/from16 v8, v17

    .end local v17    # "deviceId":I
    .restart local v8    # "deviceId":I
    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8960
    .end local v6    # "m":Landroid/os/Message;
    .end local v14    # "keyCode":I
    .end local v22    # "keyEvent":Landroid/view/KeyEvent;
    :cond_d0
    if-eqz v1, :cond_db

    const/4 v6, 0x1

    if-ne v1, v6, :cond_d6

    goto :goto_db

    .line 8963
    :cond_d6
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesHat:[I

    aput v5, v2, v21

    goto :goto_df

    .line 8961
    :cond_db
    :goto_db
    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->mAxisStatesStick:[I

    aput v5, v2, v21

    .line 8965
    :goto_df
    return-void

    .line 8909
    .end local v3    # "repeatMessage":I
    .end local v5    # "newState":I
    .end local v7    # "currentState":I
    .end local v8    # "deviceId":I
    .end local v16    # "metaState":I
    .end local v20    # "source":I
    .end local v21    # "axisStateIndex":I
    :cond_e0
    move/from16 v4, p5

    iget-object v2, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->this$1:Landroid/view/ViewRootImpl$SyntheticJoystickHandler;

    iget-object v2, v2, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected axis "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in updateStateForAxis!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8910
    return-void
.end method
