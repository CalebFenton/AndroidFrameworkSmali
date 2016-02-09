.class public Landroid/ddm/DdmHandleHeap;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHeap.java"


# static fields
.field public static final CHUNK_HPDS:I

.field public static final CHUNK_HPDU:I

.field public static final CHUNK_HPGC:I

.field public static final CHUNK_HPIF:I

.field public static final CHUNK_HPSG:I

.field public static final CHUNK_NHSG:I

.field public static final CHUNK_REAE:I

.field public static final CHUNK_REAL:I

.field public static final CHUNK_REAQ:I

.field private static mInstance:Landroid/ddm/DdmHandleHeap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "HPIF"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    #@9
    .line 34
    const-string/jumbo v0, "HPSG"

    #@c
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    #@12
    .line 35
    const-string/jumbo v0, "HPDU"

    #@15
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    #@1b
    .line 36
    const-string/jumbo v0, "HPDS"

    #@1e
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    #@24
    .line 37
    const-string/jumbo v0, "NHSG"

    #@27
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    #@2d
    .line 38
    const-string/jumbo v0, "HPGC"

    #@30
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    #@36
    .line 39
    const-string/jumbo v0, "REAE"

    #@39
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    #@3f
    .line 40
    const-string/jumbo v0, "REAQ"

    #@42
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@45
    move-result v0

    #@46
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    #@48
    .line 41
    const-string/jumbo v0, "REAL"

    #@4b
    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->type(Ljava/lang/String;)I

    #@4e
    move-result v0

    #@4f
    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    #@51
    .line 43
    new-instance v0, Landroid/ddm/DdmHandleHeap;

    #@53
    invoke-direct {v0}, Landroid/ddm/DdmHandleHeap;-><init>()V

    #@56
    sput-object v0, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@58
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method private handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 190
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v1

    #@5
    .line 197
    .local v1, "in":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    #@6
    .line 199
    .local v0, "failMsg":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->dumpHprofDataDdms()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 206
    .end local v0    # "failMsg":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    #@b
    .line 207
    const-string/jumbo v4, "ddm-heap"

    #@e
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 208
    const/4 v4, 0x1

    #@12
    invoke-static {v4, v0}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@15
    move-result-object v4

    #@16
    return-object v4

    #@17
    .line 202
    .restart local v0    # "failMsg":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@18
    .line 203
    .local v2, "re":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Exception: "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .local v0, "failMsg":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 200
    .end local v2    # "re":Ljava/lang/RuntimeException;
    .local v0, "failMsg":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@32
    .line 201
    .local v3, "uoe":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v0, "hprof dumps not supported in this VM"

    #@35
    .local v0, "failMsg":Ljava/lang/String;
    goto :goto_0

    #@36
    .line 210
    .end local v0    # "failMsg":Ljava/lang/String;
    .end local v3    # "uoe":Ljava/lang/UnsupportedOperationException;
    :cond_0
    return-object v6
.end method

