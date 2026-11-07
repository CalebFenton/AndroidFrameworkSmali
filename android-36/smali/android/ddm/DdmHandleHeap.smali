.class public Landroid/ddm/DdmHandleHeap;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleHeap.java"


# static fields
.field public static final greylist-max-o CHUNK_HPGC:I

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleHeap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-string v0, "HPGC"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    .line 32
    new-instance v0, Landroid/ddm/DdmHandleHeap;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHeap;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method private greylist-max-o handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 3
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o register()V
    .registers 2

    .line 42
    sget v0, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    sget-object v1, Landroid/ddm/DdmHandleHeap;->mInstance:Landroid/ddm/DdmHandleHeap;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 63
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 65
    .local v0, "type":I
    sget v1, Landroid/ddm/DdmHandleHeap;->CHUNK_HPGC:I

    if-ne v0, v1, :cond_b

    .line 66
    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHeap;->handleHPGC(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    .line 68
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/ddm/DdmHandleHeap;->name(I)Ljava/lang/String;

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
