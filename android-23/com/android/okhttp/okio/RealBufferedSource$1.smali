.class Lcom/android/okhttp/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/RealBufferedSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/okio/RealBufferedSource;

    #@0
    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->-get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "closed"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@13
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@15
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@17
    const-wide/32 v2, 0x7fffffff

    #@1a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@1d
    move-result-wide v0

    #@1e
    long-to-int v0, v0

    #@1f
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->close()V

    #@5
    .line 361
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@2
    invoke-static {v2}, Lcom/android/okhttp/okio/RealBufferedSource;->-get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    new-instance v2, Ljava/io/IOException;

    #@a
    const-string/jumbo v3, "closed"

    #@d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 337
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@13
    iget-object v2, v2, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@15
    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    #@17
    const-wide/16 v4, 0x0

    #@19
    cmp-long v2, v2, v4

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 338
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@1f
    iget-object v2, v2, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@21
    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@23
    iget-object v3, v3, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@25
    const-wide/16 v4, 0x800

    #@27
    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@2a
    move-result-wide v0

    #@2b
    .line 339
    .local v0, "count":J
    const-wide/16 v2, -0x1

    #@2d
    cmp-long v2, v0, v2

    #@2f
    if-nez v2, :cond_1

    #@31
    const/4 v2, -0x1

    #@32
    return v2

    #@33
    .line 341
    .end local v0    # "count":J
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@35
    iget-object v2, v2, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@37
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    #@3a
    move-result v2

    #@3b
    and-int/lit16 v2, v2, 0xff

    #@3d
    return v2
.end method

.method public read([BII)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->-get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "closed"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 346
    :cond_0
    array-length v0, p1

    #@12
    int-to-long v0, v0

    #@13
    int-to-long v2, p2

    #@14
    int-to-long v4, p3

    #@15
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@18
    .line 348
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@1a
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@1c
    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    #@1e
    const-wide/16 v2, 0x0

    #@20
    cmp-long v0, v0, v2

    #@22
    if-nez v0, :cond_1

    #@24
    .line 349
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@26
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    #@28
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@2a
    iget-object v1, v1, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@2c
    const-wide/16 v2, 0x800

    #@2e
    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@31
    move-result-wide v6

    #@32
    .line 350
    .local v6, "count":J
    const-wide/16 v0, -0x1

    #@34
    cmp-long v0, v6, v0

    #@36
    if-nez v0, :cond_1

    #@38
    const/4 v0, -0x1

    #@39
    return v0

    #@3a
    .line 353
    .end local v6    # "count":J
    :cond_1
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@3c
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@3e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    #@41
    move-result v0

    #@42
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ".inputStream()"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
