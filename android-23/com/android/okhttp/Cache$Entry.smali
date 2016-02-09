.class final Lcom/android/okhttp/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final code:I

.field private final handshake:Lcom/android/okhttp/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/android/okhttp/Protocol;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/android/okhttp/Headers;

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 546
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    #@d
    .line 547
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@13
    .line 548
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    #@1d
    .line 549
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    #@23
    .line 550
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    #@29
    .line 551
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    #@2f
    .line 552
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@35
    .line 553
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    #@3b
    .line 545
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .locals 14
    .param p1, "in"    # Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 507
    :try_start_0
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    #@6
    move-result-object v7

    #@7
    .line 508
    .local v7, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    #@d
    .line 509
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@10
    move-result-object v11

    #@11
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    #@13
    .line 510
    new-instance v9, Lcom/android/okhttp/Headers$Builder;

    #@15
    invoke-direct {v9}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@18
    .line 511
    .local v9, "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-static {v7}, Lcom/android/okhttp/Cache;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    #@1b
    move-result v10

    #@1c
    .line 512
    .local v10, "varyRequestHeaderLineCount":I
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    #@1f
    .line 513
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@22
    move-result-object v11

    #@23
    invoke-virtual {v9, v11}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@26
    .line 512
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_0

    #@29
    .line 515
    :cond_0
    invoke-virtual {v9}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@2c
    move-result-object v11

    #@2d
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@2f
    .line 517
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@32
    move-result-object v11

    #@33
    invoke-static {v11}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    #@36
    move-result-object v8

    #@37
    .line 518
    .local v8, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v11, v8, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    #@39
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    #@3b
    .line 519
    iget v11, v8, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    #@3d
    iput v11, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    #@3f
    .line 520
    iget-object v11, v8, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    #@41
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    #@43
    .line 521
    new-instance v6, Lcom/android/okhttp/Headers$Builder;

    #@45
    invoke-direct {v6}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    #@48
    .line 522
    .local v6, "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-static {v7}, Lcom/android/okhttp/Cache;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    #@4b
    move-result v5

    #@4c
    .line 523
    .local v5, "responseHeaderLineCount":I
    const/4 v2, 0x0

    #@4d
    :goto_1
    if-ge v2, v5, :cond_1

    #@4f
    .line 524
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@52
    move-result-object v11

    #@53
    invoke-virtual {v6, v11}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    #@56
    .line 523
    add-int/lit8 v2, v2, 0x1

    #@58
    goto :goto_1

    #@59
    .line 526
    :cond_1
    invoke-virtual {v6}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    #@5c
    move-result-object v11

    #@5d
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@5f
    .line 528
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    #@62
    move-result v11

    #@63
    if-eqz v11, :cond_3

    #@65
    .line 529
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 530
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6c
    move-result v11

    #@6d
    if-lez v11, :cond_2

    #@6f
    .line 531
    new-instance v11, Ljava/io/IOException;

    #@71
    new-instance v12, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v13, "expected \"\" but was \""

    #@79
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    const-string/jumbo v13, "\""

    #@84
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v12

    #@88
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v12

    #@8c
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 540
    .end local v0    # "blank":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "responseHeaderLineCount":I
    .end local v6    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v7    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .end local v8    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v9    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v10    # "varyRequestHeaderLineCount":I
    :catchall_0
    move-exception v11

    #@91
    .line 541
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    #@94
    .line 540
    throw v11

    #@95
    .line 533
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "responseHeaderLineCount":I
    .restart local v6    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .restart local v7    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .restart local v8    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .restart local v9    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .restart local v10    # "varyRequestHeaderLineCount":I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 534
    .local v1, "cipherSuite":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    #@9c
    move-result-object v4

    #@9d
    .line 535
    .local v4, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0, v7}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    #@a0
    move-result-object v3

    #@a1
    .line 536
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {v1, v4, v3}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    #@a4
    move-result-object v11

    #@a5
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a7
    .line 541
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "cipherSuite":Ljava/lang/String;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    #@aa
    .line 505
    return-void

    #@ab
    .line 538
    :cond_3
    const/4 v11, 0x0

    #@ac
    :try_start_2
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ae
    goto :goto_2
.end method

.method private isHttps()Z
    .locals 2

    #@0
    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "https://"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;
    .locals 9
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 598
    invoke-static {p1}, Lcom/android/okhttp/Cache;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    #@3
    move-result v4

    #@4
    .line 599
    .local v4, "length":I
    const/4 v7, -0x1

    #@5
    if-ne v4, v7, :cond_0

    #@7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@a
    move-result-object v7

    #@b
    return-object v7

    #@c
    .line 602
    :cond_0
    :try_start_0
    const-string/jumbo v7, "X.509"

    #@f
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@12
    move-result-object v1

    #@13
    .line 603
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    #@15
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    .line 604
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    #@1b
    .line 605
    invoke-interface {p1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 606
    .local v5, "line":Ljava/lang/String;
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@21
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@24
    .line 607
    .local v0, "bytes":Lcom/android/okhttp/okio/Buffer;
    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v0, v7}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    #@2b
    .line 608
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;

    #@2e
    move-result-object v7

    #@2f
    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@32
    move-result-object v7

    #@33
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 604
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 610
    .end local v0    # "bytes":Lcom/android/okhttp/okio/Buffer;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    return-object v6

    #@3a
    .line 611
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v2

    #@3b
    .line 612
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    #@3d
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v7
.end method

