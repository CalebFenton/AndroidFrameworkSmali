.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureAppFramerate"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_ROTATION:Ljava/lang/String; = "RotateScreen"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_APP_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureAppFramerate"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_LINE_BY_LINE:Ljava/lang/String; = "linebyline"

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mLastX:[F

.field private mLastY:[F

.field private mMonkeyStartTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mReadScriptLineByLine:Z

.field private mScriptFileName:Ljava/lang/String;

.field private mScriptStartTime:J

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 144
    const/16 v0, 0x7d0

    #@2
    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .locals 2
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "throttle"    # J
    .param p5, "randomizeThrottle"    # Z
    .param p6, "profileWaitTime"    # J
    .param p8, "deviceSleepTime"    # J

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    #@6
    .line 50
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    #@9
    .line 52
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@b
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    #@d
    .line 62
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    #@11
    .line 64
    const-wide/16 v0, 0x0

    #@13
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    #@15
    .line 66
    const-wide/16 v0, 0x0

    #@17
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    #@19
    .line 68
    const-wide/16 v0, 0x0

    #@1b
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    #@1d
    .line 70
    const-wide/16 v0, -0x1

    #@1f
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    #@21
    .line 72
    const-wide/16 v0, -0x1

    #@23
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    #@25
    .line 75
    const/4 v0, 0x0

    #@26
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    #@28
    .line 142
    const/4 v0, 0x0

    #@29
    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    #@2b
    .line 146
    const-wide/16 v0, 0x1388

    #@2d
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    #@2f
    .line 148
    const-wide/16 v0, 0x7530

    #@31
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    #@33
    .line 157
    const/4 v0, 0x2

    #@34
    new-array v0, v0, [F

    #@36
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    #@38
    .line 159
    const/4 v0, 0x2

    #@39
    new-array v0, v0, [F

    #@3b
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    #@3d
    .line 161
    const-wide/16 v0, -0x1

    #@3f
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    #@41
    .line 163
    const-wide/16 v0, -0x1

    #@43
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    #@45
    .line 173
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    #@47
    .line 174
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    #@49
    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    #@4c
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@4e
    .line 175
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    #@50
    .line 176
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    #@52
    .line 172
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .locals 10
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 892
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    #@5
    move-result-wide v6

    #@6
    cmp-long v6, v6, v8

    #@8
    if-gez v6, :cond_0

    #@a
    .line 893
    return-void

    #@b
    .line 895
    :cond_0
    const-wide/16 v2, 0x0

    #@d
    .line 896
    .local v2, "thisDownTime":J
    const-wide/16 v4, 0x0

    #@f
    .line 897
    .local v4, "thisEventTime":J
    const-wide/16 v0, 0x0

    #@11
    .line 899
    .local v0, "expectedDelay":J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    #@13
    cmp-long v6, v6, v8

    #@15
    if-gtz v6, :cond_1

    #@17
    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1a
    move-result-wide v2

    #@1b
    .line 902
    move-wide v4, v2

    #@1c
    .line 914
    :goto_0
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    #@1f
    move-result-wide v6

    #@20
    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    #@22
    .line 915
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    #@25
    move-result-wide v6

    #@26
    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    #@28
    .line 916
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    #@2b
    .line 917
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    #@2e
    .line 918
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    #@30
    .line 919
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    #@32
    .line 891
    return-void

    #@33
    .line 904
    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    #@36
    move-result-wide v6

    #@37
    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    #@39
    cmp-long v6, v6, v8

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 905
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    #@40
    move-result-wide v2

    #@41
    .line 909
    :goto_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    #@44
    move-result-wide v6

    #@45
    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    #@47
    sub-long/2addr v6, v8

    #@48
    long-to-double v6, v6

    #@49
    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    #@4b
    mul-double/2addr v6, v8

    #@4c
    double-to-long v0, v6

    #@4d
    .line 910
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    #@4f
    add-long v4, v6, v0

    #@51
    .line 912
    const-wide/16 v6, 0x10

    #@53
    sub-long v6, v0, v6

    #@55
    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    #@58
    goto :goto_0

    #@59
    .line 907
    :cond_2
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    #@5b
    goto :goto_1
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@0
    .prologue
    .line 928
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 929
    .local v2, "thisEventTime":J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    #@7
    move-result-wide v0

    #@8
    .line 931
    .local v0, "thisDownTime":J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    #@a
    cmp-long v4, v0, v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 933
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    #@10
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@13
    .line 942
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@16
    .line 927
    return-void

    #@17
    .line 936
    :cond_0
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    #@19
    .line 938
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@1c
    .line 939
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    #@1e
    goto :goto_0
.end method

.method private closeFile()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 802
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    #@3
    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    #@5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    #@8
    .line 806
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    #@a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 801
    :goto_0
    return-void

    #@e
    .line 807
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 104
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 281
    const-string/jumbo v16, "DispatchKey"

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, v16

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a
    move-result v16

    #@b
    if-ltz v16, :cond_0

    #@d
    move-object/from16 v0, p2

    #@f
    array-length v0, v0

    #@10
    move/from16 v16, v0

    #@12
    const/16 v17, 0x8

    #@14
    move/from16 v0, v16

    #@16
    move/from16 v1, v17

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 283
    :try_start_0
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v17, " old key\n"

    #@1f
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 284
    const/16 v16, 0x0

    #@24
    aget-object v16, p2, v16

    #@26
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@29
    move-result-wide v6

    #@2a
    .line 285
    .local v6, "downTime":J
    const/16 v16, 0x1

    #@2c
    aget-object v16, p2, v16

    #@2e
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31
    move-result-wide v8

    #@32
    .line 286
    .local v8, "eventTime":J
    const/16 v16, 0x2

    #@34
    aget-object v16, p2, v16

    #@36
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39
    move-result v10

    #@3a
    .line 287
    .local v10, "action":I
    const/16 v16, 0x3

    #@3c
    aget-object v16, p2, v16

    #@3e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@41
    move-result v11

    #@42
    .line 288
    .local v11, "code":I
    const/16 v16, 0x4

    #@44
    aget-object v16, p2, v16

    #@46
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@49
    move-result v12

    #@4a
    .line 289
    .local v12, "repeat":I
    const/16 v16, 0x5

    #@4c
    aget-object v16, p2, v16

    #@4e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@51
    move-result v13

    #@52
    .line 290
    .local v13, "metaState":I
    const/16 v16, 0x6

    #@54
    aget-object v16, p2, v16

    #@56
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@59
    move-result v14

    #@5a
    .line 291
    .local v14, "device":I
    const/16 v16, 0x7

    #@5c
    aget-object v16, p2, v16

    #@5e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@61
    move-result v15

    #@62
    .line 293
    .local v15, "scancode":I
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@64
    invoke-direct/range {v5 .. v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    #@67
    .line 295
    .local v5, "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@69
    new-instance v17, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v22, " Key code "

    #@71
    move-object/from16 v0, v17

    #@73
    move-object/from16 v1, v22

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v17

    #@79
    move-object/from16 v0, v17

    #@7b
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v17

    #@7f
    const-string/jumbo v22, "\n"

    #@82
    move-object/from16 v0, v17

    #@84
    move-object/from16 v1, v22

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v17

    #@8a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v17

    #@8e
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@91
    .line 297
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@95
    move-object/from16 v16, v0

    #@97
    move-object/from16 v0, v16

    #@99
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9c
    .line 298
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9e
    const-string/jumbo v17, "Added key up \n"

    #@a1
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    #@a4
    .line 301
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v11    # "code":I
    .end local v12    # "repeat":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v15    # "scancode":I
    :goto_0
    return-void

    #@a5
    .line 305
    :cond_0
    const-string/jumbo v16, "DispatchPointer"

    #@a8
    move-object/from16 v0, p1

    #@aa
    move-object/from16 v1, v16

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@af
    move-result v16

    #@b0
    if-gez v16, :cond_1

    #@b2
    const-string/jumbo v16, "DispatchTrackball"

    #@b5
    move-object/from16 v0, p1

    #@b7
    move-object/from16 v1, v16

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@bc
    move-result v16

    #@bd
    if-ltz v16, :cond_3

    #@bf
    .line 306
    :cond_1
    move-object/from16 v0, p2

    #@c1
    array-length v0, v0

    #@c2
    move/from16 v16, v0

    #@c4
    const/16 v17, 0xc

    #@c6
    move/from16 v0, v16

    #@c8
    move/from16 v1, v17

    #@ca
    if-ne v0, v1, :cond_3

    #@cc
    .line 308
    const/16 v16, 0x0

    #@ce
    :try_start_1
    aget-object v16, p2, v16

    #@d0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@d3
    move-result-wide v6

    #@d4
    .line 309
    .restart local v6    # "downTime":J
    const/16 v16, 0x1

    #@d6
    aget-object v16, p2, v16

    #@d8
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@db
    move-result-wide v8

    #@dc
    .line 310
    .restart local v8    # "eventTime":J
    const/16 v16, 0x2

    #@de
    aget-object v16, p2, v16

    #@e0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@e3
    move-result v10

    #@e4
    .line 311
    .restart local v10    # "action":I
    const/16 v16, 0x3

    #@e6
    aget-object v16, p2, v16

    #@e8
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@eb
    move-result v18

    #@ec
    .line 312
    .local v18, "x":F
    const/16 v16, 0x4

    #@ee
    aget-object v16, p2, v16

    #@f0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@f3
    move-result v19

    #@f4
    .line 313
    .local v19, "y":F
    const/16 v16, 0x5

    #@f6
    aget-object v16, p2, v16

    #@f8
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@fb
    move-result v20

    #@fc
    .line 314
    .local v20, "pressure":F
    const/16 v16, 0x6

    #@fe
    aget-object v16, p2, v16

    #@100
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@103
    move-result v21

    #@104
    .line 315
    .local v21, "size":F
    const/16 v16, 0x7

    #@106
    aget-object v16, p2, v16

    #@108
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@10b
    move-result v13

    #@10c
    .line 316
    .restart local v13    # "metaState":I
    const/16 v16, 0x8

    #@10e
    aget-object v16, p2, v16

    #@110
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@113
    move-result v97

    #@114
    .line 317
    .local v97, "xPrecision":F
    const/16 v16, 0x9

    #@116
    aget-object v16, p2, v16

    #@118
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@11b
    move-result v101

    #@11c
    .line 318
    .local v101, "yPrecision":F
    const/16 v16, 0xa

    #@11e
    aget-object v16, p2, v16

    #@120
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@123
    move-result v14

    #@124
    .line 319
    .restart local v14    # "device":I
    const/16 v16, 0xb

    #@126
    aget-object v16, p2, v16

    #@128
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12b
    move-result v54

    #@12c
    .line 322
    .local v54, "edgeFlags":I
    const-string/jumbo v16, "Pointer"

    #@12f
    move-object/from16 v0, p1

    #@131
    move-object/from16 v1, v16

    #@133
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@136
    move-result v16

    #@137
    if-lez v16, :cond_2

    #@139
    .line 323
    new-instance v46, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@13b
    move-object/from16 v0, v46

    #@13d
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@140
    .line 328
    .local v46, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1
    move-object/from16 v0, v46

    #@142
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@145
    move-result-object v16

    #@146
    move-object/from16 v0, v16

    #@148
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@14b
    move-result-object v16

    #@14c
    move-object/from16 v0, v16

    #@14e
    invoke-virtual {v0, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@151
    move-result-object v16

    #@152
    move-object/from16 v0, v16

    #@154
    move/from16 v1, v97

    #@156
    move/from16 v2, v101

    #@158
    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@15b
    move-result-object v16

    #@15c
    move-object/from16 v0, v16

    #@15e
    invoke-virtual {v0, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@161
    move-result-object v16

    #@162
    move-object/from16 v0, v16

    #@164
    move/from16 v1, v54

    #@166
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@169
    move-result-object v16

    #@16a
    .line 334
    const/16 v17, 0x0

    #@16c
    .line 328
    invoke-virtual/range {v16 .. v21}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@16f
    .line 335
    move-object/from16 v0, p0

    #@171
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@173
    move-object/from16 v16, v0

    #@175
    move-object/from16 v0, v16

    #@177
    move-object/from16 v1, v46

    #@179
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@17c
    .line 338
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v54    # "edgeFlags":I
    .end local v97    # "xPrecision":F
    .end local v101    # "yPrecision":F
    :goto_2
    return-void

    #@17d
    .line 325
    .restart local v6    # "downTime":J
    .restart local v8    # "eventTime":J
    .restart local v10    # "action":I
    .restart local v13    # "metaState":I
    .restart local v14    # "device":I
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    .restart local v20    # "pressure":F
    .restart local v21    # "size":F
    .restart local v54    # "edgeFlags":I
    .restart local v97    # "xPrecision":F
    .restart local v101    # "yPrecision":F
    :cond_2
    new-instance v46, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@17f
    move-object/from16 v0, v46

    #@181
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    #@184
    .restart local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_1

    #@185
    .line 342
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v54    # "edgeFlags":I
    .end local v97    # "xPrecision":F
    .end local v101    # "yPrecision":F
    :cond_3
    const-string/jumbo v16, "DispatchPointer"

    #@188
    move-object/from16 v0, p1

    #@18a
    move-object/from16 v1, v16

    #@18c
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18f
    move-result v16

    #@190
    if-gez v16, :cond_4

    #@192
    const-string/jumbo v16, "DispatchTrackball"

    #@195
    move-object/from16 v0, p1

    #@197
    move-object/from16 v1, v16

    #@199
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@19c
    move-result v16

    #@19d
    if-ltz v16, :cond_c

    #@19f
    .line 343
    :cond_4
    move-object/from16 v0, p2

    #@1a1
    array-length v0, v0

    #@1a2
    move/from16 v16, v0

    #@1a4
    const/16 v17, 0xd

    #@1a6
    move/from16 v0, v16

    #@1a8
    move/from16 v1, v17

    #@1aa
    if-ne v0, v1, :cond_c

    #@1ac
    .line 345
    const/16 v16, 0x0

    #@1ae
    :try_start_2
    aget-object v16, p2, v16

    #@1b0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1b3
    move-result-wide v6

    #@1b4
    .line 346
    .restart local v6    # "downTime":J
    const/16 v16, 0x1

    #@1b6
    aget-object v16, p2, v16

    #@1b8
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1bb
    move-result-wide v8

    #@1bc
    .line 347
    .restart local v8    # "eventTime":J
    const/16 v16, 0x2

    #@1be
    aget-object v16, p2, v16

    #@1c0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c3
    move-result v10

    #@1c4
    .line 348
    .restart local v10    # "action":I
    const/16 v16, 0x3

    #@1c6
    aget-object v16, p2, v16

    #@1c8
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1cb
    move-result v18

    #@1cc
    .line 349
    .restart local v18    # "x":F
    const/16 v16, 0x4

    #@1ce
    aget-object v16, p2, v16

    #@1d0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1d3
    move-result v19

    #@1d4
    .line 350
    .restart local v19    # "y":F
    const/16 v16, 0x5

    #@1d6
    aget-object v16, p2, v16

    #@1d8
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1db
    move-result v20

    #@1dc
    .line 351
    .restart local v20    # "pressure":F
    const/16 v16, 0x6

    #@1de
    aget-object v16, p2, v16

    #@1e0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1e3
    move-result v21

    #@1e4
    .line 352
    .restart local v21    # "size":F
    const/16 v16, 0x7

    #@1e6
    aget-object v16, p2, v16

    #@1e8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1eb
    move-result v13

    #@1ec
    .line 353
    .restart local v13    # "metaState":I
    const/16 v16, 0x8

    #@1ee
    aget-object v16, p2, v16

    #@1f0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1f3
    move-result v97

    #@1f4
    .line 354
    .restart local v97    # "xPrecision":F
    const/16 v16, 0x9

    #@1f6
    aget-object v16, p2, v16

    #@1f8
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1fb
    move-result v101

    #@1fc
    .line 355
    .restart local v101    # "yPrecision":F
    const/16 v16, 0xa

    #@1fe
    aget-object v16, p2, v16

    #@200
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@203
    move-result v14

    #@204
    .line 356
    .restart local v14    # "device":I
    const/16 v16, 0xb

    #@206
    aget-object v16, p2, v16

    #@208
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20b
    move-result v54

    #@20c
    .line 357
    .restart local v54    # "edgeFlags":I
    const/16 v16, 0xc

    #@20e
    aget-object v16, p2, v16

    #@210
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@213
    move-result v64

    #@214
    .line 360
    .local v64, "pointerId":I
    const-string/jumbo v16, "Pointer"

    #@217
    move-object/from16 v0, p1

    #@219
    move-object/from16 v1, v16

    #@21b
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@21e
    move-result v16

    #@21f
    if-lez v16, :cond_9

    #@221
    .line 361
    const/16 v16, 0x5

    #@223
    move/from16 v0, v16

    #@225
    if-ne v10, v0, :cond_8

    #@227
    .line 362
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@229
    .line 363
    shl-int/lit8 v17, v64, 0x8

    #@22b
    .line 362
    or-int/lit8 v17, v17, 0x5

    #@22d
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@230
    .line 364
    const/16 v17, 0x1

    #@232
    .line 362
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@235
    move-result-object v46

    #@236
    .line 368
    .restart local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_3
    move-object/from16 v0, p0

    #@238
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    #@23a
    move-wide/from16 v16, v0

    #@23c
    const-wide/16 v22, 0x0

    #@23e
    cmp-long v16, v16, v22

    #@240
    if-gez v16, :cond_5

    #@242
    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@245
    move-result-wide v16

    #@246
    move-wide/from16 v0, v16

    #@248
    move-object/from16 v2, p0

    #@24a
    iput-wide v0, v2, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    #@24c
    .line 370
    move-object/from16 v0, p0

    #@24e
    iput-wide v8, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    #@250
    .line 376
    :cond_5
    :goto_4
    const/16 v16, 0x1

    #@252
    move/from16 v0, v64

    #@254
    move/from16 v1, v16

    #@256
    if-ne v0, v1, :cond_a

    #@258
    .line 377
    move-object/from16 v0, v46

    #@25a
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@25d
    move-result-object v16

    #@25e
    move-object/from16 v0, v16

    #@260
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@263
    move-result-object v16

    #@264
    move-object/from16 v0, v16

    #@266
    invoke-virtual {v0, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@269
    move-result-object v16

    #@26a
    move-object/from16 v0, v16

    #@26c
    move/from16 v1, v97

    #@26e
    move/from16 v2, v101

    #@270
    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@273
    move-result-object v16

    #@274
    move-object/from16 v0, v16

    #@276
    invoke-virtual {v0, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@279
    move-result-object v16

    #@27a
    move-object/from16 v0, v16

    #@27c
    move/from16 v1, v54

    #@27e
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@281
    move-result-object v22

    #@282
    .line 383
    move-object/from16 v0, p0

    #@284
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    #@286
    move-object/from16 v16, v0

    #@288
    const/16 v17, 0x0

    #@28a
    aget v24, v16, v17

    #@28c
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    #@290
    move-object/from16 v16, v0

    #@292
    const/16 v17, 0x0

    #@294
    aget v25, v16, v17

    #@296
    const/16 v23, 0x0

    #@298
    move/from16 v26, v20

    #@29a
    move/from16 v27, v21

    #@29c
    .line 377
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@29f
    move-result-object v16

    #@2a0
    .line 384
    const/16 v17, 0x1

    #@2a2
    .line 377
    invoke-virtual/range {v16 .. v21}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@2a5
    .line 385
    move-object/from16 v0, p0

    #@2a7
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    #@2a9
    move-object/from16 v16, v0

    #@2ab
    const/16 v17, 0x1

    #@2ad
    aput v18, v16, v17

    #@2af
    .line 386
    move-object/from16 v0, p0

    #@2b1
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    #@2b3
    move-object/from16 v16, v0

    #@2b5
    const/16 v17, 0x1

    #@2b7
    aput v19, v16, v17

    #@2b9
    .line 404
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    #@2bb
    iget-boolean v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    #@2bd
    move/from16 v16, v0

    #@2bf
    if-eqz v16, :cond_7

    #@2c1
    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2c4
    move-result-wide v36

    #@2c5
    .line 406
    .local v36, "curUpTime":J
    move-object/from16 v0, p0

    #@2c7
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    #@2c9
    move-wide/from16 v16, v0

    #@2cb
    sub-long v80, v36, v16

    #@2cd
    .line 407
    .local v80, "realElapsedTime":J
    move-object/from16 v0, p0

    #@2cf
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    #@2d1
    move-wide/from16 v16, v0

    #@2d3
    sub-long v84, v8, v16

    #@2d5
    .line 408
    .local v84, "scriptElapsedTime":J
    cmp-long v16, v80, v84

    #@2d7
    if-gez v16, :cond_7

    #@2d9
    .line 409
    sub-long v94, v84, v80

    #@2db
    .line 410
    .local v94, "waitDuration":J
    move-object/from16 v0, p0

    #@2dd
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@2df
    move-object/from16 v16, v0

    #@2e1
    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@2e3
    move-object/from16 v0, v17

    #@2e5
    move-wide/from16 v1, v94

    #@2e7
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@2ea
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2ed
    .line 413
    .end local v36    # "curUpTime":J
    .end local v80    # "realElapsedTime":J
    .end local v84    # "scriptElapsedTime":J
    .end local v94    # "waitDuration":J
    :cond_7
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@2f1
    move-object/from16 v16, v0

    #@2f3
    move-object/from16 v0, v16

    #@2f5
    move-object/from16 v1, v46

    #@2f7
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2fa
    .line 416
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v54    # "edgeFlags":I
    .end local v64    # "pointerId":I
    .end local v97    # "xPrecision":F
    .end local v101    # "yPrecision":F
    :goto_6
    return-void

    #@2fb
    .line 366
    .restart local v6    # "downTime":J
    .restart local v8    # "eventTime":J
    .restart local v10    # "action":I
    .restart local v13    # "metaState":I
    .restart local v14    # "device":I
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    .restart local v20    # "pressure":F
    .restart local v21    # "size":F
    .restart local v54    # "edgeFlags":I
    .restart local v64    # "pointerId":I
    .restart local v97    # "xPrecision":F
    .restart local v101    # "yPrecision":F
    :cond_8
    new-instance v46, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@2fd
    move-object/from16 v0, v46

    #@2ff
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@302
    .restart local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto/16 :goto_3

    #@304
    .line 373
    .end local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_9
    new-instance v46, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@306
    move-object/from16 v0, v46

    #@308
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    #@30b
    .restart local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto/16 :goto_4

    #@30d
    .line 387
    :cond_a
    if-nez v64, :cond_6

    #@30f
    .line 388
    move-object/from16 v0, v46

    #@311
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@314
    move-result-object v16

    #@315
    move-object/from16 v0, v16

    #@317
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@31a
    move-result-object v16

    #@31b
    move-object/from16 v0, v16

    #@31d
    invoke-virtual {v0, v13}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@320
    move-result-object v16

    #@321
    move-object/from16 v0, v16

    #@323
    move/from16 v1, v97

    #@325
    move/from16 v2, v101

    #@327
    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@32a
    move-result-object v16

    #@32b
    move-object/from16 v0, v16

    #@32d
    invoke-virtual {v0, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@330
    move-result-object v16

    #@331
    move-object/from16 v0, v16

    #@333
    move/from16 v1, v54

    #@335
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@338
    move-result-object v16

    #@339
    .line 394
    const/16 v17, 0x0

    #@33b
    .line 388
    invoke-virtual/range {v16 .. v21}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@33e
    .line 395
    const/16 v16, 0x6

    #@340
    move/from16 v0, v16

    #@342
    if-ne v10, v0, :cond_b

    #@344
    .line 396
    move-object/from16 v0, p0

    #@346
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    #@348
    move-object/from16 v16, v0

    #@34a
    const/16 v17, 0x1

    #@34c
    aget v16, v16, v17

    #@34e
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    #@352
    move-object/from16 v17, v0

    #@354
    const/16 v22, 0x1

    #@356
    aget v17, v17, v22

    #@358
    const/16 v22, 0x1

    #@35a
    move-object/from16 v0, v46

    #@35c
    move/from16 v1, v22

    #@35e
    move/from16 v2, v16

    #@360
    move/from16 v3, v17

    #@362
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@365
    .line 398
    :cond_b
    move-object/from16 v0, p0

    #@367
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastX:[F

    #@369
    move-object/from16 v16, v0

    #@36b
    const/16 v17, 0x0

    #@36d
    aput v18, v16, v17

    #@36f
    .line 399
    move-object/from16 v0, p0

    #@371
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastY:[F

    #@373
    move-object/from16 v16, v0

    #@375
    const/16 v17, 0x0

    #@377
    aput v19, v16, v17
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@379
    goto/16 :goto_5

    #@37b
    .line 414
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v10    # "action":I
    .end local v13    # "metaState":I
    .end local v14    # "device":I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "pressure":F
    .end local v21    # "size":F
    .end local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v54    # "edgeFlags":I
    .end local v64    # "pointerId":I
    .end local v97    # "xPrecision":F
    .end local v101    # "yPrecision":F
    :catch_0
    move-exception v49

    #@37c
    .local v49, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    #@37e
    .line 420
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :cond_c
    const-string/jumbo v16, "RotateScreen"

    #@381
    move-object/from16 v0, p1

    #@383
    move-object/from16 v1, v16

    #@385
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@388
    move-result v16

    #@389
    if-ltz v16, :cond_11

    #@38b
    move-object/from16 v0, p2

    #@38d
    array-length v0, v0

    #@38e
    move/from16 v16, v0

    #@390
    const/16 v17, 0x2

    #@392
    move/from16 v0, v16

    #@394
    move/from16 v1, v17

    #@396
    if-ne v0, v1, :cond_11

    #@398
    .line 422
    const/16 v16, 0x0

    #@39a
    :try_start_3
    aget-object v16, p2, v16

    #@39c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39f
    move-result v82

    #@3a0
    .line 423
    .local v82, "rotationDegree":I
    const/16 v16, 0x1

    #@3a2
    aget-object v16, p2, v16

    #@3a4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a7
    move-result v62

    #@3a8
    .line 424
    .local v62, "persist":I
    if-eqz v82, :cond_d

    #@3aa
    .line 425
    const/16 v16, 0x1

    #@3ac
    move/from16 v0, v82

    #@3ae
    move/from16 v1, v16

    #@3b0
    if-ne v0, v1, :cond_f

    #@3b2
    .line 428
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    #@3b4
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@3b6
    move-object/from16 v17, v0

    #@3b8
    new-instance v22, Lcom/android/commands/monkey/MonkeyRotationEvent;

    #@3ba
    .line 429
    if-eqz v62, :cond_10

    #@3bc
    const/16 v16, 0x1

    #@3be
    .line 428
    :goto_8
    move-object/from16 v0, v22

    #@3c0
    move/from16 v1, v82

    #@3c2
    move/from16 v2, v16

    #@3c4
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyRotationEvent;-><init>(IZ)V

    #@3c7
    move-object/from16 v0, v17

    #@3c9
    move-object/from16 v1, v22

    #@3cb
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    #@3ce
    .line 433
    .end local v62    # "persist":I
    .end local v82    # "rotationDegree":I
    :cond_e
    :goto_9
    return-void

    #@3cf
    .line 426
    .restart local v62    # "persist":I
    .restart local v82    # "rotationDegree":I
    :cond_f
    const/16 v16, 0x2

    #@3d1
    move/from16 v0, v82

    #@3d3
    move/from16 v1, v16

    #@3d5
    if-eq v0, v1, :cond_d

    #@3d7
    .line 427
    const/16 v16, 0x3

    #@3d9
    move/from16 v0, v82

    #@3db
    move/from16 v1, v16

    #@3dd
    if-ne v0, v1, :cond_e

    #@3df
    goto :goto_7

    #@3e0
    .line 429
    :cond_10
    const/16 v16, 0x0

    #@3e2
    goto :goto_8

    #@3e3
    .line 437
    .end local v62    # "persist":I
    .end local v82    # "rotationDegree":I
    :cond_11
    const-string/jumbo v16, "Tap"

    #@3e6
    move-object/from16 v0, p1

    #@3e8
    move-object/from16 v1, v16

    #@3ea
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@3ed
    move-result v16

    #@3ee
    if-ltz v16, :cond_14

    #@3f0
    move-object/from16 v0, p2

    #@3f2
    array-length v0, v0

    #@3f3
    move/from16 v16, v0

    #@3f5
    const/16 v17, 0x2

    #@3f7
    move/from16 v0, v16

    #@3f9
    move/from16 v1, v17

    #@3fb
    if-lt v0, v1, :cond_14

    #@3fd
    .line 439
    const/16 v16, 0x0

    #@3ff
    :try_start_4
    aget-object v16, p2, v16

    #@401
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@404
    move-result v18

    #@405
    .line 440
    .restart local v18    # "x":F
    const/16 v16, 0x1

    #@407
    aget-object v16, p2, v16

    #@409
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@40c
    move-result v19

    #@40d
    .line 441
    .restart local v19    # "y":F
    const-wide/16 v90, 0x0

    #@40f
    .line 442
    .local v90, "tapDuration":J
    move-object/from16 v0, p2

    #@411
    array-length v0, v0

    #@412
    move/from16 v16, v0

    #@414
    const/16 v17, 0x3

    #@416
    move/from16 v0, v16

    #@418
    move/from16 v1, v17

    #@41a
    if-ne v0, v1, :cond_12

    #@41c
    .line 443
    const/16 v16, 0x2

    #@41e
    aget-object v16, p2, v16

    #@420
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@423
    move-result-wide v90

    #@424
    .line 447
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@427
    move-result-wide v6

    #@428
    .line 448
    .restart local v6    # "downTime":J
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@42a
    const/16 v17, 0x0

    #@42c
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@42f
    move-object/from16 v0, v16

    #@431
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@434
    move-result-object v16

    #@435
    move-object/from16 v0, v16

    #@437
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@43a
    move-result-object v22

    #@43b
    .line 451
    const/high16 v26, 0x3f800000    # 1.0f

    #@43d
    const/high16 v27, 0x40a00000    # 5.0f

    #@43f
    const/16 v23, 0x0

    #@441
    move/from16 v24, v18

    #@443
    move/from16 v25, v19

    #@445
    .line 448
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@448
    move-result-object v50

    #@449
    .line 452
    .local v50, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@44b
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@44d
    move-object/from16 v16, v0

    #@44f
    move-object/from16 v0, v16

    #@451
    move-object/from16 v1, v50

    #@453
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@456
    .line 453
    const-wide/16 v16, 0x0

    #@458
    cmp-long v16, v90, v16

    #@45a
    if-lez v16, :cond_13

    #@45c
    .line 454
    move-object/from16 v0, p0

    #@45e
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@460
    move-object/from16 v16, v0

    #@462
    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@464
    move-object/from16 v0, v17

    #@466
    move-wide/from16 v1, v90

    #@468
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@46b
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@46e
    .line 456
    :cond_13
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@470
    const/16 v17, 0x1

    #@472
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@475
    move-object/from16 v0, v16

    #@477
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@47a
    move-result-object v16

    #@47b
    move-object/from16 v0, v16

    #@47d
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@480
    move-result-object v22

    #@481
    .line 459
    const/high16 v26, 0x3f800000    # 1.0f

    #@483
    const/high16 v27, 0x40a00000    # 5.0f

    #@485
    const/16 v23, 0x0

    #@487
    move/from16 v24, v18

    #@489
    move/from16 v25, v19

    #@48b
    .line 456
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@48e
    move-result-object v51

    #@48f
    .line 460
    .local v51, "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@491
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@493
    move-object/from16 v16, v0

    #@495
    move-object/from16 v0, v16

    #@497
    move-object/from16 v1, v51

    #@499
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    #@49c
    .line 464
    .end local v6    # "downTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v50    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v51    # "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v90    # "tapDuration":J
    :goto_a
    return-void

    #@49d
    .line 461
    :catch_1
    move-exception v49

    #@49e
    .line 462
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a0
    new-instance v17, Ljava/lang/StringBuilder;

    #@4a2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@4a5
    const-string/jumbo v22, "// "

    #@4a8
    move-object/from16 v0, v17

    #@4aa
    move-object/from16 v1, v22

    #@4ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4af
    move-result-object v17

    #@4b0
    invoke-virtual/range {v49 .. v49}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    #@4b3
    move-result-object v22

    #@4b4
    move-object/from16 v0, v17

    #@4b6
    move-object/from16 v1, v22

    #@4b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bb
    move-result-object v17

    #@4bc
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4bf
    move-result-object v17

    #@4c0
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c3
    goto :goto_a

    #@4c4
    .line 468
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :cond_14
    const-string/jumbo v16, "PressAndHold"

    #@4c7
    move-object/from16 v0, p1

    #@4c9
    move-object/from16 v1, v16

    #@4cb
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4ce
    move-result v16

    #@4cf
    if-ltz v16, :cond_15

    #@4d1
    move-object/from16 v0, p2

    #@4d3
    array-length v0, v0

    #@4d4
    move/from16 v16, v0

    #@4d6
    const/16 v17, 0x3

    #@4d8
    move/from16 v0, v16

    #@4da
    move/from16 v1, v17

    #@4dc
    if-ne v0, v1, :cond_15

    #@4de
    .line 470
    const/16 v16, 0x0

    #@4e0
    :try_start_5
    aget-object v16, p2, v16

    #@4e2
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@4e5
    move-result v18

    #@4e6
    .line 471
    .restart local v18    # "x":F
    const/16 v16, 0x1

    #@4e8
    aget-object v16, p2, v16

    #@4ea
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@4ed
    move-result v19

    #@4ee
    .line 472
    .restart local v19    # "y":F
    const/16 v16, 0x2

    #@4f0
    aget-object v16, p2, v16

    #@4f2
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4f5
    move-result-wide v66

    #@4f6
    .line 475
    .local v66, "pressDuration":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4f9
    move-result-wide v6

    #@4fa
    .line 477
    .restart local v6    # "downTime":J
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@4fc
    const/16 v17, 0x0

    #@4fe
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@501
    move-object/from16 v0, v16

    #@503
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@506
    move-result-object v16

    #@507
    move-object/from16 v0, v16

    #@509
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@50c
    move-result-object v22

    #@50d
    .line 480
    const/high16 v26, 0x3f800000    # 1.0f

    #@50f
    const/high16 v27, 0x40a00000    # 5.0f

    #@511
    const/16 v23, 0x0

    #@513
    move/from16 v24, v18

    #@515
    move/from16 v25, v19

    #@517
    .line 477
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@51a
    move-result-object v50

    #@51b
    .line 481
    .restart local v50    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v52, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@51d
    move-object/from16 v0, v52

    #@51f
    move-wide/from16 v1, v66

    #@521
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@524
    .line 482
    .local v52, "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@526
    const/16 v17, 0x1

    #@528
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@52b
    .line 483
    add-long v22, v6, v66

    #@52d
    .line 482
    move-object/from16 v0, v16

    #@52f
    move-wide/from16 v1, v22

    #@531
    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@534
    move-result-object v16

    #@535
    .line 484
    add-long v22, v6, v66

    #@537
    .line 482
    move-object/from16 v0, v16

    #@539
    move-wide/from16 v1, v22

    #@53b
    invoke-virtual {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@53e
    move-result-object v22

    #@53f
    .line 485
    const/high16 v26, 0x3f800000    # 1.0f

    #@541
    const/high16 v27, 0x40a00000    # 5.0f

    #@543
    const/16 v23, 0x0

    #@545
    move/from16 v24, v18

    #@547
    move/from16 v25, v19

    #@549
    .line 482
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@54c
    move-result-object v53

    #@54d
    .line 486
    .local v53, "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@54f
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@551
    move-object/from16 v16, v0

    #@553
    move-object/from16 v0, v16

    #@555
    move-object/from16 v1, v50

    #@557
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@55a
    .line 487
    move-object/from16 v0, p0

    #@55c
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@55e
    move-object/from16 v16, v0

    #@560
    move-object/from16 v0, v16

    #@562
    move-object/from16 v1, v52

    #@564
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@567
    .line 488
    move-object/from16 v0, p0

    #@569
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@56b
    move-object/from16 v16, v0

    #@56d
    move-object/from16 v0, v16

    #@56f
    move-object/from16 v1, v52

    #@571
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    #@574
    .line 493
    .end local v6    # "downTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v50    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v52    # "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v53    # "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v66    # "pressDuration":J
    :goto_b
    return-void

    #@575
    .line 490
    :catch_2
    move-exception v49

    #@576
    .line 491
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@578
    new-instance v17, Ljava/lang/StringBuilder;

    #@57a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@57d
    const-string/jumbo v22, "// "

    #@580
    move-object/from16 v0, v17

    #@582
    move-object/from16 v1, v22

    #@584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@587
    move-result-object v17

    #@588
    invoke-virtual/range {v49 .. v49}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    #@58b
    move-result-object v22

    #@58c
    move-object/from16 v0, v17

    #@58e
    move-object/from16 v1, v22

    #@590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@593
    move-result-object v17

    #@594
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@597
    move-result-object v17

    #@598
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@59b
    goto :goto_b

    #@59c
    .line 497
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    const-string/jumbo v16, "Drag"

    #@59f
    move-object/from16 v0, p1

    #@5a1
    move-object/from16 v1, v16

    #@5a3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5a6
    move-result v16

    #@5a7
    if-ltz v16, :cond_17

    #@5a9
    move-object/from16 v0, p2

    #@5ab
    array-length v0, v0

    #@5ac
    move/from16 v16, v0

    #@5ae
    const/16 v17, 0x5

    #@5b0
    move/from16 v0, v16

    #@5b2
    move/from16 v1, v17

    #@5b4
    if-ne v0, v1, :cond_17

    #@5b6
    .line 498
    const/16 v16, 0x0

    #@5b8
    aget-object v16, p2, v16

    #@5ba
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5bd
    move-result v98

    #@5be
    .line 499
    .local v98, "xStart":F
    const/16 v16, 0x1

    #@5c0
    aget-object v16, p2, v16

    #@5c2
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5c5
    move-result v102

    #@5c6
    .line 500
    .local v102, "yStart":F
    const/16 v16, 0x2

    #@5c8
    aget-object v16, p2, v16

    #@5ca
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5cd
    move-result v96

    #@5ce
    .line 501
    .local v96, "xEnd":F
    const/16 v16, 0x3

    #@5d0
    aget-object v16, p2, v16

    #@5d2
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5d5
    move-result v100

    #@5d6
    .line 502
    .local v100, "yEnd":F
    const/16 v16, 0x4

    #@5d8
    aget-object v16, p2, v16

    #@5da
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5dd
    move-result v88

    #@5de
    .line 504
    .local v88, "stepCount":I
    move/from16 v18, v98

    #@5e0
    .line 505
    .restart local v18    # "x":F
    move/from16 v19, v102

    #@5e2
    .line 506
    .restart local v19    # "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5e5
    move-result-wide v6

    #@5e6
    .line 507
    .restart local v6    # "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5e9
    move-result-wide v8

    #@5ea
    .line 509
    .restart local v8    # "eventTime":J
    if-lez v88, :cond_17

    #@5ec
    .line 510
    sub-float v16, v96, v98

    #@5ee
    move/from16 v0, v88

    #@5f0
    int-to-float v0, v0

    #@5f1
    move/from16 v17, v0

    #@5f3
    div-float v99, v16, v17

    #@5f5
    .line 511
    .local v99, "xStep":F
    sub-float v16, v100, v102

    #@5f7
    move/from16 v0, v88

    #@5f9
    int-to-float v0, v0

    #@5fa
    move/from16 v17, v0

    #@5fc
    div-float v103, v16, v17

    #@5fe
    .line 514
    .local v103, "yStep":F
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@600
    const/16 v17, 0x0

    #@602
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@605
    move-object/from16 v0, v16

    #@607
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@60a
    move-result-object v16

    #@60b
    move-object/from16 v0, v16

    #@60d
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@610
    move-result-object v22

    #@611
    .line 515
    const/high16 v26, 0x3f800000    # 1.0f

    #@613
    const/high16 v27, 0x40a00000    # 5.0f

    #@615
    const/16 v23, 0x0

    #@617
    move/from16 v24, v18

    #@619
    move/from16 v25, v19

    #@61b
    .line 514
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@61e
    move-result-object v46

    #@61f
    .line 516
    .restart local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@621
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@623
    move-object/from16 v16, v0

    #@625
    move-object/from16 v0, v16

    #@627
    move-object/from16 v1, v46

    #@629
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@62c
    .line 518
    const/16 v55, 0x0

    #@62e
    .local v55, "i":I
    :goto_c
    move/from16 v0, v55

    #@630
    move/from16 v1, v88

    #@632
    if-ge v0, v1, :cond_16

    #@634
    .line 519
    add-float v18, v18, v99

    #@636
    .line 520
    add-float v19, v19, v103

    #@638
    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@63b
    move-result-wide v8

    #@63c
    .line 522
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@63e
    const/16 v17, 0x2

    #@640
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@643
    move-object/from16 v0, v16

    #@645
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@648
    move-result-object v16

    #@649
    move-object/from16 v0, v16

    #@64b
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@64e
    move-result-object v22

    #@64f
    .line 523
    const/high16 v26, 0x3f800000    # 1.0f

    #@651
    const/high16 v27, 0x40a00000    # 5.0f

    #@653
    const/16 v23, 0x0

    #@655
    move/from16 v24, v18

    #@657
    move/from16 v25, v19

    #@659
    .line 522
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@65c
    move-result-object v46

    #@65d
    .line 524
    move-object/from16 v0, p0

    #@65f
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@661
    move-object/from16 v16, v0

    #@663
    move-object/from16 v0, v16

    #@665
    move-object/from16 v1, v46

    #@667
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@66a
    .line 518
    add-int/lit8 v55, v55, 0x1

    #@66c
    goto :goto_c

    #@66d
    .line 527
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@670
    move-result-wide v8

    #@671
    .line 528
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@673
    const/16 v17, 0x1

    #@675
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@678
    move-object/from16 v0, v16

    #@67a
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@67d
    move-result-object v16

    #@67e
    move-object/from16 v0, v16

    #@680
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@683
    move-result-object v22

    #@684
    .line 529
    const/high16 v26, 0x3f800000    # 1.0f

    #@686
    const/high16 v27, 0x40a00000    # 5.0f

    #@688
    const/16 v23, 0x0

    #@68a
    move/from16 v24, v18

    #@68c
    move/from16 v25, v19

    #@68e
    .line 528
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@691
    move-result-object v46

    #@692
    .line 530
    move-object/from16 v0, p0

    #@694
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@696
    move-object/from16 v16, v0

    #@698
    move-object/from16 v0, v16

    #@69a
    move-object/from16 v1, v46

    #@69c
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@69f
    .line 535
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v46    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v55    # "i":I
    .end local v88    # "stepCount":I
    .end local v96    # "xEnd":F
    .end local v98    # "xStart":F
    .end local v99    # "xStep":F
    .end local v100    # "yEnd":F
    .end local v102    # "yStart":F
    .end local v103    # "yStep":F
    :cond_17
    const-string/jumbo v16, "PinchZoom"

    #@6a2
    move-object/from16 v0, p1

    #@6a4
    move-object/from16 v1, v16

    #@6a6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6a9
    move-result v16

    #@6aa
    if-ltz v16, :cond_19

    #@6ac
    move-object/from16 v0, p2

    #@6ae
    array-length v0, v0

    #@6af
    move/from16 v16, v0

    #@6b1
    const/16 v17, 0x9

    #@6b3
    move/from16 v0, v16

    #@6b5
    move/from16 v1, v17

    #@6b7
    if-ne v0, v1, :cond_19

    #@6b9
    .line 537
    const/16 v16, 0x0

    #@6bb
    aget-object v16, p2, v16

    #@6bd
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6c0
    move-result v69

    #@6c1
    .line 538
    .local v69, "pt1xStart":F
    const/16 v16, 0x1

    #@6c3
    aget-object v16, p2, v16

    #@6c5
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6c8
    move-result v72

    #@6c9
    .line 539
    .local v72, "pt1yStart":F
    const/16 v16, 0x2

    #@6cb
    aget-object v16, p2, v16

    #@6cd
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6d0
    move-result v68

    #@6d1
    .line 540
    .local v68, "pt1xEnd":F
    const/16 v16, 0x3

    #@6d3
    aget-object v16, p2, v16

    #@6d5
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6d8
    move-result v71

    #@6d9
    .line 542
    .local v71, "pt1yEnd":F
    const/16 v16, 0x4

    #@6db
    aget-object v16, p2, v16

    #@6dd
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6e0
    move-result v75

    #@6e1
    .line 543
    .local v75, "pt2xStart":F
    const/16 v16, 0x5

    #@6e3
    aget-object v16, p2, v16

    #@6e5
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6e8
    move-result v78

    #@6e9
    .line 544
    .local v78, "pt2yStart":F
    const/16 v16, 0x6

    #@6eb
    aget-object v16, p2, v16

    #@6ed
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6f0
    move-result v74

    #@6f1
    .line 545
    .local v74, "pt2xEnd":F
    const/16 v16, 0x7

    #@6f3
    aget-object v16, p2, v16

    #@6f5
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6f8
    move-result v77

    #@6f9
    .line 547
    .local v77, "pt2yEnd":F
    const/16 v16, 0x8

    #@6fb
    aget-object v16, p2, v16

    #@6fd
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@700
    move-result v88

    #@701
    .line 549
    .restart local v88    # "stepCount":I
    move/from16 v24, v69

    #@703
    .line 550
    .local v24, "x1":F
    move/from16 v25, v72

    #@705
    .line 551
    .local v25, "y1":F
    move/from16 v28, v75

    #@707
    .line 552
    .local v28, "x2":F
    move/from16 v29, v78

    #@709
    .line 554
    .local v29, "y2":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@70c
    move-result-wide v6

    #@70d
    .line 555
    .restart local v6    # "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@710
    move-result-wide v8

    #@711
    .line 557
    .restart local v8    # "eventTime":J
    if-lez v88, :cond_19

    #@713
    .line 558
    sub-float v16, v68, v69

    #@715
    move/from16 v0, v88

    #@717
    int-to-float v0, v0

    #@718
    move/from16 v17, v0

    #@71a
    div-float v70, v16, v17

    #@71c
    .line 559
    .local v70, "pt1xStep":F
    sub-float v16, v71, v72

    #@71e
    move/from16 v0, v88

    #@720
    int-to-float v0, v0

    #@721
    move/from16 v17, v0

    #@723
    div-float v73, v16, v17

    #@725
    .line 561
    .local v73, "pt1yStep":F
    sub-float v16, v74, v75

    #@727
    move/from16 v0, v88

    #@729
    int-to-float v0, v0

    #@72a
    move/from16 v17, v0

    #@72c
    div-float v76, v16, v17

    #@72e
    .line 562
    .local v76, "pt2xStep":F
    sub-float v16, v77, v78

    #@730
    move/from16 v0, v88

    #@732
    int-to-float v0, v0

    #@733
    move/from16 v17, v0

    #@735
    div-float v79, v16, v17

    #@737
    .line 564
    .local v79, "pt2yStep":F
    move-object/from16 v0, p0

    #@739
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@73b
    move-object/from16 v16, v0

    #@73d
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@73f
    const/16 v22, 0x0

    #@741
    move-object/from16 v0, v17

    #@743
    move/from16 v1, v22

    #@745
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@748
    move-object/from16 v0, v17

    #@74a
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@74d
    move-result-object v17

    #@74e
    move-object/from16 v0, v17

    #@750
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@753
    move-result-object v22

    #@754
    .line 565
    const/high16 v26, 0x3f800000    # 1.0f

    #@756
    const/high16 v27, 0x40a00000    # 5.0f

    #@758
    const/16 v23, 0x0

    #@75a
    .line 564
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@75d
    move-result-object v17

    #@75e
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@761
    .line 567
    move-object/from16 v0, p0

    #@763
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@765
    move-object/from16 v16, v0

    #@767
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@769
    const/16 v22, 0x105

    #@76b
    move-object/from16 v0, v17

    #@76d
    move/from16 v1, v22

    #@76f
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@772
    move-object/from16 v0, v17

    #@774
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@777
    move-result-object v17

    #@778
    .line 569
    const/16 v22, 0x0

    #@77a
    .line 567
    move-object/from16 v0, v17

    #@77c
    move/from16 v1, v22

    #@77e
    move/from16 v2, v24

    #@780
    move/from16 v3, v25

    #@782
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@785
    move-result-object v17

    #@786
    .line 569
    const/16 v22, 0x1

    #@788
    .line 567
    move-object/from16 v0, v17

    #@78a
    move/from16 v1, v22

    #@78c
    move/from16 v2, v28

    #@78e
    move/from16 v3, v29

    #@790
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@793
    move-result-object v17

    #@794
    .line 569
    const/16 v22, 0x1

    #@796
    .line 567
    move-object/from16 v0, v17

    #@798
    move/from16 v1, v22

    #@79a
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@79d
    move-result-object v17

    #@79e
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@7a1
    .line 571
    const/16 v55, 0x0

    #@7a3
    .restart local v55    # "i":I
    :goto_d
    move/from16 v0, v55

    #@7a5
    move/from16 v1, v88

    #@7a7
    if-ge v0, v1, :cond_18

    #@7a9
    .line 572
    add-float v24, v24, v70

    #@7ab
    .line 573
    add-float v25, v25, v73

    #@7ad
    .line 574
    add-float v28, v28, v76

    #@7af
    .line 575
    add-float v29, v29, v79

    #@7b1
    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7b4
    move-result-wide v8

    #@7b5
    .line 578
    move-object/from16 v0, p0

    #@7b7
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@7b9
    move-object/from16 v16, v0

    #@7bb
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@7bd
    const/16 v22, 0x2

    #@7bf
    move-object/from16 v0, v17

    #@7c1
    move/from16 v1, v22

    #@7c3
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@7c6
    move-object/from16 v0, v17

    #@7c8
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7cb
    move-result-object v17

    #@7cc
    move-object/from16 v0, v17

    #@7ce
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7d1
    move-result-object v22

    #@7d2
    .line 579
    const/high16 v26, 0x3f800000    # 1.0f

    #@7d4
    const/high16 v27, 0x40a00000    # 5.0f

    #@7d6
    const/16 v23, 0x0

    #@7d8
    .line 578
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7db
    move-result-object v26

    #@7dc
    .line 580
    const/high16 v30, 0x3f800000    # 1.0f

    #@7de
    const/high16 v31, 0x40a00000    # 5.0f

    #@7e0
    .line 579
    const/16 v27, 0x1

    #@7e2
    .line 578
    invoke-virtual/range {v26 .. v31}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7e5
    move-result-object v17

    #@7e6
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@7e9
    .line 571
    add-int/lit8 v55, v55, 0x1

    #@7eb
    goto :goto_d

    #@7ec
    .line 582
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7ef
    move-result-wide v8

    #@7f0
    .line 583
    move-object/from16 v0, p0

    #@7f2
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@7f4
    move-object/from16 v16, v0

    #@7f6
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@7f8
    const/16 v22, 0x6

    #@7fa
    move-object/from16 v0, v17

    #@7fc
    move/from16 v1, v22

    #@7fe
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@801
    move-object/from16 v0, v17

    #@803
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@806
    move-result-object v17

    #@807
    move-object/from16 v0, v17

    #@809
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@80c
    move-result-object v17

    #@80d
    .line 584
    const/16 v22, 0x0

    #@80f
    .line 583
    move-object/from16 v0, v17

    #@811
    move/from16 v1, v22

    #@813
    move/from16 v2, v24

    #@815
    move/from16 v3, v25

    #@817
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@81a
    move-result-object v17

    #@81b
    .line 585
    const/16 v22, 0x1

    #@81d
    .line 583
    move-object/from16 v0, v17

    #@81f
    move/from16 v1, v22

    #@821
    move/from16 v2, v28

    #@823
    move/from16 v3, v29

    #@825
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@828
    move-result-object v17

    #@829
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@82c
    .line 590
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v24    # "x1":F
    .end local v25    # "y1":F
    .end local v28    # "x2":F
    .end local v29    # "y2":F
    .end local v55    # "i":I
    .end local v68    # "pt1xEnd":F
    .end local v69    # "pt1xStart":F
    .end local v70    # "pt1xStep":F
    .end local v71    # "pt1yEnd":F
    .end local v72    # "pt1yStart":F
    .end local v73    # "pt1yStep":F
    .end local v74    # "pt2xEnd":F
    .end local v75    # "pt2xStart":F
    .end local v76    # "pt2xStep":F
    .end local v77    # "pt2yEnd":F
    .end local v78    # "pt2yStart":F
    .end local v79    # "pt2yStep":F
    .end local v88    # "stepCount":I
    :cond_19
    const-string/jumbo v16, "DispatchFlip"

    #@82f
    move-object/from16 v0, p1

    #@831
    move-object/from16 v1, v16

    #@833
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@836
    move-result v16

    #@837
    if-ltz v16, :cond_1a

    #@839
    move-object/from16 v0, p2

    #@83b
    array-length v0, v0

    #@83c
    move/from16 v16, v0

    #@83e
    const/16 v17, 0x1

    #@840
    move/from16 v0, v16

    #@842
    move/from16 v1, v17

    #@844
    if-ne v0, v1, :cond_1a

    #@846
    .line 591
    const/16 v16, 0x0

    #@848
    aget-object v16, p2, v16

    #@84a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@84d
    move-result v59

    #@84e
    .line 592
    .local v59, "keyboardOpen":Z
    new-instance v42, Lcom/android/commands/monkey/MonkeyFlipEvent;

    #@850
    move-object/from16 v0, v42

    #@852
    move/from16 v1, v59

    #@854
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    #@857
    .line 593
    .local v42, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    #@859
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@85b
    move-object/from16 v16, v0

    #@85d
    move-object/from16 v0, v16

    #@85f
    move-object/from16 v1, v42

    #@861
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@864
    .line 597
    .end local v42    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    .end local v59    # "keyboardOpen":Z
    :cond_1a
    const-string/jumbo v16, "LaunchActivity"

    #@867
    move-object/from16 v0, p1

    #@869
    move-object/from16 v1, v16

    #@86b
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@86e
    move-result v16

    #@86f
    if-ltz v16, :cond_1d

    #@871
    move-object/from16 v0, p2

    #@873
    array-length v0, v0

    #@874
    move/from16 v16, v0

    #@876
    const/16 v17, 0x2

    #@878
    move/from16 v0, v16

    #@87a
    move/from16 v1, v17

    #@87c
    if-lt v0, v1, :cond_1d

    #@87e
    .line 598
    const/16 v16, 0x0

    #@880
    aget-object v63, p2, v16

    #@882
    .line 599
    .local v63, "pkg_name":Ljava/lang/String;
    const/16 v16, 0x1

    #@884
    aget-object v34, p2, v16

    #@886
    .line 600
    .local v34, "cl_name":Ljava/lang/String;
    const-wide/16 v32, 0x0

    #@888
    .line 602
    .local v32, "alarmTime":J
    new-instance v61, Landroid/content/ComponentName;

    #@88a
    move-object/from16 v0, v61

    #@88c
    move-object/from16 v1, v63

    #@88e
    move-object/from16 v2, v34

    #@890
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@893
    .line 604
    .local v61, "mApp":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    #@895
    array-length v0, v0

    #@896
    move/from16 v16, v0

    #@898
    const/16 v17, 0x2

    #@89a
    move/from16 v0, v16

    #@89c
    move/from16 v1, v17

    #@89e
    if-le v0, v1, :cond_1b

    #@8a0
    .line 606
    const/16 v16, 0x2

    #@8a2
    :try_start_6
    aget-object v16, p2, v16

    #@8a4
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    #@8a7
    move-result-wide v32

    #@8a8
    .line 613
    :cond_1b
    move-object/from16 v0, p2

    #@8aa
    array-length v0, v0

    #@8ab
    move/from16 v16, v0

    #@8ad
    const/16 v17, 0x2

    #@8af
    move/from16 v0, v16

    #@8b1
    move/from16 v1, v17

    #@8b3
    if-ne v0, v1, :cond_1c

    #@8b5
    .line 614
    new-instance v40, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@8b7
    move-object/from16 v0, v40

    #@8b9
    move-object/from16 v1, v61

    #@8bb
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    #@8be
    .line 615
    .local v40, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    #@8c0
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@8c2
    move-object/from16 v16, v0

    #@8c4
    move-object/from16 v0, v16

    #@8c6
    move-object/from16 v1, v40

    #@8c8
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@8cb
    .line 620
    :goto_e
    return-void

    #@8cc
    .line 607
    .end local v40    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :catch_3
    move-exception v49

    #@8cd
    .line 608
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8cf
    new-instance v17, Ljava/lang/StringBuilder;

    #@8d1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@8d4
    const-string/jumbo v22, "// "

    #@8d7
    move-object/from16 v0, v17

    #@8d9
    move-object/from16 v1, v22

    #@8db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8de
    move-result-object v17

    #@8df
    invoke-virtual/range {v49 .. v49}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    #@8e2
    move-result-object v22

    #@8e3
    move-object/from16 v0, v17

    #@8e5
    move-object/from16 v1, v22

    #@8e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8ea
    move-result-object v17

    #@8eb
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8ee
    move-result-object v17

    #@8ef
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8f2
    .line 609
    return-void

    #@8f3
    .line 617
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    new-instance v40, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@8f5
    move-object/from16 v0, v40

    #@8f7
    move-object/from16 v1, v61

    #@8f9
    move-wide/from16 v2, v32

    #@8fb
    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    #@8fe
    .line 618
    .restart local v40    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    #@900
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@902
    move-object/from16 v16, v0

    #@904
    move-object/from16 v0, v16

    #@906
    move-object/from16 v1, v40

    #@908
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@90b
    goto :goto_e

    #@90c
    .line 624
    .end local v32    # "alarmTime":J
    .end local v34    # "cl_name":Ljava/lang/String;
    .end local v40    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v61    # "mApp":Landroid/content/ComponentName;
    .end local v63    # "pkg_name":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v16, "DeviceWakeUp"

    #@90f
    move-object/from16 v0, p1

    #@911
    move-object/from16 v1, v16

    #@913
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@916
    move-result v16

    #@917
    if-ltz v16, :cond_1e

    #@919
    .line 625
    const-string/jumbo v63, "com.google.android.powerutil"

    #@91c
    .line 626
    .restart local v63    # "pkg_name":Ljava/lang/String;
    const-string/jumbo v34, "com.google.android.powerutil.WakeUpScreen"

    #@91f
    .line 627
    .restart local v34    # "cl_name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@921
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    #@923
    move-wide/from16 v38, v0

    #@925
    .line 630
    .local v38, "deviceSleepTime":J
    new-instance v61, Landroid/content/ComponentName;

    #@927
    move-object/from16 v0, v61

    #@929
    move-object/from16 v1, v63

    #@92b
    move-object/from16 v2, v34

    #@92d
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@930
    .line 631
    .restart local v61    # "mApp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@932
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@934
    move-object/from16 v16, v0

    #@936
    new-instance v17, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@938
    move-object/from16 v0, v17

    #@93a
    move-object/from16 v1, v61

    #@93c
    move-wide/from16 v2, v38

    #@93e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    #@941
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@944
    .line 634
    move-object/from16 v0, p0

    #@946
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@948
    move-object/from16 v16, v0

    #@94a
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@94c
    const/16 v22, 0x0

    #@94e
    const/16 v23, 0x7

    #@950
    move-object/from16 v0, v17

    #@952
    move/from16 v1, v22

    #@954
    move/from16 v2, v23

    #@956
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@959
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@95c
    .line 635
    move-object/from16 v0, p0

    #@95e
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@960
    move-object/from16 v16, v0

    #@962
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@964
    const/16 v22, 0x1

    #@966
    const/16 v23, 0x7

    #@968
    move-object/from16 v0, v17

    #@96a
    move/from16 v1, v22

    #@96c
    move/from16 v2, v23

    #@96e
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@971
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@974
    .line 639
    move-object/from16 v0, p0

    #@976
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@978
    move-object/from16 v16, v0

    #@97a
    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@97c
    const-wide/16 v22, 0xbb8

    #@97e
    add-long v22, v22, v38

    #@980
    move-object/from16 v0, v17

    #@982
    move-wide/from16 v1, v22

    #@984
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@987
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@98a
    .line 642
    move-object/from16 v0, p0

    #@98c
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@98e
    move-object/from16 v16, v0

    #@990
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@992
    const/16 v22, 0x0

    #@994
    const/16 v23, 0x52

    #@996
    move-object/from16 v0, v17

    #@998
    move/from16 v1, v22

    #@99a
    move/from16 v2, v23

    #@99c
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@99f
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9a2
    .line 643
    move-object/from16 v0, p0

    #@9a4
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@9a6
    move-object/from16 v16, v0

    #@9a8
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9aa
    const/16 v22, 0x1

    #@9ac
    const/16 v23, 0x52

    #@9ae
    move-object/from16 v0, v17

    #@9b0
    move/from16 v1, v22

    #@9b2
    move/from16 v2, v23

    #@9b4
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9b7
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9ba
    .line 646
    move-object/from16 v0, p0

    #@9bc
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@9be
    move-object/from16 v16, v0

    #@9c0
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9c2
    const/16 v22, 0x0

    #@9c4
    const/16 v23, 0x4

    #@9c6
    move-object/from16 v0, v17

    #@9c8
    move/from16 v1, v22

    #@9ca
    move/from16 v2, v23

    #@9cc
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9cf
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9d2
    .line 647
    move-object/from16 v0, p0

    #@9d4
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@9d6
    move-object/from16 v16, v0

    #@9d8
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9da
    const/16 v22, 0x1

    #@9dc
    const/16 v23, 0x4

    #@9de
    move-object/from16 v0, v17

    #@9e0
    move/from16 v1, v22

    #@9e2
    move/from16 v2, v23

    #@9e4
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9e7
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9ea
    .line 649
    return-void

    #@9eb
    .line 653
    .end local v34    # "cl_name":Ljava/lang/String;
    .end local v38    # "deviceSleepTime":J
    .end local v61    # "mApp":Landroid/content/ComponentName;
    .end local v63    # "pkg_name":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v16, "LaunchInstrumentation"

    #@9ee
    move-object/from16 v0, p1

    #@9f0
    move-object/from16 v1, v16

    #@9f2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@9f5
    move-result v16

    #@9f6
    if-ltz v16, :cond_1f

    #@9f8
    move-object/from16 v0, p2

    #@9fa
    array-length v0, v0

    #@9fb
    move/from16 v16, v0

    #@9fd
    const/16 v17, 0x2

    #@9ff
    move/from16 v0, v16

    #@a01
    move/from16 v1, v17

    #@a03
    if-ne v0, v1, :cond_1f

    #@a05
    .line 654
    const/16 v16, 0x0

    #@a07
    aget-object v92, p2, v16

    #@a09
    .line 655
    .local v92, "test_name":Ljava/lang/String;
    const/16 v16, 0x1

    #@a0b
    aget-object v83, p2, v16

    #@a0d
    .line 656
    .local v83, "runner_name":Ljava/lang/String;
    new-instance v45, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    #@a0f
    move-object/from16 v0, v45

    #@a11
    move-object/from16 v1, v92

    #@a13
    move-object/from16 v2, v83

    #@a15
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a18
    .line 657
    .local v45, "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    move-object/from16 v0, p0

    #@a1a
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a1c
    move-object/from16 v16, v0

    #@a1e
    move-object/from16 v0, v16

    #@a20
    move-object/from16 v1, v45

    #@a22
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@a25
    .line 658
    return-void

    #@a26
    .line 662
    .end local v45    # "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    .end local v83    # "runner_name":Ljava/lang/String;
    .end local v92    # "test_name":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v16, "UserWait"

    #@a29
    move-object/from16 v0, p1

    #@a2b
    move-object/from16 v1, v16

    #@a2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a30
    move-result v16

    #@a31
    if-ltz v16, :cond_20

    #@a33
    move-object/from16 v0, p2

    #@a35
    array-length v0, v0

    #@a36
    move/from16 v16, v0

    #@a38
    const/16 v17, 0x1

    #@a3a
    move/from16 v0, v16

    #@a3c
    move/from16 v1, v17

    #@a3e
    if-ne v0, v1, :cond_20

    #@a40
    .line 664
    const/16 v16, 0x0

    #@a42
    :try_start_7
    aget-object v16, p2, v16

    #@a44
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a47
    move-result v16

    #@a48
    move/from16 v0, v16

    #@a4a
    int-to-long v0, v0

    #@a4b
    move-wide/from16 v86, v0

    #@a4d
    .line 665
    .local v86, "sleeptime":J
    new-instance v48, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@a4f
    move-object/from16 v0, v48

    #@a51
    move-wide/from16 v1, v86

    #@a53
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@a56
    .line 666
    .local v48, "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    #@a58
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a5a
    move-object/from16 v16, v0

    #@a5c
    move-object/from16 v0, v16

    #@a5e
    move-object/from16 v1, v48

    #@a60
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    #@a63
    .line 669
    .end local v48    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v86    # "sleeptime":J
    :goto_f
    return-void

    #@a64
    .line 674
    :cond_20
    const-string/jumbo v16, "ProfileWait"

    #@a67
    move-object/from16 v0, p1

    #@a69
    move-object/from16 v1, v16

    #@a6b
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a6e
    move-result v16

    #@a6f
    if-ltz v16, :cond_21

    #@a71
    .line 675
    new-instance v48, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@a73
    move-object/from16 v0, p0

    #@a75
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    #@a77
    move-wide/from16 v16, v0

    #@a79
    move-object/from16 v0, v48

    #@a7b
    move-wide/from16 v1, v16

    #@a7d
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@a80
    .line 676
    .restart local v48    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    #@a82
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a84
    move-object/from16 v16, v0

    #@a86
    move-object/from16 v0, v16

    #@a88
    move-object/from16 v1, v48

    #@a8a
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@a8d
    .line 677
    return-void

    #@a8e
    .line 681
    .end local v48    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_21
    const-string/jumbo v16, "DispatchPress"

    #@a91
    move-object/from16 v0, p1

    #@a93
    move-object/from16 v1, v16

    #@a95
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a98
    move-result v16

    #@a99
    if-ltz v16, :cond_23

    #@a9b
    move-object/from16 v0, p2

    #@a9d
    array-length v0, v0

    #@a9e
    move/from16 v16, v0

    #@aa0
    const/16 v17, 0x1

    #@aa2
    move/from16 v0, v16

    #@aa4
    move/from16 v1, v17

    #@aa6
    if-ne v0, v1, :cond_23

    #@aa8
    .line 682
    const/16 v16, 0x0

    #@aaa
    aget-object v58, p2, v16

    #@aac
    .line 683
    .local v58, "key_name":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    #@aaf
    move-result v57

    #@ab0
    .line 684
    .local v57, "keyCode":I
    if-nez v57, :cond_22

    #@ab2
    .line 685
    return-void

    #@ab3
    .line 687
    :cond_22
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@ab5
    const/16 v16, 0x0

    #@ab7
    move/from16 v0, v16

    #@ab9
    move/from16 v1, v57

    #@abb
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@abe
    .line 688
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@ac0
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@ac2
    move-object/from16 v16, v0

    #@ac4
    move-object/from16 v0, v16

    #@ac6
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@ac9
    .line 689
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@acb
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/16 v16, 0x1

    #@acd
    move/from16 v0, v16

    #@acf
    move/from16 v1, v57

    #@ad1
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@ad4
    .line 690
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@ad6
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@ad8
    move-object/from16 v16, v0

    #@ada
    move-object/from16 v0, v16

    #@adc
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@adf
    .line 691
    return-void

    #@ae0
    .line 695
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v57    # "keyCode":I
    .end local v58    # "key_name":Ljava/lang/String;
    :cond_23
    const-string/jumbo v16, "LongPress"

    #@ae3
    move-object/from16 v0, p1

    #@ae5
    move-object/from16 v1, v16

    #@ae7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@aea
    move-result v16

    #@aeb
    if-ltz v16, :cond_24

    #@aed
    .line 697
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@aef
    const/16 v16, 0x0

    #@af1
    const/16 v17, 0x17

    #@af3
    move/from16 v0, v16

    #@af5
    move/from16 v1, v17

    #@af7
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@afa
    .line 698
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@afc
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@afe
    move-object/from16 v16, v0

    #@b00
    move-object/from16 v0, v16

    #@b02
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b05
    .line 699
    new-instance v93, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@b07
    sget v16, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    #@b09
    move/from16 v0, v16

    #@b0b
    int-to-long v0, v0

    #@b0c
    move-wide/from16 v16, v0

    #@b0e
    move-object/from16 v0, v93

    #@b10
    move-wide/from16 v1, v16

    #@b12
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@b15
    .line 700
    .local v93, "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    #@b17
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b19
    move-object/from16 v16, v0

    #@b1b
    move-object/from16 v0, v16

    #@b1d
    move-object/from16 v1, v93

    #@b1f
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b22
    .line 701
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@b24
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/16 v16, 0x1

    #@b26
    const/16 v17, 0x17

    #@b28
    move/from16 v0, v16

    #@b2a
    move/from16 v1, v17

    #@b2c
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@b2f
    .line 702
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@b31
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b33
    move-object/from16 v16, v0

    #@b35
    move-object/from16 v0, v16

    #@b37
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b3a
    .line 706
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v93    # "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_24
    const-string/jumbo v16, "PowerLog"

    #@b3d
    move-object/from16 v0, p1

    #@b3f
    move-object/from16 v1, v16

    #@b41
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b44
    move-result v16

    #@b45
    if-ltz v16, :cond_25

    #@b47
    move-object/from16 v0, p2

    #@b49
    array-length v0, v0

    #@b4a
    move/from16 v16, v0

    #@b4c
    if-lez v16, :cond_25

    #@b4e
    .line 707
    const/16 v16, 0x0

    #@b50
    aget-object v65, p2, v16

    #@b52
    .line 710
    .local v65, "power_log_type":Ljava/lang/String;
    move-object/from16 v0, p2

    #@b54
    array-length v0, v0

    #@b55
    move/from16 v16, v0

    #@b57
    const/16 v17, 0x1

    #@b59
    move/from16 v0, v16

    #@b5b
    move/from16 v1, v17

    #@b5d
    if-ne v0, v1, :cond_28

    #@b5f
    .line 711
    new-instance v47, Lcom/android/commands/monkey/MonkeyPowerEvent;

    #@b61
    move-object/from16 v0, v47

    #@b63
    move-object/from16 v1, v65

    #@b65
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    #@b68
    .line 712
    .local v47, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    #@b6a
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b6c
    move-object/from16 v16, v0

    #@b6e
    move-object/from16 v0, v16

    #@b70
    move-object/from16 v1, v47

    #@b72
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b75
    .line 721
    .end local v47    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v65    # "power_log_type":Ljava/lang/String;
    :cond_25
    :goto_10
    const-string/jumbo v16, "WriteLog"

    #@b78
    move-object/from16 v0, p1

    #@b7a
    move-object/from16 v1, v16

    #@b7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b7f
    move-result v16

    #@b80
    if-ltz v16, :cond_26

    #@b82
    .line 722
    new-instance v47, Lcom/android/commands/monkey/MonkeyPowerEvent;

    #@b84
    invoke-direct/range {v47 .. v47}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    #@b87
    .line 723
    .restart local v47    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    #@b89
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b8b
    move-object/from16 v16, v0

    #@b8d
    move-object/from16 v0, v16

    #@b8f
    move-object/from16 v1, v47

    #@b91
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b94
    .line 727
    .end local v47    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_26
    const-string/jumbo v16, "RunCmd"

    #@b97
    move-object/from16 v0, p1

    #@b99
    move-object/from16 v1, v16

    #@b9b
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b9e
    move-result v16

    #@b9f
    if-ltz v16, :cond_27

    #@ba1
    move-object/from16 v0, p2

    #@ba3
    array-length v0, v0

    #@ba4
    move/from16 v16, v0

    #@ba6
    const/16 v17, 0x1

    #@ba8
    move/from16 v0, v16

    #@baa
    move/from16 v1, v17

    #@bac
    if-ne v0, v1, :cond_27

    #@bae
    .line 728
    const/16 v16, 0x0

    #@bb0
    aget-object v35, p2, v16

    #@bb2
    .line 729
    .local v35, "cmd":Ljava/lang/String;
    new-instance v41, Lcom/android/commands/monkey/MonkeyCommandEvent;

    #@bb4
    move-object/from16 v0, v41

    #@bb6
    move-object/from16 v1, v35

    #@bb8
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    #@bbb
    .line 730
    .local v41, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    #@bbd
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@bbf
    move-object/from16 v16, v0

    #@bc1
    move-object/from16 v0, v16

    #@bc3
    move-object/from16 v1, v41

    #@bc5
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@bc8
    .line 734
    .end local v35    # "cmd":Ljava/lang/String;
    .end local v41    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    :cond_27
    const-string/jumbo v16, "DispatchString"

    #@bcb
    move-object/from16 v0, p1

    #@bcd
    move-object/from16 v1, v16

    #@bcf
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@bd2
    move-result v16

    #@bd3
    if-ltz v16, :cond_29

    #@bd5
    move-object/from16 v0, p2

    #@bd7
    array-length v0, v0

    #@bd8
    move/from16 v16, v0

    #@bda
    const/16 v17, 0x1

    #@bdc
    move/from16 v0, v16

    #@bde
    move/from16 v1, v17

    #@be0
    if-ne v0, v1, :cond_29

    #@be2
    .line 735
    const/16 v16, 0x0

    #@be4
    aget-object v56, p2, v16

    #@be6
    .line 736
    .local v56, "input":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    #@be8
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@beb
    const-string/jumbo v17, "input text "

    #@bee
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf1
    move-result-object v16

    #@bf2
    move-object/from16 v0, v16

    #@bf4
    move-object/from16 v1, v56

    #@bf6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf9
    move-result-object v16

    #@bfa
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bfd
    move-result-object v35

    #@bfe
    .line 737
    .restart local v35    # "cmd":Ljava/lang/String;
    new-instance v41, Lcom/android/commands/monkey/MonkeyCommandEvent;

    #@c00
    move-object/from16 v0, v41

    #@c02
    move-object/from16 v1, v35

    #@c04
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    #@c07
    .line 738
    .restart local v41    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    #@c09
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c0b
    move-object/from16 v16, v0

    #@c0d
    move-object/from16 v0, v16

    #@c0f
    move-object/from16 v1, v41

    #@c11
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c14
    .line 739
    return-void

    #@c15
    .line 713
    .end local v35    # "cmd":Ljava/lang/String;
    .end local v41    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v56    # "input":Ljava/lang/String;
    .restart local v65    # "power_log_type":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p2

    #@c17
    array-length v0, v0

    #@c18
    move/from16 v16, v0

    #@c1a
    const/16 v17, 0x2

    #@c1c
    move/from16 v0, v16

    #@c1e
    move/from16 v1, v17

    #@c20
    if-ne v0, v1, :cond_25

    #@c22
    .line 714
    const/16 v16, 0x1

    #@c24
    aget-object v89, p2, v16

    #@c26
    .line 715
    .local v89, "test_case_status":Ljava/lang/String;
    new-instance v47, Lcom/android/commands/monkey/MonkeyPowerEvent;

    #@c28
    move-object/from16 v0, v47

    #@c2a
    move-object/from16 v1, v65

    #@c2c
    move-object/from16 v2, v89

    #@c2e
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c31
    .line 716
    .restart local v47    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    #@c33
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c35
    move-object/from16 v16, v0

    #@c37
    move-object/from16 v0, v16

    #@c39
    move-object/from16 v1, v47

    #@c3b
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c3e
    goto/16 :goto_10

    #@c40
    .line 742
    .end local v47    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v65    # "power_log_type":Ljava/lang/String;
    .end local v89    # "test_case_status":Ljava/lang/String;
    :cond_29
    const-string/jumbo v16, "StartCaptureFramerate"

    #@c43
    move-object/from16 v0, p1

    #@c45
    move-object/from16 v1, v16

    #@c47
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c4a
    move-result v16

    #@c4b
    if-ltz v16, :cond_2a

    #@c4d
    .line 743
    new-instance v44, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    #@c4f
    const-string/jumbo v16, "start"

    #@c52
    move-object/from16 v0, v44

    #@c54
    move-object/from16 v1, v16

    #@c56
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    #@c59
    .line 744
    .local v44, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    #@c5b
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c5d
    move-object/from16 v16, v0

    #@c5f
    move-object/from16 v0, v16

    #@c61
    move-object/from16 v1, v44

    #@c63
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c66
    .line 745
    return-void

    #@c67
    .line 748
    .end local v44    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_2a
    const-string/jumbo v16, "EndCaptureFramerate"

    #@c6a
    move-object/from16 v0, p1

    #@c6c
    move-object/from16 v1, v16

    #@c6e
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c71
    move-result v16

    #@c72
    if-ltz v16, :cond_2b

    #@c74
    move-object/from16 v0, p2

    #@c76
    array-length v0, v0

    #@c77
    move/from16 v16, v0

    #@c79
    const/16 v17, 0x1

    #@c7b
    move/from16 v0, v16

    #@c7d
    move/from16 v1, v17

    #@c7f
    if-ne v0, v1, :cond_2b

    #@c81
    .line 749
    const/16 v16, 0x0

    #@c83
    aget-object v56, p2, v16

    #@c85
    .line 750
    .restart local v56    # "input":Ljava/lang/String;
    new-instance v44, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    #@c87
    const-string/jumbo v16, "end"

    #@c8a
    move-object/from16 v0, v44

    #@c8c
    move-object/from16 v1, v16

    #@c8e
    move-object/from16 v2, v56

    #@c90
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c93
    .line 751
    .restart local v44    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    #@c95
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c97
    move-object/from16 v16, v0

    #@c99
    move-object/from16 v0, v16

    #@c9b
    move-object/from16 v1, v44

    #@c9d
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@ca0
    .line 752
    return-void

    #@ca1
    .line 755
    .end local v44    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    .end local v56    # "input":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v16, "StartCaptureAppFramerate"

    #@ca4
    move-object/from16 v0, p1

    #@ca6
    move-object/from16 v1, v16

    #@ca8
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@cab
    move-result v16

    #@cac
    if-ltz v16, :cond_2c

    #@cae
    move-object/from16 v0, p2

    #@cb0
    array-length v0, v0

    #@cb1
    move/from16 v16, v0

    #@cb3
    const/16 v17, 0x1

    #@cb5
    move/from16 v0, v16

    #@cb7
    move/from16 v1, v17

    #@cb9
    if-ne v0, v1, :cond_2c

    #@cbb
    .line 756
    const/16 v16, 0x0

    #@cbd
    aget-object v4, p2, v16

    #@cbf
    .line 757
    .local v4, "app":Ljava/lang/String;
    new-instance v43, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    #@cc1
    const-string/jumbo v16, "start"

    #@cc4
    move-object/from16 v0, v43

    #@cc6
    move-object/from16 v1, v16

    #@cc8
    invoke-direct {v0, v1, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ccb
    .line 758
    .local v43, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    #@ccd
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@ccf
    move-object/from16 v16, v0

    #@cd1
    move-object/from16 v0, v16

    #@cd3
    move-object/from16 v1, v43

    #@cd5
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@cd8
    .line 759
    return-void

    #@cd9
    .line 762
    .end local v4    # "app":Ljava/lang/String;
    .end local v43    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_2c
    const-string/jumbo v16, "EndCaptureAppFramerate"

    #@cdc
    move-object/from16 v0, p1

    #@cde
    move-object/from16 v1, v16

    #@ce0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@ce3
    move-result v16

    #@ce4
    if-ltz v16, :cond_2d

    #@ce6
    move-object/from16 v0, p2

    #@ce8
    array-length v0, v0

    #@ce9
    move/from16 v16, v0

    #@ceb
    const/16 v17, 0x2

    #@ced
    move/from16 v0, v16

    #@cef
    move/from16 v1, v17

    #@cf1
    if-ne v0, v1, :cond_2d

    #@cf3
    .line 763
    const/16 v16, 0x0

    #@cf5
    aget-object v4, p2, v16

    #@cf7
    .line 764
    .restart local v4    # "app":Ljava/lang/String;
    const/16 v16, 0x1

    #@cf9
    aget-object v60, p2, v16

    #@cfb
    .line 765
    .local v60, "label":Ljava/lang/String;
    new-instance v43, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    #@cfd
    const-string/jumbo v16, "end"

    #@d00
    move-object/from16 v0, v43

    #@d02
    move-object/from16 v1, v16

    #@d04
    move-object/from16 v2, v60

    #@d06
    invoke-direct {v0, v1, v4, v2}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d09
    .line 766
    .restart local v43    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    #@d0b
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@d0d
    move-object/from16 v16, v0

    #@d0f
    move-object/from16 v0, v16

    #@d11
    move-object/from16 v1, v43

    #@d13
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@d16
    .line 767
    return-void

    #@d17
    .line 279
    .end local v4    # "app":Ljava/lang/String;
    .end local v43    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    .end local v60    # "label":Ljava/lang/String;
    :cond_2d
    return-void

    #@d18
    .line 667
    :catch_4
    move-exception v49

    #@d19
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_f

    #@d1b
    .line 431
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v49

    #@d1c
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_9

    #@d1e
    .line 336
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v49

    #@d1f
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@d21
    .line 299
    .end local v49    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v49

    #@d22
    .restart local v49    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0
.end method

.method private needSleep(J)V
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    .line 850
    const-wide/16 v2, 0x1

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 851
    return-void

    #@7
    .line 854
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 849
    :goto_0
    return-void

    #@b
    .line 855
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private processLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 780
    const/16 v4, 0x28

    #@2
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v2

    #@6
    .line 781
    .local v2, "index1":I
    const/16 v4, 0x29

    #@8
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@b
    move-result v3

    #@c
    .line 783
    .local v3, "index2":I
    if-ltz v2, :cond_0

    #@e
    if-gez v3, :cond_1

    #@10
    .line 784
    :cond_0
    return-void

    #@11
    .line 787
    :cond_1
    add-int/lit8 v4, v2, 0x1

    #@13
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    const-string/jumbo v5, ","

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 789
    .local v0, "args":[Ljava/lang/String;
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@20
    if-ge v1, v4, :cond_2

    #@22
    .line 790
    aget-object v4, v0, v1

    #@24
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v0, v1

    #@2a
    .line 789
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 793
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    #@30
    .line 779
    return-void
.end method

.method private readHeader()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 198
    iput-boolean v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    #@4
    .line 200
    new-instance v3, Ljava/io/FileInputStream;

    #@6
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    #@8
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    #@d
    .line 201
    new-instance v3, Ljava/io/DataInputStream;

    #@f
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    #@11
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@14
    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    #@16
    .line 202
    new-instance v3, Ljava/io/BufferedReader;

    #@18
    new-instance v4, Ljava/io/InputStreamReader;

    #@1a
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    #@1c
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@1f
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@22
    iput-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    #@24
    .line 206
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    #@26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@2c
    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 209
    const-string/jumbo v3, "count="

    #@33
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@36
    move-result v3

    #@37
    if-ltz v3, :cond_1

    #@39
    .line 211
    :try_start_0
    const-string/jumbo v3, "count="

    #@3c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@3f
    move-result v3

    #@40
    add-int/lit8 v3, v3, 0x1

    #@42
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 212
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4d
    move-result v3

    #@4e
    iput v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@50
    goto :goto_0

    #@51
    .line 213
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@52
    .line 214
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@57
    .line 215
    return v6

    #@58
    .line 217
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v3, "speed="

    #@5b
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@5e
    move-result v3

    #@5f
    if-ltz v3, :cond_2

    #@61
    .line 219
    :try_start_1
    const-string/jumbo v3, "count="

    #@64
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@67
    move-result v3

    #@68
    add-int/lit8 v3, v3, 0x1

    #@6a
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 220
    .restart local v2    # "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@75
    move-result-wide v4

    #@76
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@78
    goto :goto_0

    #@79
    .line 221
    .end local v2    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@7a
    .line 222
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7c
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@7f
    .line 223
    return v6

    #@80
    .line 225
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string/jumbo v3, "linebyline"

    #@83
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@86
    move-result v3

    #@87
    if-ltz v3, :cond_3

    #@89
    .line 226
    iput-boolean v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    #@8b
    goto :goto_0

    #@8c
    .line 227
    :cond_3
    const-string/jumbo v3, "start data >>"

    #@8f
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@92
    move-result v3

    #@93
    if-ltz v3, :cond_0

    #@95
    .line 228
    return v7

    #@96
    .line 232
    :cond_4
    return v6
.end method

.method private readLines()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x64

    #@2
    .line 243
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@5
    .line 244
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    #@7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 245
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    #@d
    .line 246
    return v0

    #@e
    .line 248
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    .line 249
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    #@14
    .line 243
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 251
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private readNextBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    const/4 v0, 0x0

    #@1
    .line 827
    .local v0, "linesRead":I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 828
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    #@8
    .line 829
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    #@b
    .line 832
    :cond_0
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mReadScriptLineByLine:Z

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 833
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readOneLine()I

    #@12
    move-result v0

    #@13
    .line 838
    :goto_0
    if-nez v0, :cond_1

    #@15
    .line 839
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    #@18
    .line 820
    :cond_1
    return-void

    #@19
    .line 835
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    #@1c
    move-result v0

    #@1d
    goto :goto_0
.end method

.method private readOneLine()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    #@2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 262
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    .line 263
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 265
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@d
    .line 266
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    #@10
    .line 267
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method private resetValue()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, -0x1

    #@2
    const-wide/16 v0, 0x0

    #@4
    .line 183
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    #@6
    .line 184
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    #@8
    .line 185
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    #@a
    .line 186
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    #@c
    .line 187
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    #@e
    .line 188
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    #@10
    .line 182
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 957
    const-wide/16 v4, -0x1

    #@3
    .line 960
    .local v4, "recordedEventTime":J
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@5
    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 962
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 969
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@10
    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/commands/monkey/MonkeyEvent;

    #@16
    .line 970
    .local v2, "ev":Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@18
    invoke-virtual {v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    #@1b
    .line 975
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_2

    #@21
    move-object v3, v2

    #@22
    .line 976
    check-cast v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@24
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    #@27
    .line 981
    :cond_1
    :goto_0
    return-object v2

    #@28
    .line 963
    .end local v2    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :catch_0
    move-exception v0

    #@29
    .line 964
    .local v0, "e":Ljava/io/IOException;
    return-object v6

    #@2a
    .line 971
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@2b
    .line 972
    .local v1, "e":Ljava/util/NoSuchElementException;
    return-object v6

    #@2c
    .line 977
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    .restart local v2    # "ev":Lcom/android/commands/monkey/MonkeyEvent;
    :cond_2
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    #@2f
    move-result v3

    #@30
    const/4 v6, 0x1

    #@31
    if-eq v3, v6, :cond_3

    #@33
    .line 978
    invoke-virtual {v2}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    #@36
    move-result v3

    #@37
    const/4 v6, 0x2

    #@38
    if-ne v3, v6, :cond_1

    #@3a
    :cond_3
    move-object v3, v2

    #@3b
    .line 979
    check-cast v3, Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@3d
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    #@40
    goto :goto_0
.end method

.method public setVerbose(I)V
    .locals 0
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 882
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    #@2
    .line 881
    return-void
.end method

.method public validate()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 868
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    #@4
    move-result v1

    #@5
    .line 869
    .local v1, "validHeader":Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 874
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    #@a
    if-lez v2, :cond_0

    #@c
    .line 875
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Replaying "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " events with speed "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    #@29
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 877
    :cond_0
    return v1

    #@35
    .line 870
    .end local v1    # "validHeader":Z
    :catch_0
    move-exception v0

    #@36
    .line 871
    .local v0, "e":Ljava/io/IOException;
    return v2
.end method
