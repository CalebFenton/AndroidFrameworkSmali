.class Landroid/media/MediaSession2Service$1;
.super Landroid/media/MediaSession2$ForegroundServiceEventCallback;
.source "MediaSession2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaSession2Service;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaSession2Service;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Landroid/media/MediaSession2Service$1;->this$0:Landroid/media/MediaSession2Service;

    invoke-direct {p0}, Landroid/media/MediaSession2$ForegroundServiceEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPlaybackActiveChanged(Landroid/media/MediaSession2;Z)V
    .registers 3

    .line 67
    iget-object p0, p0, Landroid/media/MediaSession2Service$1;->this$0:Landroid/media/MediaSession2Service;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaSession2Service;->onPlaybackActiveChanged(Landroid/media/MediaSession2;Z)V

    return-void
.end method

.method public blacklist onSessionClosed(Landroid/media/MediaSession2;)V
    .registers 2

    .line 72
    iget-object p0, p0, Landroid/media/MediaSession2Service$1;->this$0:Landroid/media/MediaSession2Service;

    invoke-virtual {p0, p1}, Landroid/media/MediaSession2Service;->removeSession(Landroid/media/MediaSession2;)V

    return-void
.end method
