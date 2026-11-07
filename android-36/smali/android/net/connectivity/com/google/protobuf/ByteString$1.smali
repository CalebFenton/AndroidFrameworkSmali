.class Landroid/net/connectivity/com/google/protobuf/ByteString$1;
.super Landroid/net/connectivity/com/google/protobuf/ByteString$AbstractByteIterator;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/com/google/protobuf/ByteString;->iterator()Landroid/net/connectivity/com/google/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist limit:I

.field private blacklist position:I

.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/ByteString;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->this$0:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->position:I

    .line 178
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->this$0:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 182
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->position:I

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist nextByte()B
    .registers 3

    .line 187
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->position:I

    .line 188
    .local v0, "currentPos":I
    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_11

    .line 191
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->position:I

    .line 192
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$1;->this$0:Landroid/net/connectivity/com/google/protobuf/ByteString;

    invoke-virtual {v1, v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->internalByteAt(I)B

    move-result v1

    return v1

    .line 189
    :cond_11
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
