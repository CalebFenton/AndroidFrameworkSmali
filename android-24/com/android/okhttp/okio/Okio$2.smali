.class final Lcom/android/okhttp/okio/Okio$2;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/Timeout;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "val$timeout"    # Lcom/android/okhttp/okio/Timeout;
    .param p2, "val$in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

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
    .line 148
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 147
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 130
    cmp-long v4, p2, v6

    #@4
    if-gez v4, :cond_0

    #@6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "byteCount < 0: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 131
    :cond_0
    cmp-long v4, p2, v6

    #@22
    if-nez v4, :cond_1

    #@24
    return-wide v6

    #@25
    .line 133
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    #@27
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    #@2a
    .line 134
    const/4 v4, 0x1

    #@2b
    invoke-virtual {p1, v4}, Lcom/android/okhttp/okio/Buffer;->writableSegment(I)Lcom/android/okhttp/okio/Segment;

    #@2e
    move-result-object v3

    #@2f
    .line 135
    .local v3, "tail":Lcom/android/okhttp/okio/Segment;
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@31
    rsub-int v4, v4, 0x2000

    #@33
    int-to-long v4, v4

    #@34
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@37
    move-result-wide v4

    #@38
    long-to-int v2, v4

    #@39
    .line 136
    .local v2, "maxToCopy":I
    iget-object v4, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

    #@3b
    iget-object v5, v3, Lcom/android/okhttp/okio/Segment;->data:[B

    #@3d
    iget v6, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3f
    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    #@42
    move-result v0

    #@43
    .line 137
    .local v0, "bytesRead":I
    const/4 v4, -0x1

    #@44
    if-ne v0, v4, :cond_2

    #@46
    const-wide/16 v4, -0x1

    #@48
    return-wide v4

    #@49
    .line 138
    :cond_2
    iget v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4b
    add-int/2addr v4, v0

    #@4c
    iput v4, v3, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4e
    .line 139
    iget-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J

    #@50
    int-to-long v6, v0

    #@51
    add-long/2addr v4, v6

    #@52
    iput-wide v4, p1, Lcom/android/okhttp/okio/Buffer;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 140
    int-to-long v4, v0

    #@55
    return-wide v4

    #@56
    .line 141
    .end local v0    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    .end local v3    # "tail":Lcom/android/okhttp/okio/Segment;
    :catch_0
    move-exception v1

    #@57
    .line 142
    .local v1, "e":Ljava/lang/AssertionError;
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->-wrap0(Ljava/lang/AssertionError;)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_3

    #@5d
    new-instance v4, Ljava/io/IOException;

    #@5f
    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@62
    throw v4

    #@63
    .line 143
    :cond_3
    throw v1
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/okhttp/okio/Okio$2;->val$timeout:Lcom/android/okhttp/okio/Timeout;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "source("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/okhttp/okio/Okio$2;->val$in:Ljava/io/InputStream;

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
