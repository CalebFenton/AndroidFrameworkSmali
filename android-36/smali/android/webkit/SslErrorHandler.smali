.class public Landroid/webkit/SslErrorHandler;
.super Landroid/os/Handler;
.source "SslErrorHandler.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 1

    .line 66
    return-void
.end method

.method public whitelist proceed()V
    .registers 1

    .line 53
    return-void
.end method
