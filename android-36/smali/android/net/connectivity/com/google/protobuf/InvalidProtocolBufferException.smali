.class public Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private blacklist unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

.field private blacklist wasThrownFromInputStream:Z


# direct methods
.method public constructor blacklist <init>(Ljava/io/IOException;)V
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 59
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/io/IOException;

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 56
    return-void
.end method

.method static blacklist invalidEndTag()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 137
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist invalidTag()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 133
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist invalidUtf8()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 172
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist invalidWireType()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .registers 2

    .line 142
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist malformedVarint()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 129
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist negativeSize()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 123
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist parseFailure()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 168
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist recursionLimitExceeded()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 156
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist sizeLimitExceeded()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 162
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static blacklist truncatedMessage()Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2

    .line 115
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method blacklist getThrownFromInputStream()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    return v0
.end method

.method public blacklist getUnfinishedMessage()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    return-object v0
.end method

.method blacklist setThrownFromInputStream()V
    .registers 2

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    .line 96
    return-void
.end method

.method public blacklist setUnfinishedMessage(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
    .registers 2
    .param p1, "unfinishedMessage"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 73
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 74
    return-object p0
.end method

.method public blacklist unwrapIOException()Ljava/io/IOException;
    .registers 2

    .line 111
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method
