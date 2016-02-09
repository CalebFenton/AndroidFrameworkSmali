.class public final Lgov/nist/javax/sip/parser/PipelinedMsgParser;
.super Ljava/lang/Object;
.source "PipelinedMsgParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static uid:I


# instance fields
.field private maxMessageSize:I

.field private mythread:Ljava/lang/Thread;

.field private rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

.field protected sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

.field private sizeCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    sput v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I

    #@3
    .line 62
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/Pipeline;)V
    .locals 2
    .param p1, "in"    # Lgov/nist/javax/sip/parser/Pipeline;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 139
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v0, p1, v1, v1}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V

    #@5
    .line 138
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;I)V
    .locals 1
    .param p1, "mhandler"    # Lgov/nist/javax/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p3, "maxMsgSize"    # I

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0, p3}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V

    #@4
    .line 127
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/parser/SIPMessageListener;Lgov/nist/javax/sip/parser/Pipeline;ZI)V
    .locals 3
    .param p1, "sipMessageListener"    # Lgov/nist/javax/sip/parser/SIPMessageListener;
    .param p2, "in"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p3, "debug"    # Z
    .param p4, "maxMessageSize"    # I

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>()V

    #@3
    .line 108
    iput-object p1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@5
    .line 109
    iput-object p2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@7
    .line 110
    iput p4, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    #@9
    .line 111
    new-instance v0, Ljava/lang/Thread;

    #@b
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@e
    iput-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    #@10
    .line 112
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "PipelineThread-"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->getNewUid()I

    #@21
    move-result v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@2d
    .line 106
    return-void
.end method

.method private static declared-synchronized getNewUid()I
    .locals 3

    #@0
    .prologue
    const-class v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@2
    monitor-enter v1

    #@3
    .line 90
    :try_start_0
    sget v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I

    #@5
    add-int/lit8 v2, v0, 0x1

    #@7
    sput v2, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v3, ""

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 185
    .local v2, "retval":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@b
    move-result v1

    #@c
    .line 186
    .local v1, "i":I
    const/4 v3, -0x1

    #@d
    if-ne v1, v3, :cond_1

    #@f
    .line 187
    new-instance v3, Ljava/io/IOException;

    #@11
    const-string/jumbo v4, "End of stream"

    #@14
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 189
    :cond_1
    int-to-char v0, v1

    #@19
    .line 191
    .local v0, "ch":C
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    #@1b
    if-lez v3, :cond_2

    #@1d
    .line 192
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    #@1f
    add-int/lit8 v3, v3, -0x1

    #@21
    iput v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    #@23
    .line 193
    iget v3, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    #@25
    if-gtz v3, :cond_2

    #@27
    .line 194
    new-instance v3, Ljava/io/IOException;

    #@29
    const-string/jumbo v4, "Max size exceeded!"

    #@2c
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3

    #@30
    .line 196
    :cond_2
    const/16 v3, 0xd

    #@32
    if-eq v0, v3, :cond_3

    #@34
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 198
    :cond_3
    const/16 v3, 0xa

    #@39
    if-ne v0, v3, :cond_0

    #@3b
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    return-object v3
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 155
    new-instance v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;

    #@2
    invoke-direct {v1}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;-><init>()V

    #@5
    .line 157
    .local v1, "p":Lgov/nist/javax/sip/parser/PipelinedMsgParser;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@7
    iput-object v2, v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@9
    .line 158
    iget-object v2, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@b
    iput-object v2, v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@d
    .line 159
    new-instance v0, Ljava/lang/Thread;

    #@f
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@12
    .line 160
    .local v0, "mythread":Ljava/lang/Thread;
    const-string/jumbo v2, "PipelineThread"

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@18
    .line 161
    return-object v1
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@2
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 359
    :goto_0
    return-void

    #@6
    .line 362
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public processInput()V
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->mythread:Ljava/lang/Thread;

    #@2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@5
    .line 145
    return-void
