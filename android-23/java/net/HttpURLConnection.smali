.class public abstract Ljava/net/HttpURLConnection;
.super Ljava/net/URLConnection;
.source "HttpURLConnection.java"


# static fields
.field private static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SERVER_ERROR:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VERSION:I = 0x1f9

.field private static final PERMITTED_USER_METHODS:[Ljava/lang/String;

.field private static followRedirects:Z


# instance fields
.field protected chunkLength:I

.field protected fixedContentLength:I

.field protected fixedContentLengthLong:J

.field protected instanceFollowRedirects:Z

.field protected method:Ljava/lang/String;

.field protected responseCode:I

.field protected responseMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 273
    const/4 v0, 0x7

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 274
    const-string/jumbo v1, "OPTIONS"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 275
    const-string/jumbo v1, "GET"

    #@d
    aput-object v1, v0, v3

    #@f
    .line 276
    const-string/jumbo v1, "HEAD"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 277
    const-string/jumbo v1, "POST"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 278
    const-string/jumbo v1, "PUT"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 279
    const-string/jumbo v1, "DELETE"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 280
    const-string/jumbo v1, "TRACE"

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    .line 273
    sput-object v0, Ljava/net/HttpURLConnection;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    #@2f
    .line 313
    sput-boolean v3, Ljava/net/HttpURLConnection;->followRedirects:Z

    #@31
    .line 266
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 538
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    #@4
    .line 288
    const-string/jumbo v0, "GET"

    #@7
    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@9
    .line 300
    iput v1, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@b
    .line 311
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    #@d
    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    #@f
    .line 320
    iput v1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@11
    .line 328
    iput v1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@13
    .line 335
    const-wide/16 v0, -0x1

    #@15
    iput-wide v0, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@17
    .line 537
    return-void
.end method

.method public static getFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 572
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    #@2
    return v0
.end method

.method public static setFollowRedirects(Z)V
    .locals 0
    .param p0, "auto"    # Z

    #@0
    .prologue
    .line 665
    sput-boolean p0, Ljava/net/HttpURLConnection;->followRedirects:Z

    #@2
    .line 664
    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 713
    invoke-super {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    #@0
    .prologue
    .line 560
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 752
    invoke-super {p0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    #@0
    .prologue
    .line 723
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    #@2
    return v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 588
    iget-object v1, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    #@2
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    #@5
    move-result v0

    #@6
    .line 589
    .local v0, "port":I
    if-gez v0, :cond_0

    #@8
    .line 590
    const/16 v0, 0x50

    #@a
    .line 592
    :cond_0
    new-instance v1, Ljava/net/SocketPermission;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    iget-object v3, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    #@13
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, ":"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    .line 593
    const-string/jumbo v3, "connect, resolve"

    #@2d
    .line 592
    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    return-object v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResponseCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 620
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@5
    .line 621
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 622
    .local v2, "response":Ljava/lang/String;
    if-nez v2, :cond_0

    #@b
    .line 623
    return v4

    #@c
    .line 625
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 626
    const-string/jumbo v3, " "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@16
    move-result v3

    #@17
    add-int/lit8 v1, v3, 0x1

    #@19
    .line 627
    .local v1, "mark":I
    if-nez v1, :cond_1

    #@1b
    .line 628
    return v4

    #@1c
    .line 630
    :cond_1
    add-int/lit8 v0, v1, 0x3

    #@1e
    .line 631
    .local v0, "last":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    if-le v0, v3, :cond_2

    #@24
    .line 632
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@27
    move-result v0

    #@28
    .line 634
    :cond_2
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v3

    #@30
    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@32
    .line 635
    add-int/lit8 v3, v0, 0x1

    #@34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@37
    move-result v4

    #@38
    if-gt v3, v4, :cond_3

    #@3a
    .line 636
    add-int/lit8 v3, v0, 0x1

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    iput-object v3, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    #@42
    .line 638
    :cond_3
    iget v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    #@44
    return v3
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 651
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 653
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@a
    .line 654
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public setChunkedStreamingMode(I)V
    .locals 2
    .param p1, "chunkLength"    # I

    #@0
    .prologue
    .line 812
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 813
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 815
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@f
    if-ltz v0, :cond_1

    #@11
    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Already in fixed-length mode"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 818
    :cond_1
    if-gtz p1, :cond_2

    #@1c
    .line 819
    const/16 v0, 0x400

    #@1e
    iput v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@20
    .line 811
    :goto_0
    return-void

    #@21
    .line 821
    :cond_2
    iput p1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@23
    goto :goto_0
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2
    .param p1, "contentLength"    # I

    #@0
    .prologue
    .line 787
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    #@4
    .line 786
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 3
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 769
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 772
    :cond_0
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    #@f
    if-lez v0, :cond_1

    #@11
    .line 773
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v1, "Already in chunked mode"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 775
    :cond_1
    const-wide/16 v0, 0x0

    #@1c
    cmp-long v0, p1, v0

    #@1e
    if-gez v0, :cond_2

    #@20
    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v1, "contentLength < 0"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 778
    :cond_2
    const-wide/32 v0, 0x7fffffff

    #@2c
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@2f
    move-result-wide v0

    #@30
    long-to-int v0, v0

    #@31
    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    #@33
    .line 779
    iput-wide p1, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    #@35
    .line 768
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    #@0
    .prologue
    .line 734
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    #@2
    .line 733
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 681
    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->connected:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 682
    new-instance v1, Ljava/net/ProtocolException;

    #@6
    const-string/jumbo v2, "Connection already established"

    #@9
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 684
    :cond_0
    sget-object v2, Ljava/net/HttpURLConnection;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    #@f
    const/4 v1, 0x0

    #@10
    array-length v3, v2

    #@11
    :goto_0
    if-ge v1, v3, :cond_2

    #@13
    aget-object v0, v2, v1

    #@15
    .line 685
    .local v0, "permittedUserMethod":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 688
    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    #@1d
    .line 689
    return-void

    #@1e
    .line 684
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 693
    .end local v0    # "permittedUserMethod":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v3, "Unknown method \'"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    const-string/jumbo v3, "\'; must be one of "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 694
    sget-object v3, Ljava/net/HttpURLConnection;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    #@3c
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 693
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1
.end method

.method public abstract usingProxy()Z
.end method
