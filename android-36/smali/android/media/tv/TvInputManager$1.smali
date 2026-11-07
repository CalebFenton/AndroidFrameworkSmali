.class Landroid/media/tv/TvInputManager$1;
.super Landroid/media/tv/ITvInputClient$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;-><init>(Landroid/media/tv/ITvInputManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1684
    iput-object p1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputClient$Stub;-><init>()V

    return-void
.end method

.method private blacklist postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    .registers 5
    .param p1, "record"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1792
    invoke-static {p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;

    move-result-object v0

    .line 1793
    .local v0, "track":Landroid/media/tv/TvTrackInfo;
    if-eqz v0, :cond_15

    .line 1794
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoSizeChanged(II)V

    .line 1796
    :cond_15
    return-void
.end method


# virtual methods
.method public blacklist onAdBufferConsumed(Landroid/media/tv/AdBuffer;I)V
    .registers 8
    .param p1, "buffer"    # Landroid/media/tv/AdBuffer;
    .param p2, "seq"    # I

    .line 2053
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2054
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 2055
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 2056
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    monitor-exit v0

    return-void

    .line 2059
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    .line 2060
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2061
    return-void

    .line 2060
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onAdResponse(Landroid/media/tv/AdResponse;I)V
    .registers 8
    .param p1, "response"    # Landroid/media/tv/AdResponse;
    .param p2, "seq"    # I

    .line 2041
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2042
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 2043
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 2044
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    monitor-exit v0

    return-void

    .line 2047
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postAdResponse(Landroid/media/tv/AdResponse;)V

    .line 2048
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2049
    return-void

    .line 2048
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V
    .registers 8
    .param p1, "aitInfo"    # Landroid/media/tv/AitInfo;
    .param p2, "seq"    # I

    .line 1920
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1921
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1922
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1923
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    monitor-exit v0

    return-void

    .line 1926
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postAitInfoUpdated(Landroid/media/tv/AitInfo;)V

    .line 1927
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1928
    return-void

    .line 1927
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onAudioPresentationSelected(III)V
    .registers 9
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I
    .param p3, "seq"    # I

    .line 1747
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1748
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1749
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1750
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    monitor-exit v0

    return-void

    .line 1753
    :cond_2f
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/media/tv/TvInputManager$Session;->updateAudioPresentationSelection(II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1755
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postAudioPresentationSelected(II)V

    .line 1757
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :cond_3c
    monitor-exit v0

    .line 1758
    return-void

    .line 1757
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public blacklist onAudioPresentationsChanged(Ljava/util/List;I)V
    .registers 8
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;I)V"
        }
    .end annotation

    .line 1733
    .local p1, "audioPresentations":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPresentation;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1734
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1735
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1736
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    monitor-exit v0

    return-void

    .line 1739
    :cond_2f
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$Session;->updateAudioPresentations(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1740
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postAudioPresentationsChanged(Ljava/util/List;)V

    .line 1742
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :cond_3c
    monitor-exit v0

    .line 1743
    return-void

    .line 1742
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public blacklist onAvailableSpeeds([FI)V
    .registers 8
    .param p1, "speeds"    # [F
    .param p2, "seq"    # I

    .line 1968
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1969
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1970
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1971
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    monitor-exit v0

    return-void

    .line 1974
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postAvailableSpeeds([F)V

    .line 1975
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1976
    return-void

    .line 1975
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V
    .registers 8
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;
    .param p2, "seq"    # I

    .line 2029
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2030
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 2031
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 2032
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    monitor-exit v0

    return-void

    .line 2035
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 2036
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2037
    return-void

    .line 2036
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onChannelRetuned(Landroid/net/Uri;I)V
    .registers 8
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "seq"    # I

    .line 1721
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1722
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1723
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1724
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    monitor-exit v0

    return-void

    .line 1727
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postChannelRetuned(Landroid/net/Uri;)V

    .line 1728
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1729
    return-void

    .line 1728
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onContentAllowed(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 1836
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1837
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1838
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1839
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    monitor-exit v0

    return-void

    .line 1842
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentAllowed()V

    .line 1843
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1844
    return-void

    .line 1843
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onContentBlocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "seq"    # I

    .line 1848
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1849
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1850
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1851
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    monitor-exit v0

    return-void

    .line 1854
    :cond_2f
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 1855
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1856
    return-void

    .line 1855
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist onCueingMessageAvailability(ZI)V
    .registers 8
    .param p1, "available"    # Z
    .param p2, "seq"    # I

    .line 1944
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1945
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1946
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1947
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    monitor-exit v0

    return-void

    .line 1950
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postCueingMessageAvailability(Z)V

    .line 1951
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1952
    return-void

    .line 1951
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onError(II)V
    .registers 8
    .param p1, "error"    # I
    .param p2, "seq"    # I

    .line 2017
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2018
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 2019
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 2020
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    monitor-exit v0

    return-void

    .line 2023
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postError(I)V

    .line 2024
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2025
    return-void

    .line 2024
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onLayoutSurface(IIIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "seq"    # I

    .line 1860
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1861
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1862
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1863
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    monitor-exit v0

    return-void

    .line 1866
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    .line 1867
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1868
    return-void

    .line 1867
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onRecordingStopped(Landroid/net/Uri;I)V
    .registers 8
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;
    .param p2, "seq"    # I

    .line 2005
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2006
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 2007
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 2008
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    monitor-exit v0

    return-void

    .line 2011
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postRecordingStopped(Landroid/net/Uri;)V

    .line 2012
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2013
    return-void

    .line 2012
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 16
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "seq"    # I

    .line 1688
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1689
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_65

    .line 1690
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_34

    .line 1691
    :try_start_15
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    return-void

    .line 1702
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_2f
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    goto :goto_69

    .line 1694
    .restart local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :cond_34
    const/4 v2, 0x0

    .line 1695
    .local v2, "session":Landroid/media/tv/TvInputManager$Session;
    if-eqz p2, :cond_54

    .line 1696
    :try_start_37
    new-instance v3, Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v4}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmService(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;

    move-result-object v6

    iget-object v4, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v4}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmUserId(Landroid/media/tv/TvInputManager;)I

    move-result v7

    iget-object v4, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v4}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v9
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_65

    const/4 v10, 0x0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "seq":I
    .local v4, "token":Landroid/os/IBinder;
    .local v5, "channel":Landroid/view/InputChannel;
    .local v8, "seq":I
    :try_start_4f
    invoke-direct/range {v3 .. v10}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager-IA;)V

    move-object v2, v3

    goto :goto_60

    .line 1699
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "channel":Landroid/view/InputChannel;
    .end local v8    # "seq":I
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "channel":Landroid/view/InputChannel;
    .restart local p4    # "seq":I
    :cond_54
    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "seq":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v5    # "channel":Landroid/view/InputChannel;
    .restart local v8    # "seq":I
    iget-object p2, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {p2}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 1701
    :goto_60
    invoke-virtual {v0, v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V

    .line 1702
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .end local v2    # "session":Landroid/media/tv/TvInputManager$Session;
    monitor-exit v1

    .line 1703
    return-void

    .line 1702
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v5    # "channel":Landroid/view/InputChannel;
    .end local v8    # "seq":I
    .restart local p2    # "token":Landroid/os/IBinder;
    .restart local p3    # "channel":Landroid/view/InputChannel;
    .restart local p4    # "seq":I
    :catchall_65
    move-exception v0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    .end local p2    # "token":Landroid/os/IBinder;
    .end local p3    # "channel":Landroid/view/InputChannel;
    .end local p4    # "seq":I
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v5    # "channel":Landroid/view/InputChannel;
    .restart local v8    # "seq":I
    :goto_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_4f .. :try_end_6a} :catchall_6b

    throw v0

    :catchall_6b
    move-exception v0

    goto :goto_69
.end method

.method public blacklist onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 1872
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1873
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1874
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1875
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    monitor-exit v0

    return-void

    .line 1878
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1879
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1880
    return-void

    .line 1879
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onSessionReleased(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 1707
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1708
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1709
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    iget-object v2, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v2}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1710
    if-nez v1, :cond_38

    .line 1711
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    monitor-exit v0

    return-void

    .line 1714
    :cond_38
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/TvInputManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/TvInputManager$Session;)V

    .line 1715
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionReleased()V

    .line 1716
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1717
    return-void

    .line 1716
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public blacklist onSignalStrength(II)V
    .registers 8
    .param p1, "strength"    # I
    .param p2, "seq"    # I

    .line 1932
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1933
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1934
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1935
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    monitor-exit v0

    return-void

    .line 1938
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSignalStrength(I)V

    .line 1939
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1940
    return-void

    .line 1939
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTimeShiftCurrentPositionChanged(JI)V
    .registers 9
    .param p1, "timeMs"    # J
    .param p3, "seq"    # I

    .line 1908
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1909
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1910
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1911
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    monitor-exit v0

    return-void

    .line 1914
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftCurrentPositionChanged(J)V

    .line 1915
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1916
    return-void

    .line 1915
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTimeShiftMode(II)V
    .registers 8
    .param p1, "mode"    # I
    .param p2, "seq"    # I

    .line 1956
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1957
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1958
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1959
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    monitor-exit v0

    return-void

    .line 1962
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftMode(I)V

    .line 1963
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1964
    return-void

    .line 1963
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTimeShiftStartPositionChanged(JI)V
    .registers 9
    .param p1, "timeMs"    # J
    .param p3, "seq"    # I

    .line 1896
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1897
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1898
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1899
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    monitor-exit v0

    return-void

    .line 1902
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStartPositionChanged(J)V

    .line 1903
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1904
    return-void

    .line 1903
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTimeShiftStatusChanged(II)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "seq"    # I

    .line 1884
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1885
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1886
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1887
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    monitor-exit v0

    return-void

    .line 1890
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStatusChanged(I)V

    .line 1891
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1892
    return-void

    .line 1891
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTrackSelected(ILjava/lang/String;I)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "seq"    # I

    .line 1778
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1779
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1780
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1781
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    monitor-exit v0

    return-void

    .line 1784
    :cond_2f
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/media/tv/TvInputManager$Session;->updateTrackSelection(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1785
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTrackSelected(ILjava/lang/String;)V

    .line 1786
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    .line 1788
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :cond_3f
    monitor-exit v0

    .line 1789
    return-void

    .line 1788
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public blacklist onTracksChanged(Ljava/util/List;I)V
    .registers 8
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1763
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1764
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1765
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1766
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    monitor-exit v0

    return-void

    .line 1769
    :cond_2f
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/tv/TvInputManager$Session;->updateTracks(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1770
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTracksChanged(Ljava/util/List;)V

    .line 1771
    invoke-direct {p0, v1}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V

    .line 1773
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :cond_3f
    monitor-exit v0

    .line 1774
    return-void

    .line 1773
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public blacklist onTuned(Landroid/net/Uri;I)V
    .registers 8
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "seq"    # I

    .line 1980
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1981
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1982
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1983
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    monitor-exit v0

    return-void

    .line 1986
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTuned(Landroid/net/Uri;)V

    .line 1988
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1989
    return-void

    .line 1988
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 2065
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2066
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 2067
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 2068
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    monitor-exit v0

    return-void

    .line 2071
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2072
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2073
    return-void

    .line 2072
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onTvMessage(ILandroid/os/Bundle;I)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    .line 1993
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1994
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1995
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1996
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    monitor-exit v0

    return-void

    .line 1999
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTvMessage(ILandroid/os/Bundle;)V

    .line 2000
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 2001
    return-void

    .line 2000
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onVideoAvailable(I)V
    .registers 7
    .param p1, "seq"    # I

    .line 1800
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1801
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1802
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1803
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    monitor-exit v0

    return-void

    .line 1806
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoAvailable()V

    .line 1807
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1808
    return-void

    .line 1807
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onVideoFreezeUpdated(ZI)V
    .registers 8
    .param p1, "isFrozen"    # Z
    .param p2, "seq"    # I

    .line 1824
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1825
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1826
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1827
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    monitor-exit v0

    return-void

    .line 1830
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoFreezeUpdated(Z)V

    .line 1831
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1832
    return-void

    .line 1831
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist onVideoUnavailable(II)V
    .registers 8
    .param p1, "reason"    # I
    .param p2, "seq"    # I

    .line 1812
    iget-object v0, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v0}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1813
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    .line 1814
    .local v1, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v1, :cond_2f

    .line 1815
    const-string v2, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback not found for seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    monitor-exit v0

    return-void

    .line 1818
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoUnavailable(I)V

    .line 1819
    .end local v1    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    monitor-exit v0

    .line 1820
    return-void

    .line 1819
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method
