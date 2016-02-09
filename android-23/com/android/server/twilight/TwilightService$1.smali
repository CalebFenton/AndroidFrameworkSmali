.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/android/server/twilight/TwilightState;
    .locals 2

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@7
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mTwilightState:Lcom/android/server/twilight/TwilightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 116
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@7
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@9
    new-instance v2, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    #@b
    invoke-direct {v2, p1, p2}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;-><init>(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    #@e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 131
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@13
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    const/4 v2, 0x1

    #@1a
    if-ne v0, v2, :cond_0

    #@1c
    .line 132
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@1e
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@20
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->enableLocationUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v1

    #@24
    .line 127
    return-void

    #@25
    .line 128
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method
