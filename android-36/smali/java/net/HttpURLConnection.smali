.class public abstract Ljava/net/HttpURLConnection;
.super Ljava/net/URLConnection;
.source "HttpURLConnection.java"


# static fields
.field private static final greylist-max-o DEFAULT_CHUNK_SIZE:I = 0x1000

.field public static final whitelist test-api HTTP_ACCEPTED:I = 0xca

.field public static final whitelist test-api HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final whitelist test-api HTTP_BAD_METHOD:I = 0x195

.field public static final whitelist test-api HTTP_BAD_REQUEST:I = 0x190

.field public static final whitelist test-api HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final whitelist test-api HTTP_CONFLICT:I = 0x199

.field public static final whitelist test-api HTTP_CREATED:I = 0xc9

.field public static final whitelist test-api HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final whitelist test-api HTTP_FORBIDDEN:I = 0x193

.field public static final whitelist test-api HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final whitelist test-api HTTP_GONE:I = 0x19a

.field public static final whitelist test-api HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final whitelist test-api HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final whitelist test-api HTTP_MOVED_PERM:I = 0x12d

.field public static final whitelist test-api HTTP_MOVED_TEMP:I = 0x12e

.field public static final whitelist test-api HTTP_MULT_CHOICE:I = 0x12c

.field public static final whitelist test-api HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final whitelist test-api HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final whitelist test-api HTTP_NOT_FOUND:I = 0x194

.field public static final whitelist test-api HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final whitelist test-api HTTP_NOT_MODIFIED:I = 0x130

.field public static final whitelist test-api HTTP_NO_CONTENT:I = 0xcc

.field public static final whitelist test-api HTTP_OK:I = 0xc8

.field public static final whitelist test-api HTTP_PARTIAL:I = 0xce

.field public static final whitelist test-api HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final whitelist test-api HTTP_PRECON_FAILED:I = 0x19c

.field public static final whitelist test-api HTTP_PROXY_AUTH:I = 0x197

.field public static final whitelist test-api HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final whitelist test-api HTTP_RESET:I = 0xcd

.field public static final whitelist test-api HTTP_SEE_OTHER:I = 0x12f

.field public static final whitelist test-api HTTP_SERVER_ERROR:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api HTTP_UNAUTHORIZED:I = 0x191

.field public static final whitelist test-api HTTP_UNAVAILABLE:I = 0x1f7

.field public static final whitelist test-api HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final whitelist test-api HTTP_USE_PROXY:I = 0x131

.field public static final whitelist test-api HTTP_VERSION:I = 0x1f9

.field private static greylist-max-o followRedirects:Z

.field private static final greylist-max-o methods:[Ljava/lang/String;


# instance fields
.field protected whitelist test-api chunkLength:I

.field protected whitelist test-api fixedContentLength:I

.field protected whitelist test-api fixedContentLengthLong:J

.field protected whitelist test-api instanceFollowRedirects:Z

.field protected whitelist test-api method:Ljava/lang/String;

.field protected whitelist test-api responseCode:I

.field protected whitelist test-api responseMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 498
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 519
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GET"

    aput-object v3, v1, v2

    const-string v2, "POST"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "HEAD"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "OPTIONS"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "PUT"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "DELETE"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "TRACE"

    aput-object v2, v1, v0

    sput-object v1, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "u"    # Ljava/net/URL;

    .line 528
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 281
    const-string v0, "GET"

    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 300
    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 309
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 488
    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 516
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 529
    return-void
.end method

.method public static whitelist test-api getFollowRedirects()Z
    .registers 1

    .line 568
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    return v0
.end method

.method public static whitelist test-api setFollowRedirects(Z)V
    .registers 2
    .param p0, "set"    # Z

    .line 550
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 551
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 553
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 555
    :cond_9
    sput-boolean p0, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 556
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api disconnect()V
.end method

.method public whitelist test-api getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 823
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .line 758
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "dateString":Ljava/lang/String;
    :try_start_4
    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 763
    :cond_21
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    return-wide v1

    .line 764
    :catch_26
    move-exception v1

    .line 766
    return-wide p2
.end method

.method public whitelist test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getInstanceFollowRedirects()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 798
    .local v0, "port":I
    if-gez v0, :cond_b

    const/16 v1, 0x50

    goto :goto_c

    :cond_b
    move v1, v0

    .line 799
    .end local v0    # "port":I
    .local v1, "port":I
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "host":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    const-string v3, "connect"

    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .local v2, "permission":Ljava/security/Permission;
    return-object v2
.end method

.method public whitelist test-api getRequestMethod()Ljava/lang/String;
    .registers 2

    .line 655
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getResponseCode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 676
    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    return v0

    .line 684
    :cond_8
    const/4 v0, 0x0

    .line 686
    .local v0, "exc":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 689
    goto :goto_f

    .line 687
    :catch_d
    move-exception v2

    .line 688
    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "statusLine":Ljava/lang/String;
    if-nez v2, :cond_25

    .line 697
    if-eqz v0, :cond_24

    .line 698
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_20

    .line 699
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 701
    :cond_20
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 703
    :cond_24
    return v1

    .line 714
    :cond_25
    const-string v3, "HTTP/1."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 715
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 716
    .local v4, "codePos":I
    if-lez v4, :cond_61

    .line 718
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 719
    .local v3, "phrasePos":I
    if-lez v3, :cond_4b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4b

    .line 720
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 725
    :cond_4b
    if-gez v3, :cond_51

    .line 726
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 729
    :cond_51
    add-int/lit8 v5, v4, 0x1

    .line 730
    :try_start_53
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 731
    iget v1, p0, Ljava/net/HttpURLConnection;->responseCode:I
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5f} :catch_60

    return v1

    .line 732
    :catch_60
    move-exception v5

    .line 735
    .end local v3    # "phrasePos":I
    .end local v4    # "codePos":I
    :cond_61
    return v1
.end method

.method public whitelist test-api getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 753
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setChunkedStreamingMode(I)V
    .registers 6
    .param p1, "chunklen"    # I

    .line 450
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_22

    .line 453
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    iget-wide v0, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 456
    if-gtz p1, :cond_16

    const/16 v0, 0x1000

    goto :goto_17

    :cond_16
    move v0, p1

    :goto_17
    iput v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 457
    return-void

    .line 454
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fixed length streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set streaming mode: already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFixedLengthStreamingMode(I)V
    .registers 4
    .param p1, "contentLength"    # I

    .line 360
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_1e

    .line 363
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 366
    if-ltz p1, :cond_e

    .line 369
    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 370
    return-void

    .line 367
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid content length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Chunked encoding streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFixedLengthStreamingMode(J)V
    .registers 5
    .param p1, "contentLength"    # J

    .line 405
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_22

    .line 408
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 412
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    .line 415
    iput-wide p1, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 416
    return-void

    .line 413
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid content length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Chunked encoding streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInstanceFollowRedirects(Z)V
    .registers 2
    .param p1, "followRedirects"    # Z

    .line 587
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 588
    return-void
.end method

.method public whitelist test-api setRequestMethod(Ljava/lang/String;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 626
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-nez v0, :cond_4b

    .line 634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    sget-object v1, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 635
    sget-object v1, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 636
    const-string v1, "TRACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 637
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 638
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2c

    .line 639
    new-instance v2, Ljava/net/NetPermission;

    const-string v3, "allowHttpTrace"

    invoke-direct {v2, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 642
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :cond_2c
    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 643
    return-void

    .line 634
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 646
    .end local v0    # "i":I
    :cond_32
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HTTP method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_4b
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Can\'t reset method: already connected"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api usingProxy()Z
.end method
