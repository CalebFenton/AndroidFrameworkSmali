.class Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "CronetHttpURLStreamHandler.java"


# instance fields
.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;)V
    .registers 2
    .param p1, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 28
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLStreamHandler;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 30
    return-void
.end method


# virtual methods
.method public whitelist test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLStreamHandler;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLStreamHandler;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
