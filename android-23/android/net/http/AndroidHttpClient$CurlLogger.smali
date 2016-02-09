.class Landroid/net/http/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method private constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/http/AndroidHttpClient;

    #@0
    .prologue
    .line 384
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$CurlLogger;->this$0:Landroid/net/http/AndroidHttpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/AndroidHttpClient;Landroid/net/http/AndroidHttpClient$CurlLogger;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/http/AndroidHttpClient;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient$CurlLogger;-><init>(Landroid/net/http/AndroidHttpClient;)V

    #@3
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    iget-object v1, p0, Landroid/net/http/AndroidHttpClient$CurlLogger;->this$0:Landroid/net/http/AndroidHttpClient;

    #@2
    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->-get0(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 388
    .local v0, "configuration":Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_0

    #@8
    .line 389
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->-wrap0(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z

    #@b
    move-result v1

    #@c
    .line 388
    if-eqz v1, :cond_0

    #@e
    .line 390
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@10
    .line 388
    if-eqz v1, :cond_0

    #@12
    .line 393
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@14
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    const/4 v1, 0x0

    #@15
    invoke-static {p1, v1}, Landroid/net/http/AndroidHttpClient;->-wrap0(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->-wrap1(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    #@1c
    .line 386
    :cond_0
    return-void
.end method
