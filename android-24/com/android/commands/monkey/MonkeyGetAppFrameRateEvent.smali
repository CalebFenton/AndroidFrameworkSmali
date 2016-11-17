.class public Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyGetAppFrameRateEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String;

.field private static final NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MonkeyGetAppFrameRateEvent"

.field private static sActivityName:Ljava/lang/String;

.field private static sDuration:F

.field private static sEndFrameNo:I

.field private static sEndTime:J

.field private static sStartFrameNo:I

.field private static sStartTime:J

.field private static sTestCaseName:Ljava/lang/String;


# instance fields
.field private GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    #@3
    .line 46
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    #@5
    .line 51
    new-instance v0, Ljava/io/File;

    #@7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@a
    move-result-object v1

    #@b
    .line 52
    const-string/jumbo v2, "avgAppFrameRateOut.txt"

    #@e
    .line 51
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    #@17
    .line 54
    const-string/jumbo v0, ".* ([0-9]*) frames rendered"

    #@1a
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1d
    move-result-object v0

    #@1e
    .line 53
    sput-object v0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    #@20
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 40
    const-string/jumbo v0, "dumpsys gfxinfo %s"

    #@7
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    #@9
    .line 71
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    #@b
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 40
    const-string/jumbo v0, "dumpsys gfxinfo %s"

    #@7
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    #@9
    .line 65
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    #@b
    .line 66
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    #@d
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "testCaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 40
    const-string/jumbo v0, "dumpsys gfxinfo %s"

    #@7
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    #@9
    .line 58
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    #@b
    .line 59
    sput-object p2, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    #@d
    .line 60
    sput-object p3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    #@f
    .line 56
    return-void
.end method

.method private getAverageFrameRate(IF)F
    .locals 2
    .param p1, "totalNumberOfFrame"    # I
    .param p2, "duration"    # F

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    .line 77
    .local v0, "avgFrameRate":F
    const/4 v1, 0x0

    #@2
    cmpl-float v1, p2, v1

    #@4
    if-lez v1, :cond_0

    #@6
    .line 78
    int-to-float v1, p1

    #@7
    div-float v0, v1, p2

    #@9
    .line 80
    :cond_0
    return v0
.end method

