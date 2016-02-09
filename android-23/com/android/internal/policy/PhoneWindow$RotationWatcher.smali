.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsWatching:Z

.field private final mRotationChanged:Ljava/lang/Runnable;

.field private final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/PhoneWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4903
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    #@3
    .line 4905
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;-><init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    #@a
    .line 4911
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 4910
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@11
    .line 4903
    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 4
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 4920
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@2
    monitor-enter v2

    #@3
    .line 4921
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 4923
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    #@9
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    #@c
    .line 4924
    new-instance v1, Landroid/os/Handler;

    #@e
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    #@13
    .line 4925
    const/4 v1, 0x1

    #@14
    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 4930
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@18
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@1a
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@1d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit v2

    #@21
    .line 4919
    return-void

    #@22
    .line 4926
    :catch_0
    move-exception v0

    #@23
    .line 4927
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "PhoneWindow"

    #@26
    const-string/jumbo v3, "Couldn\'t start watching for device rotation"

    #@29
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 4920
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method dispatchRotationChanged()V
    .locals 5

    #@0
    .prologue
    .line 4950
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 4951
    const/4 v0, 0x0

    #@4
    .line 4952
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    if-ge v0, v3, :cond_1

    #@c
    .line 4953
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@14
    .line 4954
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    #@1a
    .line 4955
    .local v2, "win":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v2, :cond_0

    #@1c
    .line 4956
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->onOptionsPanelRotationChanged()V

    #@1f
    .line 4957
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 4959
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 4950
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catchall_0
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    :cond_1
    monitor-exit v4

    #@2c
    .line 4949
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 4916
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@7
    .line 4915
    return-void
.end method

.method public removeWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 5
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 4935
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 4936
    const/4 v0, 0x0

    #@4
    .line 4937
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    if-ge v0, v3, :cond_2

    #@c
    .line 4938
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@14
    .line 4939
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lcom/android/internal/policy/PhoneWindow;

    #@1a
    .line 4940
    .local v2, "win":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v2, :cond_0

    #@1c
    if-ne v2, p1, :cond_1

    #@1e
    .line 4941
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 4935
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v4

    #@26
    throw v3

    #@27
    .line 4943
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .restart local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v2    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_2
    monitor-exit v4

    #@2b
    .line 4934
    return-void
.end method
