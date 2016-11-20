.class public Landroid/ddm/DdmHandleAppName;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleAppName.java"


# static fields
.field public static final CHUNK_APNM:I

.field private static volatile mAppName:Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleAppName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "APNM"

    #@3
    invoke-static {v0}, Landroid/ddm/DdmHandleAppName;->type(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    #@9
    .line 33
    const-string/jumbo v0, ""

    #@c
    sput-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    #@e
    .line 35
    new-instance v0, Landroid/ddm/DdmHandleAppName;

    #@10
    invoke-direct {v0}, Landroid/ddm/DdmHandleAppName;-><init>()V

    #@13
    sput-object v0, Landroid/ddm/DdmHandleAppName;->mInstance:Landroid/ddm/DdmHandleAppName;

    #@15
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    #@3
    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 83
    sget-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static register()V
    .locals 0

    #@0
    .prologue
    .line 44
    return-void
.end method

.method private static sendAPNM(Ljava/lang/String;I)V
    .locals 3
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    mul-int/lit8 v2, v2, 0x2

    #@6
    .line 94
    add-int/lit8 v2, v2, 0x4

    #@8
    add-int/lit8 v2, v2, 0x4

    #@a
    .line 93
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v1

    #@e
    .line 97
    .local v1, "out":Ljava/nio/ByteBuffer;
    sget-object v2, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@10
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v2

    #@17
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1a
    .line 99
    invoke-static {v1, p0}, Landroid/ddm/DdmHandleAppName;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@1d
    .line 100
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@20
    .line 102
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@22
    sget v2, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    #@24
    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    #@27
    .line 103
    .local v0, "chunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    #@2a
    .line 89
    return-void
.end method

.method public static setAppName(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 73
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 74
    :cond_0
    return-void

    #@9
    .line 76
    :cond_1
    sput-object p0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    #@b
    .line 79
    invoke-static {p0, p1}, Landroid/ddm/DdmHandleAppName;->sendAPNM(Ljava/lang/String;I)V

    #@e
    .line 72
    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    #@0
    .prologue
    .line 50
    return-void
.end method

.method public disconnected()V
    .locals 0

    #@0
    .prologue
    .line 56
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
