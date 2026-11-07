.class public interface abstract Landroid/media/session/MediaSessionManager$RemoteSessionCallback;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteSessionCallback"
.end annotation


# virtual methods
.method public abstract blacklist onDefaultRemoteSessionChanged(Landroid/media/session/MediaSession$Token;)V
.end method

.method public abstract blacklist onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
.end method