.method private writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V
    .locals 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSink;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 619
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v5

    #@4
    int-to-long v6, v5

    #@5
    invoke-interface {p1, v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@8
    .line 620
    const/16 v5, 0xa

    #@a
    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@d
    .line 621
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@11
    move-result v4

    #@12
    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@14
    .line 622
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Ljava/security/cert/Certificate;

    #@1a
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@1d
    move-result-object v0

    #@1e
    .line 623
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    .line 624
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@29
    .line 625
    const/16 v5, 0xa

    #@2b
    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 621
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 627
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    #@32
    .line 628
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    #@34
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v5

    #@3c
    .line 617
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z
    .locals 2
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    #@2
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 634
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    #@e
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    .line 633
    if-eqz v0, :cond_0

    #@18
    .line 635
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@1a
    invoke-static {p2, v0, p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyMatches(Lcom/android/okhttp/Response;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z

    #@1d
    move-result v0

    #@1e
    .line 633
    :goto_0
    return v0

    #@1f
    :cond_0
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method public response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;
    .locals 6
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    #@0
    .prologue
    .line 639
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@2
    const-string/jumbo v4, "Content-Type"

    #@5
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 640
    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@b
    const-string/jumbo v4, "Content-Length"

    #@e
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 641
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v3, Lcom/android/okhttp/Request$Builder;

    #@14
    invoke-direct {v3}, Lcom/android/okhttp/Request$Builder;-><init>()V

    #@17
    .line 642
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    #@19
    .line 641
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    #@1c
    move-result-object v3

    #@1d
    .line 643
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    #@1f
    const/4 v5, 0x0

    #@20
    .line 641
    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    #@23
    move-result-object v3

    #@24
    .line 644
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@26
    .line 641
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    #@2d
    move-result-object v0

    #@2e
    .line 646
    .local v0, "cacheRequest":Lcom/android/okhttp/Request;
    new-instance v3, Lcom/android/okhttp/Response$Builder;

    #@30
    invoke-direct {v3}, Lcom/android/okhttp/Response$Builder;-><init>()V

    #@33
    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    #@36
    move-result-object v3

    #@37
    .line 648
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    #@39
    .line 646
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    #@3c
    move-result-object v3

    #@3d
    .line 649
    iget v4, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    #@3f
    .line 646
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    #@42
    move-result-object v3

    #@43
    .line 650
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    #@45
    .line 646
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    #@48
    move-result-object v3

    #@49
    .line 651
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@4b
    .line 646
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    #@4e
    move-result-object v3

    #@4f
    .line 652
    new-instance v4, Lcom/android/okhttp/Cache$CacheResponseBody;

    #@51
    invoke-direct {v4, p2, v2, v1}, Lcom/android/okhttp/Cache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    #@54
    .line 646
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    #@57
    move-result-object v3

    #@58
    .line 653
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    #@5a
    .line 646
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    #@61
    move-result-object v3

    #@62
    return-object v3
.end method

.method public writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .locals 8
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0xa

    #@2
    .line 557
    const/4 v3, 0x0

    #@3
    invoke-virtual {p1, v3}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    #@6
    move-result-object v3

    #@7
    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    #@a
    move-result-object v1

    #@b
    .line 559
    .local v1, "sink":Lcom/android/okhttp/okio/BufferedSink;
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    #@d
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@10
    .line 560
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@13
    .line 561
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    #@15
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@18
    .line 562
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@1b
    .line 563
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@1d
    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    #@20
    move-result v3

    #@21
    int-to-long v4, v3

    #@22
    invoke-interface {v1, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@25
    .line 564
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@28
    .line 565
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@2b
    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    #@2e
    move-result v2

    #@2f
    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@31
    .line 566
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@33
    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@3a
    .line 567
    const-string/jumbo v3, ": "

    #@3d
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@40
    .line 568
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    #@42
    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@49
    .line 569
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@4c
    .line 565
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 572
    :cond_0
    new-instance v3, Lcom/android/okhttp/internal/http/StatusLine;

    #@51
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    #@53
    iget v5, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    #@55
    iget-object v6, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    #@57
    invoke-direct {v3, v4, v5, v6}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    #@5a
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@61
    .line 573
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@64
    .line 574
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@66
    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    #@69
    move-result v3

    #@6a
    int-to-long v4, v3

    #@6b
    invoke-interface {v1, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    #@6e
    .line 575
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@71
    .line 576
    const/4 v0, 0x0

    #@72
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@74
    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    #@77
    move-result v2

    #@78
    :goto_1
    if-ge v0, v2, :cond_1

    #@7a
    .line 577
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@7c
    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@83
    .line 578
    const-string/jumbo v3, ": "

    #@86
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@89
    .line 579
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    #@8b
    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@92
    .line 580
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@95
    .line 576
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_1

    #@98
    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    #@9b
    move-result v3

    #@9c
    if-eqz v3, :cond_2

    #@9e
    .line 584
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@a1
    .line 585
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    #@a3
    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    #@aa
    .line 586
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    #@ad
    .line 587
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    #@af
    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    #@b2
    move-result-object v3

    #@b3
    invoke-direct {p0, v1, v3}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    #@b6
    .line 588
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    #@b8
    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    #@bb
    move-result-object v3

    #@bc
    invoke-direct {p0, v1, v3}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    #@bf
    .line 590
    :cond_2
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    #@c2
    .line 556
    return-void
.end method
