.class Lcom/android/okhttp/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/RealBufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/okio/RealBufferedSink;

    #@0
    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@5
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
    .line 209
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->close()V

    #@5
    .line 208
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
    .line 203
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->-get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 204
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@a
    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->flush()V

    #@d
    .line 201
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ".outputStream()"

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

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->-get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z

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
    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@13
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@15
    int-to-byte v1, p1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@19
    .line 192
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@1b
    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@1e
    .line 189
    return-void
.end method

.method public write([BII)V
    .locals 2
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
    .line 196
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->-get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z

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
    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@13
    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    #@15
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    #@18
    .line 198
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    #@1a
    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    #@1d
    .line 195
    return-void
.end method