.method private handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 12
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 156
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v1

    #@5
    .line 160
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    #@8
    move-result v3

    #@9
    .line 161
    .local v3, "len":I
    invoke-static {v1, v3}, Landroid/ddm/DdmHandleHeap;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 166
    .local v0, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 167
    const/4 v6, 0x0

    #@11
    .line 178
    .local v6, "result":B
    :goto_0
    const/4 v8, 0x1

    #@12
    new-array v5, v8, [B

    #@14
    aput-byte v6, v5, v11

    #@16
    .line 179
    .local v5, "reply":[B
    new-instance v8, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@18
    sget v9, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    #@1a
    array-length v10, v5

    #@1b
    invoke-direct {v8, v9, v5, v11, v10}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@1e
    return-object v8

    #@1f
    .line 173
    .end local v5    # "reply":[B
    .end local v6    # "result":B
    :catch_0
    move-exception v4

    #@20
    .line 174
    .local v4, "re":Ljava/lang/RuntimeException;
    const/4 v6, -0x1

    #@21
    .restart local v6    # "result":B
    goto :goto_0

    #@22
    .line 171
    .end local v4    # "re":Ljava/lang/RuntimeException;
    .end local v6    # "result":B
    :catch_1
    move-exception v2

    #@23
    .line 172
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v6, -0x1

    #@24
    .restart local v6    # "result":B
    goto :goto_0

    #@25
    .line 168
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v6    # "result":B
    :catch_2
    move-exception v7

    #@26
    .line 169
    .local v7, "uoe":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v8, "ddm-heap"

    #@29
    const-string/jumbo v9, "hprof dumps not supported in this VM"

    #@2c
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 170
    const/4 v6, -0x1

    #@30
    .restart local v6    # "result":B
    goto :goto_0
.end method

.method private handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 222
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    #@7
    .line 224
    const/4 v0, 0x0

    #@8
    return-object v0
.end method

.method private handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 112
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 114
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@7
    move-result v2

    #@8
    .line 118
    .local v2, "when":I
    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapInfoNotify(I)Z

    #@b
    move-result v1

    #@c
    .line 119
    .local v1, "ok":Z
    if-nez v1, :cond_0

    #@e
    .line 120
    const-string/jumbo v3, "Unsupported HPIF what"

    #@11
    const/4 v4, 0x1

    #@12
    invoke-static {v4, v3}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 122
    :cond_0
    const/4 v3, 0x0

    #@18
    return-object v3
.end method

.method private handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .param p2, "isNative"    # Z

    #@0
    .prologue
    .line 130
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 132
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@7
    move-result v3

    #@8
    .line 133
    .local v3, "when":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@b
    move-result v2

    #@c
    .line 138
    .local v2, "what":I
    invoke-static {v3, v2, p2}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->heapSegmentNotify(IIZ)Z

    #@f
    move-result v1

    #@10
    .line 139
    .local v1, "ok":Z
    if-nez v1, :cond_0

    #@12
    .line 140
    const-string/jumbo v4, "Unsupported HPSG what/when"

    #@15
    const/4 v5, 0x1

    #@16
    invoke-static {v5, v4}, Landroid/ddm/DdmHandleHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@19
    move-result-object v4

    #@1a
    return-object v4

    #@1b
    .line 144
    :cond_0
    const/4 v4, 0x0

    #@1c
    return-object v4
.end method

.method private handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 231
    invoke-static {p1}, Landroid/ddm/DdmHandleHeap;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    .line 234
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 239
    .local v0, "enable":Z
    :goto_0
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    #@e
    .line 241
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 234
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    #@11
    .restart local v0    # "enable":Z
    goto :goto_0
.end method

.method private handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 265
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocations()[B

    #@3
    move-result-object v0

    #@4
    .line 266
    .local v0, "reply":[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@6
    sget v2, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    #@8
    array-length v3, v0

    #@9
    const/4 v4, 0x0

    #@a
    invoke-direct {v1, v2, v0, v4, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@d
    return-object v1
.end method

.method private handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 250
    new-array v0, v1, [B

    #@4
    .line 251
    .local v0, "reply":[B
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getRecentAllocationStatus()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    :goto_0
    aput-byte v1, v0, v2

    #@c
    .line 252
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@e
    sget v3, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    #@10
    array-length v4, v0

    #@11
    invoke-direct {v1, v3, v0, v2, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@14
    return-object v1

    #@15
    :cond_0
    move v1, v2

    #@16
    .line 251
    goto :goto_0
.end method

.method public static register()V
    .locals 2

    #@0
    .prologue
    .line 53
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    #@2
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@4
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@7
    .line 54
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    #@9
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@b
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@e
    .line 55
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    #@10
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@12
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@15
    .line 56
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    #@17
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@19
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@1c
    .line 57
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    #@1e
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@20
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@23
    .line 58
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    #@25
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@27
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@2a
    .line 59
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    #@2c
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@2e
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@31
    .line 60
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    #@33
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@35
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@38
    .line 61
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    #@3a
    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    #@3c
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@3f
    .line 52
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 68
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 74
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 82
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@2
    .line 84
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPIF:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 85
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPIF(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 86
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPSG:I

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 87
    const/4 v1, 0x0

    #@10
    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 88
    :cond_1
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDU:I

    #@17
    if-ne v0, v1, :cond_2

    #@19
    .line 89
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDU(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 90
    :cond_2
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPDS:I

    #@20
    if-ne v0, v1, :cond_3

    #@22
    .line 91
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPDS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .line 92
    :cond_3
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_NHSG:I

    #@29
    if-ne v0, v1, :cond_4

    #@2b
    .line 93
    const/4 v1, 0x1

    #@2c
    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleHeap;->handleHPSGNHSG(Lorg/apache/harmony/dalvik/ddmc/Chunk;Z)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 94
    :cond_4
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    #@33
    if-ne v0, v1, :cond_5

    #@35
    .line 95
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@38
    move-result-object v1

    #@39
    return-object v1

    #@3a
    .line 96
    :cond_5
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAE:I

    #@3c
    if-ne v0, v1, :cond_6

    #@3e
    .line 97
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@41
    move-result-object v1

    #@42
    return-object v1

    #@43
    .line 98
    :cond_6
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAQ:I

    #@45
    if-ne v0, v1, :cond_7

    #@47
    .line 99
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@4a
    move-result-object v1

    #@4b
    return-object v1

    #@4c
    .line 100
    :cond_7
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_REAL:I

    #@4e
    if-ne v0, v1, :cond_8

    #@50
    .line 101
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleREAL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@53
    move-result-object v1

    #@54
    return-object v1

    #@55
    .line 103
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    #@57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v3, "Unknown packet "

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 104
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@72
    throw v1
.end method
