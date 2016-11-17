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
.field final synthetic this$0:Landroid/media/tv/TvInputManager;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;

    #@0
    .prologue
    .line 868
    iput-object p1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-direct {p0}, Landroid/media/tv/ITvInputClient$Stub;-><init>()V

    #@5
    return-void
.end method

.method private postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    .locals 3
    .param p1, "record"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@0
    .prologue
    .line 944
    invoke-static {p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;

    #@7
    move-result-object v0

    #@8
    .line 945
    .local v0, "track":Landroid/media/tv/TvTrackInfo;
    if-eqz v0, :cond_0

    #@a
    .line 946
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoWidth()I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0}, Landroid/media/tv/TvTrackInfo;->getVideoHeight()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p1, v1, v2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoSizeChanged(II)V

    #@15
    .line 943
    :cond_0
    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 903
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 904
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 905
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 906
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 907
    return-void

    #@31
    .line 909
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postChannelRetuned(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 902
    return-void

    #@36
    .line 903
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onContentAllowed(I)V
    .locals 5
    .param p1, "seq"    # I

    #@0
    .prologue
    .line 976
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 978
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 979
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 980
    return-void

    #@31
    .line 982
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentAllowed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 975
    return-void

    #@36
    .line 976
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onContentBlocked(Ljava/lang/String;I)V
    .locals 5
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 988
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 989
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 990
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 991
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 992
    return-void

    #@31
    .line 994
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentBlocked(Landroid/media/tv/TvContentRating;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    monitor-exit v2

    #@39
    .line 987
    return-void

    #@3a
    .line 988
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
    throw v1
.end method

.method public onError(II)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 1084
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1085
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1086
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1087
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1088
    return-void

    #@31
    .line 1090
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1083
    return-void

    #@36
    .line 1084
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onLayoutSurface(IIIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "seq"    # I

    #@0
    .prologue
    .line 1000
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1001
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1002
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1003
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1004
    return-void

    #@31
    .line 1006
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 999
    return-void

    #@36
    .line 1000
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onRecordingStopped(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 1072
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1073
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1074
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1075
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1076
    return-void

    #@31
    .line 1078
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postRecordingStopped(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1071
    return-void

    #@36
    .line 1072
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "channel"    # Landroid/view/InputChannel;
    .param p4, "seq"    # I

    #@0
    .prologue
    .line 872
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v9

    #@6
    monitor-enter v9

    #@7
    .line 873
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 874
    .local v8, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v8, :cond_0

    #@15
    .line 875
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Callback not found for "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v9

    #@30
    .line 876
    return-void

    #@31
    .line 878
    :cond_0
    const/4 v0, 0x0

    #@32
    .line 879
    .local v0, "session":Landroid/media/tv/TvInputManager$Session;
    if-eqz p2, :cond_1

    #@34
    .line 880
    :try_start_1
    new-instance v0, Landroid/media/tv/TvInputManager$Session;

    #@36
    .end local v0    # "session":Landroid/media/tv/TvInputManager$Session;
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@38
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get2(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;

    #@3b
    move-result-object v3

    #@3c
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@3e
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get5(Landroid/media/tv/TvInputManager;)I

    #@41
    move-result v4

    #@42
    .line 881
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@44
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@47
    move-result-object v6

    #@48
    .line 880
    const/4 v7, 0x0

    #@49
    move-object v1, p2

    #@4a
    move-object v2, p3

    #@4b
    move v5, p4

    #@4c
    invoke-direct/range {v0 .. v7}, Landroid/media/tv/TvInputManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ITvInputManager;IILandroid/util/SparseArray;Landroid/media/tv/TvInputManager$Session;)V

    #@4f
    .line 883
    :cond_1
    invoke-virtual {v8, v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    monitor-exit v9

    #@53
    .line 871
    return-void

    #@54
    .line 872
    .end local v8    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@55
    monitor-exit v9

    #@56
    throw v1
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;
    .param p3, "seq"    # I

    #@0
    .prologue
    .line 1012
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1013
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1014
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1015
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1016
    return-void

    #@31
    .line 1018
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1011
    return-void

    #@36
    .line 1012
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onSessionReleased(I)V
    .locals 5
    .param p1, "seq"    # I

    #@0
    .prologue
    .line 889
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 890
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 891
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@15
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1c
    .line 892
    if-nez v0, :cond_0

    #@1e
    .line 893
    const-string/jumbo v1, "TvInputManager"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Callback not found for seq:"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit v2

    #@39
    .line 894
    return-void

    #@3a
    .line 896
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v1}, Landroid/media/tv/TvInputManager$Session;->-wrap1(Landroid/media/tv/TvInputManager$Session;)V

    #@41
    .line 897
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionReleased()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v2

    #@45
    .line 888
    return-void

    #@46
    .line 889
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
    throw v1
.end method

.method public onTimeShiftCurrentPositionChanged(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "seq"    # I

    #@0
    .prologue
    .line 1048
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1049
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1050
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1051
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1052
    return-void

    #@31
    .line 1054
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftCurrentPositionChanged(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1047
    return-void

    #@36
    .line 1048
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onTimeShiftStartPositionChanged(JI)V
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "seq"    # I

    #@0
    .prologue
    .line 1036
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1037
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1038
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1039
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1040
    return-void

    #@31
    .line 1042
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStartPositionChanged(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1035
    return-void

    #@36
    .line 1036
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onTimeShiftStatusChanged(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 1024
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1025
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1026
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1027
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1028
    return-void

    #@31
    .line 1030
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1023
    return-void

    #@36
    .line 1024
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onTrackSelected(ILjava/lang/String;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "seq"    # I

    #@0
    .prologue
    .line 930
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 932
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 933
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 934
    return-void

    #@31
    .line 936
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/TvInputManager$Session;->updateTrackSelection(ILjava/lang/String;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 937
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTrackSelected(ILjava/lang/String;)V

    #@3e
    .line 938
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :cond_1
    monitor-exit v2

    #@42
    .line 929
    return-void

    #@43
    .line 930
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public onTracksChanged(Ljava/util/List;I)V
    .locals 5
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 915
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 916
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 917
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 918
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 919
    return-void

    #@31
    .line 921
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager$Session;->updateTracks(Ljava/util/List;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 922
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTracksChanged(Ljava/util/List;)V

    #@3e
    .line 923
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :cond_1
    monitor-exit v2

    #@42
    .line 914
    return-void

    #@43
    .line 915
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public onTuned(ILandroid/net/Uri;)V
    .locals 5
    .param p1, "seq"    # I
    .param p2, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1060
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1061
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 1062
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 1063
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 1064
    return-void

    #@31
    .line 1066
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTuned(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 1059
    return-void

    #@36
    .line 1060
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onVideoAvailable(I)V
    .locals 5
    .param p1, "seq"    # I

    #@0
    .prologue
    .line 952
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 953
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 954
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 955
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 956
    return-void

    #@31
    .line 958
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 951
    return-void

    #@36
    .line 952
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onVideoUnavailable(II)V
    .locals 5
    .param p1, "reason"    # I
    .param p2, "seq"    # I

    #@0
    .prologue
    .line 964
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 965
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@9
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@13
    .line 966
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 967
    const-string/jumbo v1, "TvInputManager"

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Callback not found for seq "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 968
    return-void

    #@31
    .line 970
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoUnavailable(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 963
    return-void

    #@36
    .line 964
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method
