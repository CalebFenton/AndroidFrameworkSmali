.class Landroid/media/browse/MediaBrowser$3;
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
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$cb"    # Landroid/media/browse/MediaBrowser$ItemCallback;
    .param p4, "val$mediaId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 395
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$3;->this$0:Landroid/media/browse/MediaBrowser;

    #@2
    iput-object p3, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    #@4
    iput-object p4, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    #@6
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@9
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 398
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 400
    :cond_0
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    #@6
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    #@8
    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    #@b
    .line 401
    return-void

    #@c
    .line 399
    :cond_1
    const-string/jumbo v1, "media_item"

    #@f
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 403
    const-string/jumbo v1, "media_item"

    #@18
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1b
    move-result-object v0

    #@1c
    .line 404
    .local v0, "item":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/media/browse/MediaBrowser$MediaItem;

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 405
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    #@22
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$3;->val$mediaId:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    #@27
    .line 406
    return-void

    #@28
    .line 408
    :cond_2
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$3;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    #@2a
    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    #@2c
    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    #@2f
    .line 397
    return-void
.end method
