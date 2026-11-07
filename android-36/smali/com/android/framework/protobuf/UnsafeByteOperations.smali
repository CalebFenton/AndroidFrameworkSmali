.class public final Lcom/android/framework/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "UnsafeByteOperations.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unsafeWrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 98
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWrap([B)Lcom/android/framework/protobuf/ByteString;
    .registers 2
    .param p0, "buffer"    # [B

    .line 75
    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWrap([BII)Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 88
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWriteTo(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 2
    .param p0, "bytes"    # Lcom/android/framework/protobuf/ByteString;
    .param p1, "output"    # Lcom/android/framework/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 119
    return-void
.end method
