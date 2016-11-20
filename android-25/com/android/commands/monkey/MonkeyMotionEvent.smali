.class public abstract Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mFlags:I

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:I

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method protected constructor <init>(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "source"    # I
    .param p3, "action"    # I

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    .line 47
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@7
    .line 48
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    #@9
    .line 49
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    #@b
    .line 50
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    #@d
    .line 51
    iput p3, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    #@f
    .line 52
    new-instance v0, Landroid/util/SparseArray;

    #@11
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    #@16
    .line 53
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    #@18
    .line 54
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    #@1a
    .line 46
    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .locals 19

    #@0
    .prologue
    .line 129
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v7

    #@8
    .line 130
    .local v7, "pointerCount":I
    new-array v8, v7, [I

    #@a
    .line 131
    .local v8, "pointerIds":[I
    new-array v9, v7, [Landroid/view/MotionEvent$PointerCoords;

    #@c
    .line 132
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v18, 0x0

    #@e
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@10
    if-ge v0, v7, :cond_0

    #@12
    .line 133
    move-object/from16 v0, p0

    #@14
    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    #@16
    move/from16 v0, v18

    #@18
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1b
    move-result v2

    #@1c
    aput v2, v8, v18

    #@1e
    .line 134
    move-object/from16 v0, p0

    #@20
    iget-object v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    #@22
    move/from16 v0, v18

    #@24
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/view/MotionEvent$PointerCoords;

    #@2a
    aput-object v2, v9, v18

    #@2c
    .line 132
    add-int/lit8 v18, v18, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 137
    :cond_0
    move-object/from16 v0, p0

    #@31
    iget-wide v2, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    #@33
    .line 138
    move-object/from16 v0, p0

    #@35
    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    #@37
    const-wide/16 v10, 0x0

    #@39
    cmp-long v4, v4, v10

    #@3b
    if-gez v4, :cond_1

    #@3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@40
    move-result-wide v4

    #@41
    .line 139
    :goto_1
    move-object/from16 v0, p0

    #@43
    iget v6, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    #@45
    .line 140
    move-object/from16 v0, p0

    #@47
    iget v10, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    #@49
    move-object/from16 v0, p0

    #@4b
    iget v11, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget v12, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    #@51
    move-object/from16 v0, p0

    #@53
    iget v13, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    #@55
    move-object/from16 v0, p0

    #@57
    iget v14, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v15, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget v0, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mFlags:I

    #@61
    move/from16 v16, v0

    #@63
    .line 137
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    #@66
    move-result-object v17

    #@67
    .line 141
    .local v17, "ev":Landroid/view/MotionEvent;
    return-object v17

    #@68
    .line 138
    .end local v17    # "ev":Landroid/view/MotionEvent;
    :cond_1
    move-object/from16 v0, p0

    #@6a
    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    #@6c
    goto :goto_1
.end method


# virtual methods
.method public addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 6
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v5, v4

    #@6
    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 2
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "size"    # F

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    #@2
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    #@5
    .line 64
    .local v0, "c":Landroid/view/MotionEvent$PointerCoords;
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    #@7
    .line 65
    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    #@9
    .line 66
    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    #@b
    .line 67
    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    #@d
    .line 68
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@12
    .line 69
    return-object p0
.end method

.method public getAction()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    #@2
    return v0
.end method

.method public getDownTime()J
    .locals 2

    #@0
    .prologue
    .line 86
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    #@2
    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    #@2
    return-wide v0
.end method

.method public getIntermediateNote()Z
    .locals 1

    #@0
    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    #@2
    return v0
.end method

.method protected abstract getTypeLabel()Ljava/lang/String;
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 8
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 151
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    #@5
    move-result-object v1

    #@6
    .line 152
    .local v1, "me":Landroid/view/MotionEvent;
    if-lez p3, :cond_0

    #@8
    iget-boolean v4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    #@a
    if-eqz v4, :cond_1

    #@c
    :cond_0
    if-le p3, v6, :cond_3

    #@e
    .line 153
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    const-string/jumbo v4, ":Sending "

    #@13
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    .line 154
    .local v2, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getTypeLabel()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, " ("

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 155
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@27
    move-result v4

    #@28
    packed-switch v4, :pswitch_data_0

    #@2b
    .line 175
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    #@2e
    move-result v4

    #@2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    .line 178
    :goto_0
    const-string/jumbo v4, "):"

    #@35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 180
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@3b
    move-result v3

    #@3c
    .line 181
    .local v3, "pointerCount":I
    const/4 v0, 0x0

    #@3d
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    #@3f
    .line 182
    const-string/jumbo v4, " "

    #@42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@49
    move-result v5

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    .line 183
    const-string/jumbo v4, ":("

    #@50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, ","

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@66
    move-result v5

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    const-string/jumbo v5, ")"

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 181
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_1

    #@74
    .line 157
    .end local v0    # "i":I
    .end local v3    # "pointerCount":I
    :pswitch_1
    const-string/jumbo v4, "ACTION_DOWN"

    #@77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    goto :goto_0

    #@7b
    .line 160
    :pswitch_2
    const-string/jumbo v4, "ACTION_MOVE"

    #@7e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    goto :goto_0

    #@82
    .line 163
    :pswitch_3
    const-string/jumbo v4, "ACTION_UP"

    #@85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    goto :goto_0

    #@89
    .line 166
    :pswitch_4
    const-string/jumbo v4, "ACTION_CANCEL"

    #@8c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    goto :goto_0

    #@90
    .line 169
    :pswitch_5
    const-string/jumbo v4, "ACTION_POINTER_DOWN "

    #@93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@9a
    move-result v5

    #@9b
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@9e
    move-result v5

    #@9f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    goto :goto_0

    #@a3
    .line 172
    :pswitch_6
    const-string/jumbo v4, "ACTION_POINTER_UP "

    #@a6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@ad
    move-result v5

    #@ae
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@b1
    move-result v5

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    goto/16 :goto_0

    #@b7
    .line 185
    .restart local v0    # "i":I
    .restart local v3    # "pointerCount":I
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c0
    .line 188
    .end local v0    # "i":I
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v3    # "pointerCount":I
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@c3
    move-result-object v4

    #@c4
    .line 189
    const/4 v5, 0x1

    #@c5
    .line 188
    invoke-virtual {v4, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c8
    move-result v4

    #@c9
    if-nez v4, :cond_4

    #@cb
    .line 193
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@ce
    .line 190
    return v7

    #@cf
    .line 193
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@d2
    .line 195
    return v6

    #@d3
    .line 192
    :catchall_0
    move-exception v4

    #@d4
    .line 193
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@d7
    .line 192
    throw v4

    #@d8
    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isThrottlable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 146
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 115
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    #@2
    .line 116
    return-object p0
.end method

.method public setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 1
    .param p1, "downTime"    # J

    #@0
    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    #@2
    .line 95
    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "edgeFlags"    # I

    #@0
    .prologue
    .line 120
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    #@2
    .line 121
    return-object p0
.end method

.method public setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 1
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    #@2
    .line 100
    return-object p0
.end method

.method public setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    #@2
    .line 74
    return-object p0
.end method

.method public setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "metaState"    # I

    #@0
    .prologue
    .line 104
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    #@2
    .line 105
    return-object p0
.end method

.method public setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0
    .param p1, "xPrecision"    # F
    .param p2, "yPrecision"    # F

    #@0
    .prologue
    .line 109
    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    #@2
    .line 110
    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    #@4
    .line 111
    return-object p0
.end method
