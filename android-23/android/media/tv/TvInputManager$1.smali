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
    .line 690
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
    .line 766
    invoke-static {p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->getVideoTrackToNotify()Landroid/media/tv/TvTrackInfo;

    #@7
    move-result-object v0

    #@8
    .line 767
    .local v0, "track":Landroid/media/tv/TvTrackInfo;
    if-eqz v0, :cond_0

    #@a
    .line 768
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
    .line 765
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
    .line 725
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 726
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
    .line 727
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 728
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
    .line 729
    return-void

    #@31
    .line 731
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postChannelRetuned(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 724
    return-void

    #@36
    .line 725
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
    .line 798
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 799
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
    .line 800
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 801
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
    .line 802
    return-void

    #@31
    .line 804
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postContentAllowed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 797
    return-void

    #@36
    .line 798
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
    .line 810
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 811
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
    .line 812
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 813
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
    .line 814
    return-void

    #@31
    .line 816
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
    .line 809
    return-void

    #@3a
    .line 810
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@3b
    monitor-exit v2

    #@3c
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
    .line 822
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 823
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
    .line 824
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 825
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
    .line 826
    return-void

    #@31
    .line 828
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postLayoutSurface(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 821
    return-void

    #@36
    .line 822
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
    .line 694
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v9

    #@6
    monitor-enter v9

    #@7
    .line 695
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
    .line 696
    .local v8, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v8, :cond_0

    #@15
    .line 697
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
    .line 698
    return-void

    #@31
    .line 700
    :cond_0
    const/4 v0, 0x0

    #@32
    .line 701
    .local v0, "session":Landroid/media/tv/TvInputManager$Session;
    if-eqz p2, :cond_1

    #@34
    .line 702
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
    .line 703
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@44
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@47
    move-result-object v6

    #@48
    .line 702
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
    .line 705
    :cond_1
    invoke-virtual {v8, v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    monitor-exit v9

    #@53
    .line 693
    return-void

    #@54
    .line 694
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
    .line 834
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 835
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
    .line 836
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 837
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
    .line 838
    return-void

    #@31
    .line 840
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 833
    return-void

    #@36
    .line 834
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
    .line 711
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 712
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
    .line 713
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@15
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    #@1c
    .line 714
    if-nez v0, :cond_0

    #@1e
    .line 715
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
    .line 716
    return-void

    #@3a
    .line 718
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@3d
    move-result-object v1

    #@3e
    invoke-static {v1}, Landroid/media/tv/TvInputManager$Session;->-wrap1(Landroid/media/tv/TvInputManager$Session;)V

    #@41
    .line 719
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionReleased()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit v2

    #@45
    .line 710
    return-void

    #@46
    .line 711
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
    .line 870
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 871
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
    .line 872
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 873
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
    .line 874
    return-void

    #@31
    .line 876
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftCurrentPositionChanged(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 869
    return-void

    #@36
    .line 870
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
    .line 858
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 859
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
    .line 860
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 861
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
    .line 862
    return-void

    #@31
    .line 864
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStartPositionChanged(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 857
    return-void

    #@36
    .line 858
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
    .line 846
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 847
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
    .line 848
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 849
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
    .line 850
    return-void

    #@31
    .line 852
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStatusChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 845
    return-void

    #@36
    .line 846
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
    .line 752
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 753
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
    .line 754
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 755
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
    .line 756
    return-void

    #@31
    .line 758
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
    .line 759
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTrackSelected(ILjava/lang/String;)V

    #@3e
    .line 760
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :cond_1
    monitor-exit v2

    #@42
    .line 751
    return-void

    #@43
    .line 752
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
    .line 737
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 738
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
    .line 739
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 740
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
    .line 741
    return-void

    #@31
    .line 743
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
    .line 744
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTracksChanged(Ljava/util/List;)V

    #@3e
    .line 745
    invoke-direct {p0, v0}, Landroid/media/tv/TvInputManager$1;->postVideoSizeChangedIfNeededLocked(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :cond_1
    monitor-exit v2

    #@42
    .line 736
    return-void

    #@43
    .line 737
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@44
    monitor-exit v2

    #@45
    throw v1
.end method

.method public onVideoAvailable(I)V
    .locals 5
    .param p1, "seq"    # I

    #@0
    .prologue
    .line 774
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 775
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
    .line 776
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 777
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
    .line 778
    return-void

    #@31
    .line 780
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 773
    return-void

    #@36
    .line 774
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
    .line 786
    iget-object v1, p0, Landroid/media/tv/TvInputManager$1;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    invoke-static {v1}, Landroid/media/tv/TvInputManager;->-get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 787
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
    .line 788
    .local v0, "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    if-nez v0, :cond_0

    #@15
    .line 789
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
    .line 790
    return-void

    #@31
    .line 792
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postVideoUnavailable(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    monitor-exit v2

    #@35
    .line 785
    return-void

    #@36
    .line 786
    .end local v0    # "record":Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method
