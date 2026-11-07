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
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TransportController"


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaController;


# direct methods
.method private constructor blacklist <init>(Landroid/media/session/MediaController;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/session/MediaController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 622
    iput-object p1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;)V

    return-void
.end method


# virtual methods
.method public whitelist fastForward()V
    .registers 3

    .line 840
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->fastForward(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 843
    nop

    .line 844
    return-void

    .line 841
    :catch_15
    move-exception v0

    .line 842
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist pause()V
    .registers 3

    .line 803
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->pause(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 806
    nop

    .line 807
    return-void

    .line 804
    :catch_15
    move-exception v0

    .line 805
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist play()V
    .registers 3

    .line 719
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->play(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 722
    nop

    .line 723
    return-void

    .line 720
    :catch_15
    move-exception v0

    .line 721
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 738
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    .line 741
    nop

    .line 742
    return-void

    .line 739
    :catch_1b
    move-exception v0

    .line 740
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 734
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty String for playFromMediaId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 754
    if-nez p1, :cond_4

    .line 757
    const-string p1, ""

    .line 760
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    .line 763
    nop

    .line 764
    return-void

    .line 761
    :catch_19
    move-exception v0

    .line 762
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 774
    if-eqz p1, :cond_25

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 779
    :try_start_a
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1f

    .line 782
    nop

    .line 783
    return-void

    .line 780
    :catch_1f
    move-exception v0

    .line 781
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 775
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepare()V
    .registers 3

    .line 634
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->prepare(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 637
    nop

    .line 638
    return-void

    .line 635
    :catch_15
    move-exception v0

    .line 636
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 653
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 658
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    .line 661
    nop

    .line 662
    return-void

    .line 659
    :catch_1b
    move-exception v0

    .line 660
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 654
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty String for prepareFromMediaId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 678
    if-nez p1, :cond_4

    .line 681
    const-string p1, ""

    .line 684
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    .line 687
    nop

    .line 688
    return-void

    .line 685
    :catch_19
    move-exception v0

    .line 686
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 703
    if-eqz p1, :cond_25

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 708
    :try_start_a
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1d} :catch_1f

    .line 711
    nop

    .line 712
    return-void

    .line 709
    :catch_1f
    move-exception v0

    .line 710
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 704
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for prepareFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist rewind()V
    .registers 3

    .line 863
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->rewind(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 866
    nop

    .line 867
    return-void

    .line 864
    :catch_15
    move-exception v0

    .line 865
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist seekTo(J)V
    .registers 5
    .param p1, "pos"    # J

    .line 828
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->seekTo(Ljava/lang/String;J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 831
    nop

    .line 832
    return-void

    .line 829
    :catch_15
    move-exception v0

    .line 830
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 922
    if-eqz p1, :cond_a

    .line 925
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 926
    return-void

    .line 923
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CustomAction cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 942
    :try_start_6
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    .line 945
    nop

    .line 946
    return-void

    .line 943
    :catch_1b
    move-exception v0

    .line 944
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 939
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CustomAction cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPlaybackSpeed(F)V
    .registers 4
    .param p1, "speed"    # F

    .line 903
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_20

    .line 907
    :try_start_5
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/session/ISessionController;->setPlaybackSpeed(Ljava/lang/String;F)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_1a

    .line 910
    nop

    .line 911
    return-void

    .line 908
    :catch_1a
    move-exception v0

    .line 909
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 904
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "speed must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRating(Landroid/media/Rating;)V
    .registers 4
    .param p1, "rating"    # Landroid/media/Rating;

    .line 889
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/session/ISessionController;->rate(Ljava/lang/String;Landroid/media/Rating;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 892
    nop

    .line 893
    return-void

    .line 890
    :catch_15
    move-exception v0

    .line 891
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist skipToNext()V
    .registers 3

    .line 851
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->next(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 854
    nop

    .line 855
    return-void

    .line 852
    :catch_15
    move-exception v0

    .line 853
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist skipToPrevious()V
    .registers 3

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->previous(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 877
    nop

    .line 878
    return-void

    .line 875
    :catch_15
    move-exception v0

    .line 876
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist skipToQueueItem(J)V
    .registers 5
    .param p1, "id"    # J

    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/media/session/ISessionController;->skipToQueueItem(Ljava/lang/String;J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 794
    nop

    .line 795
    return-void

    .line 792
    :catch_15
    move-exception v0

    .line 793
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stop()V
    .registers 3

    .line 815
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->-$$Nest$fgetmSessionBinder(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->-$$Nest$fgetmContext(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionController;->stop(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 818
    nop

    .line 819
    return-void

    .line 816
    :catch_15
    move-exception v0

    .line 817
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
