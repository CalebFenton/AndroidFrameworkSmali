.class public Lcom/android/okhttp/OkUrlFactories;
.super Ljava/lang/Object;
.source "OkUrlFactories.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist open(Lcom/android/okhttp/OkUrlFactory;Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 3

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist setUrlFilter(Lcom/android/okhttp/OkUrlFactory;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkUrlFactory;->setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V

    return-void
.end method
