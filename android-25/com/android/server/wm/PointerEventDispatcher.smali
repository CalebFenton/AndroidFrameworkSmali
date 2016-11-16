.class public Lcom/android/server/wm/PointerEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "PointerEventDispatcher.java"


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$PointerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 35
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, p1, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@b
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@12
    .line 32
    const/4 v0, 0x0

    #@13
    new-array v0, v0, [Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@15
    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@17
    .line 34
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 41
    :try_start_0
    instance-of v4, p1, Landroid/view/MotionEvent;

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 42
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    #@8
    move-result v4

    #@9
    and-int/lit8 v4, v4, 0x2

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 43
    move-object v0, p1

    #@e
    check-cast v0, Landroid/view/MotionEvent;

    #@10
    move-object v3, v0

    #@11
    .line 45
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    iget-object v5, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@13
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 46
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@16
    if-nez v4, :cond_0

    #@18
    .line 47
    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    new-array v4, v4, [Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@20
    iput-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@22
    .line 48
    iget-object v4, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@24
    iget-object v6, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@26
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@29
    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .local v2, "listeners":[Landroid/view/WindowManagerPolicy$PointerEventListener;
    :try_start_2
    monitor-exit v5

    #@2c
    .line 52
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    #@2e
    if-ge v1, v4, :cond_1

    #@30
    .line 53
    aget-object v4, v2, v1

    #@32
    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    #@35
    .line 52
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 45
    .end local v1    # "i":I
    .end local v2    # "listeners":[Landroid/view/WindowManagerPolicy$PointerEventListener;
    :catchall_0
    move-exception v4

    #@39
    monitor-exit v5

    #@3a
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3b
    .line 56
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v4

    #@3c
    .line 57
    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/PointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@3f
    .line 56
    throw v4

    #@40
    .line 57
    :cond_1
    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/PointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    #@43
    .line 39
    return-void
.end method

.method public registerInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@0
    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "registerInputEventListener: trying to register"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 69
    const-string/jumbo v3, " twice."

    #@20
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 66
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    .line 72
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit v1

    #@38
    .line 65
    return-void
.end method

.method public unregisterInputEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/WindowManagerPolicy$PointerEventListener;

    #@0
    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "registerInputEventListener: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 84
    const-string/jumbo v3, " not registered."

    #@20
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 81
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit v1

    #@2e
    throw v0

    #@2f
    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@34
    .line 87
    const/4 v0, 0x0

    #@35
    iput-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicy$PointerEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit v1

    #@38
    .line 80
    return-void
.end method
