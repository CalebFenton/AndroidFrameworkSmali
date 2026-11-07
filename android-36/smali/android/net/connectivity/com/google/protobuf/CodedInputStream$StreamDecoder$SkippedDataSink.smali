.class Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
.super Ljava/lang/Object;
.source "CodedInputStream.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$RefillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkippedDataSink"
.end annotation


# instance fields
.field private blacklist byteArrayStream:Ljava/io/ByteArrayOutputStream;

.field private blacklist lastPos:I

.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2232
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2233
    iget-object p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$500(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)I

    move-result p1

    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    return-void
.end method


# virtual methods
.method blacklist getSkippedData()Ljava/nio/ByteBuffer;
    .registers 5

    .line 2247
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1a

    .line 2248
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$600(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    iget-object v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {v2}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$500(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v2

    iget v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2250
    :cond_1a
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$600(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$500(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2251
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onRefill()V
    .registers 6

    .line 2238
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_b

    .line 2239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    .line 2241
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->buffer:[B
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$600(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)[B

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->this$0:Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;

    # getter for: Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->pos:I
    invoke-static {v3}, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;->access$500(Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder;)I

    move-result v3

    iget v4, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2242
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;->lastPos:I

    .line 2243
    return-void
.end method
