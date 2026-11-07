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
.field private greylist-max-o mMediaBrowser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/browse/MediaBrowser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/browse/MediaBrowser;)V
    .registers 3
    .param p1, "mediaBrowser"    # Landroid/media/browse/MediaBrowser;

    .line 1106
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserServiceCallbacks$Stub;-><init>()V

    .line 1107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    .line 1108
    return-void
.end method


# virtual methods
.method public greylist-max-o onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Landroid/media/session/MediaSession$Token;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1117
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1118
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_d

    .line 1119
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-$$Nest$monServiceConnected(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    .line 1121
    :cond_d
    return-void
.end method

.method public greylist-max-o onConnectFailed()V
    .registers 2

    .line 1128
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1129
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_d

    .line 1130
    invoke-static {v0, p0}, Landroid/media/browse/MediaBrowser;->-$$Nest$monConnectionFailed(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    .line 1132
    :cond_d
    return-void
.end method

.method public blacklist onDisconnect()V
    .registers 2

    .line 1144
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1145
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_d

    .line 1146
    invoke-static {v0, p0}, Landroid/media/browse/MediaBrowser;->-$$Nest$monDisconnectRequested(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ServiceCallbacks;)V

    .line 1148
    :cond_d
    return-void
.end method

.method public blacklist onLoadChildren(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "list"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1136
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;->mMediaBrowser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    .line 1137
    .local v0, "mediaBrowser":Landroid/media/browse/MediaBrowser;
    if-eqz v0, :cond_d

    .line 1138
    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->-$$Nest$monLoadChildren(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    .line 1140
    :cond_d
    return-void
.end method
