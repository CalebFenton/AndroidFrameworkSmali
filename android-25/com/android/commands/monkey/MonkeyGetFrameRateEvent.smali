.class public Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/avgFrameRateOut.txt"

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetFrameRateEvent"

.field private static mDuration:F

.field private static mEndFrameNo:I

.field private static mEndTime:J

.field private static mStartFrameNo:I

.field private static mStartTime:J

.field private static mTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_FRAMERATE_CMD:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    #@3
    .line 53
    const-string/jumbo v0, ".*\\(([a-f[A-F][0-9]].*?)\\s.*\\)"

    #@6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@9
    move-result-object v0

    #@a
    .line 52
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    #@c
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 40
    const-string/jumbo v0, "service call SurfaceFlinger 1013"

    #@7
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    #@9
    .line 63
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    #@b
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "testCaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 40
    const-string/jumbo v0, "service call SurfaceFlinger 1013"

    #@7
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    #@9
    .line 57
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    #@b
    .line 58
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    #@d
    .line 55
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .locals 2
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    .line 69
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    #@2
    cmpl-float v1, p2, v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 70
    int-to-float v1, p1

    #@7
    div-float v0, v1, p2

    #@9
    .line 72
    :cond_0
    return v0
.end method

.method private getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    const/4 v1, 0x0

    #@1
    .line 102
    .local v1, "noOfFrames":Ljava/lang/String;
    sget-object v2, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@6
    move-result-object v0

    #@7
    .line 103
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 104
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 106
    .end local v1    # "noOfFrames":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private writeAverageFrameRate()V
    .locals 9

    #@0
    .prologue
    .line 79
    const/4 v3, 0x0

    #@1
    .line 81
    .local v3, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    #@2
    .line 83
    .local v2, "totalNumberOfFrame":I
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    #@4
    const-string/jumbo v5, "/sdcard/avgFrameRateOut.txt"

    #@7
    const/4 v6, 0x1

    #@8
    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 84
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    #@d
    sget v6, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    #@f
    sub-int v2, v5, v6

    #@11
    .line 85
    sget v5, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    #@13
    invoke-direct {p0, v2, v5}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getAverageFrameRate(IF)F

    #@16
    move-result v0

    #@17
    .line 86
    .local v0, "avgFrameRate":F
    const-string/jumbo v5, "%s:%.2f\n"

    #@1a
    const/4 v6, 0x2

    #@1b
    new-array v6, v6, [Ljava/lang/Object;

    #@1d
    sget-object v7, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mTestCaseName:Ljava/lang/String;

    #@1f
    const/4 v8, 0x0

    #@20
    aput-object v7, v6, v8

    #@22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@25
    move-result-object v7

    #@26
    const/4 v8, 0x1

    #@27
    aput-object v7, v6, v8

    #@29
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    #@30
    .line 87
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 92
    if-eqz v4, :cond_0

    #@35
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@38
    :cond_0
    :goto_0
    move-object v3, v4

    #@39
    .line 78
    .end local v0    # "avgFrameRate":F
    .end local v4    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    #@3a
    .line 93
    .restart local v0    # "avgFrameRate":F
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    #@3b
    .line 94
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MonkeyGetFrameRateEvent"

    #@3e
    new-instance v6, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v7, "IOException "

    #@46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_0

    #@5a
    .line 88
    .end local v0    # "avgFrameRate":F
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    #@5b
    .line 89
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "MonkeyGetFrameRateEvent"

    #@5e
    const-string/jumbo v6, "Can\'t write sdcard log file"

    #@61
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@64
    .line 92
    if-eqz v3, :cond_1

    #@66
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@69
    goto :goto_1

    #@6a
    .line 93
    :catch_2
    move-exception v1

    #@6b
    .line 94
    const-string/jumbo v5, "MonkeyGetFrameRateEvent"

    #@6e
    new-instance v6, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v7, "IOException "

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v6

    #@86
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    goto :goto_1

    #@8a
    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@8b
    .line 92
    :goto_3
    if-eqz v3, :cond_2

    #@8d
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@90
    .line 90
    :cond_2
    :goto_4
    throw v5

    #@91
    .line 93
    :catch_3
    move-exception v1

    #@92
    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MonkeyGetFrameRateEvent"

    #@95
    new-instance v7, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v8, "IOException "

    #@9d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v7

    #@a1
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    goto :goto_4

    #@b1
    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    #@b2
    move-object v3, v4

    #@b3
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    goto :goto_3

    #@b4
    .line 88
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    #@b5
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@b6
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 14
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 111
    const/4 v5, 0x0

    #@1
    .line 112
    .local v5, "p":Ljava/lang/Process;
    const/4 v6, 0x0

    #@2
    .line 114
    .local v6, "result":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@5
    move-result-object v9

    #@6
    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    #@8
    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@b
    move-result-object v5

    #@c
    .line 115
    .local v5, "p":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    #@f
    move-result v8

    #@10
    .line 116
    .local v8, "status":I
    if-eqz v8, :cond_0

    #@12
    .line 117
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@14
    const-string/jumbo v10, "// Shell command %s status was %s"

    #@17
    const/4 v11, 0x2

    #@18
    new-array v11, v11, [Ljava/lang/Object;

    #@1a
    .line 118
    iget-object v12, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    #@1c
    const/4 v13, 0x0

    #@1d
    aput-object v12, v11, v13

    #@1f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v12

    #@23
    const/4 v13, 0x1

    #@24
    aput-object v12, v11, v13

    #@26
    .line 117
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v10

    #@2a
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 120
    :cond_0
    new-instance v7, Ljava/io/BufferedReader;

    #@2f
    new-instance v9, Ljava/io/InputStreamReader;

    #@31
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@34
    move-result-object v10

    #@35
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@38
    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 123
    .end local v6    # "result":Ljava/io/BufferedReader;
    .local v7, "result":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    .line 125
    .local v4, "output":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@41
    .line 126
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    #@43
    const-string/jumbo v10, "start"

    #@46
    if-ne v9, v10, :cond_5

    #@48
    .line 127
    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    const/16 v10, 0x10

    #@4e
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@51
    move-result v9

    #@52
    sput v9, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartFrameNo:I

    #@54
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@57
    move-result-wide v10

    #@58
    sput-wide v10, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5a
    .line 142
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    #@5c
    .line 143
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    #@5f
    .line 145
    :cond_2
    if-eqz v5, :cond_3

    #@61
    .line 146
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@64
    :cond_3
    :goto_1
    move-object v6, v7

    #@65
    .line 152
    .end local v4    # "output":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "result":Ljava/io/BufferedReader;
    .end local v8    # "status":I
    :cond_4
    :goto_2
    const/4 v9, 0x1

    #@66
    return v9

    #@67
    .line 129
    .restart local v4    # "output":Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "result":Ljava/io/BufferedReader;
    .restart local v8    # "status":I
    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStatus:Ljava/lang/String;

    #@69
    const-string/jumbo v10, "end"

    #@6c
    if-ne v9, v10, :cond_1

    #@6e
    .line 130
    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->getNumberOfFrames(Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    const/16 v10, 0x10

    #@74
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@77
    move-result v9

    #@78
    sput v9, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndFrameNo:I

    #@7a
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7d
    move-result-wide v10

    #@7e
    sput-wide v10, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    #@80
    .line 132
    sget-wide v10, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mEndTime:J

    #@82
    sget-wide v12, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mStartTime:J

    #@84
    sub-long v0, v10, v12

    #@86
    .line 133
    .local v0, "diff":J
    long-to-double v10, v0

    #@87
    const-wide v12, 0x408f400000000000L    # 1000.0

    #@8c
    div-double/2addr v10, v12

    #@8d
    double-to-float v9, v10

    #@8e
    sput v9, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->mDuration:F

    #@90
    .line 134
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->writeAverageFrameRate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@93
    goto :goto_0

    #@94
    .line 137
    .end local v0    # "diff":J
    .end local v4    # "output":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@95
    .local v3, "e":Ljava/lang/Exception;
    move-object v6, v7

    #@96
    .line 138
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "result":Ljava/io/BufferedReader;
    .end local v8    # "status":I
    :goto_3
    :try_start_4
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@98
    new-instance v10, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v11, "// Exception from "

    #@a0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v10

    #@a4
    iget-object v11, p0, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;->GET_FRAMERATE_CMD:Ljava/lang/String;

    #@a6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v10

    #@aa
    const-string/jumbo v11, ":"

    #@ad
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b8
    .line 139
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ba
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c1
    .line 142
    if-eqz v6, :cond_6

    #@c3
    .line 143
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    #@c6
    .line 145
    :cond_6
    if-eqz v5, :cond_4

    #@c8
    .line 146
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@cb
    goto :goto_2

    #@cc
    .line 148
    :catch_1
    move-exception v2

    #@cd
    .line 149
    .local v2, "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@cf
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@d2
    move-result-object v10

    #@d3
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d6
    goto :goto_2

    #@d7
    .line 148
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "output":Ljava/lang/String;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "result":Ljava/io/BufferedReader;
    .restart local v8    # "status":I
    :catch_2
    move-exception v2

    #@d8
    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@da
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@dd
    move-result-object v10

    #@de
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e1
    goto :goto_1

    #@e2
    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/lang/String;
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "result":Ljava/io/BufferedReader;
    .end local v8    # "status":I
    :catchall_0
    move-exception v9

    #@e3
    .line 142
    :goto_4
    if-eqz v6, :cond_7

    #@e5
    .line 143
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    #@e8
    .line 145
    :cond_7
    if-eqz v5, :cond_8

    #@ea
    .line 146
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@ed
    .line 140
    :cond_8
    :goto_5
    throw v9

    #@ee
    .line 148
    :catch_3
    move-exception v2

    #@ef
    .line 149
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f1
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@f4
    move-result-object v11

    #@f5
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f8
    goto :goto_5

    #@f9
    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "p":Ljava/lang/Process;
    .restart local v7    # "result":Ljava/io/BufferedReader;
    .restart local v8    # "status":I
    :catchall_1
    move-exception v9

    #@fa
    move-object v6, v7

    #@fb
    .end local v7    # "result":Ljava/io/BufferedReader;
    .local v6, "result":Ljava/io/BufferedReader;
    goto :goto_4

    #@fc
    .line 137
    .end local v5    # "p":Ljava/lang/Process;
    .end local v8    # "status":I
    .local v6, "result":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    #@fd
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method
