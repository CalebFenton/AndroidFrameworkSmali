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
    .line 839
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 840
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@7
    .line 839
    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onAdjustVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 975
    :goto_0
    return-void

    #@6
    .line 978
    :catch_0
    move-exception v0

    #@7
    .line 979
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
    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onFastForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 943
    :goto_0
    return-void

    #@6
    .line 946
    :catch_0
    move-exception v0

    #@7
    .line 947
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
    .line 929
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 927
    :goto_0
    return-void

    #@6
    .line 930
    :catch_0
    move-exception v0

    #@7
    .line 931
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
    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 911
    :goto_0
    return-void

    #@6
    .line 914
    :catch_0
    move-exception v0

    #@7
    .line 915
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
    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 871
    :goto_0
    return-void

    #@6
    .line 874
    :catch_0
    move-exception v0

    #@7
    .line 875
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
    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 879
    :goto_0
    return-void

    #@6
    .line 882
    :catch_0
    move-exception v0

    #@7
    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in playUri."

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
    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 887
    :goto_0
    return-void

    #@6
    .line 890
    :catch_0
    move-exception v0

    #@7
    .line 891
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
    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 895
    :goto_0
    return-void

    #@6
    .line 898
    :catch_0
    move-exception v0

    #@7
    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in playFromUri."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method

.method public previous()V
    .locals 3

    #@0
    .prologue
    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onPrevious()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 935
    :goto_0
    return-void

    #@6
    .line 938
    :catch_0
    move-exception v0

    #@7
    .line 939
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
    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onRate(Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 967
    :goto_0
    return-void

    #@6
    .line 970
    :catch_0
    move-exception v0

    #@7
    .line 971
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
    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onRewind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 951
    :goto_0
    return-void

    #@6
    .line 954
    :catch_0
    move-exception v0

    #@7
    .line 955
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
    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSeekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 959
    :goto_0
    return-void

    #@6
    .line 962
    :catch_0
    move-exception v0

    #@7
    .line 963
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
    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 855
    :goto_0
    return-void

    #@6
    .line 858
    :catch_0
    move-exception v0

    #@7
    .line 859
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
    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 863
    :goto_0
    return-void

    #@6
    .line 866
    :catch_0
    move-exception v0

    #@7
    .line 867
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
    .line 844
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 845
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@b
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@e
    .line 847
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@10
    invoke-interface {v2, v1, p2, p3}, Landroid/media/session/ISessionCallback;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 848
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 849
    :catch_0
    move-exception v0

    #@16
    .line 850
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaSessionRecord"

    #@19
    const-string/jumbo v3, "Remote failure in sendMediaRequest."

    #@1c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 852
    const/4 v2, 0x0

    #@20
    return v2
.end method

.method public setVolumeTo(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 985
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 983
    :goto_0
    return-void

    #@6
    .line 986
    :catch_0
    move-exception v0

    #@7
    .line 987
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
    .line 905
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionCallback;->onSkipToTrack(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 903
    :goto_0
    return-void

    #@6
    .line 906
    :catch_0
    move-exception v0

    #@7
    .line 907
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
    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    #@2
    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 919
    :goto_0
    return-void

    #@6
    .line 922
    :catch_0
    move-exception v0

    #@7
    .line 923
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaSessionRecord"

    #@a
    const-string/jumbo v2, "Remote failure in stop."

    #@d
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10
    goto :goto_0
.end method
