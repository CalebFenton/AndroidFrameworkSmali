.class public Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferNanoException.java"


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
    return-void
.end method

.method static invalidEndTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 74
    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    #@5
    .line 73
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static invalidTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 69
    const-string/jumbo v1, "Protocol message contained an invalid tag (zero)."

    #@5
    .line 68
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static invalidWireType()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 78
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 79
    const-string/jumbo v1, "Protocol message tag had invalid wire type."

    #@5
    .line 78
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static malformedVarint()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 63
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 64
    const-string/jumbo v1, "CodedInputStream encountered a malformed varint."

    #@5
    .line 63
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 58
    const-string/jumbo v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    #@5
    .line 57
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static recursionLimitExceeded()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 83
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 84
    const-string/jumbo v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    #@5
    .line 83
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static sizeLimitExceeded()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 89
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 90
    const-string/jumbo v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    #@5
    .line 89
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method static truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
    .locals 2

    #@0
    .prologue
    .line 49
    new-instance v0, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    #@2
    .line 50
    const-string/jumbo v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    #@5
    .line 49
    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method
