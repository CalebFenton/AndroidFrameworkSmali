.class public Lgov/nist/javax/sip/stack/ServerLog;
.super Ljava/lang/Object;
.source "ServerLog.java"

# interfaces
.implements Lgov/nist/core/ServerLogger;


# instance fields
.field private auxInfo:Ljava/lang/String;

.field private configurationProperties:Ljava/util/Properties;

.field private description:Ljava/lang/String;

.field private logContent:Z

.field private logFileName:Ljava/lang/String;

.field private printWriter:Ljava/io/PrintWriter;

.field private sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private stackIpAddress:Ljava/lang/String;

.field protected stackLogger:Lgov/nist/core/StackLogger;

.field protected traceLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    const/16 v0, 0x10

    #@5
    iput v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    #@7
    .line 92
    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 311
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    #@3
    .line 312
    move-object v0, p1

    #@4
    .line 313
    .local v0, "logInfo":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 314
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@a
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d
    .line 316
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 317
    iget-object v1, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@17
    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logInfo(Ljava/lang/String;)V

    #@1a
    .line 309
    :cond_1
    return-void
.end method

.method private logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "sender"    # Z
    .param p5, "callId"    # Ljava/lang/String;
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "status"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "time"    # J
    .param p11, "timestampVal"    # J

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object/from16 v3, p3

    #@8
    move-wide/from16 v4, p9

    #@a
    move/from16 v6, p4

    #@c
    move-object/from16 v7, p6

    #@e
    move-object/from16 v8, p8

    #@10
    move-object/from16 v9, p5

    #@12
    move-wide/from16 v10, p11

    #@14
    invoke-interface/range {v0 .. v11}, Lgov/nist/javax/sip/LogRecordFactory;->createLogRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lgov/nist/javax/sip/LogRecord;

    #@17
    move-result-object v12

    #@18
    .line 328
    .local v12, "log":Lgov/nist/javax/sip/LogRecord;
    if-eqz v12, :cond_0

    #@1a
    .line 329
    invoke-interface {v12}, Lgov/nist/javax/sip/LogRecord;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;)V

    #@21
    .line 324
    :cond_0
    return-void
.end method

.method private setProperties(Ljava/util/Properties;)V
    .locals 8
    .param p1, "configurationProperties"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 97
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@3
    .line 99
    const-string/jumbo v4, "javax.sip.STACK_NAME"

    #@6
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    #@c
    .line 100
    const-string/jumbo v4, "javax.sip.IP_ADDRESS"

    #@f
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v4

    #@13
    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    #@15
    .line 101
    const-string/jumbo v4, "gov.nist.javax.sip.SERVER_LOG"

    #@18
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@1e
    .line 102
    const-string/jumbo v4, "gov.nist.javax.sip.TRACE_LEVEL"

    #@21
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 104
    .local v3, "logLevel":Ljava/lang/String;
    const-string/jumbo v4, "gov.nist.javax.sip.LOG_MESSAGE_CONTENT"

    #@28
    .line 103
    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 106
    .local v2, "logContent":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@2e
    const-string/jumbo v4, "true"

    #@31
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    :goto_0
    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    #@37
    .line 108
    if-eqz v3, :cond_0

    #@39
    .line 109
    const-string/jumbo v4, "LOG4J"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 157
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    #@45
    .line 96
    return-void

    #@46
    :cond_1
    move v4, v5

    #@47
    .line 106
    goto :goto_0

    #@48
    .line 137
    :cond_2
    :try_start_0
    const-string/jumbo v4, "DEBUG"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_3

    #@51
    .line 138
    const/16 v1, 0x20

    #@53
    .line 149
    .local v1, "ll":I
    :goto_2
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/ServerLog;->setTraceLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    goto :goto_1

    #@57
    .line 150
    .end local v1    # "ll":I
    :catch_0
    move-exception v0

    #@58
    .line 151
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v7, "ServerLog: WARNING Bad integer "

    #@62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@71
    .line 152
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@73
    const-string/jumbo v6, "logging dislabled "

    #@76
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@79
    .line 153
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/ServerLog;->setTraceLevel(I)V

    #@7c
    goto :goto_1

    #@7d
    .line 139
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "INFO"

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_4

    #@86
    .line 140
    const/16 v1, 0x10

    #@88
    .restart local v1    # "ll":I
    goto :goto_2

    #@89
    .line 141
    .end local v1    # "ll":I
    :cond_4
    const-string/jumbo v4, "ERROR"

    #@8c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_5

    #@92
    .line 142
    const/4 v1, 0x4

    #@93
    .restart local v1    # "ll":I
    goto :goto_2

    #@94
    .line 143
    .end local v1    # "ll":I
    :cond_5
    const-string/jumbo v4, "NONE"

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v4

    #@9b
    if-nez v4, :cond_6

    #@9d
    const-string/jumbo v4, "OFF"

    #@a0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v4

    #@a4
    if-eqz v4, :cond_7

    #@a6
    .line 144
    :cond_6
    const/4 v1, 0x0

    #@a7
    .restart local v1    # "ll":I
    goto :goto_2

    #@a8
    .line 146
    .end local v1    # "ll":I
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@ab
    move-result v1

    #@ac
    .restart local v1    # "ll":I
    goto :goto_2
