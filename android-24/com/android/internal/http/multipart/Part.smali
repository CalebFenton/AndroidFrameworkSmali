.class public abstract Lcom/android/internal/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const-class v0, Lcom/android/internal/http/multipart/Part;

    #@2
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@8
    .line 67
    const-string/jumbo v0, "----------------314159265358979323846"

    #@b
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    #@11
    .line 73
    sget-object v0, Lcom/android/internal/http/multipart/Part;->BOUNDARY_BYTES:[B

    #@13
    sput-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    #@15
    .line 79
    const-string/jumbo v0, "\r\n"

    #@18
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@1e
    .line 86
    const-string/jumbo v0, "\""

    #@21
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@24
    move-result-object v0

    #@25
    .line 85
    sput-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    #@27
    .line 93
    const-string/jumbo v0, "--"

    #@2a
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@2d
    move-result-object v0

    #@2e
    .line 92
    sput-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    #@30
    .line 100
    const-string/jumbo v0, "Content-Disposition: form-data; name="

    #@33
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@36
    move-result-object v0

    #@37
    .line 99
    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    #@39
    .line 107
    const-string/jumbo v0, "Content-Type: "

    #@3c
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@3f
    move-result-object v0

    #@40
    .line 106
    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    #@42
    .line 114
    const-string/jumbo v0, "; charset="

    #@45
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@48
    move-result-object v0

    #@49
    .line 113
    sput-object v0, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    #@4b
    .line 121
    const-string/jumbo v0, "Content-Transfer-Encoding: "

    #@4e
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@51
    move-result-object v0

    #@52
    .line 120
    sput-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    #@54
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    const-string/jumbo v0, "----------------314159265358979323846"

    #@3
    return-object v0
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;)J
    .locals 2
    .param p0, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    #@2
    invoke-static {p0, v0}, Lcom/android/internal/http/multipart/Part;->getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public static getLengthOfParts([Lcom/android/internal/http/multipart/Part;[B)J
    .locals 8
    .param p0, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 419
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v6, "getLengthOfParts(Parts[])"

    #@5
    invoke-interface {v1, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 420
    if-nez p0, :cond_0

    #@a
    .line 421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v6, "Parts may not be null"

    #@f
    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 423
    :cond_0
    const-wide/16 v4, 0x0

    #@15
    .line 424
    .local v4, "total":J
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@17
    if-ge v0, v1, :cond_2

    #@19
    .line 426
    aget-object v1, p0, v0

    #@1b
    invoke-virtual {v1, p1}, Lcom/android/internal/http/multipart/Part;->setPartBoundary([B)V

    #@1e
    .line 427
    aget-object v1, p0, v0

    #@20
    invoke-virtual {v1}, Lcom/android/internal/http/multipart/Part;->length()J

    #@23
    move-result-wide v2

    #@24
    .line 428
    .local v2, "l":J
    const-wide/16 v6, 0x0

    #@26
    cmp-long v1, v2, v6

    #@28
    if-gez v1, :cond_1

    #@2a
    .line 429
    const-wide/16 v6, -0x1

    #@2c
    return-wide v6

    #@2d
    .line 431
    :cond_1
    add-long/2addr v4, v2

    #@2e
    .line 424
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 433
    .end local v2    # "l":J
    :cond_2
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    #@33
    array-length v1, v1

    #@34
    int-to-long v6, v1

    #@35
    add-long/2addr v4, v6

    #@36
    .line 434
    array-length v1, p1

    #@37
    int-to-long v6, v1

    #@38
    add-long/2addr v4, v6

    #@39
    .line 435
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    #@3b
    array-length v1, v1

    #@3c
    int-to-long v6, v1

    #@3d
    add-long/2addr v4, v6

    #@3e
    .line 436
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@40
    array-length v1, v1

    #@41
    int-to-long v6, v1

    #@42
    add-long/2addr v4, v6

    #@43
    .line 437
    return-wide v4
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    #@2
    invoke-static {p0, p1, v0}, Lcom/android/internal/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V

    #@5
    .line 359
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/android/internal/http/multipart/Part;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/android/internal/http/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    if-nez p1, :cond_0

    #@2
    .line 378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Parts may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 380
    :cond_0
    if-eqz p2, :cond_1

    #@d
    array-length v1, p2

    #@e
    if-nez v1, :cond_2

    #@10
    .line 381
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v2, "partBoundary may not be empty"

    #@15
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 383
    :cond_2
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@1b
    if-ge v0, v1, :cond_3

    #@1d
    .line 385
    aget-object v1, p1, v0

    #@1f
    invoke-virtual {v1, p2}, Lcom/android/internal/http/multipart/Part;->setPartBoundary([B)V

    #@22
    .line 386
    aget-object v1, p1, v0

    #@24
    invoke-virtual {v1, p0}, Lcom/android/internal/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    #@27
    .line 383
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 388
    :cond_3
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    #@2c
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    #@2f
    .line 389
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    #@32
    .line 390
    sget-object v1, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    #@34
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    #@37
    .line 391
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@39
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    #@3c
    .line 375
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 171
    sget-object v0, Lcom/android/internal/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    #@6
    return-object v0

    #@7
    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    #@9
    return-object v0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 195
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v2, "enter length()"

    #@5
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 327
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->lengthOfData()J

    #@b
    move-result-wide v2

    #@c
    const-wide/16 v4, 0x0

    #@e
    cmp-long v1, v2, v4

    #@10
    if-gez v1, :cond_0

    #@12
    .line 328
    const-wide/16 v2, -0x1

    #@14
    return-wide v2

    #@15
    .line 330
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@17
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@1a
    .line 331
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    #@1d
    .line 332
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    #@20
    .line 333
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    #@23
    .line 334
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    #@26
    .line 335
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    #@29
    .line 336
    invoke-virtual {p0, v0}, Lcom/android/internal/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    #@2c
    .line 337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@2f
    move-result v1

    #@30
    int-to-long v2, v1

    #@31
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->lengthOfData()J

    #@34
    move-result-wide v4

    #@35
    add-long/2addr v2, v4

    #@36
    return-wide v2
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter send(OutputStream out)"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 307
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    #@b
    .line 308
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    #@e
    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    #@11
    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    #@14
    .line 311
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    #@17
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    #@1a
    .line 313
    invoke-virtual {p0, p1}, Lcom/android/internal/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    #@1d
    .line 305
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 230
    sget-object v2, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v3, "enter sendContentTypeHeader(OutputStream out)"

    #@5
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getContentType()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 232
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@e
    .line 233
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@10
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@13
    .line 234
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    #@15
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@18
    .line 235
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@1f
    .line 236
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getCharSet()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 237
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@25
    .line 238
    sget-object v2, Lcom/android/internal/http/multipart/Part;->CHARSET_BYTES:[B

    #@27
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@2a
    .line 239
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@31
    .line 229
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter sendDispositionHeader(OutputStream out)"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 218
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    #@a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 219
    sget-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    #@f
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@12
    .line 220
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 221
    sget-object v0, Lcom/android/internal/http/multipart/Part;->QUOTE_BYTES:[B

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@22
    .line 216
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter sendEnd(OutputStream out)"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 294
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 292
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter sendEndOfHeader(OutputStream out)"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 268
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 269
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@f
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@12
    .line 266
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    sget-object v0, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter sendStart(OutputStream out)"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 205
    sget-object v0, Lcom/android/internal/http/multipart/Part;->EXTRA_BYTES:[B

    #@a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getPartBoundary()[B

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@14
    .line 207
    sget-object v0, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@16
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@19
    .line 203
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    sget-object v1, Lcom/android/internal/http/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v2, "enter sendTransferEncodingHeader(OutputStream out)"

    #@5
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 253
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 254
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 255
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CRLF_BYTES:[B

    #@10
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@13
    .line 256
    sget-object v1, Lcom/android/internal/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    #@15
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@18
    .line 257
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1f
    .line 251
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    #@0
    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/internal/http/multipart/Part;->boundaryBytes:[B

    #@2
    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/Part;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
