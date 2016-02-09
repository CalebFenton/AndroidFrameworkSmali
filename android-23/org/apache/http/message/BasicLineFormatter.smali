.class public Lorg/apache/http/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lorg/apache/http/message/LineFormatter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/http/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Lorg/apache/http/message/BasicLineFormatter;

    #@2
    invoke-direct {v0}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    #@7
    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final formatHeader(Lorg/apache/http/Header;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "header"    # Lorg/apache/http/Header;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    if-nez p1, :cond_0

    #@3
    .line 298
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    #@5
    .line 299
    :cond_0
    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final formatProtocolVersion(Lorg/apache/http/ProtocolVersion;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # Lorg/apache/http/ProtocolVersion;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 116
    if-nez p1, :cond_0

    #@3
    .line 117
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    #@5
    .line 118
    :cond_0
    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final formatRequestLine(Lorg/apache/http/RequestLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "reqline"    # Lorg/apache/http/RequestLine;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 175
    if-nez p1, :cond_0

    #@3
    .line 176
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    #@5
    .line 177
    :cond_0
    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static final formatStatusLine(Lorg/apache/http/StatusLine;Lorg/apache/http/message/LineFormatter;)Ljava/lang/String;
    .locals 1
    .param p0, "statline"    # Lorg/apache/http/StatusLine;
    .param p1, "formatter"    # Lorg/apache/http/message/LineFormatter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 235
    if-nez p1, :cond_0

    #@3
    .line 236
    sget-object p1, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    #@5
    .line 237
    :cond_0
    invoke-interface {p1, v0, p0}, Lorg/apache/http/message/LineFormatter;->formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method


# virtual methods
.method public appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "version"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 125
    if-nez p2, :cond_0

    #@2
    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 127
    const-string/jumbo v3, "Protocol version may not be null"

    #@7
    .line 126
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 131
    :cond_0
    move-object v1, p1

    #@c
    .line 132
    .local v1, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, p2}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    #@f
    move-result v0

    #@10
    .line 133
    .local v0, "len":I
    if-nez v1, :cond_1

    #@12
    .line 134
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    #@14
    .end local v1    # "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@17
    .line 139
    .restart local v1    # "result":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1e
    .line 140
    const/16 v2, 0x2f

    #@20
    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@23
    .line 141
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2e
    .line 142
    const/16 v2, 0x2e

    #@30
    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@33
    .line 143
    invoke-virtual {p2}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    #@36
    move-result v2

    #@37
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3e
    .line 145
    return-object v1

    #@3f
    .line 136
    :cond_1
    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@42
    goto :goto_0
.end method

.method protected doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 334
    invoke-interface {p2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 335
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 337
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    add-int/lit8 v0, v3, 0x2

    #@e
    .line 338
    .local v0, "len":I
    if-eqz v2, :cond_0

    #@10
    .line 339
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    add-int/2addr v0, v3

    #@15
    .line 341
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@18
    .line 343
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 344
    const-string/jumbo v3, ": "

    #@1e
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@21
    .line 345
    if-eqz v2, :cond_1

    #@23
    .line 346
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@26
    .line 333
    :cond_1
    return-void
.end method

.method protected doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/apache/http/RequestLine;

    #@0
    .prologue
    const/16 v5, 0x20

    #@2
    .line 206
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 207
    .local v1, "method":Ljava/lang/String;
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 210
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@13
    move-result v4

    #@14
    add-int/2addr v3, v4

    #@15
    add-int/lit8 v3, v3, 0x1

    #@17
    .line 211
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p0, v4}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    #@1e
    move-result v4

    #@1f
    .line 210
    add-int v0, v3, v4

    #@21
    .line 212
    .local v0, "len":I
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@24
    .line 214
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@27
    .line 215
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@2a
    .line 216
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2d
    .line 217
    invoke-virtual {p1, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@30
    .line 218
    invoke-interface {p2}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {p0, p1, v3}, Lorg/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    #@37
    .line 205
    return-void
.end method

.method protected doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/apache/http/StatusLine;

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 267
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p0, v2}, Lorg/apache/http/message/BasicLineFormatter;->estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I

    #@9
    move-result v2

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    add-int/lit8 v2, v2, 0x3

    #@e
    add-int/lit8 v0, v2, 0x1

    #@10
    .line 269
    .local v0, "len":I
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 270
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@16
    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@19
    move-result v2

    #@1a
    add-int/2addr v0, v2

    #@1b
    .line 273
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->ensureCapacity(I)V

    #@1e
    .line 275
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0, p1, v2}, Lorg/apache/http/message/BasicLineFormatter;->appendProtocolVersion(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/ProtocolVersion;)Lorg/apache/http/util/CharArrayBuffer;

    #@25
    .line 276
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@28
    .line 277
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@2b
    move-result v2

    #@2c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@33
    .line 278
    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    #@36
    .line 279
    if-eqz v1, :cond_1

    #@38
    .line 280
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@3b
    .line 265
    :cond_1
    return-void
.end method

.method protected estimateProtocolVersionLen(Lorg/apache/http/ProtocolVersion;)I
    .locals 1
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 159
    invoke-virtual {p1}, Lorg/apache/http/ProtocolVersion;->getProtocol()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, 0x4

    #@a
    return v0
.end method

.method public formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "header"    # Lorg/apache/http/Header;

    #@0
    .prologue
    .line 306
    if-nez p2, :cond_0

    #@2
    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 308
    const-string/jumbo v2, "Header may not be null"

    #@7
    .line 307
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 310
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 312
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    instance-of v1, p2, Lorg/apache/http/FormattedHeader;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 314
    check-cast p2, Lorg/apache/http/FormattedHeader;

    #@12
    .end local p2    # "header":Lorg/apache/http/Header;
    invoke-interface {p2}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    #@15
    move-result-object v0

    #@16
    .line 319
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    return-object v0

    #@17
    .line 316
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    .restart local p2    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    #@1a
    move-result-object v0

    #@1b
    .line 317
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)V

    #@1e
    goto :goto_0
.end method

.method public formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "reqline"    # Lorg/apache/http/RequestLine;

    #@0
    .prologue
    .line 184
    if-nez p2, :cond_0

    #@2
    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 186
    const-string/jumbo v2, "Request line may not be null"

    #@7
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    #@e
    move-result-object v0

    #@f
    .line 190
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)V

    #@12
    .line 192
    return-object v0
.end method

.method public formatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "statline"    # Lorg/apache/http/StatusLine;

    #@0
    .prologue
    .line 244
    if-nez p2, :cond_0

    #@2
    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 246
    const-string/jumbo v2, "Status line may not be null"

    #@7
    .line 245
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/http/message/BasicLineFormatter;->initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;

    #@e
    move-result-object v0

    #@f
    .line 250
    .local v0, "result":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/message/BasicLineFormatter;->doFormatStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/StatusLine;)V

    #@12
    .line 252
    return-object v0
.end method

.method protected initBuffer(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 1
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;

    #@0
    .prologue
    .line 94
    if-eqz p1, :cond_0

    #@2
    .line 95
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    #@5
    .line 99
    :goto_0
    return-object p1

    #@6
    .line 97
    :cond_0
    new-instance p1, Lorg/apache/http/util/CharArrayBuffer;

    #@8
    .end local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v0, 0x40

    #@a
    invoke-direct {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@d
    .restart local p1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    goto :goto_0
.end method
