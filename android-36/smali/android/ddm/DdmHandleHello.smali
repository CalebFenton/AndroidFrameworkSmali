.class public Landroid/ddm/DdmHandleHello;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleHello.java"


# static fields
.field public static final greylist-max-o CHUNK_FEAT:I

.field public static final greylist-max-o CHUNK_HELO:I

.field public static final greylist-max-o CHUNK_WAIT:I

.field private static final blacklist CLIENT_PROTOCOL_VERSION:I = 0x1

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-string v0, "HELO"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    .line 38
    const-string v0, "WAIT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    .line 39
    const-string v0, "FEAT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    .line 43
    new-instance v0, Landroid/ddm/DdmHandleHello;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private greylist-max-o handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 185
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "vmFeatures":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Debug;->getFeatureList()[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "fmFeatures":[Ljava/lang/String;
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    .line 192
    .local v2, "size":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_20

    .line 193
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 192
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 195
    .end local v3    # "i":I
    :cond_20
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_23
    if-ltz v3, :cond_31

    .line 196
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 195
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 199
    .end local v3    # "i":I
    :cond_31
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 200
    .local v3, "out":Ljava/nio/ByteBuffer;
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 201
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 202
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_43
    if-ltz v4, :cond_56

    .line 203
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    aget-object v5, v0, v4

    invoke-static {v3, v5}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 202
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 206
    .end local v4    # "i":I
    :cond_56
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "i":I
    :goto_59
    if-ltz v4, :cond_6c

    .line 207
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    aget-object v5, v1, v4

    invoke-static {v3, v5}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 206
    add-int/lit8 v4, v4, -0x1

    goto :goto_59

    .line 211
    .end local v4    # "i":I
    :cond_6c
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    invoke-direct {v4, v5, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v4
.end method

.method private greylist-max-o handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 18
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 110
    invoke-static/range {p1 .. p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 119
    .local v1, "serverProtoVers":I
    const-string/jumbo v2, "java.vm.name"

    const-string v3, "?"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "vmName":Ljava/lang/String;
    const-string/jumbo v4, "java.vm.version"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "vmVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "vmIdent":Ljava/lang/String;
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getNames()Landroid/ddm/DdmHandleAppName$Names;

    move-result-object v5

    .line 124
    .local v5, "names":Landroid/ddm/DdmHandleAppName$Names;
    invoke-virtual {v5}, Landroid/ddm/DdmHandleAppName$Names;->getAppName()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "appName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/ddm/DdmHandleAppName$Names;->getPkgName()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "pkgName":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    .line 129
    .local v8, "vmRuntime":Ldalvik/system/VMRuntime;
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v9

    if-eqz v9, :cond_48

    const-string v9, "64-bit"

    goto :goto_4a

    :cond_48
    const-string v9, "32-bit"

    .line 130
    .local v9, "instructionSetDescription":Ljava/lang/String;
    :goto_4a
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, "vmInstructionSet":Ljava/lang/String;
    if-eqz v10, :cond_73

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_73

    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 134
    :cond_73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CheckJNI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 135
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->isCheckJniEnabled()Z

    move-result v12

    if-eqz v12, :cond_88

    const-string/jumbo v12, "true"

    goto :goto_8a

    :cond_88
    const-string v12, "false"

    :goto_8a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "vmFlags":Ljava/lang/String;
    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->isNativeDebuggable()Z

    move-result v12

    .line 138
    .local v12, "isNativeDebuggable":Z
    nop

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x20

    .line 140
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 141
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    .line 142
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/2addr v13, v14

    .line 144
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v13, v15

    add-int/lit8 v13, v13, 0x4

    .line 138
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 147
    .local v13, "out":Ljava/nio/ByteBuffer;
    sget-object v15, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {v13, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 153
    invoke-static {v13, v6}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 156
    invoke-static {v13, v9}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    invoke-static {v13, v11}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 159
    int-to-byte v14, v12

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 161
    invoke-static {v13, v7}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/os/DdmSyncState;->getStage()Landroid/os/DdmSyncState$Stage;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/DdmSyncState$Stage;->toInt()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    new-instance v14, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v15, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    invoke-direct {v14, v15, v13}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 173
    .local v14, "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v15

    if-eqz v15, :cond_12b

    .line 174
    const/4 v15, 0x0

    invoke-static {v15}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    .line 176
    :cond_12b
    return-object v14
.end method

.method public static greylist-max-o register()V
    .registers 2

    .line 52
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 53
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 54
    return-void
.end method

.method public static greylist-max-o sendWAIT(I)V
    .registers 6
    .param p0, "reason"    # I

    .line 219
    int-to-byte v0, p0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 220
    .local v2, "data":[B
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 221
    .local v0, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 222
    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 87
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 89
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    if-ne v0, v1, :cond_b

    .line 90
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 91
    :cond_b
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    if-ne v0, v1, :cond_14

    .line 92
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 94
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->name(I)Ljava/lang/String;

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

    .line 70
    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .registers 1

    .line 79
    return-void
.end method
