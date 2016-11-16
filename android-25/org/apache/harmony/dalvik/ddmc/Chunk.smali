.class public Lorg/apache/harmony/dalvik/ddmc/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field public data:[B

.field public length:I

.field public offset:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@5
    .line 59
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    #@b
    .line 60
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    #@11
    .line 61
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    #@17
    .line 56
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    #@5
    .line 47
    iput-object p2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    #@7
    .line 48
    iput p3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    #@9
    .line 49
    iput p4, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    #@b
    .line 45
    return-void
.end method
