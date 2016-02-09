.class public Landroid/ddm/DdmHandleHello;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHello.java"


# static fields
.field public static final CHUNK_FEAT:I

.field public static final CHUNK_HELO:I

.field public static final CHUNK_WAIT:I

.field private static final FRAMEWORK_FEATURES:[Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, "HELO"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    #@9
    .line 35
    const-string/jumbo v0, "WAIT"

    #@c
    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    #@12
    .line 36
    const-string/jumbo v0, "FEAT"

    #@15
    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    #@1b
    .line 38
    new-instance v0, Landroid/ddm/DdmHandleHello;

    #@1d
    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    #@20
    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    #@22
    .line 40
    const/4 v0, 0x2

    #@23
    new-array v0, v0, [Ljava/lang/String;

    #@25
    .line 41
    const-string/jumbo v1, "opengl-tracing"

    #@28
    const/4 v2, 0x0

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 42
    const-string/jumbo v1, "view-hierarchy"

    #@2e
    const/4 v2, 0x1

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 40
    sput-object v0, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@33
    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method private handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 176
    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 181
    .local v3, "vmFeatures":[Ljava/lang/String;
    array-length v4, v3

    #@5
    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@7
    array-length v5, v5

    #@8
    add-int/2addr v4, v5

    #@9
    mul-int/lit8 v4, v4, 0x4

    #@b
    add-int/lit8 v2, v4, 0x4

    #@d
    .line 182
    .local v2, "size":I
    array-length v4, v3

    #@e
    add-int/lit8 v0, v4, -0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@12
    .line 183
    aget-object v4, v3, v0

    #@14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@17
    move-result v4

    #@18
    mul-int/lit8 v4, v4, 0x2

    #@1a
    add-int/2addr v2, v4

    #@1b
    .line 182
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 184
    :cond_0
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@20
    array-length v4, v4

    #@21
    add-int/lit8 v0, v4, -0x1

    #@23
    :goto_1
    if-ltz v0, :cond_1

    #@25
    .line 185
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@27
    aget-object v4, v4, v0

    #@29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    mul-int/lit8 v4, v4, 0x2

    #@2f
    add-int/2addr v2, v4

    #@30
    .line 184
    add-int/lit8 v0, v0, -0x1

    #@32
    goto :goto_1

    #@33
    .line 187
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@36
    move-result-object v1

    #@37
    .line 188
    .local v1, "out":Ljava/nio/ByteBuffer;
    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@39
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@3c
    .line 189
    array-length v4, v3

    #@3d
    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@3f
    array-length v5, v5

    #@40
    add-int/2addr v4, v5

    #@41
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@44
    .line 190
    array-length v4, v3

    #@45
    add-int/lit8 v0, v4, -0x1

    #@47
    :goto_2
    if-ltz v0, :cond_2

    #@49
    .line 191
    aget-object v4, v3, v0

    #@4b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4e
    move-result v4

    #@4f
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@52
    .line 192
    aget-object v4, v3, v0

    #@54
    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@57
    .line 190
    add-int/lit8 v0, v0, -0x1

    #@59
    goto :goto_2

    #@5a
    .line 194
    :cond_2
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@5c
    array-length v4, v4

    #@5d
    add-int/lit8 v0, v4, -0x1

    #@5f
    :goto_3
    if-ltz v0, :cond_3

    #@61
    .line 195
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@63
    aget-object v4, v4, v0

    #@65
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@68
    move-result v4

    #@69
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@6c
    .line 196
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    #@6e
    aget-object v4, v4, v0

    #@70
    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@73
    .line 194
    add-int/lit8 v0, v0, -0x1

    #@75
    goto :goto_3

    #@76
    .line 199
    :cond_3
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@78
    sget v5, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    #@7a
    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    #@7d
    return-object v4
.end method

.method private handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 14
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 112
    invoke-static {p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v1

    #@4
    .line 114
    .local v1, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    #@7
    move-result v5

    #@8
    .line 121
    .local v5, "serverProtoVers":I
    const-string/jumbo v12, "java.vm.name"

    #@b
    const-string/jumbo v13, "?"

    #@e
    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v9

    #@12
    .line 122
    .local v9, "vmName":Ljava/lang/String;
    const-string/jumbo v12, "java.vm.version"

    #@15
    const-string/jumbo v13, "?"

    #@18
    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v11

    #@1c
    .line 123
    .local v11, "vmVersion":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v12

    #@25
    const-string/jumbo v13, " v"

    #@28
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v12

    #@2c
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v12

    #@30
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    .line 128
    .local v7, "vmIdent":Ljava/lang/String;
    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 130
    .local v0, "appName":Ljava/lang/String;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3b
    move-result-object v10

    #@3c
    .line 132
    .local v10, "vmRuntime":Ldalvik/system/VMRuntime;
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->is64Bit()Z

    #@3f
    move-result v12

    #@40
    if-eqz v12, :cond_2

    #@42
    const-string/jumbo v2, "64-bit"

    #@45
    .line 133
    .local v2, "instructionSetDescription":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@48
    move-result-object v8

    #@49
    .line 134
    .local v8, "vmInstructionSet":Ljava/lang/String;
    if-eqz v8, :cond_0

    #@4b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@4e
    move-result v12

    #@4f
    if-lez v12, :cond_0

    #@51
    .line 135
    new-instance v12, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v12

    #@5a
    const-string/jumbo v13, " ("

    #@5d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v12

    #@61
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v12

    #@65
    const-string/jumbo v13, ")"

    #@68
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v12

    #@6c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    .line 137
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v13, "CheckJNI="

    #@78
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v13

    #@7c
    .line 138
    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->isCheckJniEnabled()Z

    #@7f
    move-result v12

    #@80
    if-eqz v12, :cond_3

    #@82
    const-string/jumbo v12, "true"

    #@85
    .line 137
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v12

    #@89
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    .line 141
    .local v6, "vmFlags":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@90
    move-result v12

    #@91
    mul-int/lit8 v12, v12, 0x2

    #@93
    .line 140
    add-int/lit8 v12, v12, 0x1c

    #@95
    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@98
    move-result v13

    #@99
    mul-int/lit8 v13, v13, 0x2

    #@9b
    .line 140
    add-int/2addr v12, v13

    #@9c
    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@9f
    move-result v13

    #@a0
    mul-int/lit8 v13, v13, 0x2

    #@a2
    .line 140
    add-int/2addr v12, v13

    #@a3
    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@a6
    move-result v13

    #@a7
    mul-int/lit8 v13, v13, 0x2

    #@a9
    .line 140
    add-int/2addr v12, v13

    #@aa
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@ad
    move-result-object v3

    #@ae
    .line 145
    .local v3, "out":Ljava/nio/ByteBuffer;
    sget-object v12, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@b0
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b3
    .line 146
    const/4 v12, 0x1

    #@b4
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@b7
    .line 147
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@ba
    move-result v12

    #@bb
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@be
    .line 148
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@c1
    move-result v12

    #@c2
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@c5
    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@c8
    move-result v12

    #@c9
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@cc
    .line 150
    invoke-static {v3, v7}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@cf
    .line 151
    invoke-static {v3, v0}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@d2
    .line 152
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@d5
    move-result v12

    #@d6
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@d9
    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@dc
    move-result v12

    #@dd
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@e0
    .line 154
    invoke-static {v3, v2}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@e3
    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@e6
    move-result v12

    #@e7
    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@ea
    .line 156
    invoke-static {v3, v6}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@ed
    .line 158
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@ef
    sget v12, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    #@f1
    invoke-direct {v4, v12, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    #@f4
    .line 164
    .local v4, "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    #@f7
    move-result v12

    #@f8
    if-eqz v12, :cond_1

    #@fa
    .line 165
    const/4 v12, 0x0

    #@fb
    invoke-static {v12}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    #@fe
    .line 167
    :cond_1
    return-object v4

    #@ff
    .line 132
    .end local v2    # "instructionSetDescription":Ljava/lang/String;
    .end local v3    # "out":Ljava/nio/ByteBuffer;
    .end local v4    # "reply":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .end local v6    # "vmFlags":Ljava/lang/String;
    .end local v8    # "vmInstructionSet":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "32-bit"

    #@102
    .restart local v2    # "instructionSetDescription":Ljava/lang/String;
    goto/16 :goto_0

    #@104
    .line 138
    .restart local v8    # "vmInstructionSet":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "false"

    #@107
    goto/16 :goto_1
.end method

.method public static register()V
    .locals 2

    #@0
    .prologue
    .line 52
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    #@2
    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    #@4
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@7
    .line 53
    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    #@9
    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    #@b
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@e
    .line 51
    return-void
.end method

.method public static sendWAIT(I)V
    .locals 5
    .param p0, "reason"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 207
    new-array v0, v4, [B

    #@4
    int-to-byte v2, p0

    #@5
    aput-byte v2, v0, v3

    #@7
    .line 208
    .local v0, "data":[B
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9
    sget v2, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    #@b
    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@e
    .line 209
    .local v1, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    #@11
    .line 206
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 60
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 77
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 88
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@2
    .line 90
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 91
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 92
    :cond_0
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 93
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 95
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "Unknown packet "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    .line 96
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1
.end method
