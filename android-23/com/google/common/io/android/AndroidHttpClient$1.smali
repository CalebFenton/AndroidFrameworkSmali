.class Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient$1;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    #@0
    .prologue
    .line 94
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$000()Ljava/lang/ThreadLocal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 97
    :cond_0
    return-void

    #@b
    .line 94
    :cond_1
    # getter for: Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpClient;->access$000()Ljava/lang/ThreadLocal;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/Boolean;

    #@15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v1, "This thread forbids HTTP requests"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method
