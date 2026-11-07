.class public Landroid/media/browse/MediaBrowser$ConnectionCallback;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnected()V
    .registers 1

    .line 883
    return-void
.end method

.method public whitelist onConnectionFailed()V
    .registers 1

    .line 895
    return-void
.end method

.method public whitelist onConnectionSuspended()V
    .registers 1

    .line 889
    return-void
.end method

.method public blacklist onDisconnected()V
    .registers 1

    .line 907
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    .line 908
    return-void
.end method
