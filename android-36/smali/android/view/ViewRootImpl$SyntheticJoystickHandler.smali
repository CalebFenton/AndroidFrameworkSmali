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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final greylist-max-o MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2


# instance fields
.field private final greylist-max-o mDeviceKeyEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceKeyEvents(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancel(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
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

    .line 8805
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 8806
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 8802
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;-><init>(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8803
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    .line 8807
    return-void
.end method

.method private greylist-max-o cancel()V
    .registers 7

    .line 8841
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 8842
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 8843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 8844
    iget-object v1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 8845
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v1, :cond_29

    .line 8846
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 8847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 8846
    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8843
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 8850
    .end local v0    # "i":I
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mDeviceKeyEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8851
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->resetState()V

    .line 8852
    return-void
.end method

.method private greylist-max-o update(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    .line 8856
    .local v6, "historySize":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "h":I
    :goto_6
    const/16 v8, 0x10

    const/16 v9, 0xf

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ge v7, v6, :cond_40

    .line 8857
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v2

    .line 8858
    .local v2, "time":J
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8859
    invoke-virtual {p1, v11, v11, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v5

    .line 8858
    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8860
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8861
    invoke-virtual {p1, v10, v11, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v5

    .line 8860
    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8862
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8863
    invoke-virtual {p1, v9, v11, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v5

    .line 8862
    const/16 v4, 0xf

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8864
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8865
    invoke-virtual {p1, v8, v11, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v5

    .line 8864
    const/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8856
    .end local v2    # "time":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 8867
    .end local v7    # "h":I
    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 8868
    .restart local v2    # "time":J
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8869
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 8868
    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8870
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8871
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 8870
    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8872
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8873
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 8872
    const/16 v4, 0xf

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8874
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mJoystickAxesState:Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;

    .line 8875
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 8874
    const/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler$JoystickAxesState;->updateStateForAxis(Landroid/view/MotionEvent;JIF)V

    .line 8876
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 8811
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    .line 8814
    :pswitch_6
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_37

    .line 8815
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 8816
    .local v0, "oldEvent":Landroid/view/KeyEvent;
    nop

    .line 8817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 8816
    invoke-static {v0, v1, v2, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 8818
    .local v1, "e":Landroid/view/KeyEvent;
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 8819
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 8820
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 8821
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8825
    .end local v0    # "oldEvent":Landroid/view/KeyEvent;
    .end local v1    # "e":Landroid/view/KeyEvent;
    .end local v2    # "m":Landroid/os/Message;
    :cond_37
    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 8828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 8836
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 8830
    :pswitch_28
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel()V

    .line 8831
    goto :goto_30

    .line 8833
    :pswitch_2c
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;)V

    .line 8834
    nop

    .line 8838
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_28
    .end packed-switch
.end method
