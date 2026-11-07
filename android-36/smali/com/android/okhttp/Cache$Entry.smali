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
.field private final greylist-max-o code:I

.field private final greylist-max-o handshake:Lcom/android/okhttp/Handshake;

.field private final greylist-max-o message:Ljava/lang/String;

.field private final greylist-max-o protocol:Lcom/android/okhttp/Protocol;

.field private final greylist-max-o requestMethod:Ljava/lang/String;

.field private final greylist-max-o responseHeaders:Lcom/android/okhttp/Headers;

.field private final greylist-max-o url:Ljava/lang/String;

.field private final greylist-max-o varyHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/Response;)V
    .registers 3

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 571
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 572
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 574
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 575
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 576
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 577
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    :try_start_3
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 533
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 534
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 535
    # invokes: Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v0}, Lcom/android/okhttp/Cache;->access$1000(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1e
    if-ge v4, v2, :cond_2d

    .line 537
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :catchall_2a
    move-exception p0

    goto/16 :goto_a8

    .line 539
    :cond_2d
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 541
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    .line 542
    iget-object v2, v1, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    iput-object v2, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 543
    iget v2, v1, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    iput v2, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 544
    iget-object v1, v1, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 545
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 546
    # invokes: Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v0}, Lcom/android/okhttp/Cache;->access$1000(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v2

    :goto_50
    if-ge v3, v2, :cond_5c

    .line 548
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 550
    :cond_5c
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 552
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 553
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_85

    .line 557
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-direct {p0, v0}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 559
    invoke-direct {p0, v0}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    move-result-object v0

    .line 560
    invoke-static {v1, v2, v0}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    goto :goto_a4

    .line 555
    :cond_85
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \"\" but was \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a1
    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_a4
    .catchall {:try_start_3 .. :try_end_a4} :catchall_2a

    .line 565
    :goto_a4
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    return-void

    :goto_a8
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    .line 566
    throw p0
.end method

.method private greylist-max-o isHttps()Z
    .registers 2

    .line 618
    iget-object p0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private greylist-max-o readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    # invokes: Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {p1}, Lcom/android/okhttp/Cache;->access$1000(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_a

    .line 623
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 626
    :cond_a
    :try_start_a
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_16
    if-ge v2, p0, :cond_36

    .line 629
    invoke-interface {p1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 630
    new-instance v4, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v4}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 631
    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    .line 632
    invoke-virtual {v4}, Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_33} :catch_37

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_36
    return-object v1

    :catch_37
    move-exception p0

    .line 636
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    const/16 p0, 0xa

    .line 644
    invoke-interface {p1, p0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 645
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_2f

    .line 646
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 647
    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-interface {p1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 649
    invoke-interface {p1, p0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_2c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2c} :catch_30

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    return-void

    :catch_30
    move-exception p0

    .line 652
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist-max-o matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z
    .registers 5

    .line 657
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 658
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 659
    invoke-static {p2, p0, p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyMatches(Lcom/android/okhttp/Response;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;
    .registers 7

    .line 663
    iget-object p1, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 664
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    new-instance v1, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 666
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v3, 0x0

    .line 667
    invoke-virtual {v1, v2, v3}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 668
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    .line 669
    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 670
    new-instance v2, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 671
    invoke-virtual {v2, v1}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 672
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 673
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 674
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 675
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/okhttp/Cache$CacheResponseBody;

    invoke-direct {v2, p2, p1, v0}, Lcom/android/okhttp/Cache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 677
    invoke-virtual {p1, p0}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object p0

    .line 678
    invoke-virtual {p0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 581
    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object p1

    .line 583
    iget-object v1, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    const/16 v1, 0xa

    .line 584
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 585
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 586
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 587
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 588
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 589
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    move v3, v0

    :goto_2f
    const-string v4, ": "

    if-ge v3, v2, :cond_4e

    .line 590
    iget-object v5, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v5, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 591
    invoke-interface {p1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 592
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 593
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 596
    :cond_4e
    new-instance v2, Lcom/android/okhttp/internal/http/StatusLine;

    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    iget v5, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    iget-object v6, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v6}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 597
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 598
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 599
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 600
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    :goto_76
    if-ge v0, v2, :cond_93

    .line 601
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 602
    invoke-interface {p1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 603
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 604
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 607
    :cond_93
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 608
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 609
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 610
    invoke-interface {p1, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 611
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    .line 612
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    .line 614
    :cond_ba
    invoke-interface {p1}, Lcom/android/okhttp/okio/Sink;->close()V

    return-void
.end method
