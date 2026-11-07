.class public final Landroid/net/connectivity/org/chromium/net/ChromiumNetworkAdapter;
.super Ljava/lang/Object;
.source "ChromiumNetworkAdapter.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist openConnection(Ljava/net/URL;Landroid/net/connectivity/org/chromium/net/NetworkTrafficAnnotationTag;)Ljava/net/URLConnection;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "trafficAnnotation"    # Landroid/net/connectivity/org/chromium/net/NetworkTrafficAnnotationTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openConnection(Ljava/net/URL;Ljava/net/Proxy;Landroid/net/connectivity/org/chromium/net/NetworkTrafficAnnotationTag;)Ljava/net/URLConnection;
    .registers 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "trafficAnnotation"    # Landroid/net/connectivity/org/chromium/net/NetworkTrafficAnnotationTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist openStream(Ljava/net/URL;Landroid/net/connectivity/org/chromium/net/NetworkTrafficAnnotationTag;)Ljava/io/InputStream;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "trafficAnnotation"    # Landroid/net/connectivity/org/chromium/net/NetworkTrafficAnnotationTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
