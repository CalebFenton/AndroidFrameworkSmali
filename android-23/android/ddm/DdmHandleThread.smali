.class public Landroid/ddm/DdmHandleThread;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleThread.java"


# static fields
.field public static final CHUNK_STKL:I

.field public static final CHUNK_THCR:I

.field public static final CHUNK_THDE:I

.field public static final CHUNK_THEN:I

.field public static final CHUNK_THST:I

.field private static mInstance:Landroid/ddm/DdmHandleThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "THEN"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    #@9
    .line 32
    const-string/jumbo v0, "THCR"

    #@c
    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THCR:I

    #@12
    .line 33
    const-string/jumbo v0, "THDE"

    #@15
    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THDE:I

    #@1b
    .line 34
    const-string/jumbo v0, "THST"

    #@1e
    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    #@24
    .line 35
    const-string/jumbo v0, "STKL"

    #@27
    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    #@2d
    .line 37
    new-instance v0, Landroid/ddm/DdmHandleThread;

    #@2f
    invoke-direct {v0}, Landroid/ddm/DdmHandleThread;-><init>()V

    #@32
    sput-object v0, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    #@34
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method private createStackChunk([Ljava/lang/StackTraceElement;I)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7
    .param p1, "trace"    # [Ljava/lang/StackTraceElement;
    .param p2, "threadId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 148
    const/4 v0, 0x4

    #@2
    .line 149
    .local v0, "bufferSize":I
    add-int/lit8 v0, v0, 0x4

    #@4
    .line 150
    add-int/lit8 v0, v0, 0x4

    #@6
    .line 151
    array-length v5, p1

    #@7
    move v3, v4

    #@8
    :goto_0
    if-ge v3, v5, :cond_1

    #@a
    aget-object v1, p1, v3

    #@c
    .line 152
    .local v1, "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@13
    move-result v6

    #@14
    mul-int/lit8 v6, v6, 0x2

    #@16
    add-int/lit8 v6, v6, 0x4

    #@18
    add-int/2addr v0, v6

    #@19
    .line 153
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@20
    move-result v6

    #@21
    mul-int/lit8 v6, v6, 0x2

    #@23
    add-int/lit8 v6, v6, 0x4

    #@25
    add-int/2addr v0, v6

    #@26
    .line 154
    add-int/lit8 v0, v0, 0x4

    #@28
    .line 155
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@2b
    move-result-object v6

    #@2c
    if-eqz v6, :cond_0

    #@2e
    .line 156
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@35
    move-result v6

    #@36
    mul-int/lit8 v6, v6, 0x2

    #@38
    add-int/2addr v0, v6

    #@39
    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x4

    #@3b
    .line 151
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 160
    .end local v1    # "elem":Ljava/lang/StackTraceElement;
    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@41
    move-result-object v2

    #@42
    .line 161
    .local v2, "out":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@45
    .line 162
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@48
    .line 163
    array-length v3, p1

    #@49
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@4c
    .line 164
    array-length v5, p1

    #@4d
    move v3, v4

    #@4e
    :goto_1
    if-ge v3, v5, :cond_3

    #@50
    aget-object v1, p1, v3

    #@52
    .line 165
    .restart local v1    # "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@59
    move-result v6

    #@5a
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5d
    .line 166
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-static {v2, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@64
    .line 167
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@6b
    move-result v6

    #@6c
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@6f
    .line 168
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@72
    move-result-object v6

    #@73
    invoke-static {v2, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@76
    .line 169
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    if-eqz v6, :cond_2

    #@7c
    .line 170
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@83
    move-result v6

    #@84
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@87
    .line 171
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@8a
    move-result-object v6

    #@8b
    invoke-static {v2, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@8e
    .line 175
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@91
    move-result v6

    #@92
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@95
    .line 164
    add-int/lit8 v3, v3, 0x1

    #@97
    goto :goto_1

    #@98
    .line 173
    :cond_2
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@9b
    goto :goto_2

    #@9c
    .line 178
    .end local v1    # "elem":Ljava/lang/StackTraceElement;
    :cond_3
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9e
    sget v4, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    #@a0
    invoke-direct {v3, v4, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    #@a3
    return-object v3
.end method

.method private handleSTKL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 124
    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 127
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v1

    #@8
    .line 131
    .local v1, "threadId":I
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getStackTraceById(I)[Ljava/lang/StackTraceElement;

    #@b
    move-result-object v2

    #@c
    .line 132
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    if-nez v2, :cond_0

    #@e
    .line 133
    const-string/jumbo v3, "Stack trace unavailable"

    #@11
    const/4 v4, 0x1

    #@12
    invoke-static {v4, v3}, Landroid/ddm/DdmHandleThread;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 135
    :cond_0
    invoke-direct {p0, v2, v1}, Landroid/ddm/DdmHandleThread;->createStackChunk([Ljava/lang/StackTraceElement;I)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1a
    move-result-object v3

    #@1b
    return-object v3
.end method

.method private handleTHEN(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 88
    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    .line 90
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 93
    .local v0, "enable":Z
    :goto_0
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->threadNotify(Z)V

    #@e
    .line 94
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 90
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    #@11
    .restart local v0    # "enable":Z
    goto :goto_0
.end method

.method private handleTHST(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 101
    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 106
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getThreadStats()[B

    #@7
    move-result-object v1

    #@8
    .line 107
    .local v1, "status":[B
    if-eqz v1, :cond_0

    #@a
    .line 108
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@c
    sget v3, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    #@e
    array-length v4, v1

    #@f
    const/4 v5, 0x0

    #@10
    invoke-direct {v2, v3, v1, v5, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@13
    return-object v2

    #@14
    .line 110
    :cond_0
    const-string/jumbo v2, "Can\'t build THST chunk"

    #@17
    const/4 v3, 0x1

    #@18
    invoke-static {v3, v2}, Landroid/ddm/DdmHandleThread;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method public static register()V
    .locals 2

    #@0
    .prologue
    .line 47
    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    #@2
    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    #@4
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@7
    .line 48
    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    #@9
    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    #@b
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@e
    .line 49
    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    #@10
    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    #@12
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@15
    .line 46
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 56
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 62
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 70
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@2
    .line 72
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 73
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleTHEN(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 74
    :cond_0
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 75
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleTHST(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 76
    :cond_1
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    #@16
    if-ne v0, v1, :cond_2

    #@18
    .line 77
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleSTKL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 79
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Unknown packet "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 80
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method
