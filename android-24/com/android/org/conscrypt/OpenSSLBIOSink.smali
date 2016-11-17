.class public final Lcom/android/org/conscrypt/OpenSSLBIOSink;
.super Ljava/lang/Object;
.source "OpenSSLBIOSink.java"


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final ctx:J

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "buffer"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    #@9
    .line 33
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    #@b
    .line 31
    return-void
.end method

.method public static create()Lcom/android/org/conscrypt/OpenSSLBIOSink;
    .locals 2

    #@0
    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 28
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLBIOSink;

    #@7
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;-><init>(Ljava/io/ByteArrayOutputStream;)V

    #@a
    return-object v1
.end method


# virtual methods
.method public available()I
    .locals 2

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    #@8
    sub-int/2addr v0, v1

    #@9
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 67
    return-void

    #@9
    .line 70
    :catchall_0
    move-exception v0

    #@a
    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 70
    throw v0
.end method

.method public getContext()J
    .locals 2

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->ctx:J

    #@2
    return-wide v0
.end method

.method public position()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    #@2
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@5
    .line 42
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    #@8
    .line 40
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J

    #@0
    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->available()I

    #@3
    move-result v1

    #@4
    long-to-int v2, p1

    #@5
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v0

    #@9
    .line 47
    .local v0, "maxLength":I
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    #@b
    add-int/2addr v1, v0

    #@c
    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    #@e
    .line 48
    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->position:I

    #@10
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    #@12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    #@15
    move-result v2

    #@16
    if-ne v1, v2, :cond_0

    #@18
    .line 49
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLBIOSink;->reset()V

    #@1b
    .line 51
    :cond_0
    int-to-long v2, v0

    #@1c
    return-wide v2
.end method

.method public toByteArray()[B
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
