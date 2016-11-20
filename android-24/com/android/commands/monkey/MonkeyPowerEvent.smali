.class public Lcom/android/commands/monkey/MonkeyPowerEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyPowerEvent.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/autotester.log"

.field private static final TAG:Ljava/lang/String; = "PowerTester"

.field private static final TEST_DELAY_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN_DELAY"

.field private static final TEST_ENDED:Ljava/lang/String; = "AUTOTEST_TEST_SUCCESS"

.field private static final TEST_IDLE_ENDED:Ljava/lang/String; = "AUTOTEST_IDLE_SUCCESS"

.field private static final TEST_SEQ_BEGIN:Ljava/lang/String; = "AUTOTEST_SEQUENCE_BEGIN"

.field private static final TEST_STARTED:Ljava/lang/String; = "AUTOTEST_TEST_BEGIN"

.field private static final USB_DELAY_TIME:J = 0x2710L

.field private static mLogEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static mTestStartTime:J


# instance fields
.field private mPowerLogTag:Ljava/lang/String;

.field private mTestResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 64
    const/4 v0, 0x4

    #@2
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@5
    .line 65
    iput-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@7
    .line 66
    iput-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    #@9
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "powerLogTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 59
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@6
    .line 60
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    #@9
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "powerLogTag"    # Ljava/lang/String;
    .param p2, "powerTestResult"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    #@4
    .line 53
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@6
    .line 54
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    #@8
    .line 51
    return-void
.end method

.method private bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 75
    .local v4, "tagTime":J
    const-string/jumbo v1, "AUTOTEST_TEST_BEGIN"

    #@7
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_2

    #@d
    .line 76
    sput-wide v4, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    #@f
    .line 87
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    #@11
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@14
    .line 88
    .local v0, "event":Landroid/content/ContentValues;
    const-string/jumbo v1, "date"

    #@17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@1e
    .line 89
    const-string/jumbo v1, "tag"

    #@21
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 91
    if-eqz p2, :cond_1

    #@26
    .line 92
    const-string/jumbo v1, "value"

    #@29
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    .line 94
    :cond_1
    sget-object v1, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 72
    return-void

    #@32
    .line 77
    .end local v0    # "event":Landroid/content/ContentValues;
    :cond_2
    const-string/jumbo v1, "AUTOTEST_IDLE_SUCCESS"

    #@35
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_3

    #@3b
    .line 78
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@3e
    move-result-wide v2

    #@3f
    .line 79
    .local v2, "lagTime":J
    sget-wide v6, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    #@41
    add-long v4, v6, v2

    #@43
    .line 80
    const-string/jumbo p1, "AUTOTEST_TEST_SUCCESS"

    #@46
    goto :goto_0

    #@47
    .line 81
    .end local v2    # "lagTime":J
    :cond_3
    const-string/jumbo v1, "AUTOTEST_TEST_BEGIN_DELAY"

    #@4a
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4d
    move-result v1

    #@4e
    if-nez v1, :cond_0

    #@50
    .line 82
    const-wide/16 v6, 0x2710

    #@52
    add-long/2addr v6, v4

    #@53
    sput-wide v6, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    #@55
    .line 83
    sget-wide v4, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestStartTime:J

    #@57
    .line 84
    const-string/jumbo p1, "AUTOTEST_TEST_BEGIN"

    #@5a
    goto :goto_0
.end method

.method private writeLogEvents()V
    .locals 10

    #@0
    .prologue
    .line 103
    sget-object v8, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    #@2
    const/4 v9, 0x0

    #@3
    new-array v9, v9, [Landroid/content/ContentValues;

    #@5
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    check-cast v3, [Landroid/content/ContentValues;

    #@b
    .line 104
    .local v3, "events":[Landroid/content/ContentValues;
    sget-object v8, Lcom/android/commands/monkey/MonkeyPowerEvent;->mLogEvents:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@10
    .line 105
    const/4 v6, 0x0

    #@11
    .line 107
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 108
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@17
    .local v4, "i":I
    :goto_0
    array-length v8, v3

    #@18
    if-ge v4, v8, :cond_1

    #@1a
    .line 109
    aget-object v2, v3, v4

    #@1c
    .line 110
    .local v2, "event":Landroid/content/ContentValues;
    const-string/jumbo v8, "date"

    #@1f
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@26
    move-result-wide v8

    #@27
    invoke-static {v8, v9}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 111
    const-string/jumbo v8, "tag"

    #@31
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 112
    const-string/jumbo v8, "value"

    #@3b
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_0

    #@41
    .line 113
    const-string/jumbo v8, "value"

    #@44
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 114
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v8, " "

    #@4b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4e
    .line 115
    const/16 v8, 0xa

    #@50
    const/16 v9, 0x2f

    #@52
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@59
    .line 117
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "\n"

    #@5c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 108
    add-int/lit8 v4, v4, 0x1

    #@61
    goto :goto_0

    #@62
    .line 119
    .end local v2    # "event":Landroid/content/ContentValues;
    :cond_1
    new-instance v7, Ljava/io/FileWriter;

    #@64
    const-string/jumbo v8, "/sdcard/autotester.log"

    #@67
    const/4 v9, 0x1

    #@68
    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    .line 120
    .local v7, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6e
    .end local v6    # "writer":Ljava/io/FileWriter;
    move-result-object v8

    #@6f
    invoke-virtual {v7, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@72
    .line 125
    if-eqz v7, :cond_2

    #@74
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@77
    :cond_2
    :goto_1
    move-object v6, v7

    #@78
    .line 100
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v7    # "writer":Ljava/io/FileWriter;
    :cond_3
    :goto_2
    return-void

    #@79
    .line 126
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    #@7a
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@7b
    .line 121
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    #@7c
    .line 122
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string/jumbo v8, "PowerTester"

    #@7f
    const-string/jumbo v9, "Can\'t write sdcard log file"

    #@82
    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    .line 125
    if-eqz v6, :cond_3

    #@87
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@8a
    goto :goto_2

    #@8b
    .line 126
    :catch_2
    move-exception v1

    #@8c
    goto :goto_2

    #@8d
    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@8e
    .line 125
    :goto_4
    if-eqz v6, :cond_4

    #@90
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@93
    .line 123
    :cond_4
    :goto_5
    throw v8

    #@94
    .line 126
    :catch_3
    move-exception v1

    #@95
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    #@96
    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    #@97
    move-object v6, v7

    #@98
    .end local v7    # "writer":Ljava/io/FileWriter;
    .local v6, "writer":Ljava/io/FileWriter;
    goto :goto_4

    #@99
    .line 121
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    #@9a
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    #@9b
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 2
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 134
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "AUTOTEST_SEQUENCE_BEGIN"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 135
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@11
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@13
    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    .line 142
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 137
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mPowerLogTag:Ljava/lang/String;

    #@1e
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyPowerEvent;->mTestResult:Ljava/lang/String;

    #@20
    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;->bufferLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyPowerEvent;->writeLogEvents()V

    #@27
    goto :goto_0
.end method
