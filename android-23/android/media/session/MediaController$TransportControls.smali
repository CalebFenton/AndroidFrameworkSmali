.class public final Landroid/media/session/MediaController$TransportControls;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransportControls"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportController"


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaController;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    .line 591
    iput-object p1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController$TransportControls;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;)V

    #@3
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 3

    #@0
    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->fastForward()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 718
    :goto_0
    return-void

    #@a
    .line 721
    :catch_0
    move-exception v0

    #@b
    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling fastForward."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public pause()V
    .locals 3

    #@0
    .prologue
    .line 683
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 681
    :goto_0
    return-void

    #@a
    .line 684
    :catch_0
    move-exception v0

    #@b
    .line 685
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling pause."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public play()V
    .locals 3

    #@0
    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 597
    :goto_0
    return-void

    #@a
    .line 600
    :catch_0
    move-exception v0

    #@b
    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling play."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 613
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 614
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 615
    const-string/jumbo v2, "You must specify a non-empty String for playFromMediaId."

    #@b
    .line 614
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 618
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@11
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionController;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 612
    :goto_0
    return-void

    #@19
    .line 619
    :catch_0
    move-exception v0

    #@1a
    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Error calling play("

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, ")."

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    goto :goto_0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 634
    if-nez p1, :cond_0

    #@2
    .line 637
    const-string/jumbo p1, ""

    #@5
    .line 640
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@7
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionController;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 633
    :goto_0
    return-void

    #@f
    .line 641
    :catch_0
    move-exception v0

    #@10
    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Error calling play("

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, ")."

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 654
    if-eqz p1, :cond_0

    #@2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 655
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    .line 656
    const-string/jumbo v2, "You must specify a non-empty Uri for playFromUri."

    #@f
    .line 655
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 659
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@15
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionController;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 653
    :goto_0
    return-void

    #@1d
    .line 660
    :catch_0
    move-exception v0

    #@1e
    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Error calling play("

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, ")."

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0
.end method

.method public rewind()V
    .locals 3

    #@0
    .prologue
    .line 743
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->rewind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 741
    :goto_0
    return-void

    #@a
    .line 744
    :catch_0
    move-exception v0

    #@b
    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling rewind."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 708
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionController;->seekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 706
    :goto_0
    return-void

    #@a
    .line 709
    :catch_0
    move-exception v0

    #@b
    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling seekTo."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 784
    if-nez p1, :cond_0

    #@2
    .line 785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "CustomAction cannot be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 787
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@12
    .line 783
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 801
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "CustomAction cannot be null."

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 804
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@11
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionController;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 799
    :goto_0
    return-void

    #@19
    .line 805
    :catch_0
    move-exception v0

    #@1a
    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@1d
    const-string/jumbo v2, "Dead object in sendCustomAction."

    #@20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    goto :goto_0
.end method

.method public setRating(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    .line 769
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Landroid/media/session/ISessionController;->rate(Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 767
    :goto_0
    return-void

    #@a
    .line 770
    :catch_0
    move-exception v0

    #@b
    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling rate."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public skipToNext()V
    .locals 3

    #@0
    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 729
    :goto_0
    return-void

    #@a
    .line 732
    :catch_0
    move-exception v0

    #@b
    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling next."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public skipToPrevious()V
    .locals 3

    #@0
    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->previous()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 752
    :goto_0
    return-void

    #@a
    .line 755
    :catch_0
    move-exception v0

    #@b
    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling previous."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public skipToQueueItem(J)V
    .locals 5
    .param p1, "id"    # J

    #@0
    .prologue
    .line 671
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionController;->skipToQueueItem(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 669
    :goto_0
    return-void

    #@a
    .line 672
    :catch_0
    move-exception v0

    #@b
    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Error calling skipToItem("

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, ")."

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    #@2
    invoke-static {v1}, Landroid/media/session/MediaController;->-get0(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1}, Landroid/media/session/ISessionController;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 693
    :goto_0
    return-void

    #@a
    .line 696
    :catch_0
    move-exception v0

    #@b
    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TransportController"

    #@e
    const-string/jumbo v2, "Error calling stop."

    #@11
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method
