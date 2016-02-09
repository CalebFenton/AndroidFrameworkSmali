.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;


# direct methods
.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)V
    .locals 0

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
    .param p2, "x1"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;

    #@0
    .prologue
    .line 392
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)V

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
    .line 395
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$CurlLogger;->this$0:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;

    #@2
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->curlConfiguration:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$400(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;)Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 396
    .local v0, "configuration":Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;
    if-nez v0, :cond_1

    #@8
    .line 401
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_0
    :goto_0
    return-void

    #@9
    .line 396
    .restart local p1    # "request":Lorg/apache/http/HttpRequest;
    :cond_1
    # invokes: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->access$500(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 399
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    #@15
    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    # invokes: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$600(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    # invokes: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;->access$700(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    #@1c
    goto :goto_0
.end method
