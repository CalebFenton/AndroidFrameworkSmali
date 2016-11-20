.class final Lcom/android/okhttp/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "val$timeout"    # Lcom/android/okhttp/okio/Timeout;
    .param p2, "val$out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 93
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 89
    return-void
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "sink("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ")"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public write(Lcom/android/okhttp/okio/Buffer;J)V
    .locals 8
    .param p1, "source"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 71
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@4
    move-wide v4, p2

    #@5
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    #@8
    .line 72
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    #@a
    if-lez v0, :cond_1

    #@c
    .line 73
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    #@e
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    #@11
    .line 74
    iget-object v6, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@13
    .line 75
    .local v6, "head":Lcom/android/okhttp/okio/Segment;
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@15
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@17
    sub-int/2addr v0, v1

    #@18
    int-to-long v0, v0

    #@19
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@1c
    move-result-wide v0

    #@1d
    long-to-int v7, v0

    #@1e
    .line 76
    .local v7, "toCopy":I
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    #@20
    iget-object v1, v6, Lcom/android/okhttp/okio/Segment;->data:[B

    #@22
    iget v4, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@24
    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    #@27
    .line 78
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@29
    add-int/2addr v0, v7

    #@2a
    iput v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2c
    .line 79
    int-to-long v0, v7

    #@2d
    sub-long/2addr p2, v0

    #@2e
    .line 80
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@30
    int-to-long v4, v7

    #@31
    sub-long/2addr v0, v4

    #@32
    iput-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@34
    .line 82
    iget v0, v6, Lcom/android/okhttp/okio/Segment;->pos:I

    #@36
    iget v1, v6, Lcom/android/okhttp/okio/Segment;->limit:I

    #@38
    if-ne v0, v1, :cond_0

    #@3a
    .line 83
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    #@40
    .line 84
    invoke-static {v6}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@43
    goto :goto_0

    #@44
    .line 70
    .end local v6    # "head":Lcom/android/okhttp/okio/Segment;
    .end local v7    # "toCopy":I
    :cond_1
    return-void
.end method