.end method


# virtual methods
.method public checkLogFile()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 181
    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@3
    if-eqz v5, :cond_0

    #@5
    iget v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    #@7
    const/16 v6, 0x10

    #@9
    if-ge v5, v6, :cond_1

    #@b
    .line 184
    :cond_0
    return-void

    #@c
    .line 187
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@e
    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@10
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@13
    .line 188
    .local v2, "logFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@16
    move-result v5

    #@17
    if-nez v5, :cond_2

    #@19
    .line 189
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    #@1c
    .line 190
    const/4 v5, 0x0

    #@1d
    iput-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@1f
    .line 194
    :cond_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@21
    if-nez v5, :cond_4

    #@23
    .line 196
    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@25
    .line 197
    const-string/jumbo v6, "gov.nist.javax.sip.SERVER_LOG_OVERWRITE"

    #@28
    .line 196
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 195
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@33
    move-result v3

    #@34
    .line 199
    .local v3, "overwrite":Z
    new-instance v1, Ljava/io/FileWriter;

    #@36
    iget-object v5, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@38
    if-eqz v3, :cond_3

    #@3a
    const/4 v4, 0x0

    #@3b
    :cond_3
    invoke-direct {v1, v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    #@3e
    .line 201
    .local v1, "fw":Ljava/io/FileWriter;
    new-instance v4, Ljava/io/PrintWriter;

    #@40
    const/4 v5, 0x1

    #@41
    invoke-direct {v4, v1, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    #@44
    iput-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@46
    .line 202
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@48
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "<!-- Use the  Trace Viewer in src/tools/tracesviewer to view this  trace  \nHere are the stack configuration properties \njavax.sip.IP_ADDRESS= "

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    .line 207
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@56
    const-string/jumbo v7, "javax.sip.IP_ADDRESS"

    #@59
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    .line 207
    const-string/jumbo v6, "\n"

    #@64
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    .line 208
    const-string/jumbo v6, "javax.sip.STACK_NAME= "

    #@6b
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    .line 209
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@71
    const-string/jumbo v7, "javax.sip.STACK_NAME"

    #@74
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 209
    const-string/jumbo v6, "\n"

    #@7f
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    .line 210
    const-string/jumbo v6, "javax.sip.ROUTER_PATH= "

    #@86
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v5

    #@8a
    .line 211
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@8c
    const-string/jumbo v7, "javax.sip.ROUTER_PATH"

    #@8f
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v5

    #@97
    .line 211
    const-string/jumbo v6, "\n"

    #@9a
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    .line 212
    const-string/jumbo v6, "javax.sip.OUTBOUND_PROXY= "

    #@a1
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    .line 213
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@a7
    const-string/jumbo v7, "javax.sip.OUTBOUND_PROXY"

    #@aa
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@ad
    move-result-object v6

    #@ae
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v5

    #@b2
    .line 213
    const-string/jumbo v6, "\n"

    #@b5
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    .line 214
    const-string/jumbo v6, "-->"

    #@bc
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v5

    #@c4
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c7
    .line 215
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@c9
    new-instance v5, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v6, "<description\n logDescription=\""

    #@d1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v5

    #@d5
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    #@d7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v5

    #@db
    .line 216
    const-string/jumbo v6, "\"\n name=\""

    #@de
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    .line 217
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@e4
    const-string/jumbo v7, "javax.sip.STACK_NAME"

    #@e7
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@ea
    move-result-object v6

    #@eb
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v5

    #@ef
    .line 218
    const-string/jumbo v6, "\"\n auxInfo=\""

    #@f2
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v5

    #@f6
    .line 218
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    #@f8
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v5

    #@fc
    .line 218
    const-string/jumbo v6, "\"/>\n "

    #@ff
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v5

    #@103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v5

    #@107
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10a
    .line 219
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    #@10c
    if-eqz v4, :cond_5

    #@10e
    .line 221
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@110
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@113
    move-result v4

    #@114
    if-eqz v4, :cond_4

    #@116
    .line 222
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@118
    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    const-string/jumbo v6, "Here are the stack configuration properties \njavax.sip.IP_ADDRESS= "

    #@120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v5

    #@124
    .line 225
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@126
    .line 226
    const-string/jumbo v7, "javax.sip.IP_ADDRESS"

    #@129
    .line 225
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@12c
    move-result-object v6

    #@12d
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v5

    #@131
    .line 227
    const-string/jumbo v6, "\n"

    #@134
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v5

    #@138
    .line 228
    const-string/jumbo v6, "javax.sip.ROUTER_PATH= "

    #@13b
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v5

    #@13f
    .line 229
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@141
    .line 230
    const-string/jumbo v7, "javax.sip.ROUTER_PATH"

    #@144
    .line 229
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@147
    move-result-object v6

    #@148
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v5

    #@14c
    .line 231
    const-string/jumbo v6, "\n"

    #@14f
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v5

    #@153
    .line 232
    const-string/jumbo v6, "javax.sip.OUTBOUND_PROXY= "

    #@156
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v5

    #@15a
    .line 233
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@15c
    .line 234
    const-string/jumbo v7, "javax.sip.OUTBOUND_PROXY"

    #@15f
    .line 233
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@162
    move-result-object v6

    #@163
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v5

    #@167
    .line 235
    const-string/jumbo v6, "\n"

    #@16a
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v5

    #@16e
    .line 236
    const-string/jumbo v6, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS= "

    #@171
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v5

    #@175
    .line 237
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@177
    .line 238
    const-string/jumbo v7, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    #@17a
    .line 237
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@17d
    move-result-object v6

    #@17e
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v5

    #@182
    .line 239
    const-string/jumbo v6, "\n"

    #@185
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v5

    #@189
    .line 240
    const-string/jumbo v6, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS= "

    #@18c
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v5

    #@190
    .line 241
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@192
    .line 242
    const-string/jumbo v7, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    #@195
    .line 241
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@198
    move-result-object v6

    #@199
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v5

    #@19d
    .line 243
    const-string/jumbo v6, "\n"

    #@1a0
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v5

    #@1a4
    .line 244
    const-string/jumbo v6, "gov.nist.javax.sip.REENTRANT_LISTENER= "

    #@1a7
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v5

    #@1ab
    .line 245
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@1ad
    .line 246
    const-string/jumbo v7, "gov.nist.javax.sip.REENTRANT_LISTENER"

    #@1b0
    .line 245
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1b3
    move-result-object v6

    #@1b4
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v5

    #@1b8
    .line 247
    const-string/jumbo v6, "gov.nist.javax.sip.THREAD_POOL_SIZE= "

    #@1bb
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v5

    #@1bf
    .line 248
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@1c1
    .line 249
    const-string/jumbo v7, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    #@1c4
    .line 248
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1c7
    move-result-object v6

    #@1c8
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v5

    #@1cc
    .line 250
    const-string/jumbo v6, "\n"

    #@1cf
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v5

    #@1d3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d6
    move-result-object v5

    #@1d7
    .line 222
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1da
    .line 251
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@1dc
    const-string/jumbo v5, " ]]> "

    #@1df
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1e2
    .line 252
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@1e4
    const-string/jumbo v5, "</debug>"

    #@1e7
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1ea
    .line 253
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@1ec
    new-instance v5, Ljava/lang/StringBuilder;

    #@1ee
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1f1
    const-string/jumbo v6, "<description\n logDescription=\""

    #@1f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v5

    #@1f8
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    #@1fa
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v5

    #@1fe
    .line 254
    const-string/jumbo v6, "\"\n name=\""

    #@201
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v5

    #@205
    .line 254
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    #@207
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v5

    #@20b
    .line 254
    const-string/jumbo v6, "\"\n auxInfo=\""

    #@20e
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v5

    #@212
    .line 254
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    #@214
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@217
    move-result-object v5

    #@218
    .line 255
    const-string/jumbo v6, "\"/>\n "

    #@21b
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v5

    #@21f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v5

    #@223
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@226
    .line 256
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@228
    const-string/jumbo v5, "<debug>"

    #@22b
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@22e
    .line 257
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@230
    const-string/jumbo v5, "<![CDATA[ "

    #@233
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@236
    .line 180
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "logFile":Ljava/io/File;
    .end local v3    # "overwrite":Z
    :cond_4
    :goto_0
    return-void

    #@237
    .line 261
    .restart local v1    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "logFile":Ljava/io/File;
    .restart local v3    # "overwrite":Z
    :cond_5
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@239
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@23c
    move-result v4

    #@23d
    if-eqz v4, :cond_4

    #@23f
    .line 262
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@241
    new-instance v5, Ljava/lang/StringBuilder;

    #@243
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    const-string/jumbo v6, "Here are the stack configuration properties \n"

    #@249
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v5

    #@24d
    .line 263
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->configurationProperties:Ljava/util/Properties;

    #@24f
    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v5

    #@253
    .line 263
    const-string/jumbo v6, "\n"

    #@256
    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@259
    move-result-object v5

    #@25a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25d
    move-result-object v5

    #@25e
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@261
    .line 264
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@263
    const-string/jumbo v5, " ]]>"

    #@266
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@269
    .line 265
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@26b
    const-string/jumbo v5, "</debug>"

    #@26e
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@271
    .line 266
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@273
    new-instance v5, Ljava/lang/StringBuilder;

    #@275
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@278
    const-string/jumbo v6, "<description\n logDescription=\""

    #@27b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v5

    #@27f
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->description:Ljava/lang/String;

    #@281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v5

    #@285
    .line 267
    const-string/jumbo v6, "\"\n name=\""

    #@288
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v5

    #@28c
    .line 267
    iget-object v6, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    #@28e
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@291
    move-result-object v5

    #@292
    .line 267
    const-string/jumbo v6, "\" />\n"

    #@295
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@298
    move-result-object v5

    #@299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29c
    move-result-object v5

    #@29d
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2a0
    .line 268
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@2a2
    const-string/jumbo v5, "<debug>"

    #@2a5
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2a8
    .line 269
    iget-object v4, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@2aa
    const-string/jumbo v5, "<![CDATA[ "

    #@2ad
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b0
    goto :goto_0

    #@2b1
    .line 273
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "logFile":Ljava/io/File;
    .end local v3    # "overwrite":Z
    :catch_0
    move-exception v0

    #@2b2
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized closeLogFile()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 174
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 175
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@7
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    #@a
    .line 176
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :cond_0
    monitor-exit p0

    #@e
    .line 173
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public getLogFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    #@0
    .prologue
    .line 436
    iget v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    #@2
    return v0
.end method

.method public logException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 404
    iget v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    #@2
    const/4 v1, 0x4

    #@3
    if-lt v0, v1, :cond_0

    #@5
    .line 405
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    #@8
    .line 406
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    #@b
    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 408
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->printWriter:Ljava/io/PrintWriter;

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    #@14
    .line 403
    :cond_0
    return-void
.end method

.method public logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "sender"    # Z

    #@0
    .prologue
    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v6

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    move v5, p5

    #@a
    invoke-virtual/range {v0 .. v7}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    #@d
    .line 393
    return-void
.end method

.method public logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 18
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "sender"    # Z
    .param p6, "time"    # J

    #@0
    .prologue
    .line 369
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    #@3
    .line 370
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Lgov/nist/javax/sip/header/CallID;

    #@9
    .line 371
    .local v2, "cid":Lgov/nist/javax/sip/header/CallID;
    const/4 v8, 0x0

    #@a
    .line 372
    .local v8, "callId":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@c
    .line 373
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    .line 374
    .end local v8    # "callId":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@17
    move-result-object v9

    #@18
    .line 375
    .local v9, "firstLine":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a
    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 376
    .local v4, "encoded":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@25
    move-result-object v11

    #@26
    .line 377
    .local v11, "tid":Ljava/lang/String;
    const-string/jumbo v3, "Timestamp"

    #@29
    move-object/from16 v0, p1

    #@2b
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@2e
    move-result-object v16

    #@2f
    check-cast v16, Ljavax/sip/header/TimeStampHeader;

    #@31
    .line 378
    .local v16, "tshdr":Ljavax/sip/header/TimeStampHeader;
    if-nez v16, :cond_2

    #@33
    const-wide/16 v14, 0x0

    #@35
    .local v14, "tsval":J
    :goto_1
    move-object/from16 v3, p0

    #@37
    move-object/from16 v5, p2

    #@39
    move-object/from16 v6, p3

    #@3b
    move/from16 v7, p5

    #@3d
    move-object/from16 v10, p4

    #@3f
    move-wide/from16 v12, p6

    #@41
    .line 379
    invoke-direct/range {v3 .. v15}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    #@44
    .line 368
    return-void

    #@45
    .line 375
    .end local v4    # "encoded":Ljava/lang/String;
    .end local v11    # "tid":Ljava/lang/String;
    .end local v14    # "tsval":J
    .end local v16    # "tshdr":Ljavax/sip/header/TimeStampHeader;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeMessage()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .restart local v4    # "encoded":Ljava/lang/String;
    goto :goto_0

    #@4a
    .line 378
    .restart local v11    # "tid":Ljava/lang/String;
    .restart local v16    # "tshdr":Ljavax/sip/header/TimeStampHeader;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/TimeStampHeader;->getTime()J

    #@4d
    move-result-wide v14

    #@4e
    .restart local v14    # "tsval":J
    goto :goto_1
.end method

.method public logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 17
    .param p1, "message"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;
    .param p4, "sender"    # Z
    .param p5, "time"    # J

    #@0
    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/ServerLog;->checkLogFile()V

    #@3
    .line 343
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 344
    return-void

    #@a
    .line 345
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Lgov/nist/javax/sip/header/CallID;

    #@10
    .line 346
    .local v2, "cid":Lgov/nist/javax/sip/header/CallID;
    const/4 v8, 0x0

    #@11
    .line 347
    .local v8, "callId":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@13
    .line 348
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    .line 349
    .end local v8    # "callId":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFirstLine()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1e
    move-result-object v9

    #@1f
    .line 350
    .local v9, "firstLine":Ljava/lang/String;
    move-object/from16 v0, p0

    #@21
    iget-boolean v3, v0, Lgov/nist/javax/sip/stack/ServerLog;->logContent:Z

    #@23
    if-eqz v3, :cond_2

    #@25
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encode()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 351
    .local v4, "inputText":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@2c
    move-result-object v11

    #@2d
    .line 352
    .local v11, "tid":Ljava/lang/String;
    const-string/jumbo v3, "Timestamp"

    #@30
    move-object/from16 v0, p1

    #@32
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@35
    move-result-object v16

    #@36
    check-cast v16, Ljavax/sip/header/TimeStampHeader;

    #@38
    .line 353
    .local v16, "tsHdr":Ljavax/sip/header/TimeStampHeader;
    if-nez v16, :cond_3

    #@3a
    const-wide/16 v14, 0x0

    #@3c
    .line 354
    .local v14, "tsval":J
    :goto_1
    const/4 v10, 0x0

    #@3d
    move-object/from16 v3, p0

    #@3f
    move-object/from16 v5, p2

    #@41
    move-object/from16 v6, p3

    #@43
    move/from16 v7, p4

    #@45
    move-wide/from16 v12, p5

    #@47
    invoke-direct/range {v3 .. v15}, Lgov/nist/javax/sip/stack/ServerLog;->logMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    #@4a
    .line 341
    return-void

    #@4b
    .line 350
    .end local v4    # "inputText":Ljava/lang/String;
    .end local v11    # "tid":Ljava/lang/String;
    .end local v14    # "tsval":J
    .end local v16    # "tsHdr":Ljavax/sip/header/TimeStampHeader;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->encodeMessage()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .restart local v4    # "inputText":Ljava/lang/String;
    goto :goto_0

    #@50
    .line 353
    .restart local v11    # "tid":Ljava/lang/String;
    .restart local v16    # "tsHdr":Ljavax/sip/header/TimeStampHeader;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/TimeStampHeader;->getTime()J

    #@53
    move-result-wide v14

    #@54
    .restart local v14    # "tsval":J
    goto :goto_1
.end method

.method public needsLogging()Z
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setAuxInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "auxInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 446
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->auxInfo:Ljava/lang/String;

    #@2
    .line 445
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "jsipLoggingLevel"    # I

    #@0
    .prologue
    .line 462
    return-void
.end method

.method public setLogFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->logFileName:Ljava/lang/String;

    #@2
    .line 293
    return-void
.end method

.method public setSipStack(Ljavax/sip/SipStack;)V
    .locals 2
    .param p1, "sipStack"    # Ljavax/sip/SipStack;

    #@0
    .prologue
    .line 450
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 451
    check-cast p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6
    .end local p1    # "sipStack":Ljavax/sip/SipStack;
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8
    .line 452
    iget-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackLogger:Lgov/nist/core/StackLogger;

    #@10
    .line 449
    return-void

    #@11
    .line 455
    .restart local p1    # "sipStack":Ljavax/sip/SipStack;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "sipStack must be a SIPTransactionStack"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method public setStackIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->stackIpAddress:Ljava/lang/String;

    #@2
    .line 161
    return-void
.end method

.method public setStackProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "stackProperties"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 459
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/ServerLog;->setProperties(Ljava/util/Properties;)V

    #@3
    .line 458
    return-void
.end method

.method public setTraceLevel(I)V
    .locals 0
    .param p1, "level"    # I

    #@0
    .prologue
    .line 427
    iput p1, p0, Lgov/nist/javax/sip/stack/ServerLog;->traceLevel:I

    #@2
    .line 426
    return-void
.end method
