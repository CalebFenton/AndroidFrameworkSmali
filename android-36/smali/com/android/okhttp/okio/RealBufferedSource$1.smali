.class Lcom/android/okhttp/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/RealBufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/RealBufferedSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 381
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, p0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    .line 380
    :cond_17
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSource;->close()V

    return-void
.end method

.method public whitelist test-api read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 360
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    .line 361
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    const/4 p0, -0x1

    return p0

    .line 364
    :cond_24
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 359
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 369
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 371
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v1, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    .line 372
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    const/4 p0, -0x1

    return p0

    .line 376
    :cond_2b
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result p0

    return p0

    .line 368
    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
