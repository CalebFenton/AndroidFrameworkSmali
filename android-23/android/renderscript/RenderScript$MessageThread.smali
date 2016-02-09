.class Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageThread"
.end annotation


# static fields
.field static final RS_ERROR_FATAL_DEBUG:I = 0x800

.field static final RS_ERROR_FATAL_UNKNOWN:I = 0x1000

.field static final RS_MESSAGE_TO_CLIENT_ERROR:I = 0x3

.field static final RS_MESSAGE_TO_CLIENT_EXCEPTION:I = 0x1

.field static final RS_MESSAGE_TO_CLIENT_NEW_BUFFER:I = 0x5

.field static final RS_MESSAGE_TO_CLIENT_NONE:I = 0x0

.field static final RS_MESSAGE_TO_CLIENT_RESIZE:I = 0x2

.field static final RS_MESSAGE_TO_CLIENT_USER:I = 0x4


# instance fields
.field mAuxData:[I

.field mRS:Landroid/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 1235
    const-string/jumbo v0, "RSMessageThread"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 1221
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    #@9
    .line 1222
    const/4 v0, 0x2

    #@a
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    #@e
    .line 1236
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@10
    .line 1234
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    #@0
    .prologue
    .line 1243
    const/16 v8, 0x10

    #@2
    new-array v5, v8, [I

    #@4
    .line 1244
    .local v5, "rbuf":[I
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@6
    iget-object v9, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@8
    iget-wide v10, v9, Landroid/renderscript/RenderScript;->mContext:J

    #@a
    invoke-virtual {v8, v10, v11}, Landroid/renderscript/RenderScript;->nContextInitToClient(J)V

    #@d
    .line 1245
    :goto_0
    iget-boolean v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    #@f
    if-eqz v8, :cond_a

    #@11
    .line 1246
    const/4 v8, 0x0

    #@12
    const/4 v9, 0x0

    #@13
    aput v8, v5, v9

    #@15
    .line 1247
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@17
    iget-object v9, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@19
    iget-wide v10, v9, Landroid/renderscript/RenderScript;->mContext:J

    #@1b
    iget-object v9, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    #@1d
    invoke-virtual {v8, v10, v11, v9}, Landroid/renderscript/RenderScript;->nContextPeekMessage(J[I)I

    #@20
    move-result v4

    #@21
    .line 1248
    .local v4, "msg":I
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    #@23
    const/4 v9, 0x1

    #@24
    aget v6, v8, v9

    #@26
    .line 1249
    .local v6, "size":I
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mAuxData:[I

    #@28
    const/4 v9, 0x0

    #@29
    aget v7, v8, v9

    #@2b
    .line 1251
    .local v7, "subID":I
    const/4 v8, 0x4

    #@2c
    if-ne v4, v8, :cond_3

    #@2e
    .line 1252
    shr-int/lit8 v8, v6, 0x2

    #@30
    array-length v9, v5

    #@31
    if-lt v8, v9, :cond_0

    #@33
    .line 1253
    add-int/lit8 v8, v6, 0x3

    #@35
    shr-int/lit8 v8, v8, 0x2

    #@37
    new-array v5, v8, [I

    #@39
    .line 1255
    :cond_0
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@3b
    iget-object v9, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    iget-wide v10, v9, Landroid/renderscript/RenderScript;->mContext:J

    #@3f
    invoke-virtual {v8, v10, v11, v5}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    #@42
    move-result v8

    #@43
    .line 1256
    const/4 v9, 0x4

    #@44
    .line 1255
    if-eq v8, v9, :cond_1

    #@46
    .line 1257
    new-instance v8, Landroid/renderscript/RSDriverException;

    #@48
    const-string/jumbo v9, "Error processing message from RenderScript."

    #@4b
    invoke-direct {v8, v9}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v8

    #@4f
    .line 1260
    :cond_1
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@51
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@53
    if-eqz v8, :cond_2

    #@55
    .line 1261
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@57
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@59
    iput-object v5, v8, Landroid/renderscript/RenderScript$RSMessageHandler;->mData:[I

    #@5b
    .line 1262
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@5d
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@5f
    iput v7, v8, Landroid/renderscript/RenderScript$RSMessageHandler;->mID:I

    #@61
    .line 1263
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@63
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@65
    iput v6, v8, Landroid/renderscript/RenderScript$RSMessageHandler;->mLength:I

    #@67
    .line 1264
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@69
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    #@6b
    invoke-virtual {v8}, Landroid/renderscript/RenderScript$RSMessageHandler;->run()V

    #@6e
    goto :goto_0

    #@6f
    .line 1266
    :cond_2
    new-instance v8, Landroid/renderscript/RSInvalidStateException;

    #@71
    const-string/jumbo v9, "Received a message from the script with no message handler installed."

    #@74
    invoke-direct {v8, v9}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    #@77
    throw v8

    #@78
    .line 1271
    :cond_3
    const/4 v8, 0x3

    #@79
    if-ne v4, v8, :cond_7

    #@7b
    .line 1272
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@7d
    iget-object v9, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@7f
    iget-wide v10, v9, Landroid/renderscript/RenderScript;->mContext:J

    #@81
    invoke-virtual {v8, v10, v11}, Landroid/renderscript/RenderScript;->nContextGetErrorMessage(J)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    .line 1281
    .local v3, "e":Ljava/lang/String;
    const/16 v8, 0x1000

    #@87
    if-ge v7, v8, :cond_4

    #@89
    .line 1282
    const/16 v8, 0x800

    #@8b
    if-lt v7, v8, :cond_5

    #@8d
    .line 1283
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@8f
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    #@91
    sget-object v9, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    #@93
    if-ne v8, v9, :cond_4

    #@95
    .line 1284
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@97
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@99
    if-nez v8, :cond_5

    #@9b
    .line 1285
    :cond_4
    new-instance v8, Landroid/renderscript/RSRuntimeException;

    #@9d
    new-instance v9, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v10, "Fatal error "

    #@a5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v9

    #@a9
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    const-string/jumbo v10, ", details: "

    #@b0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v9

    #@bc
    invoke-direct {v8, v9}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v8

    #@c0
    .line 1288
    :cond_5
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@c2
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@c4
    if-eqz v8, :cond_6

    #@c6
    .line 1289
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@c8
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@ca
    iput-object v3, v8, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorMessage:Ljava/lang/String;

    #@cc
    .line 1290
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@ce
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@d0
    iput v7, v8, Landroid/renderscript/RenderScript$RSErrorHandler;->mErrorNum:I

    #@d2
    .line 1291
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@d4
    iget-object v8, v8, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    #@d6
    invoke-virtual {v8}, Landroid/renderscript/RenderScript$RSErrorHandler;->run()V

    #@d9
    goto/16 :goto_0

    #@db
    .line 1293
    :cond_6
    const-string/jumbo v8, "RenderScript_jni"

    #@de
    new-instance v9, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v10, "non fatal RS error, "

    #@e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v9

    #@ea
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v9

    #@ee
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v9

    #@f2
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    goto/16 :goto_0

    #@f7
    .line 1300
    .end local v3    # "e":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x5

    #@f8
    if-ne v4, v8, :cond_9

    #@fa
    .line 1301
    iget-object v8, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@fc
    iget-object v9, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    #@fe
    iget-wide v10, v9, Landroid/renderscript/RenderScript;->mContext:J

    #@100
    invoke-virtual {v8, v10, v11, v5}, Landroid/renderscript/RenderScript;->nContextGetUserMessage(J[I)I

    #@103
    move-result v8

    #@104
    .line 1302
    const/4 v9, 0x5

    #@105
    .line 1301
    if-eq v8, v9, :cond_8

    #@107
    .line 1303
    new-instance v8, Landroid/renderscript/RSDriverException;

    #@109
    const-string/jumbo v9, "Error processing message from RenderScript."

    #@10c
    invoke-direct {v8, v9}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@10f
    throw v8

    #@110
    .line 1305
    :cond_8
    const/4 v8, 0x1

    #@111
    aget v8, v5, v8

    #@113
    int-to-long v8, v8

    #@114
    const/16 v10, 0x20

    #@116
    shl-long/2addr v8, v10

    #@117
    const/4 v10, 0x0

    #@118
    aget v10, v5, v10

    #@11a
    int-to-long v10, v10

    #@11b
    const-wide v12, 0xffffffffL

    #@120
    and-long/2addr v10, v12

    #@121
    add-long v0, v8, v10

    #@123
    .line 1306
    .local v0, "bufferID":J
    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->sendBufferNotification(J)V

    #@126
    goto/16 :goto_0

    #@128
    .line 1315
    .end local v0    # "bufferID":J
    :cond_9
    const-wide/16 v8, 0x1

    #@12a
    const/4 v10, 0x0

    #@12b
    :try_start_0
    invoke-static {v8, v9, v10}, Landroid/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@12e
    goto/16 :goto_0

    #@130
    .line 1316
    :catch_0
    move-exception v2

    #@131
    .local v2, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    #@133
    .line 1240
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "msg":I
    .end local v6    # "size":I
    .end local v7    # "subID":I
    :cond_a
    return-void
.end method
