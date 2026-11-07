.class abstract Lcom/android/framework/protobuf/ByteString$LeafByteString;
.super Lcom/android/framework/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 948
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z
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

.method blacklist writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .registers 2
    .param p1, "byteOutput"    # Lcom/android/framework/protobuf/ByteOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 962
    return-void
.end method
