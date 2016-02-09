.class Landroid/media/browse/MediaBrowser$ServiceCallbacks;
.super Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCallbacks"
.end annotation


# instance fields
.field private mMediaBrowser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/browse/MediaBrowser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 1
    .param p1, "mediaBrowser"    # Landroid/media/browse/MediaBrowser;

    #@0
    .prologue
    .line 865
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;-><init>()V

    #@3
    .line 866
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    #@a
    .line 865
    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/media/session/MediaSession$Token;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 876
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/browse/MediaBrowser;

    #@8
    .line 877
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    #@a
    .line 878
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-wrap6(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    #@d
    .line 875
    :cond_0
    return-void
.end method

.method public onConnectFailed()V
    .locals 2

    #@0
    .prologue
    .line 887
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/browse/MediaBrowser;

    #@8
    .line 888
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    #@a
    .line 889
    invoke-static {v0, p0}, Landroid/media/browse/MediaBrowser;->-wrap4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    #@d
    .line 886
    :cond_0
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "list"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 895
    iget-object v1, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/browse/MediaBrowser;

    #@8
    .line 896
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_0

    #@a
    .line 897
    invoke-static {v0, p0, p1, p2}, Landroid/media/browse/MediaBrowser;->-wrap5(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    #@d
    .line 894
    :cond_0
    return-void
.end method
