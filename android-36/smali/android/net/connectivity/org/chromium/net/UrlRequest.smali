.class public abstract Landroid/net/connectivity/org/chromium/net/UrlRequest;
.super Ljava/lang/Object;
.source "UrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/UrlRequest$Experimental;,
        Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;,
        Landroid/net/connectivity/org/chromium/net/UrlRequest$Status;,
        Landroid/net/connectivity/org/chromium/net/UrlRequest$Callback;,
        Landroid/net/connectivity/org/chromium/net/UrlRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public abstract blacklist followRedirect()V
.end method

.method public abstract blacklist getStatus(Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;)V
.end method

.method public abstract blacklist isDone()Z
.end method

.method public abstract blacklist read(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract blacklist start()V
.end method
