.class Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;
.super Lcom/android/okhttp/okio/ForwardingSource;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;Lcom/android/okhttp/okio/Source;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSource;-><init>(Lcom/android/okhttp/okio/Source;)V

    return-void
.end method


# virtual methods
.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    # getter for: Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_b

    return-wide v1

    .line 58
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    # getter for: Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/okhttp/okio/ForwardingSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1f

    return-wide v1

    .line 60
    :cond_1f
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    # -= operator for: Lcom/android/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->access$022(Lcom/android/okhttp/internal/framed/NameValueBlockReader;J)I

    return-wide p1
.end method
