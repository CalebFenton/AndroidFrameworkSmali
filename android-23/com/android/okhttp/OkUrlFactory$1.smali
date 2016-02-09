.class Lcom/android/okhttp/OkUrlFactory$1;
.super Ljava/net/URLStreamHandler;
.source "OkUrlFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/OkUrlFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/OkUrlFactory;

.field final synthetic val$protocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/okhttp/OkUrlFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/OkUrlFactory;
    .param p2, "val$protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/okhttp/OkUrlFactory$1;->this$0:Lcom/android/okhttp/OkUrlFactory;

    #@2
    iput-object p2, p0, Lcom/android/okhttp/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 2

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "http"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/16 v0, 0x50

    #@d
    return v0

    #@e
    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->val$protocol:Ljava/lang/String;

    #@10
    const-string/jumbo v1, "https"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    const/16 v0, 0x1bb

    #@1b
    return v0

    #@1c
    .line 86
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    #@1e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@21
    throw v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->this$0:Lcom/android/okhttp/OkUrlFactory;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/okhttp/OkUrlFactory$1;->this$0:Lcom/android/okhttp/OkUrlFactory;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
