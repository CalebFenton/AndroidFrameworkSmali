.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlRequestStatusListener"
.end annotation


# instance fields
.field private final blacklist mWrappedListener:Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;

    .line 78
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist onStatus(I)V
    .registers 3
    .param p1, "status"    # I

    .line 84
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;->mWrappedListener:Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/UrlRequest$StatusListener;->onStatus(I)V

    .line 85
    return-void
.end method
