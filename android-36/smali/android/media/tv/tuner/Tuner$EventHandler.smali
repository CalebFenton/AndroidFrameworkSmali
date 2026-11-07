.class Landroid/media/tv/tuner/Tuner$EventHandler;
.super Landroid/os/Handler;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/tuner/Tuner;


# direct methods
.method public static synthetic blacklist $r8$lambda$MaLqGdRVkXfe4wqCnZCE90z8EBc(Landroid/media/tv/tuner/Tuner$EventHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner$EventHandler;->lambda$handleMessage$0()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1104
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    .line 1105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1106
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0()V
    .registers 4

    .line 1123
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1124
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1125
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-interface {v1, v2}, Landroid/media/tv/tuner/Tuner$OnResourceLostListener;->onResourceLost(Landroid/media/tv/tuner/Tuner;)V

    .line 1127
    :cond_1a
    monitor-exit v0

    .line 1128
    return-void

    .line 1127
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    :pswitch_5
    goto :goto_44

    .line 1112
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/tuner/filter/Filter;

    .line 1113
    .local v0, "filter":Landroid/media/tv/tuner/filter/Filter;
    invoke-virtual {v0}, Landroid/media/tv/tuner/filter/Filter;->getCallback()Landroid/media/tv/tuner/filter/FilterCallback;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 1114
    invoke-virtual {v0}, Landroid/media/tv/tuner/filter/Filter;->getCallback()Landroid/media/tv/tuner/filter/FilterCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/tuner/filter/FilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/Filter;I)V

    goto :goto_44

    .line 1119
    .end local v0    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :pswitch_1a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1120
    :try_start_21
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 1122
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$EventHandler;->this$0:Landroid/media/tv/tuner/Tuner;

    invoke-static {v1}, Landroid/media/tv/tuner/Tuner;->-$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/media/tv/tuner/Tuner$EventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$EventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Tuner$EventHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1130
    :cond_3f
    monitor-exit v0

    .line 1131
    goto :goto_44

    .line 1130
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_41

    throw v1

    .line 1136
    :cond_44
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
