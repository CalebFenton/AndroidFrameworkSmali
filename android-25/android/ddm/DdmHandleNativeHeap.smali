.class public Landroid/ddm/DdmHandleNativeHeap;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleNativeHeap.java"


# static fields
.field public static final CHUNK_NHGT:I

.field private static mInstance:Landroid/ddm/DdmHandleNativeHeap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    const-string/jumbo v0, "NHGT"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleNativeHeap;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    #@9
    .line 31
    new-instance v0, Landroid/ddm/DdmHandleNativeHeap;

    #@b
    invoke-direct {v0}, Landroid/ddm/DdmHandleNativeHeap;-><init>()V

    #@e
    sput-object v0, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    #@10
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method private native getLeakInfo()[B
.end method

.method private handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Landroid/ddm/DdmHandleNativeHeap;->getLeakInfo()[B

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "data":[B
    if-eqz v0, :cond_0

    #@6
    .line 81
    const-string/jumbo v1, "ddm-nativeheap"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Sending "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    array-length v3, v0

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, " bytes"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 82
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@2a
    const-string/jumbo v2, "NHGT"

    #@2d
    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    #@30
    move-result v2

    #@31
    array-length v3, v0

    #@32
    const/4 v4, 0x0

    #@33
    invoke-direct {v1, v2, v0, v4, v3}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    #@36
    return-object v1

    #@37
    .line 85
    :cond_0
    const-string/jumbo v1, "Something went wrong"

    #@3a
    const/4 v2, 0x1

    #@3b
    invoke-static {v2, v1}, Landroid/ddm/DdmHandleNativeHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@3e
    move-result-object v1

    #@3f
    return-object v1
.end method

.method public static register()V
    .locals 2

    #@0
    .prologue
    .line 41
    sget v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    #@2
    sget-object v1, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    #@4
    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 48
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 54
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 60
    const-string/jumbo v1, "ddm-nativeheap"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "Handling "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget v3, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@11
    invoke-static {v3}, Landroid/ddm/DdmHandleNativeHeap;->name(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, " chunk"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 61
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@29
    .line 63
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    #@2b
    if-ne v0, v1, :cond_0

    #@2d
    .line 64
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleNativeHeap;->handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 66
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "Unknown packet "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    .line 67
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1
.end method
