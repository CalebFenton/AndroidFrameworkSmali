.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;

    #@0
    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 879
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@7
    .line 878
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onAdjustVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1046
    :goto_0
    return-void

    #@6
    .line 1049
    :catch_0
    move-exception v0

    #@7
    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in adjustVolume."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public fastForward()V
    .locals 3

    #@0
    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onFastForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1014
    :goto_0
    return-void

    #@6
    .line 1017
    :catch_0
    move-exception v0

    #@7
    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in fastForward."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public next()V
    .locals 3

    #@0
    .prologue
    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 998
    :goto_0
    return-void

    #@6
    .line 1001
    :catch_0
    move-exception v0

    #@7
    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in next."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public pause()V
    .locals 3

    #@0
    .prologue
    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 982
    :goto_0
    return-void

    #@6
    .line 985
    :catch_0
    move-exception v0

    #@7
    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in pause."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public play()V
    .locals 3

    #@0
    .prologue
    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 942
    :goto_0
    return-void

    #@6
    .line 945
    :catch_0
    move-exception v0

    #@7
    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in play."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 950
    :goto_0
    return-void

    #@6
    .line 953
    :catch_0
    move-exception v0

    #@7
    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in playFromMediaId."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 958
    :goto_0
    return-void

    #@6
    .line 961
    :catch_0
    move-exception v0

    #@7
    .line 962
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in playFromSearch."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 966
    :goto_0
    return-void

    #@6
    .line 969
    :catch_0
    move-exception v0

    #@7
    .line 970
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in playFromUri."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    #@0
    .prologue
    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrepare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 910
    :goto_0
    return-void

    #@6
    .line 913
    :catch_0
    move-exception v0

    #@7
    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in prepare."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 918
    :goto_0
    return-void

    #@6
    .line 921
    :catch_0
    move-exception v0

    #@7
    .line 922
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in prepareFromMediaId."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 926
    :goto_0
    return-void

    #@6
    .line 929
    :catch_0
    move-exception v0

    #@7
    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in prepareFromSearch."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 934
    :goto_0
    return-void

    #@6
    .line 937
    :catch_0
    move-exception v0

    #@7
    .line 938
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in prepareFromUri."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public previous()V
    .locals 3

    #@0
    .prologue
    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrevious()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1006
    :goto_0
    return-void

    #@6
    .line 1009
    :catch_0
    move-exception v0

    #@7
    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in previous."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public rate(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onRate(Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1038
    :goto_0
    return-void

    #@6
    .line 1041
    :catch_0
    move-exception v0

    #@7
    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in rate."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public rewind()V
    .locals 3

    #@0
    .prologue
    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onRewind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1022
    :goto_0
    return-void

    #@6
    .line 1025
    :catch_0
    move-exception v0

    #@7
    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in rewind."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSeekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1030
    :goto_0
    return-void

    #@6
    .line 1033
    :catch_0
    move-exception v0

    #@7
    .line 1034
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in seekTo."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 894
    :goto_0
    return-void

    #@6
    .line 897
    :catch_0
    move-exception v0

    #@7
    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in sendCommand."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 902
    :goto_0
    return-void

    #@6
    .line 905
    :catch_0
    move-exception v0

    #@7
    .line 906
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in sendCustomAction."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 883
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 884
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@10
    invoke-interface {v2, v1, p2, p3}, Landroid/media/session/ISessionCallback;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 887
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 888
    :catch_0
    move-exception v0

    #@16
    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionRecord"

    #@19
    const-string/jumbo v3, "Remote failure in sendMediaRequest."

    #@1c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 891
    const/4 v2, 0x0

    #@20
    return v2
.end method

.method public setVolumeTo(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1054
    :goto_0
    return-void

    #@6
    .line 1057
    :catch_0
    move-exception v0

    #@7
    .line 1058
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in setVolumeTo."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public skipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSkipToTrack(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 974
    :goto_0
    return-void

    #@6
    .line 977
    :catch_0
    move-exception v0

    #@7
    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in skipToTrack"

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    .line 992
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 990
    :goto_0
    return-void

    #@6
    .line 993
    :catch_0
    move-exception v0

    #@7
    .line 994
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in stop."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method
