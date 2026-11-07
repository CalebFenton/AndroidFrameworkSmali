.class Lcom/android/okhttp/okio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$out:Ljava/io/OutputStream;

.field final synthetic blacklist val$timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    iput-object p2, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-wide v0, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    :cond_8
    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_43

    .line 75
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$1;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    .line 76
    iget-object v0, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 77
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 78
    iget-object v2, p0, Lcom/android/okhttp/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v4, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    int-to-long v3, v1

    sub-long/2addr p2, v3

    .line 82
    iget-wide v5, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    sub-long/2addr v5, v3

    iput-wide v5, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    .line 84
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    if-ne v2, v1, :cond_8

    .line 85
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/android/okhttp/okio/Buffer;->head:Lcom/android/okhttp/okio/Segment;

    .line 86
    invoke-static {v0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    goto :goto_8

    :cond_43
    return-void
.end method
