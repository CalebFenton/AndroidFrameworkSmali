.class public final Landroid/net/connectivity/com/google/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "UnsafeByteOperations.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unsafeWrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 98
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWrap([B)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2
    .param p0, "buffer"    # [B

    .line 75
    invoke-static {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->wrap([B)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWrap([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 88
    invoke-static {p0, p1, p2}, Landroid/net/connectivity/com/google/protobuf/ByteString;->wrap([BII)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWriteTo(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    .registers 2
    .param p0, "bytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "output"    # Landroid/net/connectivity/com/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->writeTo(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V

    .line 119
    return-void
.end method
