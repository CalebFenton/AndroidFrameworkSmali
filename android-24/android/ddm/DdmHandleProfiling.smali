.class public Landroid/ddm/DdmHandleProfiling;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleProfiling.java"


# static fields
.field public static final CHUNK_MPRE:I

.field public static final CHUNK_MPRQ:I

.field public static final CHUNK_MPRS:I

.field public static final CHUNK_MPSE:I

.field public static final CHUNK_MPSS:I

.field public static final CHUNK_SPSE:I

.field public static final CHUNK_SPSS:I

.field private static final DEBUG:Z

.field private static mInstance:Landroid/ddm/DdmHandleProfiling;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "MPRS"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    #@9
    .line 32
    const-string/jumbo v0, "MPRE"

    #@c
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    #@12
    .line 33
    const-string/jumbo v0, "MPSS"

    #@15
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    #@1b
    .line 34
    const-string/jumbo v0, "MPSE"

    #@1e
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    #@24
    .line 35
    const-string/jumbo v0, "MPRQ"

    #@27
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    #@2d
    .line 36
    const-string/jumbo v0, "SPSS"

    #@30
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    #@36
    .line 37
    const-string/jumbo v0, "SPSE"

    #@39
    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->type(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    #@3f
    .line 40
    new-instance v0, Landroid/ddm/DdmHandleProfiling;

    #@41
    invoke-direct {v0}, Landroid/ddm/DdmHandleProfiling;-><init>()V

    #@44
    sput-object v0, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@46
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method private handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    .line 129
    const/4 v2, 0x0

    #@5
    .line 137
    .local v2, "result":B
    :goto_0
    const/4 v3, 0x1

    #@6
    new-array v1, v3, [B

    #@8
    aput-byte v2, v1, v6

    #@a
    .line 138
    .local v1, "reply":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@c
    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    #@e
    array-length v5, v1

    #@f
    invoke-direct {v3, v4, v1, v6, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@12
    return-object v3

    #@13
    .line 130
    .end local v1    # "reply":[B
    .end local v2    # "result":B
    :catch_0
    move-exception v0

    #@14
    .line 131
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "ddm-heap"

    #@17
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v5, "Method profiling end failed: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 132
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 133
    const/4 v2, 0x1

    #@33
    .restart local v2    # "result":B
    goto :goto_0
.end method

.method private handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 187
    invoke-static {}, Landroid/os/Debug;->getMethodTracingMode()I

    #@4
    move-result v1

    #@5
    .line 190
    .local v1, "result":I
    const/4 v2, 0x1

    #@6
    new-array v0, v2, [B

    #@8
    int-to-byte v2, v1

    #@9
    aput-byte v2, v0, v5

    #@b
    .line 191
    .local v0, "reply":[B
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@d
    sget v3, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    #@f
    array-length v4, v0

    #@10
    invoke-direct {v2, v3, v0, v5, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@13
    return-object v2
.end method

.method private handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 103
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v3

    #@4
    .line 105
    .local v3, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v0

    #@8
    .line 106
    .local v0, "bufferSize":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v2

    #@c
    .line 107
    .local v2, "flags":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    #@f
    move-result v4

    #@10
    .line 108
    .local v4, "len":I
    invoke-static {v3, v4}, Landroid/ddm/DdmHandleProfiling;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 114
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 115
    const/4 v6, 0x0

    #@18
    return-object v6

    #@19
    .line 116
    :catch_0
    move-exception v5

    #@1a
    .line 117
    .local v5, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    const/4 v7, 0x1

    #@1f
    invoke-static {v7, v6}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@22
    move-result-object v6

    #@23
    return-object v6
.end method

.method private handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 180
    const/4 v1, 0x0

    #@4
    return-object v1

    #@5
    .line 173
    :catch_0
    move-exception v0

    #@6
    .line 174
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "ddm-heap"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " prof stream end failed: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 175
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 176
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    const/4 v2, 0x1

    #@2d
    invoke-static {v2, v1}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@30
    move-result-object v1

    #@31
    return-object v1
.end method

.method private handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 145
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v2

    #@4
    .line 147
    .local v2, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v0

    #@8
    .line 148
    .local v0, "bufferSize":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@b
    move-result v1

    #@c
    .line 155
    .local v1, "flags":I
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    :try_start_0
    invoke-static {v0, v1, v4, v5}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 156
    const/4 v4, 0x0

    #@12
    return-object v4

    #@13
    .line 157
    :catch_0
    move-exception v3

    #@14
    .line 158
    .local v3, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    const/4 v5, 0x1

    #@19
    invoke-static {v5, v4}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1c
    move-result-object v4

    #@1d
    return-object v4
.end method

.method private handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 198
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@4
    move-result-object v2

    #@5
    .line 200
    .local v2, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@8
    move-result v0

    #@9
    .line 201
    .local v0, "bufferSize":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@c
    move-result v1

    #@d
    .line 202
    .local v1, "flags":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v3

    #@11
    .line 209
    .local v3, "interval":I
    const/4 v5, 0x1

    #@12
    :try_start_0
    invoke-static {v0, v1, v5, v3}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 210
    const/4 v5, 0x0

    #@16
    return-object v5

    #@17
    .line 211
    :catch_0
    move-exception v4

    #@18
    .line 212
    .local v4, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-static {v6, v5}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1f
    move-result-object v5

    #@20
    return-object v5
.end method

.method public static register()V
    .locals 2

    #@0
    .prologue
    .line 50
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    #@2
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@4
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@7
    .line 51
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    #@9
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@b
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@e
    .line 52
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    #@10
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@12
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@15
    .line 53
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    #@17
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@19
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@1c
    .line 54
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    #@1e
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@20
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@23
    .line 55
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    #@25
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@27
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@2a
    .line 56
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    #@2c
    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    #@2e
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@31
    .line 49
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 69
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 77
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@2
    .line 79
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 80
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 81
    :cond_0
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 82
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 83
    :cond_1
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    #@16
    if-ne v0, v1, :cond_2

    #@18
    .line 84
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 85
    :cond_2
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    #@1f
    if-ne v0, v1, :cond_3

    #@21
    .line 86
    const-string/jumbo v1, "Method"

    #@24
    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleProfiling;->handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 87
    :cond_3
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    #@2b
    if-ne v0, v1, :cond_4

    #@2d
    .line 88
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 89
    :cond_4
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    #@34
    if-ne v0, v1, :cond_5

    #@36
    .line 90
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@39
    move-result-object v1

    #@3a
    return-object v1

    #@3b
    .line 91
    :cond_5
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    #@3d
    if-ne v0, v1, :cond_6

    #@3f
    .line 92
    const-string/jumbo v1, "Sample"

    #@42
    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleProfiling;->handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@45
    move-result-object v1

    #@46
    return-object v1

    #@47
    .line 94
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    #@49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "Unknown packet "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 95
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@64
    throw v1
.end method
