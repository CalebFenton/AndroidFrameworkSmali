.class Landroid/media/AudioManager$CallInjectionModeChangedListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallInjectionModeChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9580
    iput-object p1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onModeChanged(I)V
    .registers 10
    .param p1, "mode"    # I

    .line 9583
    iget-object v0, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9584
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 9585
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 9586
    .local v1, "clientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$CallIRedirectionClientInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    .line 9587
    .local v3, "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    iget-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 9588
    .local v4, "trackOrRecord":Ljava/lang/Object;
    if-eqz v4, :cond_5d

    .line 9589
    iget v5, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v6, :cond_39

    if-eq p1, v7, :cond_39

    const/4 v5, 0x4

    if-eq p1, v5, :cond_39

    const/4 v5, 0x5

    if-ne p1, v5, :cond_43

    :cond_39
    iget v5, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    if-ne v5, v7, :cond_5d

    const/4 v5, 0x3

    if-eq p1, v5, :cond_5d

    const/4 v5, 0x6

    if-eq p1, v5, :cond_5d

    .line 9595
    :cond_43
    instance-of v5, v4, Landroid/media/AudioTrack;

    if-eqz v5, :cond_4e

    .line 9596
    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    .line 9597
    .local v5, "track":Landroid/media/AudioTrack;
    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    .line 9598
    .end local v5    # "track":Landroid/media/AudioTrack;
    goto :goto_54

    .line 9599
    :cond_4e
    move-object v5, v4

    check-cast v5, Landroid/media/AudioRecord;

    .line 9600
    .local v5, "record":Landroid/media/AudioRecord;
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    .line 9602
    .end local v5    # "record":Landroid/media/AudioRecord;
    :goto_54
    iget-object v5, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9605
    .end local v3    # "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    .end local v4    # "trackOrRecord":Ljava/lang/Object;
    :cond_5d
    goto :goto_17

    .line 9606
    :cond_5e
    iget-object v2, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_ba

    if-eqz v2, :cond_b8

    .line 9608
    const/4 v2, 0x0

    :try_start_6b
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v3

    if-eqz v3, :cond_7e

    .line 9609
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_8b
    .catchall {:try_start_6b .. :try_end_7e} :catchall_89

    .line 9614
    :cond_7e
    :try_start_7e
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 9615
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    :goto_85
    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_ba

    .line 9616
    goto :goto_b8

    .line 9614
    :catchall_89
    move-exception v3

    goto :goto_ac

    .line 9611
    :catch_8b
    move-exception v3

    .line 9612
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8c
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_8c .. :try_end_a4} :catchall_89

    .line 9614
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_a4
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 9615
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    goto :goto_85

    .line 9614
    :goto_ac
    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 9615
    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V

    .line 9616
    nop

    .end local p0    # "this":Landroid/media/AudioManager$CallInjectionModeChangedListener;
    .end local p1    # "mode":I
    throw v3

    .line 9618
    .end local v1    # "clientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$CallIRedirectionClientInfo;>;"
    .restart local p0    # "this":Landroid/media/AudioManager$CallInjectionModeChangedListener;
    .restart local p1    # "mode":I
    :cond_b8
    :goto_b8
    monitor-exit v0

    .line 9619
    return-void

    .line 9618
    :catchall_ba
    move-exception v1

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_a4 .. :try_end_bc} :catchall_ba

    throw v1
.end method