.end method

.method public run()V
    .locals 19

    #@0
    .prologue
    .line 213
    move-object/from16 v0, p0

    #@2
    iget-object v9, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@4
    .line 219
    .local v9, "inputStream":Lgov/nist/javax/sip/parser/Pipeline;
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    #@6
    iget v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    #@8
    move/from16 v17, v0

    #@a
    move/from16 v0, v17

    #@c
    move-object/from16 v1, p0

    #@e
    iput v0, v1, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    #@10
    .line 221
    new-instance v8, Ljava/lang/StringBuffer;

    #@12
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    #@15
    .line 223
    .local v8, "inputBuffer":Ljava/lang/StringBuffer;
    sget-boolean v17, Lgov/nist/core/Debug;->parserDebug:Z

    #@17
    if-eqz v17, :cond_1

    #@19
    .line 224
    const-string/jumbo v17, "Starting parse!"

    #@1c
    invoke-static/range {v17 .. v17}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 227
    :cond_1
    const/4 v11, 0x0

    #@20
    .line 231
    .local v11, "line2":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    #@22
    invoke-direct {v0, v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    .line 233
    .local v10, "line1":Ljava/lang/String;
    const-string/jumbo v17, "\n"

    #@29
    move-object/from16 v0, v17

    #@2b
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v17

    #@2f
    if-eqz v17, :cond_3

    #@31
    .line 234
    sget-boolean v17, Lgov/nist/core/Debug;->parserDebug:Z

    #@33
    if-eqz v17, :cond_2

    #@35
    .line 235
    const-string/jumbo v17, "Discarding blank line. "

    #@38
    invoke-static/range {v17 .. v17}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .line 240
    .end local v10    # "line1":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@3d
    .line 241
    .local v5, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-static {v5}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    #@40
    .line 242
    move-object/from16 v0, p0

    #@42
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@44
    move-object/from16 v17, v0

    #@46
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 352
    :try_start_3
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@4c
    .line 243
    :goto_2
    return-void

    #@4d
    .line 353
    :catch_1
    move-exception v4

    #@4e
    .line 354
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@51
    goto :goto_2

    #@52
    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v10    # "line1":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    .line 250
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@59
    move-object/from16 v17, v0

    #@5b
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->startTimer()V

    #@5e
    .line 252
    const-string/jumbo v17, "Reading Input Stream"

    #@61
    invoke-static/range {v17 .. v17}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@64
    .line 255
    .end local v11    # "line2":Ljava/lang/String;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    #@66
    invoke-direct {v0, v9}, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    #@69
    move-result-object v11

    #@6a
    .line 256
    .local v11, "line2":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6d
    .line 257
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@70
    move-result-object v17

    #@71
    const-string/jumbo v18, ""

    #@74
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@77
    move-result v17

    #@78
    if-eqz v17, :cond_4

    #@7a
    .line 268
    :try_start_6
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@7e
    move-object/from16 v17, v0

    #@80
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    #@83
    .line 269
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 270
    new-instance v16, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@8c
    move-object/from16 v17, v0

    #@8e
    invoke-direct/range {v16 .. v17}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    #@91
    .line 271
    .local v16, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    const/16 v17, 0x0

    #@93
    move/from16 v0, v17

    #@95
    move-object/from16 v1, v16

    #@97
    iput-boolean v0, v1, Lgov/nist/javax/sip/parser/StringMsgParser;->readBody:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@99
    .line 272
    const/4 v15, 0x0

    #@9a
    .line 275
    .local v15, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :try_start_7
    sget-boolean v17, Lgov/nist/core/Debug;->debug:Z

    #@9c
    if-eqz v17, :cond_5

    #@9e
    .line 276
    new-instance v17, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v18, "About to parse : "

    #@a6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v17

    #@aa
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ad
    move-result-object v18

    #@ae
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v17

    #@b2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v17

    #@b6
    invoke-static/range {v17 .. v17}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@b9
    .line 278
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@bc
    move-result-object v17

    #@bd
    invoke-virtual/range {v16 .. v17}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage(Ljava/lang/String;)Lgov/nist/javax/sip/message/SIPMessage;

    #@c0
    move-result-object v15

    #@c1
    .line 279
    .local v15, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    if-nez v15, :cond_6

    #@c3
    .line 280
    move-object/from16 v0, p0

    #@c5
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@c7
    move-object/from16 v17, v0

    #@c9
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@cc
    goto/16 :goto_0

    #@ce
    .line 283
    .end local v15    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_2
    move-exception v7

    #@cf
    .line 285
    .local v7, "ex":Ljava/text/ParseException;
    :try_start_8
    const-string/jumbo v17, "Detected a parse error"

    #@d2
    move-object/from16 v0, v17

    #@d4
    invoke-static {v0, v7}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d7
    goto/16 :goto_0

    #@d9
    .line 350
    .end local v7    # "ex":Ljava/text/ParseException;
    .end local v8    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v16    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catchall_0
    move-exception v17

    #@da
    .line 352
    :try_start_9
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    #@dd
    .line 350
    :goto_3
    throw v17

    #@de
    .line 259
    .restart local v8    # "inputBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "line1":Ljava/lang/String;
    :catch_3
    move-exception v5

    #@df
    .line 260
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_a
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@e3
    move-object/from16 v17, v0

    #@e5
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    #@e8
    .line 261
    invoke-static {v5}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@eb
    .line 352
    :try_start_b
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    #@ee
    .line 262
    :goto_4
    return-void

    #@ef
    .line 353
    :catch_4
    move-exception v4

    #@f0
    .line 354
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@f3
    goto :goto_4

    #@f4
    .line 289
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v11    # "line2":Ljava/lang/String;
    .restart local v15    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v16    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :cond_6
    :try_start_c
    sget-boolean v17, Lgov/nist/core/Debug;->debug:Z

    #@f6
    if-eqz v17, :cond_7

    #@f8
    .line 290
    const-string/jumbo v17, "Completed parsing message"

    #@fb
    invoke-static/range {v17 .. v17}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@fe
    .line 292
    :cond_7
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPMessage;->getContentLength()Ljavax/sip/header/ContentLengthHeader;

    #@101
    move-result-object v2

    #@102
    check-cast v2, Lgov/nist/javax/sip/header/ContentLength;

    #@104
    .line 294
    .local v2, "cl":Lgov/nist/javax/sip/header/ContentLength;
    const/4 v3, 0x0

    #@105
    .line 295
    .local v3, "contentLength":I
    if-eqz v2, :cond_a

    #@107
    .line 296
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentLength;->getContentLength()I

    #@10a
    move-result v3

    #@10b
    .line 301
    :goto_5
    sget-boolean v17, Lgov/nist/core/Debug;->debug:Z

    #@10d
    if-eqz v17, :cond_8

    #@10f
    .line 302
    new-instance v17, Ljava/lang/StringBuilder;

    #@111
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v18, "contentLength "

    #@117
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v17

    #@11b
    move-object/from16 v0, v17

    #@11d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v17

    #@121
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v17

    #@125
    invoke-static/range {v17 .. v17}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@128
    .line 305
    :cond_8
    if-nez v3, :cond_b

    #@12a
    .line 306
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPMessage;->removeContent()V

    #@12d
    .line 340
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    #@12f
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@131
    move-object/from16 v17, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@133
    if-eqz v17, :cond_0

    #@135
    .line 342
    :try_start_d
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@139
    move-object/from16 v17, v0

    #@13b
    move-object/from16 v0, v17

    #@13d
    invoke-interface {v0, v15}, Lgov/nist/javax/sip/parser/SIPMessageListener;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@140
    goto/16 :goto_0

    #@142
    .line 343
    :catch_5
    move-exception v6

    #@143
    .line 352
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v9}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    #@146
    .line 211
    :goto_7
    return-void

    #@147
    .line 298
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_a
    const/4 v3, 0x0

    #@148
    goto :goto_5

    #@149
    .line 307
    :cond_b
    :try_start_f
    move-object/from16 v0, p0

    #@14b
    iget v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->maxMessageSize:I

    #@14d
    move/from16 v17, v0

    #@14f
    if-eqz v17, :cond_c

    #@151
    .line 308
    move-object/from16 v0, p0

    #@153
    iget v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sizeCounter:I

    #@155
    move/from16 v17, v0

    #@157
    move/from16 v0, v17

    #@159
    if-ge v3, v0, :cond_9

    #@15b
    .line 309
    :cond_c
    new-array v12, v3, [B

    #@15d
    .line 310
    .local v12, "message_body":[B
    const/4 v13, 0x0

    #@15e
    .line 311
    .local v13, "nread":I
    :goto_8
    if-ge v13, v3, :cond_e

    #@160
    .line 318
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@164
    move-object/from16 v17, v0

    #@166
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->startTimer()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@169
    .line 322
    sub-int v17, v3, v13

    #@16b
    .line 321
    :try_start_10
    move/from16 v0, v17

    #@16d
    invoke-virtual {v9, v12, v13, v0}, Lgov/nist/javax/sip/parser/Pipeline;->read([BII)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    #@170
    move-result v14

    #@171
    .line 323
    .local v14, "readlength":I
    if-lez v14, :cond_d

    #@173
    .line 324
    add-int/2addr v13, v14

    #@174
    .line 333
    :try_start_11
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@178
    move-object/from16 v17, v0

    #@17a
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    #@17d
    goto :goto_8

    #@17e
    :cond_d
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@182
    move-object/from16 v17, v0

    #@184
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    #@187
    .line 336
    .end local v14    # "readlength":I
    :cond_e
    :goto_9
    invoke-virtual {v15, v12}, Lgov/nist/javax/sip/message/SIPMessage;->setMessageContent([B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@18a
    goto :goto_6

    #@18b
    .line 328
    :catch_6
    move-exception v5

    #@18c
    .line 329
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_12
    const-string/jumbo v17, "Exception Reading Content"

    #@18f
    move-object/from16 v0, v17

    #@191
    invoke-static {v0, v5}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    #@194
    .line 333
    :try_start_13
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@198
    move-object/from16 v17, v0

    #@19a
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    #@19d
    goto :goto_9

    #@19e
    .line 331
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    #@19f
    .line 333
    move-object/from16 v0, p0

    #@1a1
    iget-object v0, v0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->rawInputStream:Lgov/nist/javax/sip/parser/Pipeline;

    #@1a3
    move-object/from16 v18, v0

    #@1a5
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/parser/Pipeline;->stopTimer()V

    #@1a8
    .line 331
    throw v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    #@1a9
    .line 353
    .end local v12    # "message_body":[B
    .end local v13    # "nread":I
    .restart local v6    # "ex":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    #@1aa
    .line 354
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1ad
    goto :goto_7

    #@1ae
    .line 353
    .end local v2    # "cl":Lgov/nist/javax/sip/header/ContentLength;
    .end local v3    # "contentLength":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v8    # "inputBuffer":Ljava/lang/StringBuffer;
    .end local v10    # "line1":Ljava/lang/String;
    .end local v11    # "line2":Ljava/lang/String;
    .end local v15    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .end local v16    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    :catch_8
    move-exception v4

    #@1af
    .line 354
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@1b2
    goto/16 :goto_3
.end method

.method public setMessageListener(Lgov/nist/javax/sip/parser/SIPMessageListener;)V
    .locals 0
    .param p1, "mlistener"    # Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Lgov/nist/javax/sip/parser/PipelinedMsgParser;->sipMessageListener:Lgov/nist/javax/sip/parser/SIPMessageListener;

    #@2
    .line 173
    return-void
.end method
