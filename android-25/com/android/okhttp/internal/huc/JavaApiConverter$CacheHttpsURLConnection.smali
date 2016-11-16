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
.field private final delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@0
    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    #@3
    .line 801
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@5
    .line 799
    return-void
.end method


# virtual methods
.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 813
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap1()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 821
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap1()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method protected handshake()Lcom/android/okhttp/Handshake;
    .locals 1

    #@0
    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@2
    invoke-static {v0}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->-get0(Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;)Lcom/android/okhttp/Response;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1
    .param p1, "contentLength"    # J

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpsURLConnection;->delegate:Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/internal/huc/JavaApiConverter$CacheHttpURLConnection;->setFixedLengthStreamingMode(J)V

    #@5
    .line 830
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    #@0
    .prologue
    .line 809
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    .line 817
    invoke-static {}, Lcom/android/okhttp/internal/huc/JavaApiConverter;->-wrap0()Ljava/lang/RuntimeException;

    #@3
    move-result-object v0

    #@4
    throw v0
.end method
