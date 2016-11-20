.class public abstract Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.super Ljava/lang/Object;
.source "ChunkHandler.java"


# static fields
.field public static final CHUNK_FAIL:I

.field public static final CHUNK_ORDER:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    sput-object v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@4
    .line 32
    const-string/jumbo v0, "FAIL"

    #@7
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    sput v0, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_FAIL:I

    #@d
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    if-nez p1, :cond_0

    #@2
    .line 63
    const-string/jumbo p1, ""

    #@5
    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    mul-int/lit8 v1, v1, 0x2

    #@b
    add-int/lit8 v1, v1, 0x8

    #@d
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v0

    #@11
    .line 66
    .local v0, "out":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@16
    .line 67
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@19
    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@20
    .line 69
    invoke-static {v0, p1}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    #@23
    .line 71
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@25
    sget v2, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_FAIL:I

    #@27
    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    #@2a
    return-object v1
.end method

.method public static getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    #@0
    .prologue
    .line 93
    new-array v0, p1, [C

    #@2
    .line 94
    .local v0, "data":[C
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    #@5
    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    #@8
    move-result v2

    #@9
    aput-char v2, v0, v1

    #@b
    .line 94
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 96
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@10
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@13
    return-object v2
.end method

.method public static name(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    #@0
    .prologue
    .line 127
    const/4 v1, 0x4

    #@1
    new-array v0, v1, [C

    #@3
    .line 129
    .local v0, "ascii":[C
    shr-int/lit8 v1, p0, 0x18

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    int-to-char v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-char v1, v0, v2

    #@b
    .line 130
    shr-int/lit8 v1, p0, 0x10

    #@d
    and-int/lit16 v1, v1, 0xff

    #@f
    int-to-char v1, v1

    #@10
    const/4 v2, 0x1

    #@11
    aput-char v1, v0, v2

    #@13
    .line 131
    shr-int/lit8 v1, p0, 0x8

    #@15
    and-int/lit16 v1, v1, 0xff

    #@17
    int-to-char v1, v1

    #@18
    const/4 v2, 0x2

    #@19
    aput-char v1, v0, v2

    #@1b
    .line 132
    and-int/lit16 v1, p0, 0xff

    #@1d
    int-to-char v1, v1

    #@1e
    const/4 v2, 0x3

    #@1f
    aput-char v1, v0, v2

    #@21
    .line 134
    new-instance v1, Ljava/lang/String;

    #@23
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@26
    return-object v1
.end method

.method public static putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 104
    .local v1, "len":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    #@e
    .line 104
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 102
    :cond_0
    return-void
.end method

.method public static type(Ljava/lang/String;)I
    .locals 5
    .param p0, "typeName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-eq v2, v4, :cond_0

    #@7
    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Bad type name: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 115
    :cond_0
    const/4 v1, 0x0

    #@22
    .line 116
    .local v1, "result":I
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    #@25
    .line 117
    shl-int/lit8 v2, v1, 0x8

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v3

    #@2b
    and-int/lit16 v3, v3, 0xff

    #@2d
    or-int v1, v2, v3

    #@2f
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 119
    :cond_1
    return v1
.end method

.method public static wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    #@0
    .prologue
    .line 80
    iget-object v1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    #@2
    iget v2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    #@4
    iget v3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    #@6
    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v0

    #@a
    .line 81
    .local v0, "in":Ljava/nio/ByteBuffer;
    sget-object v1, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    #@c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    .line 82
    return-object v0
.end method


# virtual methods
.method public abstract connected()V
.end method

.method public abstract disconnected()V
.end method

.method public abstract handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
.end method
