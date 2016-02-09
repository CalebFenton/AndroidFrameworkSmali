.class final Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lcom/android/okhttp/okio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .locals 0
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 605
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@5
    .line 604
    return-void
.end method

.method private readContinuationHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 631
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    #@4
    .line 633
    .local v0, "previousStreamId":I
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@6
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    #@9
    move-result v2

    #@a
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    #@c
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    #@e
    .line 634
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@10
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@13
    move-result v2

    #@14
    and-int/lit16 v2, v2, 0xff

    #@16
    int-to-byte v1, v2

    #@17
    .line 635
    .local v1, "type":B
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@19
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    #@1c
    move-result v2

    #@1d
    and-int/lit16 v2, v2, 0xff

    #@1f
    int-to-byte v2, v2

    #@20
    iput-byte v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    #@22
    .line 636
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get1()Ljava/util/logging/Logger;

    #@25
    move-result-object v2

    #@26
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@28
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    invoke-static {}, Lcom/android/okhttp/internal/spdy/Http2;->-get1()Ljava/util/logging/Logger;

    #@31
    move-result-object v2

    #@32
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    #@34
    iget v4, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->length:I

    #@36
    iget-byte v5, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    #@38
    invoke-static {v7, v3, v4, v1, v5}, Lcom/android/okhttp/internal/spdy/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    #@3f
    .line 637
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@41
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    #@44
    move-result v2

    #@45
    const v3, 0x7fffffff

    #@48
    and-int/2addr v2, v3

    #@49
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    #@4b
    .line 638
    const/16 v2, 0x9

    #@4d
    if-eq v1, v2, :cond_1

    #@4f
    const-string/jumbo v2, "%s != TYPE_CONTINUATION"

    #@52
    new-array v3, v7, [Ljava/lang/Object;

    #@54
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@57
    move-result-object v4

    #@58
    aput-object v4, v3, v6

    #@5a
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@5d
    move-result-object v2

    #@5e
    throw v2

    #@5f
    .line 639
    :cond_1
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->streamId:I

    #@61
    if-eq v2, v0, :cond_2

    #@63
    const-string/jumbo v2, "TYPE_CONTINUATION streamId changed"

    #@66
    new-array v3, v6, [Ljava/lang/Object;

    #@68
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    #@6b
    move-result-object v2

    #@6c
    throw v2

    #@6d
    .line 630
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 609
    :goto_0
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    #@5
    if-nez v2, :cond_1

    #@7
    .line 610
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@9
    iget-short v3, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    #@b
    int-to-long v4, v3

    #@c
    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    #@f
    .line 611
    iput-short v6, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->padding:S

    #@11
    .line 612
    iget-byte v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->flags:B

    #@13
    and-int/lit8 v2, v2, 0x4

    #@15
    if-eqz v2, :cond_0

    #@17
    return-wide v8

    #@18
    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->readContinuationHeader()V

    #@1b
    goto :goto_0

    #@1c
    .line 617
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@1e
    iget v3, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    #@20
    int-to-long v4, v3

    #@21
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@24
    move-result-wide v4

    #@25
    invoke-interface {v2, p1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@28
    move-result-wide v0

    #@29
    .line 618
    .local v0, "read":J
    cmp-long v2, v0, v8

    #@2b
    if-nez v2, :cond_2

    #@2d
    return-wide v8

    #@2e
    .line 619
    :cond_2
    iget v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    #@30
    int-to-long v2, v2

    #@31
    sub-long/2addr v2, v0

    #@32
    long-to-int v2, v2

    #@33
    iput v2, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->left:I

    #@35
    .line 620
    return-wide v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
