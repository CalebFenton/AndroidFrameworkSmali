.class public abstract Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.super Ljava/lang/Object;
.source "ChunkHandler.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CHUNK_FAIL:I

.field public static final greylist test-api CHUNK_ORDER:Ljava/nio/ByteOrder;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    .line 49
    const-string v0, "FAIL"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_FAIL:I

    return-void
.end method

.method public constructor blacklist test-api <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist test-api createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p0, "errorCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 103
    if-nez p1, :cond_4

    .line 104
    const-string p1, ""

    .line 106
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "out":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v1, :cond_30

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 115
    .end local v2    # "i":I
    :cond_30
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v3, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_FAIL:I

    invoke-direct {v2, v3, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v2
.end method

.method public static blacklist test-api name(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 162
    .local v0, "ascii":[C
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 163
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 164
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/4 v2, 0x2

    aput-char v1, v0, v2

    .line 165
    and-int/lit16 v1, p0, 0xff

    int-to-char v1, v1

    const/4 v2, 0x3

    aput-char v1, v0, v2

    .line 167
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist test-api type(Ljava/lang/String;)I
    .registers 6
    .param p0, "typeName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_18

    .line 147
    shl-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 149
    .end local v2    # "i":I
    :cond_18
    return v0

    .line 143
    .end local v0    # "result":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist test-api wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    iget v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 131
    .local v0, "in":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 132
    return-object v0
.end method


# virtual methods
.method public abstract blacklist test-api handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public abstract blacklist test-api onConnected()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public abstract blacklist test-api onDisconnected()V
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method
