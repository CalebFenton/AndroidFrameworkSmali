.class Lcom/android/okhttp/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/RealBufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/RealBufferedSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

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

    .line 210
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->close()V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->flush()V

    :cond_d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 192
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 193
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    return-void

    .line 191
    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 199
    iget-object p0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    return-void

    .line 197
    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
