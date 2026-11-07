.class public Landroid/ddm/DdmHandleNativeHeap;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleNativeHeap.java"


# static fields
.field public static final greylist-max-o CHUNK_NHGT:I

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleNativeHeap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-string v0, "NHGT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    .line 32
    new-instance v0, Landroid/ddm/DdmHandleNativeHeap;

    invoke-direct {v0}, Landroid/ddm/DdmHandleNativeHeap;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private native greylist-max-o getLeakInfo()[B
.end method

.method private greylist-max-o handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 7
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 77
    invoke-direct {p0}, Landroid/ddm/DdmHandleNativeHeap;->getLeakInfo()[B

    move-result-object v0

    .line 79
    .local v0, "data":[B
    if-eqz v0, :cond_33

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ddm-nativeheap"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v2, "NHGT"

    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1

    .line 85
    :cond_33
    const/4 v1, 0x1

    const-string v2, "Something went wrong"

    invoke-static {v1, v2}, Landroid/ddm/DdmHandleNativeHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o register()V
    .registers 2

    .line 42
    sget v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    sget-object v1, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    invoke-static {v1}, Landroid/ddm/DdmHandleNativeHeap;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ddm-nativeheap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 64
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    if-ne v0, v1, :cond_2f

    .line 65
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleNativeHeap;->handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 67
    :cond_2f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/ddm/DdmHandleNativeHeap;->name(I)Ljava/lang/String;

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

    .line 49
    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .registers 1

    .line 55
    return-void
.end method
