.class public Landroid/ddm/DdmHandleProfiling;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleProfiling.java"


# static fields
.field public static final greylist-max-o CHUNK_MPRE:I

.field public static final greylist-max-o CHUNK_MPRQ:I

.field public static final greylist-max-o CHUNK_MPRS:I

.field public static final greylist-max-o CHUNK_MPSE:I

.field public static final greylist-max-o CHUNK_MPSS:I

.field public static final greylist-max-o CHUNK_SPSE:I

.field public static final greylist-max-o CHUNK_SPSS:I

.field private static final greylist-max-o DEBUG:Z = false

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleProfiling;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-string v0, "MPRS"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    .line 35
    const-string v0, "MPRE"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    .line 36
    const-string v0, "MPSS"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    .line 37
    const-string v0, "MPSE"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    .line 38
    const-string v0, "MPRQ"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    .line 39
    const-string v0, "SPSS"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    .line 40
    const-string v0, "SPSE"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    .line 43
    new-instance v0, Landroid/ddm/DdmHandleProfiling;

    invoke-direct {v0}, Landroid/ddm/DdmHandleProfiling;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private greylist-max-o handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 130
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 131
    const/4 v0, 0x0

    .line 136
    .local v0, "result":B
    goto :goto_24

    .line 132
    .end local v0    # "result":B
    :catch_5
    move-exception v0

    .line 133
    .local v0, "re":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method profiling end failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "ddm-heap"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x1

    move v0, v1

    .line 139
    .local v0, "result":B
    :goto_24
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 140
    .local v1, "reply":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    array-length v5, v1

    invoke-direct {v3, v4, v1, v2, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v3
.end method

.method private greylist-max-o handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 189
    invoke-static {}, Landroid/os/Debug;->getMethodTracingMode()I

    move-result v0

    .line 192
    .local v0, "result":I
    int-to-byte v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    .line 193
    .local v2, "reply":[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    array-length v5, v2

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1
.end method

.method private greylist-max-o handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 105
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 108
    .local v1, "bufferSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 109
    .local v2, "flags":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 110
    .local v3, "len":I
    invoke-static {v0, v3}, Landroid/ddm/DdmHandleProfiling;->getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "fileName":Ljava/lang/String;
    :try_start_14
    invoke-static {v4, v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_19

    .line 117
    const/4 v5, 0x0

    return-object v5

    .line 118
    :catch_19
    move-exception v5

    .line 119
    .local v5, "re":Ljava/lang/RuntimeException;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v6

    return-object v6
.end method

.method private greylist-max-o handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .param p2, "type"    # Ljava/lang/String;

    .line 174
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_6

    .line 179
    nop

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 175
    :catch_6
    move-exception v0

    .line 176
    .local v0, "re":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prof stream end failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "ddm-heap"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 147
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 150
    .local v1, "bufferSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 157
    .local v2, "flags":I
    const/4 v3, 0x0

    :try_start_d
    invoke-static {v1, v2, v3, v3}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_10} :catch_12

    .line 158
    const/4 v3, 0x0

    return-object v3

    .line 159
    :catch_12
    move-exception v3

    .line 160
    .local v3, "re":Ljava/lang/RuntimeException;
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    return-object v4
.end method

.method private greylist-max-o handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 9
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 200
    invoke-static {p1}, Landroid/ddm/DdmHandleProfiling;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 203
    .local v1, "bufferSize":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 204
    .local v2, "flags":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 211
    .local v3, "interval":I
    const/4 v4, 0x1

    :try_start_11
    invoke-static {v1, v2, v4, v3}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_16

    .line 212
    const/4 v4, 0x0

    return-object v4

    .line 213
    :catch_16
    move-exception v5

    .line 214
    .local v5, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/ddm/DdmHandleProfiling;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    return-object v4
.end method

.method public static greylist-max-o register()V
    .registers 2

    .line 53
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 54
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 55
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 56
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 57
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 58
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 59
    sget v0, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    sget-object v1, Landroid/ddm/DdmHandleProfiling;->mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 80
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 82
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRS:I

    if-ne v0, v1, :cond_b

    .line 83
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 84
    :cond_b
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRE:I

    if-ne v0, v1, :cond_14

    .line 85
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 86
    :cond_14
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSS:I

    if-ne v0, v1, :cond_1d

    .line 87
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 88
    :cond_1d
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPSE:I

    if-ne v0, v1, :cond_28

    .line 89
    const-string v1, "Method"

    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleProfiling;->handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 90
    :cond_28
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_MPRQ:I

    if-ne v0, v1, :cond_31

    .line 91
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 92
    :cond_31
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSS:I

    if-ne v0, v1, :cond_3a

    .line 93
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleProfiling;->handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 94
    :cond_3a
    sget v1, Landroid/ddm/DdmHandleProfiling;->CHUNK_SPSE:I

    if-ne v0, v1, :cond_45

    .line 95
    const-string v1, "Sample"

    invoke-direct {p0, p1, v1}, Landroid/ddm/DdmHandleProfiling;->handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 97
    :cond_45
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/ddm/DdmHandleProfiling;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist test-api onConnected()V
    .registers 1

    .line 66
    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .registers 1

    .line 72
    return-void
.end method
