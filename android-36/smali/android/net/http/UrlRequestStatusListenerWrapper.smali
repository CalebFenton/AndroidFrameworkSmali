.class public Landroid/net/http/UrlRequestStatusListenerWrapper;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;
.source "UrlRequestStatusListenerWrapper.java"


# instance fields
.field private final blacklist backend:Landroid/net/http/UrlRequest$StatusListener;


# direct methods
.method public constructor blacklist <init>(Landroid/net/http/UrlRequest$StatusListener;)V
    .registers 2
    .param p1, "backend"    # Landroid/net/http/UrlRequest$StatusListener;

    .line 23
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/net/http/UrlRequestStatusListenerWrapper;->backend:Landroid/net/http/UrlRequest$StatusListener;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist onStatus(I)V
    .registers 3
    .param p1, "i"    # I

    .line 29
    iget-object v0, p0, Landroid/net/http/UrlRequestStatusListenerWrapper;->backend:Landroid/net/http/UrlRequest$StatusListener;

    invoke-interface {v0, p1}, Landroid/net/http/UrlRequest$StatusListener;->onStatus(I)V

    .line 30
    return-void
.end method
