.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 12
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 42
    const/4 v10, -0x1

    #@4
    move-object v1, p0

    #@5
    move-wide v4, v2

    #@6
    move v6, p1

    #@7
    move v7, p2

    #@8
    move v9, v8

    #@9
    move v11, v8

    #@a
    invoke-direct/range {v1 .. v11}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    #@d
    .line 41
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 1
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "keyCode"    # I
    .param p7, "repeatCount"    # I
    .param p8, "metaState"    # I
    .param p9, "device"    # I
    .param p10, "scanCode"    # I

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 49
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    #@6
    .line 50
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    #@8
    .line 51
    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    #@a
    .line 52
    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    #@c
    .line 53
    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    #@e
    .line 54
    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    #@10
    .line 55
    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    #@12
    .line 56
    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    #@14
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 61
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@6
    .line 59
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    #@d
    goto :goto_0
.end method

.method public getDownTime()J
    .locals 2

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    #@9
    move-result-wide v0

    #@a
    :goto_0
    return-wide v0

    #@b
    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    #@d
    goto :goto_0
.end method

.method public getEventTime()J
    .locals 2

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    #@9
    move-result-wide v0

    #@a
    :goto_0
    return-wide v0

    #@b
    :cond_0
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    #@d
    goto :goto_0
.end method

.method public getKeyCode()I
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@6
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    #@d
    goto :goto_0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 17
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 101
    const/4 v8, 0x1

    #@1
    move/from16 v0, p3

    #@3
    if-le v0, v8, :cond_0

    #@5
    .line 103
    move-object/from16 v0, p0

    #@7
    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    #@9
    const/4 v9, 0x1

    #@a
    if-ne v8, v9, :cond_4

    #@c
    .line 104
    const-string/jumbo v16, "ACTION_UP"

    #@f
    .line 110
    .local v16, "note":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    new-instance v9, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v10, ":Sending Key ("

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    move-object/from16 v0, v16

    #@1f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v9

    #@23
    const-string/jumbo v10, "): "

    #@26
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v9

    #@2a
    .line 111
    move-object/from16 v0, p0

    #@2c
    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    #@2e
    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    .line 111
    const-string/jumbo v10, "    // "

    #@35
    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    .line 112
    move-object/from16 v0, p0

    #@3b
    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    #@3d
    invoke-static {v10}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    #@40
    move-result-object v10

    #@41
    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 119
    .end local v16    # "note":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@50
    .line 120
    .local v3, "keyEvent":Landroid/view/KeyEvent;
    if-nez v3, :cond_3

    #@52
    .line 121
    move-object/from16 v0, p0

    #@54
    iget-wide v6, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    #@56
    .line 122
    .local v6, "eventTime":J
    const-wide/16 v8, 0x0

    #@58
    cmp-long v8, v6, v8

    #@5a
    if-gtz v8, :cond_1

    #@5c
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5f
    move-result-wide v6

    #@60
    .line 125
    :cond_1
    move-object/from16 v0, p0

    #@62
    iget-wide v4, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    #@64
    .line 126
    .local v4, "downTime":J
    const-wide/16 v8, 0x0

    #@66
    cmp-long v8, v4, v8

    #@68
    if-gtz v8, :cond_2

    #@6a
    .line 127
    move-wide v4, v6

    #@6b
    .line 129
    :cond_2
    new-instance v3, Landroid/view/KeyEvent;

    #@6d
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    #@6f
    iget v8, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    #@71
    move-object/from16 v0, p0

    #@73
    iget v9, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    #@75
    .line 130
    move-object/from16 v0, p0

    #@77
    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    #@79
    move-object/from16 v0, p0

    #@7b
    iget v11, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    #@7d
    move-object/from16 v0, p0

    #@7f
    iget v12, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    #@81
    move-object/from16 v0, p0

    #@83
    iget v13, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScanCode:I

    #@85
    .line 131
    const/16 v14, 0x8

    #@87
    const/16 v15, 0x101

    #@89
    .line 129
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    #@8c
    .line 133
    .end local v4    # "downTime":J
    .end local v6    # "eventTime":J
    .restart local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_3
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    #@8f
    move-result-object v8

    #@90
    .line 134
    const/4 v9, 0x1

    #@91
    .line 133
    invoke-virtual {v8, v3, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    #@94
    move-result v8

    #@95
    if-nez v8, :cond_5

    #@97
    .line 135
    const/4 v8, 0x0

    #@98
    return v8

    #@99
    .line 106
    .end local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_4
    const-string/jumbo v16, "ACTION_DOWN"

    #@9c
    .restart local v16    # "note":Ljava/lang/String;
    goto/16 :goto_0

    #@9e
    .line 113
    :catch_0
    move-exception v2

    #@9f
    .line 114
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a1
    new-instance v9, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v10, ":Sending Key ("

    #@a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    move-object/from16 v0, v16

    #@af
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v9

    #@b3
    const-string/jumbo v10, "): "

    #@b6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    .line 115
    move-object/from16 v0, p0

    #@bc
    iget v10, v0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    #@be
    .line 114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v9

    #@c2
    .line 115
    const-string/jumbo v10, "    // Unknown key event"

    #@c5
    .line 114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v9

    #@c9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v9

    #@cd
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d0
    goto/16 :goto_1

    #@d2
    .line 137
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v16    # "note":Ljava/lang/String;
    .restart local v3    # "keyEvent":Landroid/view/KeyEvent;
    :cond_5
    const/4 v8, 0x1

    #@d3
    return v8
.end method

.method public isThrottlable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 96
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

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

.method public setDownTime(J)V
    .locals 3
    .param p1, "downTime"    # J

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot modify down time of this key event."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 84
    :cond_0
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    #@f
    .line 80
    return-void
.end method

.method public setEventTime(J)V
    .locals 3
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyEvent:Landroid/view/KeyEvent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Cannot modify event time of this key event."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 91
    :cond_0
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    #@f
    .line 87
    return-void
.end method
