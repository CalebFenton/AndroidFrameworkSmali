.class public Landroid/ddm/DdmHandleExit;
.super Landroid/ddm/DdmHandle;
.source "DdmHandleExit.java"


# static fields
.field public static final greylist-max-o CHUNK_EXIT:I

.field private static greylist-max-o mInstance:Landroid/ddm/DdmHandleExit;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "EXIT"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleExit;->CHUNK_EXIT:I

    .line 34
    new-instance v0, Landroid/ddm/DdmHandleExit;

    invoke-direct {v0}, Landroid/ddm/DdmHandleExit;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleExit;->mInstance:Landroid/ddm/DdmHandleExit;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    return-void
.end method

.method public static greylist-max-o register()V
    .registers 2

    .line 44
    sget v0, Landroid/ddm/DdmHandleExit;->CHUNK_EXIT:I

    sget-object v1, Landroid/ddm/DdmHandleExit;->mInstance:Landroid/ddm/DdmHandleExit;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 5
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .line 69
    invoke-static {p1}, Landroid/ddm/DdmHandleExit;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 73
    .local v1, "statusCode":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->halt(I)V

    .line 76
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist test-api onConnected()V
    .registers 1

    .line 51
    return-void
.end method

.method public blacklist test-api onDisconnected()V
    .registers 1

    .line 57
    return-void
.end method
