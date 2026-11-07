.class abstract Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;
.super Landroid/net/connectivity/com/google/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 948
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist equalsRange(Landroid/net/connectivity/com/google/protobuf/ByteString;II)Z
.end method

.method protected final blacklist getTreeDepth()I
    .registers 2

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist isBalanced()Z
    .registers 2

    .line 956
    const/4 v0, 0x1

    return v0
.end method

.method blacklist writeToReverse(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V
    .registers 2
    .param p1, "byteOutput"    # Landroid/net/connectivity/com/google/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LeafByteString;->writeTo(Landroid/net/connectivity/com/google/protobuf/ByteOutput;)V

    .line 962
    return-void
.end method
