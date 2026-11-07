.class Landroid/media/browse/MediaBrowser$4;
.super Landroid/os/ResultReceiver;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic blacklist val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic blacklist val$mediaId:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 450
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 453
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 454
    return-void

    .line 456
    :cond_9
    if-nez p1, :cond_31

    if-eqz p2, :cond_31

    .line 457
    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_31

    .line 461
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 462
    .local v0, "item":Landroid/os/Parcelable;
    if-eqz v0, :cond_28

    instance-of v1, v0, Landroid/media/browse/MediaBrowser$MediaItem;

    if-nez v1, :cond_28

    .line 463
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 464
    return-void

    .line 466
    :cond_28
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    move-object v2, v0

    check-cast v2, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    .line 467
    return-void

    .line 458
    .end local v0    # "item":Landroid/os/Parcelable;
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 459
    return-void
.end method
