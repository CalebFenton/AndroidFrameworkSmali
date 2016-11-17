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
    .locals 108
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
    move-result v103

    #@114
    .line 317
    .local v103, "xPrecision":F
    const/16 v16, 0x9

    #@116
    aget-object v16, p2, v16

    #@118
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@11b
    move-result v106

    #@11c
    .line 318
    .local v106, "yPrecision":F
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
    move-result v62

    #@12c
    .line 322
    .local v62, "edgeFlags":I
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
    new-instance v54, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@13b
    move-object/from16 v0, v54

    #@13d
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@140
    .line 328
    .local v54, "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_1
    move-object/from16 v0, v54

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
    move/from16 v1, v103

    #@156
    move/from16 v2, v106

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
    move/from16 v1, v62

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
    move-object/from16 v1, v54

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
    .end local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v62    # "edgeFlags":I
    .end local v103    # "xPrecision":F
    .end local v106    # "yPrecision":F
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
    .restart local v62    # "edgeFlags":I
    .restart local v103    # "xPrecision":F
    .restart local v106    # "yPrecision":F
    :cond_2
    new-instance v54, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@17f
    move-object/from16 v0, v54

    #@181
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    #@184
    .restart local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
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
    .end local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v62    # "edgeFlags":I
    .end local v103    # "xPrecision":F
    .end local v106    # "yPrecision":F
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
    move-result v103

    #@1f4
    .line 354
    .restart local v103    # "xPrecision":F
    const/16 v16, 0x9

    #@1f6
    aget-object v16, p2, v16

    #@1f8
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@1fb
    move-result v106

    #@1fc
    .line 355
    .restart local v106    # "yPrecision":F
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
    move-result v62

    #@20c
    .line 357
    .restart local v62    # "edgeFlags":I
    const/16 v16, 0xc

    #@20e
    aget-object v16, p2, v16

    #@210
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@213
    move-result v72

    #@214
    .line 360
    .local v72, "pointerId":I
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
    shl-int/lit8 v17, v72, 0x8

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
    move-result-object v54

    #@236
    .line 368
    .restart local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
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
    move/from16 v0, v72

    #@254
    move/from16 v1, v16

    #@256
    if-ne v0, v1, :cond_a

    #@258
    .line 377
    move-object/from16 v0, v54

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
    move/from16 v1, v103

    #@26e
    move/from16 v2, v106

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
    move/from16 v1, v62

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
    move-result-wide v44

    #@2c5
    .line 406
    .local v44, "curUpTime":J
    move-object/from16 v0, p0

    #@2c7
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mMonkeyStartTime:J

    #@2c9
    move-wide/from16 v16, v0

    #@2cb
    sub-long v86, v44, v16

    #@2cd
    .line 407
    .local v86, "realElapsedTime":J
    move-object/from16 v0, p0

    #@2cf
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptStartTime:J

    #@2d1
    move-wide/from16 v16, v0

    #@2d3
    sub-long v90, v8, v16

    #@2d5
    .line 408
    .local v90, "scriptElapsedTime":J
    cmp-long v16, v86, v90

    #@2d7
    if-gez v16, :cond_7

    #@2d9
    .line 409
    sub-long v100, v90, v86

    #@2db
    .line 410
    .local v100, "waitDuration":J
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
    move-wide/from16 v1, v100

    #@2e7
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@2ea
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@2ed
    .line 413
    .end local v44    # "curUpTime":J
    .end local v86    # "realElapsedTime":J
    .end local v90    # "scriptElapsedTime":J
    .end local v100    # "waitDuration":J
    :cond_7
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@2f1
    move-object/from16 v16, v0

    #@2f3
    move-object/from16 v0, v16

    #@2f5
    move-object/from16 v1, v54

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
    .end local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v62    # "edgeFlags":I
    .end local v72    # "pointerId":I
    .end local v103    # "xPrecision":F
    .end local v106    # "yPrecision":F
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
    .restart local v62    # "edgeFlags":I
    .restart local v72    # "pointerId":I
    .restart local v103    # "xPrecision":F
    .restart local v106    # "yPrecision":F
    :cond_8
    new-instance v54, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@2fd
    move-object/from16 v0, v54

    #@2ff
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@302
    .restart local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto/16 :goto_3

    #@304
    .line 373
    .end local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    :cond_9
    new-instance v54, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    #@306
    move-object/from16 v0, v54

    #@308
    invoke-direct {v0, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    #@30b
    .restart local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto/16 :goto_4

    #@30d
    .line 387
    :cond_a
    if-nez v72, :cond_6

    #@30f
    .line 388
    move-object/from16 v0, v54

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
    move/from16 v1, v103

    #@325
    move/from16 v2, v106

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
    move/from16 v1, v62

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
    move-object/from16 v0, v54

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
    .end local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v62    # "edgeFlags":I
    .end local v72    # "pointerId":I
    .end local v103    # "xPrecision":F
    .end local v106    # "yPrecision":F
    :catch_0
    move-exception v57

    #@37c
    .local v57, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    #@37e
    .line 420
    .end local v57    # "e":Ljava/lang/NumberFormatException;
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
    move-result v88

    #@3a0
    .line 423
    .local v88, "rotationDegree":I
    const/16 v16, 0x1

    #@3a2
    aget-object v16, p2, v16

    #@3a4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3a7
    move-result v70

    #@3a8
    .line 424
    .local v70, "persist":I
    if-eqz v88, :cond_d

    #@3aa
    .line 425
    const/16 v16, 0x1

    #@3ac
    move/from16 v0, v88

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
    if-eqz v70, :cond_10

    #@3bc
    const/16 v16, 0x1

    #@3be
    .line 428
    :goto_8
    move-object/from16 v0, v22

    #@3c0
    move/from16 v1, v88

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
    .end local v70    # "persist":I
    .end local v88    # "rotationDegree":I
    :cond_e
    :goto_9
    return-void

    #@3cf
    .line 426
    .restart local v70    # "persist":I
    .restart local v88    # "rotationDegree":I
    :cond_f
    const/16 v16, 0x2

    #@3d1
    move/from16 v0, v88

    #@3d3
    move/from16 v1, v16

    #@3d5
    if-eq v0, v1, :cond_d

    #@3d7
    .line 427
    const/16 v16, 0x3

    #@3d9
    move/from16 v0, v88

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
    .end local v70    # "persist":I
    .end local v88    # "rotationDegree":I
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
    const-wide/16 v96, 0x0

    #@40f
    .line 442
    .local v96, "tapDuration":J
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
    move-result-wide v96

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
    move-result-object v58

    #@449
    .line 452
    .local v58, "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@44b
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@44d
    move-object/from16 v16, v0

    #@44f
    move-object/from16 v0, v16

    #@451
    move-object/from16 v1, v58

    #@453
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@456
    .line 453
    const-wide/16 v16, 0x0

    #@458
    cmp-long v16, v96, v16

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
    move-wide/from16 v1, v96

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
    move-result-object v59

    #@48f
    .line 460
    .local v59, "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@491
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@493
    move-object/from16 v16, v0

    #@495
    move-object/from16 v0, v16

    #@497
    move-object/from16 v1, v59

    #@499
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    #@49c
    .line 464
    .end local v6    # "downTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v58    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v59    # "e2":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v96    # "tapDuration":J
    :goto_a
    return-void

    #@49d
    .line 461
    :catch_1
    move-exception v57

    #@49e
    .line 462
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
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
    invoke-virtual/range {v57 .. v57}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

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
    .end local v57    # "e":Ljava/lang/NumberFormatException;
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
    move-result-wide v74

    #@4f6
    .line 475
    .local v74, "pressDuration":J
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
    move-result-object v58

    #@51b
    .line 481
    .restart local v58    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v60, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@51d
    move-object/from16 v0, v60

    #@51f
    move-wide/from16 v1, v74

    #@521
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@524
    .line 482
    .local v60, "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@526
    const/16 v17, 0x1

    #@528
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@52b
    .line 483
    add-long v22, v6, v74

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
    add-long v22, v6, v74

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
    move-result-object v61

    #@54d
    .line 486
    .local v61, "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@54f
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@551
    move-object/from16 v16, v0

    #@553
    move-object/from16 v0, v16

    #@555
    move-object/from16 v1, v58

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
    move-object/from16 v1, v60

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
    move-object/from16 v1, v60

    #@571
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    #@574
    .line 493
    .end local v6    # "downTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v58    # "e1":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v60    # "e2":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v61    # "e3":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v74    # "pressDuration":J
    :goto_b
    return-void

    #@575
    .line 490
    :catch_2
    move-exception v57

    #@576
    .line 491
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
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
    invoke-virtual/range {v57 .. v57}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

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
    .end local v57    # "e":Ljava/lang/NumberFormatException;
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
    move-result v24

    #@5be
    .line 499
    .local v24, "xStart":F
    const/16 v16, 0x1

    #@5c0
    aget-object v16, p2, v16

    #@5c2
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5c5
    move-result v25

    #@5c6
    .line 500
    .local v25, "yStart":F
    const/16 v16, 0x2

    #@5c8
    aget-object v16, p2, v16

    #@5ca
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5cd
    move-result v102

    #@5ce
    .line 501
    .local v102, "xEnd":F
    const/16 v16, 0x3

    #@5d0
    aget-object v16, p2, v16

    #@5d2
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5d5
    move-result v105

    #@5d6
    .line 502
    .local v105, "yEnd":F
    const/16 v16, 0x4

    #@5d8
    aget-object v16, p2, v16

    #@5da
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5dd
    move-result v94

    #@5de
    .line 504
    .local v94, "stepCount":I
    move/from16 v18, v24

    #@5e0
    .line 505
    .restart local v18    # "x":F
    move/from16 v19, v25

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
    if-lez v94, :cond_17

    #@5ec
    .line 510
    sub-float v16, v102, v24

    #@5ee
    move/from16 v0, v94

    #@5f0
    int-to-float v0, v0

    #@5f1
    move/from16 v17, v0

    #@5f3
    div-float v104, v16, v17

    #@5f5
    .line 511
    .local v104, "xStep":F
    sub-float v16, v105, v25

    #@5f7
    move/from16 v0, v94

    #@5f9
    int-to-float v0, v0

    #@5fa
    move/from16 v17, v0

    #@5fc
    div-float v107, v16, v17

    #@5fe
    .line 514
    .local v107, "yStep":F
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
    .line 514
    invoke-virtual/range {v22 .. v27}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@61a
    move-result-object v54

    #@61b
    .line 516
    .restart local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    #@61d
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@61f
    move-object/from16 v16, v0

    #@621
    move-object/from16 v0, v16

    #@623
    move-object/from16 v1, v54

    #@625
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@628
    .line 518
    const/16 v63, 0x0

    #@62a
    .local v63, "i":I
    :goto_c
    move/from16 v0, v63

    #@62c
    move/from16 v1, v94

    #@62e
    if-ge v0, v1, :cond_16

    #@630
    .line 519
    add-float v18, v18, v104

    #@632
    .line 520
    add-float v19, v19, v107

    #@634
    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@637
    move-result-wide v8

    #@638
    .line 522
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@63a
    const/16 v17, 0x2

    #@63c
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@63f
    move-object/from16 v0, v16

    #@641
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@644
    move-result-object v16

    #@645
    move-object/from16 v0, v16

    #@647
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@64a
    move-result-object v26

    #@64b
    .line 523
    const/high16 v30, 0x3f800000    # 1.0f

    #@64d
    const/high16 v31, 0x40a00000    # 5.0f

    #@64f
    const/16 v27, 0x0

    #@651
    move/from16 v28, v18

    #@653
    move/from16 v29, v19

    #@655
    .line 522
    invoke-virtual/range {v26 .. v31}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@658
    move-result-object v54

    #@659
    .line 524
    move-object/from16 v0, p0

    #@65b
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@65d
    move-object/from16 v16, v0

    #@65f
    move-object/from16 v0, v16

    #@661
    move-object/from16 v1, v54

    #@663
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@666
    .line 518
    add-int/lit8 v63, v63, 0x1

    #@668
    goto :goto_c

    #@669
    .line 527
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@66c
    move-result-wide v8

    #@66d
    .line 528
    new-instance v16, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@66f
    const/16 v17, 0x1

    #@671
    invoke-direct/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@674
    move-object/from16 v0, v16

    #@676
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@679
    move-result-object v16

    #@67a
    move-object/from16 v0, v16

    #@67c
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@67f
    move-result-object v26

    #@680
    .line 529
    const/high16 v30, 0x3f800000    # 1.0f

    #@682
    const/high16 v31, 0x40a00000    # 5.0f

    #@684
    const/16 v27, 0x0

    #@686
    move/from16 v28, v18

    #@688
    move/from16 v29, v19

    #@68a
    .line 528
    invoke-virtual/range {v26 .. v31}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@68d
    move-result-object v54

    #@68e
    .line 530
    move-object/from16 v0, p0

    #@690
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@692
    move-object/from16 v16, v0

    #@694
    move-object/from16 v0, v16

    #@696
    move-object/from16 v1, v54

    #@698
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@69b
    .line 535
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v24    # "xStart":F
    .end local v25    # "yStart":F
    .end local v54    # "e":Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v63    # "i":I
    .end local v94    # "stepCount":I
    .end local v102    # "xEnd":F
    .end local v104    # "xStep":F
    .end local v105    # "yEnd":F
    .end local v107    # "yStep":F
    :cond_17
    const-string/jumbo v16, "PinchZoom"

    #@69e
    move-object/from16 v0, p1

    #@6a0
    move-object/from16 v1, v16

    #@6a2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6a5
    move-result v16

    #@6a6
    if-ltz v16, :cond_19

    #@6a8
    move-object/from16 v0, p2

    #@6aa
    array-length v0, v0

    #@6ab
    move/from16 v16, v0

    #@6ad
    const/16 v17, 0x9

    #@6af
    move/from16 v0, v16

    #@6b1
    move/from16 v1, v17

    #@6b3
    if-ne v0, v1, :cond_19

    #@6b5
    .line 537
    const/16 v16, 0x0

    #@6b7
    aget-object v16, p2, v16

    #@6b9
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6bc
    move-result v28

    #@6bd
    .line 538
    .local v28, "pt1xStart":F
    const/16 v16, 0x1

    #@6bf
    aget-object v16, p2, v16

    #@6c1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6c4
    move-result v29

    #@6c5
    .line 539
    .local v29, "pt1yStart":F
    const/16 v16, 0x2

    #@6c7
    aget-object v16, p2, v16

    #@6c9
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6cc
    move-result v76

    #@6cd
    .line 540
    .local v76, "pt1xEnd":F
    const/16 v16, 0x3

    #@6cf
    aget-object v16, p2, v16

    #@6d1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6d4
    move-result v78

    #@6d5
    .line 542
    .local v78, "pt1yEnd":F
    const/16 v16, 0x4

    #@6d7
    aget-object v16, p2, v16

    #@6d9
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6dc
    move-result v81

    #@6dd
    .line 543
    .local v81, "pt2xStart":F
    const/16 v16, 0x5

    #@6df
    aget-object v16, p2, v16

    #@6e1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6e4
    move-result v84

    #@6e5
    .line 544
    .local v84, "pt2yStart":F
    const/16 v16, 0x6

    #@6e7
    aget-object v16, p2, v16

    #@6e9
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6ec
    move-result v80

    #@6ed
    .line 545
    .local v80, "pt2xEnd":F
    const/16 v16, 0x7

    #@6ef
    aget-object v16, p2, v16

    #@6f1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@6f4
    move-result v83

    #@6f5
    .line 547
    .local v83, "pt2yEnd":F
    const/16 v16, 0x8

    #@6f7
    aget-object v16, p2, v16

    #@6f9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6fc
    move-result v94

    #@6fd
    .line 549
    .restart local v94    # "stepCount":I
    move/from16 v32, v28

    #@6ff
    .line 550
    .local v32, "x1":F
    move/from16 v33, v29

    #@701
    .line 551
    .local v33, "y1":F
    move/from16 v36, v81

    #@703
    .line 552
    .local v36, "x2":F
    move/from16 v37, v84

    #@705
    .line 554
    .local v37, "y2":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@708
    move-result-wide v6

    #@709
    .line 555
    .restart local v6    # "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@70c
    move-result-wide v8

    #@70d
    .line 557
    .restart local v8    # "eventTime":J
    if-lez v94, :cond_19

    #@70f
    .line 558
    sub-float v16, v76, v28

    #@711
    move/from16 v0, v94

    #@713
    int-to-float v0, v0

    #@714
    move/from16 v17, v0

    #@716
    div-float v77, v16, v17

    #@718
    .line 559
    .local v77, "pt1xStep":F
    sub-float v16, v78, v29

    #@71a
    move/from16 v0, v94

    #@71c
    int-to-float v0, v0

    #@71d
    move/from16 v17, v0

    #@71f
    div-float v79, v16, v17

    #@721
    .line 561
    .local v79, "pt1yStep":F
    sub-float v16, v80, v81

    #@723
    move/from16 v0, v94

    #@725
    int-to-float v0, v0

    #@726
    move/from16 v17, v0

    #@728
    div-float v82, v16, v17

    #@72a
    .line 562
    .local v82, "pt2xStep":F
    sub-float v16, v83, v84

    #@72c
    move/from16 v0, v94

    #@72e
    int-to-float v0, v0

    #@72f
    move/from16 v17, v0

    #@731
    div-float v85, v16, v17

    #@733
    .line 564
    .local v85, "pt2yStep":F
    move-object/from16 v0, p0

    #@735
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@737
    move-object/from16 v16, v0

    #@739
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@73b
    const/16 v22, 0x0

    #@73d
    move-object/from16 v0, v17

    #@73f
    move/from16 v1, v22

    #@741
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@744
    move-object/from16 v0, v17

    #@746
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@749
    move-result-object v17

    #@74a
    move-object/from16 v0, v17

    #@74c
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@74f
    move-result-object v26

    #@750
    .line 565
    const/high16 v30, 0x3f800000    # 1.0f

    #@752
    const/high16 v31, 0x40a00000    # 5.0f

    #@754
    const/16 v27, 0x0

    #@756
    .line 564
    invoke-virtual/range {v26 .. v31}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@759
    move-result-object v17

    #@75a
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@75d
    .line 567
    move-object/from16 v0, p0

    #@75f
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@761
    move-object/from16 v16, v0

    #@763
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@765
    const/16 v22, 0x105

    #@767
    move-object/from16 v0, v17

    #@769
    move/from16 v1, v22

    #@76b
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@76e
    move-object/from16 v0, v17

    #@770
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@773
    move-result-object v17

    #@774
    .line 569
    const/16 v22, 0x0

    #@776
    .line 567
    move-object/from16 v0, v17

    #@778
    move/from16 v1, v22

    #@77a
    move/from16 v2, v28

    #@77c
    move/from16 v3, v29

    #@77e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@781
    move-result-object v17

    #@782
    .line 569
    const/16 v22, 0x1

    #@784
    .line 567
    move-object/from16 v0, v17

    #@786
    move/from16 v1, v22

    #@788
    move/from16 v2, v81

    #@78a
    move/from16 v3, v84

    #@78c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@78f
    move-result-object v17

    #@790
    .line 569
    const/16 v22, 0x1

    #@792
    .line 567
    move-object/from16 v0, v17

    #@794
    move/from16 v1, v22

    #@796
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@799
    move-result-object v17

    #@79a
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@79d
    .line 571
    const/16 v63, 0x0

    #@79f
    .restart local v63    # "i":I
    :goto_d
    move/from16 v0, v63

    #@7a1
    move/from16 v1, v94

    #@7a3
    if-ge v0, v1, :cond_18

    #@7a5
    .line 572
    add-float v32, v32, v77

    #@7a7
    .line 573
    add-float v33, v33, v79

    #@7a9
    .line 574
    add-float v36, v36, v82

    #@7ab
    .line 575
    add-float v37, v37, v85

    #@7ad
    .line 577
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7b0
    move-result-wide v8

    #@7b1
    .line 578
    move-object/from16 v0, p0

    #@7b3
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@7b5
    move-object/from16 v16, v0

    #@7b7
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@7b9
    const/16 v22, 0x2

    #@7bb
    move-object/from16 v0, v17

    #@7bd
    move/from16 v1, v22

    #@7bf
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@7c2
    move-object/from16 v0, v17

    #@7c4
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7c7
    move-result-object v17

    #@7c8
    move-object/from16 v0, v17

    #@7ca
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7cd
    move-result-object v30

    #@7ce
    .line 579
    const/high16 v34, 0x3f800000    # 1.0f

    #@7d0
    const/high16 v35, 0x40a00000    # 5.0f

    #@7d2
    const/16 v31, 0x0

    #@7d4
    .line 578
    invoke-virtual/range {v30 .. v35}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7d7
    move-result-object v34

    #@7d8
    .line 580
    const/high16 v38, 0x3f800000    # 1.0f

    #@7da
    const/high16 v39, 0x40a00000    # 5.0f

    #@7dc
    .line 579
    const/16 v35, 0x1

    #@7de
    .line 578
    invoke-virtual/range {v34 .. v39}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@7e1
    move-result-object v17

    #@7e2
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@7e5
    .line 571
    add-int/lit8 v63, v63, 0x1

    #@7e7
    goto :goto_d

    #@7e8
    .line 582
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7eb
    move-result-wide v8

    #@7ec
    .line 583
    move-object/from16 v0, p0

    #@7ee
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@7f0
    move-object/from16 v16, v0

    #@7f2
    new-instance v17, Lcom/android/commands/monkey/MonkeyTouchEvent;

    #@7f4
    const/16 v22, 0x6

    #@7f6
    move-object/from16 v0, v17

    #@7f8
    move/from16 v1, v22

    #@7fa
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    #@7fd
    move-object/from16 v0, v17

    #@7ff
    invoke-virtual {v0, v6, v7}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@802
    move-result-object v17

    #@803
    move-object/from16 v0, v17

    #@805
    invoke-virtual {v0, v8, v9}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@808
    move-result-object v17

    #@809
    .line 584
    const/16 v22, 0x0

    #@80b
    .line 583
    move-object/from16 v0, v17

    #@80d
    move/from16 v1, v22

    #@80f
    move/from16 v2, v32

    #@811
    move/from16 v3, v33

    #@813
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@816
    move-result-object v17

    #@817
    .line 585
    const/16 v22, 0x1

    #@819
    .line 583
    move-object/from16 v0, v17

    #@81b
    move/from16 v1, v22

    #@81d
    move/from16 v2, v36

    #@81f
    move/from16 v3, v37

    #@821
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    #@824
    move-result-object v17

    #@825
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@828
    .line 590
    .end local v6    # "downTime":J
    .end local v8    # "eventTime":J
    .end local v28    # "pt1xStart":F
    .end local v29    # "pt1yStart":F
    .end local v32    # "x1":F
    .end local v33    # "y1":F
    .end local v36    # "x2":F
    .end local v37    # "y2":F
    .end local v63    # "i":I
    .end local v76    # "pt1xEnd":F
    .end local v77    # "pt1xStep":F
    .end local v78    # "pt1yEnd":F
    .end local v79    # "pt1yStep":F
    .end local v80    # "pt2xEnd":F
    .end local v81    # "pt2xStart":F
    .end local v82    # "pt2xStep":F
    .end local v83    # "pt2yEnd":F
    .end local v84    # "pt2yStart":F
    .end local v85    # "pt2yStep":F
    .end local v94    # "stepCount":I
    :cond_19
    const-string/jumbo v16, "DispatchFlip"

    #@82b
    move-object/from16 v0, p1

    #@82d
    move-object/from16 v1, v16

    #@82f
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@832
    move-result v16

    #@833
    if-ltz v16, :cond_1a

    #@835
    move-object/from16 v0, p2

    #@837
    array-length v0, v0

    #@838
    move/from16 v16, v0

    #@83a
    const/16 v17, 0x1

    #@83c
    move/from16 v0, v16

    #@83e
    move/from16 v1, v17

    #@840
    if-ne v0, v1, :cond_1a

    #@842
    .line 591
    const/16 v16, 0x0

    #@844
    aget-object v16, p2, v16

    #@846
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@849
    move-result v67

    #@84a
    .line 592
    .local v67, "keyboardOpen":Z
    new-instance v50, Lcom/android/commands/monkey/MonkeyFlipEvent;

    #@84c
    move-object/from16 v0, v50

    #@84e
    move/from16 v1, v67

    #@850
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    #@853
    .line 593
    .local v50, "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    #@855
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@857
    move-object/from16 v16, v0

    #@859
    move-object/from16 v0, v16

    #@85b
    move-object/from16 v1, v50

    #@85d
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@860
    .line 597
    .end local v50    # "e":Lcom/android/commands/monkey/MonkeyFlipEvent;
    .end local v67    # "keyboardOpen":Z
    :cond_1a
    const-string/jumbo v16, "LaunchActivity"

    #@863
    move-object/from16 v0, p1

    #@865
    move-object/from16 v1, v16

    #@867
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@86a
    move-result v16

    #@86b
    if-ltz v16, :cond_1d

    #@86d
    move-object/from16 v0, p2

    #@86f
    array-length v0, v0

    #@870
    move/from16 v16, v0

    #@872
    const/16 v17, 0x2

    #@874
    move/from16 v0, v16

    #@876
    move/from16 v1, v17

    #@878
    if-lt v0, v1, :cond_1d

    #@87a
    .line 598
    const/16 v16, 0x0

    #@87c
    aget-object v71, p2, v16

    #@87e
    .line 599
    .local v71, "pkg_name":Ljava/lang/String;
    const/16 v16, 0x1

    #@880
    aget-object v42, p2, v16

    #@882
    .line 600
    .local v42, "cl_name":Ljava/lang/String;
    const-wide/16 v40, 0x0

    #@884
    .line 602
    .local v40, "alarmTime":J
    new-instance v69, Landroid/content/ComponentName;

    #@886
    move-object/from16 v0, v69

    #@888
    move-object/from16 v1, v71

    #@88a
    move-object/from16 v2, v42

    #@88c
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@88f
    .line 604
    .local v69, "mApp":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    #@891
    array-length v0, v0

    #@892
    move/from16 v16, v0

    #@894
    const/16 v17, 0x2

    #@896
    move/from16 v0, v16

    #@898
    move/from16 v1, v17

    #@89a
    if-le v0, v1, :cond_1b

    #@89c
    .line 606
    const/16 v16, 0x2

    #@89e
    :try_start_6
    aget-object v16, p2, v16

    #@8a0
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    #@8a3
    move-result-wide v40

    #@8a4
    .line 613
    :cond_1b
    move-object/from16 v0, p2

    #@8a6
    array-length v0, v0

    #@8a7
    move/from16 v16, v0

    #@8a9
    const/16 v17, 0x2

    #@8ab
    move/from16 v0, v16

    #@8ad
    move/from16 v1, v17

    #@8af
    if-ne v0, v1, :cond_1c

    #@8b1
    .line 614
    new-instance v48, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@8b3
    move-object/from16 v0, v48

    #@8b5
    move-object/from16 v1, v69

    #@8b7
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    #@8ba
    .line 615
    .local v48, "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    #@8bc
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@8be
    move-object/from16 v16, v0

    #@8c0
    move-object/from16 v0, v16

    #@8c2
    move-object/from16 v1, v48

    #@8c4
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@8c7
    .line 620
    :goto_e
    return-void

    #@8c8
    .line 607
    .end local v48    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    :catch_3
    move-exception v57

    #@8c9
    .line 608
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8cb
    new-instance v17, Ljava/lang/StringBuilder;

    #@8cd
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@8d0
    const-string/jumbo v22, "// "

    #@8d3
    move-object/from16 v0, v17

    #@8d5
    move-object/from16 v1, v22

    #@8d7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8da
    move-result-object v17

    #@8db
    invoke-virtual/range {v57 .. v57}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    #@8de
    move-result-object v22

    #@8df
    move-object/from16 v0, v17

    #@8e1
    move-object/from16 v1, v22

    #@8e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e6
    move-result-object v17

    #@8e7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8ea
    move-result-object v17

    #@8eb
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8ee
    .line 609
    return-void

    #@8ef
    .line 617
    .end local v57    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    new-instance v48, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@8f1
    move-object/from16 v0, v48

    #@8f3
    move-object/from16 v1, v69

    #@8f5
    move-wide/from16 v2, v40

    #@8f7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    #@8fa
    .line 618
    .restart local v48    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    #@8fc
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@8fe
    move-object/from16 v16, v0

    #@900
    move-object/from16 v0, v16

    #@902
    move-object/from16 v1, v48

    #@904
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@907
    goto :goto_e

    #@908
    .line 624
    .end local v40    # "alarmTime":J
    .end local v42    # "cl_name":Ljava/lang/String;
    .end local v48    # "e":Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v69    # "mApp":Landroid/content/ComponentName;
    .end local v71    # "pkg_name":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v16, "DeviceWakeUp"

    #@90b
    move-object/from16 v0, p1

    #@90d
    move-object/from16 v1, v16

    #@90f
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@912
    move-result v16

    #@913
    if-ltz v16, :cond_1e

    #@915
    .line 625
    const-string/jumbo v71, "com.google.android.powerutil"

    #@918
    .line 626
    .restart local v71    # "pkg_name":Ljava/lang/String;
    const-string/jumbo v42, "com.google.android.powerutil.WakeUpScreen"

    #@91b
    .line 627
    .restart local v42    # "cl_name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@91d
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    #@91f
    move-wide/from16 v46, v0

    #@921
    .line 630
    .local v46, "deviceSleepTime":J
    new-instance v69, Landroid/content/ComponentName;

    #@923
    move-object/from16 v0, v69

    #@925
    move-object/from16 v1, v71

    #@927
    move-object/from16 v2, v42

    #@929
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@92c
    .line 631
    .restart local v69    # "mApp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    #@92e
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@930
    move-object/from16 v16, v0

    #@932
    new-instance v17, Lcom/android/commands/monkey/MonkeyActivityEvent;

    #@934
    move-object/from16 v0, v17

    #@936
    move-object/from16 v1, v69

    #@938
    move-wide/from16 v2, v46

    #@93a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    #@93d
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@940
    .line 634
    move-object/from16 v0, p0

    #@942
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@944
    move-object/from16 v16, v0

    #@946
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@948
    const/16 v22, 0x0

    #@94a
    const/16 v23, 0x7

    #@94c
    move-object/from16 v0, v17

    #@94e
    move/from16 v1, v22

    #@950
    move/from16 v2, v23

    #@952
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@955
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@958
    .line 635
    move-object/from16 v0, p0

    #@95a
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@95c
    move-object/from16 v16, v0

    #@95e
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@960
    const/16 v22, 0x1

    #@962
    const/16 v23, 0x7

    #@964
    move-object/from16 v0, v17

    #@966
    move/from16 v1, v22

    #@968
    move/from16 v2, v23

    #@96a
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@96d
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@970
    .line 639
    move-object/from16 v0, p0

    #@972
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@974
    move-object/from16 v16, v0

    #@976
    new-instance v17, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@978
    const-wide/16 v22, 0xbb8

    #@97a
    add-long v22, v22, v46

    #@97c
    move-object/from16 v0, v17

    #@97e
    move-wide/from16 v1, v22

    #@980
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@983
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@986
    .line 642
    move-object/from16 v0, p0

    #@988
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@98a
    move-object/from16 v16, v0

    #@98c
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@98e
    const/16 v22, 0x0

    #@990
    const/16 v23, 0x52

    #@992
    move-object/from16 v0, v17

    #@994
    move/from16 v1, v22

    #@996
    move/from16 v2, v23

    #@998
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@99b
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@99e
    .line 643
    move-object/from16 v0, p0

    #@9a0
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@9a2
    move-object/from16 v16, v0

    #@9a4
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9a6
    const/16 v22, 0x1

    #@9a8
    const/16 v23, 0x52

    #@9aa
    move-object/from16 v0, v17

    #@9ac
    move/from16 v1, v22

    #@9ae
    move/from16 v2, v23

    #@9b0
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9b3
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9b6
    .line 646
    move-object/from16 v0, p0

    #@9b8
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@9ba
    move-object/from16 v16, v0

    #@9bc
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9be
    const/16 v22, 0x0

    #@9c0
    const/16 v23, 0x4

    #@9c2
    move-object/from16 v0, v17

    #@9c4
    move/from16 v1, v22

    #@9c6
    move/from16 v2, v23

    #@9c8
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9cb
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9ce
    .line 647
    move-object/from16 v0, p0

    #@9d0
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@9d2
    move-object/from16 v16, v0

    #@9d4
    new-instance v17, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@9d6
    const/16 v22, 0x1

    #@9d8
    const/16 v23, 0x4

    #@9da
    move-object/from16 v0, v17

    #@9dc
    move/from16 v1, v22

    #@9de
    move/from16 v2, v23

    #@9e0
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@9e3
    invoke-virtual/range {v16 .. v17}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@9e6
    .line 649
    return-void

    #@9e7
    .line 653
    .end local v42    # "cl_name":Ljava/lang/String;
    .end local v46    # "deviceSleepTime":J
    .end local v69    # "mApp":Landroid/content/ComponentName;
    .end local v71    # "pkg_name":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v16, "LaunchInstrumentation"

    #@9ea
    move-object/from16 v0, p1

    #@9ec
    move-object/from16 v1, v16

    #@9ee
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@9f1
    move-result v16

    #@9f2
    if-ltz v16, :cond_1f

    #@9f4
    move-object/from16 v0, p2

    #@9f6
    array-length v0, v0

    #@9f7
    move/from16 v16, v0

    #@9f9
    const/16 v17, 0x2

    #@9fb
    move/from16 v0, v16

    #@9fd
    move/from16 v1, v17

    #@9ff
    if-ne v0, v1, :cond_1f

    #@a01
    .line 654
    const/16 v16, 0x0

    #@a03
    aget-object v98, p2, v16

    #@a05
    .line 655
    .local v98, "test_name":Ljava/lang/String;
    const/16 v16, 0x1

    #@a07
    aget-object v89, p2, v16

    #@a09
    .line 656
    .local v89, "runner_name":Ljava/lang/String;
    new-instance v53, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    #@a0b
    move-object/from16 v0, v53

    #@a0d
    move-object/from16 v1, v98

    #@a0f
    move-object/from16 v2, v89

    #@a11
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a14
    .line 657
    .local v53, "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    move-object/from16 v0, p0

    #@a16
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a18
    move-object/from16 v16, v0

    #@a1a
    move-object/from16 v0, v16

    #@a1c
    move-object/from16 v1, v53

    #@a1e
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@a21
    .line 658
    return-void

    #@a22
    .line 662
    .end local v53    # "e":Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    .end local v89    # "runner_name":Ljava/lang/String;
    .end local v98    # "test_name":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v16, "UserWait"

    #@a25
    move-object/from16 v0, p1

    #@a27
    move-object/from16 v1, v16

    #@a29
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a2c
    move-result v16

    #@a2d
    if-ltz v16, :cond_20

    #@a2f
    move-object/from16 v0, p2

    #@a31
    array-length v0, v0

    #@a32
    move/from16 v16, v0

    #@a34
    const/16 v17, 0x1

    #@a36
    move/from16 v0, v16

    #@a38
    move/from16 v1, v17

    #@a3a
    if-ne v0, v1, :cond_20

    #@a3c
    .line 664
    const/16 v16, 0x0

    #@a3e
    :try_start_7
    aget-object v16, p2, v16

    #@a40
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a43
    move-result v16

    #@a44
    move/from16 v0, v16

    #@a46
    int-to-long v0, v0

    #@a47
    move-wide/from16 v92, v0

    #@a49
    .line 665
    .local v92, "sleeptime":J
    new-instance v56, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@a4b
    move-object/from16 v0, v56

    #@a4d
    move-wide/from16 v1, v92

    #@a4f
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@a52
    .line 666
    .local v56, "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    #@a54
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a56
    move-object/from16 v16, v0

    #@a58
    move-object/from16 v0, v16

    #@a5a
    move-object/from16 v1, v56

    #@a5c
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    #@a5f
    .line 669
    .end local v56    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v92    # "sleeptime":J
    :goto_f
    return-void

    #@a60
    .line 674
    :cond_20
    const-string/jumbo v16, "ProfileWait"

    #@a63
    move-object/from16 v0, p1

    #@a65
    move-object/from16 v1, v16

    #@a67
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a6a
    move-result v16

    #@a6b
    if-ltz v16, :cond_21

    #@a6d
    .line 675
    new-instance v56, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@a6f
    move-object/from16 v0, p0

    #@a71
    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    #@a73
    move-wide/from16 v16, v0

    #@a75
    move-object/from16 v0, v56

    #@a77
    move-wide/from16 v1, v16

    #@a79
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@a7c
    .line 676
    .restart local v56    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    #@a7e
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@a80
    move-object/from16 v16, v0

    #@a82
    move-object/from16 v0, v16

    #@a84
    move-object/from16 v1, v56

    #@a86
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@a89
    .line 677
    return-void

    #@a8a
    .line 681
    .end local v56    # "e":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_21
    const-string/jumbo v16, "DispatchPress"

    #@a8d
    move-object/from16 v0, p1

    #@a8f
    move-object/from16 v1, v16

    #@a91
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a94
    move-result v16

    #@a95
    if-ltz v16, :cond_23

    #@a97
    move-object/from16 v0, p2

    #@a99
    array-length v0, v0

    #@a9a
    move/from16 v16, v0

    #@a9c
    const/16 v17, 0x1

    #@a9e
    move/from16 v0, v16

    #@aa0
    move/from16 v1, v17

    #@aa2
    if-ne v0, v1, :cond_23

    #@aa4
    .line 682
    const/16 v16, 0x0

    #@aa6
    aget-object v66, p2, v16

    #@aa8
    .line 683
    .local v66, "key_name":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    #@aab
    move-result v65

    #@aac
    .line 684
    .local v65, "keyCode":I
    if-nez v65, :cond_22

    #@aae
    .line 685
    return-void

    #@aaf
    .line 687
    :cond_22
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@ab1
    const/16 v16, 0x0

    #@ab3
    move/from16 v0, v16

    #@ab5
    move/from16 v1, v65

    #@ab7
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@aba
    .line 688
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@abc
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@abe
    move-object/from16 v16, v0

    #@ac0
    move-object/from16 v0, v16

    #@ac2
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@ac5
    .line 689
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@ac7
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/16 v16, 0x1

    #@ac9
    move/from16 v0, v16

    #@acb
    move/from16 v1, v65

    #@acd
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@ad0
    .line 690
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@ad2
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@ad4
    move-object/from16 v16, v0

    #@ad6
    move-object/from16 v0, v16

    #@ad8
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@adb
    .line 691
    return-void

    #@adc
    .line 695
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v65    # "keyCode":I
    .end local v66    # "key_name":Ljava/lang/String;
    :cond_23
    const-string/jumbo v16, "LongPress"

    #@adf
    move-object/from16 v0, p1

    #@ae1
    move-object/from16 v1, v16

    #@ae3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@ae6
    move-result v16

    #@ae7
    if-ltz v16, :cond_24

    #@ae9
    .line 697
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@aeb
    const/16 v16, 0x0

    #@aed
    const/16 v17, 0x17

    #@aef
    move/from16 v0, v16

    #@af1
    move/from16 v1, v17

    #@af3
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@af6
    .line 698
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@af8
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@afa
    move-object/from16 v16, v0

    #@afc
    move-object/from16 v0, v16

    #@afe
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b01
    .line 699
    new-instance v99, Lcom/android/commands/monkey/MonkeyWaitEvent;

    #@b03
    sget v16, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    #@b05
    move/from16 v0, v16

    #@b07
    int-to-long v0, v0

    #@b08
    move-wide/from16 v16, v0

    #@b0a
    move-object/from16 v0, v99

    #@b0c
    move-wide/from16 v1, v16

    #@b0e
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    #@b11
    .line 700
    .local v99, "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    #@b13
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b15
    move-object/from16 v16, v0

    #@b17
    move-object/from16 v0, v16

    #@b19
    move-object/from16 v1, v99

    #@b1b
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b1e
    .line 701
    new-instance v5, Lcom/android/commands/monkey/MonkeyKeyEvent;

    #@b20
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/16 v16, 0x1

    #@b22
    const/16 v17, 0x17

    #@b24
    move/from16 v0, v16

    #@b26
    move/from16 v1, v17

    #@b28
    invoke-direct {v5, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    #@b2b
    .line 702
    .restart local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    #@b2d
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b2f
    move-object/from16 v16, v0

    #@b31
    move-object/from16 v0, v16

    #@b33
    invoke-virtual {v0, v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b36
    .line 706
    .end local v5    # "e":Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v99    # "we":Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_24
    const-string/jumbo v16, "PowerLog"

    #@b39
    move-object/from16 v0, p1

    #@b3b
    move-object/from16 v1, v16

    #@b3d
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b40
    move-result v16

    #@b41
    if-ltz v16, :cond_25

    #@b43
    move-object/from16 v0, p2

    #@b45
    array-length v0, v0

    #@b46
    move/from16 v16, v0

    #@b48
    if-lez v16, :cond_25

    #@b4a
    .line 707
    const/16 v16, 0x0

    #@b4c
    aget-object v73, p2, v16

    #@b4e
    .line 710
    .local v73, "power_log_type":Ljava/lang/String;
    move-object/from16 v0, p2

    #@b50
    array-length v0, v0

    #@b51
    move/from16 v16, v0

    #@b53
    const/16 v17, 0x1

    #@b55
    move/from16 v0, v16

    #@b57
    move/from16 v1, v17

    #@b59
    if-ne v0, v1, :cond_28

    #@b5b
    .line 711
    new-instance v55, Lcom/android/commands/monkey/MonkeyPowerEvent;

    #@b5d
    move-object/from16 v0, v55

    #@b5f
    move-object/from16 v1, v73

    #@b61
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    #@b64
    .line 712
    .local v55, "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    #@b66
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b68
    move-object/from16 v16, v0

    #@b6a
    move-object/from16 v0, v16

    #@b6c
    move-object/from16 v1, v55

    #@b6e
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b71
    .line 721
    .end local v55    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v73    # "power_log_type":Ljava/lang/String;
    :cond_25
    :goto_10
    const-string/jumbo v16, "WriteLog"

    #@b74
    move-object/from16 v0, p1

    #@b76
    move-object/from16 v1, v16

    #@b78
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b7b
    move-result v16

    #@b7c
    if-ltz v16, :cond_26

    #@b7e
    .line 722
    new-instance v55, Lcom/android/commands/monkey/MonkeyPowerEvent;

    #@b80
    invoke-direct/range {v55 .. v55}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    #@b83
    .line 723
    .restart local v55    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    #@b85
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@b87
    move-object/from16 v16, v0

    #@b89
    move-object/from16 v0, v16

    #@b8b
    move-object/from16 v1, v55

    #@b8d
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@b90
    .line 727
    .end local v55    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_26
    const-string/jumbo v16, "RunCmd"

    #@b93
    move-object/from16 v0, p1

    #@b95
    move-object/from16 v1, v16

    #@b97
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@b9a
    move-result v16

    #@b9b
    if-ltz v16, :cond_27

    #@b9d
    move-object/from16 v0, p2

    #@b9f
    array-length v0, v0

    #@ba0
    move/from16 v16, v0

    #@ba2
    const/16 v17, 0x1

    #@ba4
    move/from16 v0, v16

    #@ba6
    move/from16 v1, v17

    #@ba8
    if-ne v0, v1, :cond_27

    #@baa
    .line 728
    const/16 v16, 0x0

    #@bac
    aget-object v43, p2, v16

    #@bae
    .line 729
    .local v43, "cmd":Ljava/lang/String;
    new-instance v49, Lcom/android/commands/monkey/MonkeyCommandEvent;

    #@bb0
    move-object/from16 v0, v49

    #@bb2
    move-object/from16 v1, v43

    #@bb4
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    #@bb7
    .line 730
    .local v49, "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    #@bb9
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@bbb
    move-object/from16 v16, v0

    #@bbd
    move-object/from16 v0, v16

    #@bbf
    move-object/from16 v1, v49

    #@bc1
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@bc4
    .line 734
    .end local v43    # "cmd":Ljava/lang/String;
    .end local v49    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    :cond_27
    const-string/jumbo v16, "DispatchString"

    #@bc7
    move-object/from16 v0, p1

    #@bc9
    move-object/from16 v1, v16

    #@bcb
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@bce
    move-result v16

    #@bcf
    if-ltz v16, :cond_29

    #@bd1
    move-object/from16 v0, p2

    #@bd3
    array-length v0, v0

    #@bd4
    move/from16 v16, v0

    #@bd6
    const/16 v17, 0x1

    #@bd8
    move/from16 v0, v16

    #@bda
    move/from16 v1, v17

    #@bdc
    if-ne v0, v1, :cond_29

    #@bde
    .line 735
    const/16 v16, 0x0

    #@be0
    aget-object v64, p2, v16

    #@be2
    .line 736
    .local v64, "input":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    #@be4
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@be7
    const-string/jumbo v17, "input text "

    #@bea
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bed
    move-result-object v16

    #@bee
    move-object/from16 v0, v16

    #@bf0
    move-object/from16 v1, v64

    #@bf2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf5
    move-result-object v16

    #@bf6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf9
    move-result-object v43

    #@bfa
    .line 737
    .restart local v43    # "cmd":Ljava/lang/String;
    new-instance v49, Lcom/android/commands/monkey/MonkeyCommandEvent;

    #@bfc
    move-object/from16 v0, v49

    #@bfe
    move-object/from16 v1, v43

    #@c00
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    #@c03
    .line 738
    .restart local v49    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    #@c05
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c07
    move-object/from16 v16, v0

    #@c09
    move-object/from16 v0, v16

    #@c0b
    move-object/from16 v1, v49

    #@c0d
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c10
    .line 739
    return-void

    #@c11
    .line 713
    .end local v43    # "cmd":Ljava/lang/String;
    .end local v49    # "e":Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v64    # "input":Ljava/lang/String;
    .restart local v73    # "power_log_type":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p2

    #@c13
    array-length v0, v0

    #@c14
    move/from16 v16, v0

    #@c16
    const/16 v17, 0x2

    #@c18
    move/from16 v0, v16

    #@c1a
    move/from16 v1, v17

    #@c1c
    if-ne v0, v1, :cond_25

    #@c1e
    .line 714
    const/16 v16, 0x1

    #@c20
    aget-object v95, p2, v16

    #@c22
    .line 715
    .local v95, "test_case_status":Ljava/lang/String;
    new-instance v55, Lcom/android/commands/monkey/MonkeyPowerEvent;

    #@c24
    move-object/from16 v0, v55

    #@c26
    move-object/from16 v1, v73

    #@c28
    move-object/from16 v2, v95

    #@c2a
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c2d
    .line 716
    .restart local v55    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    #@c2f
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c31
    move-object/from16 v16, v0

    #@c33
    move-object/from16 v0, v16

    #@c35
    move-object/from16 v1, v55

    #@c37
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c3a
    goto/16 :goto_10

    #@c3c
    .line 742
    .end local v55    # "e":Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v73    # "power_log_type":Ljava/lang/String;
    .end local v95    # "test_case_status":Ljava/lang/String;
    :cond_29
    const-string/jumbo v16, "StartCaptureFramerate"

    #@c3f
    move-object/from16 v0, p1

    #@c41
    move-object/from16 v1, v16

    #@c43
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c46
    move-result v16

    #@c47
    if-ltz v16, :cond_2a

    #@c49
    .line 743
    new-instance v52, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    #@c4b
    const-string/jumbo v16, "start"

    #@c4e
    move-object/from16 v0, v52

    #@c50
    move-object/from16 v1, v16

    #@c52
    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    #@c55
    .line 744
    .local v52, "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    #@c57
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c59
    move-object/from16 v16, v0

    #@c5b
    move-object/from16 v0, v16

    #@c5d
    move-object/from16 v1, v52

    #@c5f
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c62
    .line 745
    return-void

    #@c63
    .line 748
    .end local v52    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_2a
    const-string/jumbo v16, "EndCaptureFramerate"

    #@c66
    move-object/from16 v0, p1

    #@c68
    move-object/from16 v1, v16

    #@c6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c6d
    move-result v16

    #@c6e
    if-ltz v16, :cond_2b

    #@c70
    move-object/from16 v0, p2

    #@c72
    array-length v0, v0

    #@c73
    move/from16 v16, v0

    #@c75
    const/16 v17, 0x1

    #@c77
    move/from16 v0, v16

    #@c79
    move/from16 v1, v17

    #@c7b
    if-ne v0, v1, :cond_2b

    #@c7d
    .line 749
    const/16 v16, 0x0

    #@c7f
    aget-object v64, p2, v16

    #@c81
    .line 750
    .restart local v64    # "input":Ljava/lang/String;
    new-instance v52, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    #@c83
    const-string/jumbo v16, "end"

    #@c86
    move-object/from16 v0, v52

    #@c88
    move-object/from16 v1, v16

    #@c8a
    move-object/from16 v2, v64

    #@c8c
    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c8f
    .line 751
    .restart local v52    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    #@c91
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@c93
    move-object/from16 v16, v0

    #@c95
    move-object/from16 v0, v16

    #@c97
    move-object/from16 v1, v52

    #@c99
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@c9c
    .line 752
    return-void

    #@c9d
    .line 755
    .end local v52    # "e":Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    .end local v64    # "input":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v16, "StartCaptureAppFramerate"

    #@ca0
    move-object/from16 v0, p1

    #@ca2
    move-object/from16 v1, v16

    #@ca4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@ca7
    move-result v16

    #@ca8
    if-ltz v16, :cond_2c

    #@caa
    move-object/from16 v0, p2

    #@cac
    array-length v0, v0

    #@cad
    move/from16 v16, v0

    #@caf
    const/16 v17, 0x1

    #@cb1
    move/from16 v0, v16

    #@cb3
    move/from16 v1, v17

    #@cb5
    if-ne v0, v1, :cond_2c

    #@cb7
    .line 756
    const/16 v16, 0x0

    #@cb9
    aget-object v4, p2, v16

    #@cbb
    .line 757
    .local v4, "app":Ljava/lang/String;
    new-instance v51, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    #@cbd
    const-string/jumbo v16, "start"

    #@cc0
    move-object/from16 v0, v51

    #@cc2
    move-object/from16 v1, v16

    #@cc4
    invoke-direct {v0, v1, v4}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@cc7
    .line 758
    .local v51, "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    #@cc9
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@ccb
    move-object/from16 v16, v0

    #@ccd
    move-object/from16 v0, v16

    #@ccf
    move-object/from16 v1, v51

    #@cd1
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@cd4
    .line 759
    return-void

    #@cd5
    .line 762
    .end local v4    # "app":Ljava/lang/String;
    .end local v51    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    :cond_2c
    const-string/jumbo v16, "EndCaptureAppFramerate"

    #@cd8
    move-object/from16 v0, p1

    #@cda
    move-object/from16 v1, v16

    #@cdc
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@cdf
    move-result v16

    #@ce0
    if-ltz v16, :cond_2d

    #@ce2
    move-object/from16 v0, p2

    #@ce4
    array-length v0, v0

    #@ce5
    move/from16 v16, v0

    #@ce7
    const/16 v17, 0x2

    #@ce9
    move/from16 v0, v16

    #@ceb
    move/from16 v1, v17

    #@ced
    if-ne v0, v1, :cond_2d

    #@cef
    .line 763
    const/16 v16, 0x0

    #@cf1
    aget-object v4, p2, v16

    #@cf3
    .line 764
    .restart local v4    # "app":Ljava/lang/String;
    const/16 v16, 0x1

    #@cf5
    aget-object v68, p2, v16

    #@cf7
    .line 765
    .local v68, "label":Ljava/lang/String;
    new-instance v51, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;

    #@cf9
    const-string/jumbo v16, "end"

    #@cfc
    move-object/from16 v0, v51

    #@cfe
    move-object/from16 v1, v16

    #@d00
    move-object/from16 v2, v68

    #@d02
    invoke-direct {v0, v1, v4, v2}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d05
    .line 766
    .restart local v51    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    move-object/from16 v0, p0

    #@d07
    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    #@d09
    move-object/from16 v16, v0

    #@d0b
    move-object/from16 v0, v16

    #@d0d
    move-object/from16 v1, v51

    #@d0f
    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    #@d12
    .line 767
    return-void

    #@d13
    .line 279
    .end local v4    # "app":Ljava/lang/String;
    .end local v51    # "e":Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
    .end local v68    # "label":Ljava/lang/String;
    :cond_2d
    return-void

    #@d14
    .line 667
    :catch_4
    move-exception v57

    #@d15
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_f

    #@d17
    .line 431
    .end local v57    # "e":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v57

    #@d18
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_9

    #@d1a
    .line 336
    .end local v57    # "e":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v57

    #@d1b
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2

    #@d1d
    .line 299
    .end local v57    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v57

    #@d1e
    .restart local v57    # "e":Ljava/lang/NumberFormatException;
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
