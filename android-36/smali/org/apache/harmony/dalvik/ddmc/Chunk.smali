.class public Lorg/apache/harmony/dalvik/ddmc/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public blacklist data:[B

.field public blacklist length:I

.field public blacklist offset:I

.field public blacklist test-api type:I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist test-api <init>(ILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 97
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    .line 98
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    .line 99
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    .line 100
    return-void
.end method

.method public constructor blacklist test-api <init>(I[BII)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 78
    iput-object p2, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->data:[B

    .line 79
    iput p3, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->offset:I

    .line 80
    iput p4, p0, Lorg/apache/harmony/dalvik/ddmc/Chunk;->length:I

    .line 81
    return-void
.end method
