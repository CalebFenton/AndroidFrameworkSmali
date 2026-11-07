.class public Landroid/net/connectivity/org/chromium/net/urlconnection/CronetURLStreamHandlerFactory;
.super Ljava/lang/Object;
.source "CronetURLStreamHandlerFactory.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final blacklist mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;)V
    .registers 3
    .param p1, "cronetEngine"    # Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "CronetEngine is null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetURLStreamHandlerFactory;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 4
    .param p1, "protocol"    # Ljava/lang/String;

    .line 60
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 63
    :cond_11
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_13
    :goto_13
    new-instance v0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLStreamHandler;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetURLStreamHandlerFactory;->mCronetEngine:Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/urlconnection/CronetHttpURLStreamHandler;-><init>(Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;)V

    return-object v0
.end method
