.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p2, "x0"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "x1"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

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
    .line 157
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    #@5
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string/jumbo v1, "http.authscheme-registry"

    #@8
    .line 158
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    const-string/jumbo v1, "http.cookiespec-registry"

    #@12
    .line 161
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@19
    const-string/jumbo v1, "http.auth.credentials-provider"

    #@1c
    .line 164
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    #@23
    .line 167
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    #@0
    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    #@3
    move-result-object v0

    #@4
    .line 147
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$100()Lorg/apache/http/HttpRequestInterceptor;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@b
    .line 148
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;

    #@d
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$2;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@f
    const/4 v3, 0x0

    #@10
    invoke-direct {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;)V

    #@13
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    #@16
    .line 150
    return-object v0
.end method
