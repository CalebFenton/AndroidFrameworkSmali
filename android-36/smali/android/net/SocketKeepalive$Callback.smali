.class public Landroid/net/SocketKeepalive$Callback;
.super Ljava/lang/Object;
.source "SocketKeepalive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/SocketKeepalive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDataReceived()V
    .registers 1

    .line 439
    return-void
.end method

.method public whitelist onError(I)V
    .registers 2
    .param p1, "error"    # I

    .line 436
    return-void
.end method

.method public blacklist onPaused()V
    .registers 1

    .line 434
    return-void
.end method

.method public blacklist onResumed()V
    .registers 1

    .line 427
    return-void
.end method

.method public whitelist onStarted()V
    .registers 1

    .line 422
    return-void
.end method

.method public whitelist onStopped()V
    .registers 1

    .line 429
    return-void
.end method
