.class public abstract Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest;
.super Landroid/net/connectivity/org/chromium/net/UrlRequest;
.source "ExperimentalUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/ExperimentalUrlRequest$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/UrlRequest;-><init>()V

    return-void
.end method
