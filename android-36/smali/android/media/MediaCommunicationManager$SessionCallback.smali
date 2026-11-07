.class public interface abstract Landroid/media/MediaCommunicationManager$SessionCallback;
.super Ljava/lang/Object;
.source "MediaCommunicationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionCallback"
.end annotation


# virtual methods
.method public blacklist onSession2TokenCreated(Landroid/media/Session2Token;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onSession2TokenCreated(Landroid/media/Session2Token;I)V
    .registers 3

    .line 308
    invoke-interface {p0, p1}, Landroid/media/MediaCommunicationManager$SessionCallback;->onSession2TokenCreated(Landroid/media/Session2Token;)V

    return-void
.end method

.method public blacklist onSession2TokensChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