.method private getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    const/4 v2, 0x0

    #@1
    .line 111
    .local v2, "noOfFrames":Ljava/lang/String;
    const/4 v0, 0x0

    #@2
    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@8
    .line 113
    sget-object v3, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->NO_OF_FRAMES_PATTERN:Ljava/util/regex/Pattern;

    #@a
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@d
    move-result-object v1

    #@e
    .line 114
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 115
    const/4 v3, 0x1

    #@15
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 119
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "noOfFrames":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private writeAverageFrameRate()V
    .locals 9

    #@0
    .prologue
    .line 87
    const/4 v3, 0x0

    #@1
    .line 89
    .local v3, "writer":Ljava/io/FileWriter;
    const/4 v2, 0x0

    #@2
    .line 91
    .local v2, "totalNumberOfFrame":I
    :try_start_0
    const-string/jumbo v5, "MonkeyGetAppFrameRateEvent"

    #@5
    new-instance v6, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v7, "file: "

    #@d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v6

    #@11
    sget-object v7, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    #@13
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 92
    new-instance v4, Ljava/io/FileWriter;

    #@20
    sget-object v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->LOG_FILE:Ljava/lang/String;

    #@22
    const/4 v6, 0x1

    #@23
    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 93
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    sget v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    #@28
    sget v6, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    #@2a
    sub-int v2, v5, v6

    #@2c
    .line 94
    sget v5, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    #@2e
    invoke-direct {p0, v2, v5}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getAverageFrameRate(IF)F

    #@31
    move-result v0

    #@32
    .line 95
    .local v0, "avgFrameRate":F
    const-string/jumbo v5, "%s:%.2f\n"

    #@35
    const/4 v6, 0x2

    #@36
    new-array v6, v6, [Ljava/lang/Object;

    #@38
    sget-object v7, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sTestCaseName:Ljava/lang/String;

    #@3a
    const/4 v8, 0x0

    #@3b
    aput-object v7, v6, v8

    #@3d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@40
    move-result-object v7

    #@41
    const/4 v8, 0x1

    #@42
    aput-object v7, v6, v8

    #@44
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4b
    .line 100
    if-eqz v4, :cond_0

    #@4d
    .line 101
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@50
    :cond_0
    :goto_0
    move-object v3, v4

    #@51
    .line 86
    .end local v0    # "avgFrameRate":F
    .end local v4    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    #@52
    .line 102
    .restart local v0    # "avgFrameRate":F
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    #@53
    .line 103
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MonkeyGetAppFrameRateEvent"

    #@56
    new-instance v6, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v7, "IOException "

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@71
    goto :goto_0

    #@72
    .line 96
    .end local v0    # "avgFrameRate":F
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    #@73
    .line 97
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "MonkeyGetAppFrameRateEvent"

    #@76
    const-string/jumbo v6, "Can\'t write sdcard log file"

    #@79
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    .line 100
    if-eqz v3, :cond_1

    #@7e
    .line 101
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@81
    goto :goto_1

    #@82
    .line 102
    :catch_2
    move-exception v1

    #@83
    .line 103
    const-string/jumbo v5, "MonkeyGetAppFrameRateEvent"

    #@86
    new-instance v6, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v7, "IOException "

    #@8e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    goto :goto_1

    #@a2
    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@a3
    .line 100
    :goto_3
    if-eqz v3, :cond_2

    #@a5
    .line 101
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@a8
    .line 98
    :cond_2
    :goto_4
    throw v5

    #@a9
    .line 102
    :catch_3
    move-exception v1

    #@aa
    .line 103
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MonkeyGetAppFrameRateEvent"

    #@ad
    new-instance v7, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v8, "IOException "

    #@b5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v7

    #@c5
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    goto :goto_4

    #@c9
    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    #@ca
    move-object v3, v4

    #@cb
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    goto :goto_3

    #@cc
    .line 96
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    #@cd
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@ce
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 15
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 124
    const/4 v6, 0x0

    #@1
    .line 125
    .local v6, "p":Ljava/lang/Process;
    const/4 v7, 0x0

    #@2
    .line 126
    .local v7, "result":Ljava/io/BufferedReader;
    iget-object v10, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->GET_APP_FRAMERATE_TMPL:Ljava/lang/String;

    #@4
    const/4 v11, 0x1

    #@5
    new-array v11, v11, [Ljava/lang/Object;

    #@7
    sget-object v12, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sActivityName:Ljava/lang/String;

    #@9
    const/4 v13, 0x0

    #@a
    aput-object v12, v11, v13

    #@c
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 128
    .local v0, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@13
    move-result-object v10

    #@14
    invoke-virtual {v10, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    #@17
    move-result-object v6

    #@18
    .line 129
    .local v6, "p":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    #@1b
    move-result v9

    #@1c
    .line 130
    .local v9, "status":I
    if-eqz v9, :cond_0

    #@1e
    .line 131
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v11, "// Shell command %s status was %s"

    #@23
    const/4 v12, 0x2

    #@24
    new-array v12, v12, [Ljava/lang/Object;

    #@26
    .line 132
    const/4 v13, 0x0

    #@27
    aput-object v0, v12, v13

    #@29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v13

    #@2d
    const/4 v14, 0x1

    #@2e
    aput-object v13, v12, v14

    #@30
    .line 131
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v11

    #@34
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 134
    :cond_0
    new-instance v8, Ljava/io/BufferedReader;

    #@39
    new-instance v10, Ljava/io/InputStreamReader;

    #@3b
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@3e
    move-result-object v11

    #@3f
    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@42
    invoke-direct {v8, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 136
    .end local v7    # "result":Ljava/io/BufferedReader;
    .local v8, "result":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v8}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->getNumberOfFrames(Ljava/io/BufferedReader;)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .line 138
    .local v5, "output":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@4b
    .line 139
    const-string/jumbo v10, "start"

    #@4e
    iget-object v11, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    #@50
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v10

    #@54
    if-eqz v10, :cond_5

    #@56
    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@59
    move-result v10

    #@5a
    sput v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartFrameNo:I

    #@5c
    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5f
    move-result-wide v10

    #@60
    sput-wide v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@62
    .line 155
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    #@64
    .line 156
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    #@67
    .line 158
    :cond_2
    if-eqz v6, :cond_3

    #@69
    .line 159
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@6c
    :cond_3
    :goto_1
    move-object v7, v8

    #@6d
    .line 165
    .end local v5    # "output":Ljava/lang/String;
    .end local v6    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/io/BufferedReader;
    .end local v9    # "status":I
    :cond_4
    :goto_2
    const/4 v10, 0x1

    #@6e
    return v10

    #@6f
    .line 142
    .restart local v5    # "output":Ljava/lang/String;
    .restart local v6    # "p":Ljava/lang/Process;
    .restart local v8    # "result":Ljava/io/BufferedReader;
    .restart local v9    # "status":I
    :cond_5
    :try_start_3
    const-string/jumbo v10, "end"

    #@72
    iget-object v11, p0, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->mStatus:Ljava/lang/String;

    #@74
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v10

    #@78
    if-eqz v10, :cond_1

    #@7a
    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7d
    move-result v10

    #@7e
    sput v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndFrameNo:I

    #@80
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@83
    move-result-wide v10

    #@84
    sput-wide v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    #@86
    .line 145
    sget-wide v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sEndTime:J

    #@88
    sget-wide v12, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sStartTime:J

    #@8a
    sub-long v2, v10, v12

    #@8c
    .line 146
    .local v2, "diff":J
    long-to-double v10, v2

    #@8d
    const-wide v12, 0x408f400000000000L    # 1000.0

    #@92
    div-double/2addr v10, v12

    #@93
    double-to-float v10, v10

    #@94
    sput v10, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->sDuration:F

    #@96
    .line 147
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyGetAppFrameRateEvent;->writeAverageFrameRate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@99
    goto :goto_0

    #@9a
    .line 150
    .end local v2    # "diff":J
    .end local v5    # "output":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@9b
    .local v4, "e":Ljava/lang/Exception;
    move-object v7, v8

    #@9c
    .line 151
    .end local v6    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/io/BufferedReader;
    .end local v9    # "status":I
    :goto_3
    :try_start_4
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9e
    new-instance v11, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v12, "// Exception from "

    #@a6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v11

    #@aa
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v11

    #@ae
    const-string/jumbo v12, ":"

    #@b1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v11

    #@b5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v11

    #@b9
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@bc
    .line 152
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@be
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@c1
    move-result-object v11

    #@c2
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c5
    .line 155
    if-eqz v7, :cond_6

    #@c7
    .line 156
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    #@ca
    .line 158
    :cond_6
    if-eqz v6, :cond_4

    #@cc
    .line 159
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@cf
    goto :goto_2

    #@d0
    .line 161
    :catch_1
    move-exception v1

    #@d1
    .line 162
    .local v1, "e":Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d3
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@d6
    move-result-object v11

    #@d7
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@da
    goto :goto_2

    #@db
    .line 161
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "output":Ljava/lang/String;
    .restart local v6    # "p":Ljava/lang/Process;
    .restart local v8    # "result":Ljava/io/BufferedReader;
    .restart local v9    # "status":I
    :catch_2
    move-exception v1

    #@dc
    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@de
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@e1
    move-result-object v11

    #@e2
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e5
    goto :goto_1

    #@e6
    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "output":Ljava/lang/String;
    .end local v6    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/io/BufferedReader;
    .end local v9    # "status":I
    :catchall_0
    move-exception v10

    #@e7
    .line 155
    :goto_4
    if-eqz v7, :cond_7

    #@e9
    .line 156
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    #@ec
    .line 158
    :cond_7
    if-eqz v6, :cond_8

    #@ee
    .line 159
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@f1
    .line 153
    :cond_8
    :goto_5
    throw v10

    #@f2
    .line 161
    :catch_3
    move-exception v1

    #@f3
    .line 162
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f5
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@f8
    move-result-object v12

    #@f9
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@fc
    goto :goto_5

    #@fd
    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "p":Ljava/lang/Process;
    .restart local v8    # "result":Ljava/io/BufferedReader;
    .restart local v9    # "status":I
    :catchall_1
    move-exception v10

    #@fe
    move-object v7, v8

    #@ff
    .end local v8    # "result":Ljava/io/BufferedReader;
    .local v7, "result":Ljava/io/BufferedReader;
    goto :goto_4

    #@100
    .line 150
    .end local v6    # "p":Ljava/lang/Process;
    .end local v9    # "status":I
    .local v7, "result":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    #@101
    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method
