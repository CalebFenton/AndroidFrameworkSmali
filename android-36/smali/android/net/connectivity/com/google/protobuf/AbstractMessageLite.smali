.class public abstract Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;,
        Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$InternalOneOfEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/MessageLite;"
    }
.end annotation


# instance fields
.field protected blacklist memoizedHashCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-static {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 143
    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 146
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    invoke-static {p0, p1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method protected static blacklist checkByteStringIsUtf8(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p0, "byteString"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    return-void

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Byte string is not UTF-8."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 125
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method


# virtual methods
.method blacklist getMemoizedSerializedSize()I
    .registers 2

    .line 102
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method blacklist getSerializedSize(Landroid/net/connectivity/com/google/protobuf/Schema;)I
    .registers 4
    .param p1, "schema"    # Landroid/net/connectivity/com/google/protobuf/Schema;

    .line 111
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    .line 112
    .local v0, "memoizedSerializedSize":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 113
    invoke-interface {p1, p0}, Landroid/net/connectivity/com/google/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->setMemoizedSerializedSize(I)V

    .line 116
    :cond_e
    return v0
.end method

.method blacklist newUninitializedMessageException()Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;
    .registers 2

    .line 121
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/UninitializedMessageException;-><init>(Landroid/net/connectivity/com/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method blacklist setMemoizedSerializedSize(I)V
    .registers 3
    .param p1, "size"    # I

    .line 106
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist toByteArray()[B
    .registers 4

    .line 69
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 70
    .local v0, "result":[B
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->newInstance([B)Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 71
    .local v1, "output":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V

    .line 72
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 73
    return-object v0

    .line 74
    .end local v0    # "result":[B
    .end local v1    # "output":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    :catch_11
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 4

    .line 58
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->newCodedBuilder(I)Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 59
    .local v0, "out":Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V

    .line 60
    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->build()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 61
    .end local v0    # "out":Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;
    :catch_14
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeDelimitedTo(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 90
    .local v0, "serialized":I
    nop

    .line 92
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 91
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 93
    .local v1, "bufferSize":I
    invoke-static {p1, v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    move-result-object v2

    .line 94
    .local v2, "codedOutput":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    invoke-virtual {v2, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 95
    invoke-virtual {p0, v2}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V

    .line 96
    invoke-virtual {v2}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->flush()V

    .line 97
    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;, "Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 82
    .local v0, "bufferSize":I
    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 83
    .local v1, "codedOutput":Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Landroid/net/connectivity/com/google/protobuf/AbstractMessageLite;->writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V

    .line 84
    invoke-virtual {v1}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->flush()V

    .line 85
    return-void
.end method
