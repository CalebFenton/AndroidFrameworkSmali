.class Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/NameValueBlockReader;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Source;

    #@0
    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@2
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    #@5
    return-void
.end method


# virtual methods
.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .locals 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 56
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@4
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->-get0(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    return-wide v4

    #@b
    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@d
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->-get0(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I

    #@10
    move-result v2

    #@11
    int-to-long v2, v2

    #@12
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@15
    move-result-wide v2

    #@16
    invoke-super {p0, p1, v2, v3}, Lcom/android/okhttp/okio/ForwardingSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    #@19
    move-result-wide v0

    #@1a
    .line 58
    .local v0, "read":J
    cmp-long v2, v0, v4

    #@1c
    if-nez v2, :cond_1

    #@1e
    return-wide v4

    #@1f
    .line 59
    :cond_1
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@21
    invoke-static {v2}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->-get0(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)I

    #@24
    move-result v3

    #@25
    int-to-long v4, v3

    #@26
    sub-long/2addr v4, v0

    #@27
    long-to-int v3, v4

    #@28
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader;->-set0(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;I)I

    #@2b
    .line 60
    return-wide v0
.end method
