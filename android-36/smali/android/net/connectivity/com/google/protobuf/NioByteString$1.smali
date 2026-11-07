.class Landroid/net/connectivity/com/google/protobuf/NioByteString$1;
.super Ljava/io/InputStream;
.source "NioByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/com/google/protobuf/NioByteString;->newInput()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist buf:Ljava/nio/ByteBuffer;

.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/NioByteString;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/NioByteString;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/com/google/protobuf/NioByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 222
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->this$0:Landroid/net/connectivity/com/google/protobuf/NioByteString;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 223
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->this$0:Landroid/net/connectivity/com/google/protobuf/NioByteString;

    # getter for: Landroid/net/connectivity/com/google/protobuf/NioByteString;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/NioByteString;->access$000(Landroid/net/connectivity/com/google/protobuf/NioByteString;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 227
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 228
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 252
    const/4 v0, -0x1

    return v0

    .line 254
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 260
    const/4 v0, -0x1

    return v0

    .line 263
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 264
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 265
    return p3
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/NioByteString$1;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;
    :try_end_5
    .catch Ljava/nio/InvalidMarkException; {:try_start_0 .. :try_end_5} :catch_7

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catch_7
    move-exception v0

    .line 240
    .local v0, "e":Ljava/nio/InvalidMarkException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
