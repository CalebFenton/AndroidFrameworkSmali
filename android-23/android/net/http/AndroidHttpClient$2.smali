.class Landroid/net/http/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method constructor <init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "$anonymous0"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "$anonymous1"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 160
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    #@2
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #@5
    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    #@0
    .prologue
    .line 175
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    #@5
    .line 177
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string/jumbo v1, "http.authscheme-registry"

    #@8
    .line 178
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    #@b
    move-result-object v2

    #@c
    .line 176
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    .line 180
    const-string/jumbo v1, "http.cookiespec-registry"

    #@12
    .line 181
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    #@15
    move-result-object v2

    #@16
    .line 179
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@19
    .line 183
    const-string/jumbo v1, "http.auth.credentials-provider"

    #@1c
    .line 184
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    #@1f
    move-result-object v2

    #@20
    .line 182
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 185
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    #@0
    .prologue
    .line 164
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    #@3
    move-result-object v0

    #@4
    .line 165
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Landroid/net/http/AndroidHttpClient;->-get1()Lorg/apache/http/HttpRequestInterceptor;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@b
    .line 166
    new-instance v1, Landroid/net/http/AndroidHttpClient$CurlLogger;

    #@d
    iget-object v2, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Landroid/net/http/AndroidHttpClient$CurlLogger;-><init>(Landroid/net/http/AndroidHttpClient;Landroid/net/http/AndroidHttpClient$CurlLogger;)V

    #@13
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@16
    .line 168
    return-object v0
.end method
