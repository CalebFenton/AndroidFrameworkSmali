.class Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLBIOSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field private final source:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 59
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@5
    .line 58
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 67
    :cond_0
    const/4 v0, -0x1

    #@10
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    .line 79
    .local v0, "originalPosition":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@b
    .line 80
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@10
    move-result v1

    #@11
    sub-int/2addr v1, v0

    #@12
    return v1
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@5
    move-result v2

    #@6
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v1

    #@a
    .line 86
    .local v1, "toRead":I
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v0

    #@10
    .line 87
    .local v0, "originalPosition":I
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@12
    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@15
    .line 88
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@1a
    move-result v2

    #@1b
    sub-int/2addr v2, v0

    #@1c
    return v2
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@5
    .line 92
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@5
    move-result v0

    #@6
    .line 99
    .local v0, "originalPosition":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@8
    int-to-long v2, v0

    #@9
    add-long/2addr v2, p1

    #@a
    long-to-int v2, v2

    #@b
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@e
    .line 100
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;->source:Ljava/nio/ByteBuffer;

    #@10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    #@13
    move-result v1

    #@14
    sub-int/2addr v1, v0

    #@15
    int-to-long v2, v1

    #@16
    return-wide v2
.end method
