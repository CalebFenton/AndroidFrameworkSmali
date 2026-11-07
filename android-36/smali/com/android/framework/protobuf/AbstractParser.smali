.class public abstract Lcom/android/framework/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/android/framework/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/android/framework/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 74
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .local p1, "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 67
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->newUninitializedMessageException(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/android/framework/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 71
    :cond_16
    :goto_16
    return-object p1
.end method

.method private blacklist newUninitializedMessageException(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/UninitializedMessageException;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/android/framework/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .local p1, "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    instance-of v0, p1, Lcom/android/framework/protobuf/AbstractMessageLite;

    if-eqz v0, :cond_c

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->newUninitializedMessageException()Lcom/android/framework/protobuf/UninitializedMessageException;

    move-result-object v0

    return-object v0

    .line 55
    :cond_c
    new-instance v0, Lcom/android/framework/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/android/framework/protobuf/UninitializedMessageException;-><init>(Lcom/android/framework/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public blacklist parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 267
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 134
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;
    :try_end_a
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_a} :catch_1b

    .line 136
    .local v1, "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_15

    .line 139
    nop

    .line 142
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    nop

    .line 144
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    .line 137
    .restart local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    :catch_15
    move-exception v2

    .line 138
    .local v2, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :try_start_16
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":Ljava/nio/ByteBuffer;
    .end local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_1b
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_16 .. :try_end_1b} :catch_1b

    .line 140
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":Ljava/nio/ByteBuffer;
    .restart local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catch_1b
    move-exception v0

    .line 141
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist parseFrom([B)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom([BII)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/AbstractParser;->checkMessageInitialized(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom([B)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([B)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom([BII)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([BII)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 247
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 248
    const/4 v1, 0x0

    return-object v1

    .line 250
    :cond_9
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_18

    .line 253
    .end local v0    # "firstByte":I
    .local v1, "size":I
    nop

    .line 254
    new-instance v0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v0, p1, v1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 255
    .local v0, "limitedInput":Ljava/io/InputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    return-object v2

    .line 251
    .end local v0    # "limitedInput":Ljava/io/InputStream;
    .end local v1    # "size":I
    :catch_18
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic blacklist parsePartialDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public blacklist parsePartialFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePartialFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 7
    .param p1, "data"    # Lcom/android/framework/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 100
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;
    :try_end_a
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_a} :catch_16

    .line 102
    .local v1, "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 105
    nop

    .line 106
    return-object v1

    .line 103
    :catch_10
    move-exception v2

    .line 104
    .local v2, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :try_start_11
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":Lcom/android/framework/protobuf/ByteString;
    .end local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_16
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_16} :catch_16

    .line 107
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":Lcom/android/framework/protobuf/ByteString;
    .restart local p2    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catch_16
    move-exception v0

    .line 108
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/CodedInputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public blacklist parsePartialFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;
    .registers 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePartialFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 7
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 215
    .local v0, "codedInput":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    .line 217
    .local v1, "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 220
    nop

    .line 221
    return-object v1

    .line 218
    :catch_10
    move-exception v2

    .line 219
    .local v2, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method public blacklist parsePartialFrom([B)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    array-length v0, p1

    sget-object v1, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePartialFrom([BII)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    sget-object v0, Lcom/android/framework/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    .line 158
    .local v0, "input":Lcom/android/framework/protobuf/CodedInputStream;
    invoke-virtual {p0, v0, p4}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;
    :try_end_a
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_a} :catch_16

    .line 160
    .local v1, "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_e
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_e} :catch_10

    .line 163
    nop

    .line 164
    return-object v1

    .line 161
    :catch_10
    move-exception v2

    .line 162
    .local v2, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :try_start_11
    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .end local p1    # "data":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_16
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_16} :catch_16

    .line 165
    .end local v0    # "input":Lcom/android/framework/protobuf/CodedInputStream;
    .end local v1    # "message":Lcom/android/framework/protobuf/MessageLite;, "TMessageType;"
    .end local v2    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    .restart local p0    # "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    .restart local p1    # "data":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    .restart local p4    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catch_16
    move-exception v0

    .line 166
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    throw v0
.end method

.method public blacklist parsePartialFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist parsePartialFrom(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom([B)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([B)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom([BII)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BII)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BIILcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist parsePartialFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/android/framework/protobuf/AbstractParser;, "Lcom/android/framework/protobuf/AbstractParser<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/AbstractParser;->parsePartialFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method
