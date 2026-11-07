.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;
.super Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheHttpsURLConnection"
.end annotation


# instance fields
.field private final blacklist delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V
    .registers 2

    .line 802
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 803
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    return-void
.end method


# virtual methods
.method public whitelist test-api getContentLengthLong()J
    .registers 3

    .line 827
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 4

    .line 835
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist test-api getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 815
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    .line 823
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestSslAccessException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$400()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method protected blacklist handshake()Lcom/android/okhttp/Handshake;
    .registers 1

    .line 807
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    # getter for: Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->response:Lcom/android/okhttp/Response;
    invoke-static {p0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->access$300(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setFixedLengthStreamingMode(J)V
    .registers 3

    .line 831
    iget-object p0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public whitelist test-api setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2

    .line 811
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist test-api setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    .line 819
    # invokes: Lcom/android/okhttp/internal/huc/JavaApiConverter;->throwRequestModificationException()Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->access$100()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
