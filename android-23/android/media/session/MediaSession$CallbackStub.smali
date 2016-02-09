.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroid/media/session/MediaSession;

    #@0
    .prologue
    .line 905
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    #@3
    .line 906
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@a
    .line 905
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 1046
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1047
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1048
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap0(Landroid/media/session/MediaSession;I)V

    #@d
    .line 1045
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 911
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 912
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 913
    invoke-static {v0, p1, p2, p3}, Landroid/media/session/MediaSession;->-wrap17(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@d
    .line 910
    :cond_0
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1038
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1039
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1040
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap1(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    #@d
    .line 1037
    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    #@0
    .prologue
    .line 1006
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1007
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1008
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap2(Landroid/media/session/MediaSession;)V

    #@d
    .line 1005
    :cond_0
    return-void
.end method

.method public onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p2, "sequenceNumber"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 920
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/media/session/MediaSession;

    #@9
    .line 922
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@b
    .line 923
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap3(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 926
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 927
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@13
    .line 919
    :cond_1
    return-void

    #@14
    .line 925
    :catchall_0
    move-exception v1

    #@15
    .line 926
    if-eqz p3, :cond_2

    #@17
    .line 927
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@1a
    .line 925
    :cond_2
    throw v1
.end method

.method public onNext()V
    .locals 2

    #@0
    .prologue
    .line 990
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 991
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 992
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap4(Landroid/media/session/MediaSession;)V

    #@d
    .line 989
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    #@0
    .prologue
    .line 974
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 975
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 976
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap5(Landroid/media/session/MediaSession;)V

    #@d
    .line 973
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    #@0
    .prologue
    .line 934
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 935
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 936
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap9(Landroid/media/session/MediaSession;)V

    #@d
    .line 933
    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 942
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 943
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 944
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap6(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    #@d
    .line 941
    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 950
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 951
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 952
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap7(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    #@d
    .line 949
    :cond_0
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 958
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 959
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 960
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap8(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V

    #@d
    .line 957
    :cond_0
    return-void
.end method

.method public onPrevious()V
    .locals 2

    #@0
    .prologue
    .line 998
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 999
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1000
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap10(Landroid/media/session/MediaSession;)V

    #@d
    .line 997
    :cond_0
    return-void
.end method

.method public onRate(Landroid/media/Rating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    .line 1030
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1031
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1032
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap11(Landroid/media/session/MediaSession;Landroid/media/Rating;)V

    #@d
    .line 1029
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 2

    #@0
    .prologue
    .line 1014
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1015
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1016
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap12(Landroid/media/session/MediaSession;)V

    #@d
    .line 1013
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 1022
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1023
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1024
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap13(Landroid/media/session/MediaSession;J)V

    #@d
    .line 1021
    :cond_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1054
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 1055
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 1056
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap14(Landroid/media/session/MediaSession;I)V

    #@d
    .line 1053
    :cond_0
    return-void
.end method

.method public onSkipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    .line 966
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 967
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 968
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap15(Landroid/media/session/MediaSession;J)V

    #@d
    .line 965
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    #@0
    .prologue
    .line 982
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/session/MediaSession;

    #@8
    .line 983
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    #@a
    .line 984
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap16(Landroid/media/session/MediaSession;)V

    #@d
    .line 981
    :cond_0
    return-void
.end method
