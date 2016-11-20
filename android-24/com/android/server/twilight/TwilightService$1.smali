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
    .line 217
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
    .line 225
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 226
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
    .line 225
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
    .line 237
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    iget-object v1, v0, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 238
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
    .line 240
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
    .line 241
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
    .line 236
    return-void

    #@25
    .line 237
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;

    #@0
    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2
    iget-object v2, v1, Lcom/android/server/twilight/TwilightService;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v2

    #@5
    .line 249
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@8
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 250
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@12
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;

    #@1a
    invoke-static {v1}, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->-get0(Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;)Lcom/android/server/twilight/TwilightListener;

    #@1d
    move-result-object v1

    #@1e
    if-ne v1, p1, :cond_0

    #@20
    .line 251
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@22
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@2c
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_2

    #@34
    .line 256
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    #@36
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLocationHandler:Lcom/android/server/twilight/TwilightService$LocationHandler;

    #@38
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->disableLocationUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    :cond_2
    monitor-exit v2

    #@3c
    .line 247
    return-void

    #@3d
    .line 248
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method
