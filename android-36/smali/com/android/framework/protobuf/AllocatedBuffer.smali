.class abstract Lcom/android/framework/protobuf/AllocatedBuffer;
.super Ljava/lang/Object;
.source "AllocatedBuffer.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 156
    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/android/framework/protobuf/AllocatedBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/AllocatedBuffer$1;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static blacklist wrap([B)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 3
    .param p0, "bytes"    # [B

    .line 134
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist wrap([BII)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 143
    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_e

    .line 148
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/AllocatedBuffer;->wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;

    move-result-object v0

    return-object v0

    .line 144
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    array-length v1, p0

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bytes.length=%d, offset=%d, length=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist wrapNoCheck([BII)Lcom/android/framework/protobuf/AllocatedBuffer;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 210
    new-instance v0, Lcom/android/framework/protobuf/AllocatedBuffer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/AllocatedBuffer$2;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist array()[B
.end method

.method public abstract blacklist arrayOffset()I
.end method

.method public abstract blacklist hasArray()Z
.end method

.method public abstract blacklist hasNioBuffer()Z
.end method

.method public abstract blacklist limit()I
.end method

.method public abstract blacklist nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract blacklist position()I
.end method

.method public abstract blacklist position(I)Lcom/android/framework/protobuf/AllocatedBuffer;
.end method

.method public abstract blacklist remaining()I
.end method
