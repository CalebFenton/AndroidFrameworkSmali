.class Lcom/android/okhttp/Call$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lcom/android/okhttp/Request;

.field final synthetic this$0:Lcom/android/okhttp/Call;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/Call;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/android/okhttp/Request;
    .param p4, "forWebSocket"    # Z

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 210
    iput p2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    #@7
    .line 211
    iput-object p3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/android/okhttp/Request;

    #@9
    .line 212
    iput-boolean p4, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    #@b
    .line 209
    return-void
.end method


# virtual methods
.method public connection()Lcom/android/okhttp/Connection;
    .locals 1

    #@0
    .prologue
    .line 216
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public proceed(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response;
    .locals 4
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    iget v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    #@2
    iget-object v2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    #@4
    invoke-static {v2}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@f
    move-result v2

    #@10
    if-ge v1, v2, :cond_0

    #@12
    .line 226
    new-instance v0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;

    #@14
    iget-object v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    #@16
    iget v2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    iget-boolean v3, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    #@1c
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/android/okhttp/Call;ILcom/android/okhttp/Request;Z)V

    #@1f
    .line 227
    .local v0, "chain":Lcom/android/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    #@21
    invoke-static {v1}, Lcom/android/okhttp/Call;->-get0(Lcom/android/okhttp/Call;)Lcom/android/okhttp/OkHttpClient;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Lcom/android/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->index:I

    #@2b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/android/okhttp/Interceptor;

    #@31
    invoke-interface {v1, v0}, Lcom/android/okhttp/Interceptor;->intercept(Lcom/android/okhttp/Interceptor$Chain;)Lcom/android/okhttp/Response;

    #@34
    move-result-object v1

    #@35
    return-object v1

    #@36
    .line 230
    .end local v0    # "chain":Lcom/android/okhttp/Interceptor$Chain;
    :cond_0
    iget-object v1, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/android/okhttp/Call;

    #@38
    iget-boolean v2, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    #@3a
    invoke-virtual {v1, p1, v2}, Lcom/android/okhttp/Call;->getResponse(Lcom/android/okhttp/Request;Z)Lcom/android/okhttp/Response;

    #@3d
    move-result-object v1

    #@3e
    return-object v1
.end method

.method public request()Lcom/android/okhttp/Request;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/android/okhttp/Request;

    #@2
    return-object v0
.end method
