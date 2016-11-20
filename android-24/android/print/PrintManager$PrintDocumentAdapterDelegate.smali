.class public final Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.super Landroid/print/IPrintDocumentAdapter$Stub;
.source "PrintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintDocumentAdapterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mObserver:Landroid/print/IPrintDocumentAdapterObserver;

.field private mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# direct methods
.method static synthetic -get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;

    #@0
    .prologue
    .line 779
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    #@3
    .line 767
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@a
    .line 781
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "Cannot start printing for finishing activity"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 787
    :cond_0
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@1b
    .line 788
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    #@1d
    .line 789
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    #@1f
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@21
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, p0, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    #@28
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@2a
    .line 790
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@2c
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@33
    .line 780
    return-void
.end method

.method private destroyLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 968
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@3
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@a
    .line 970
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@c
    .line 972
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    #@e
    .line 977
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@14
    .line 978
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@1a
    .line 979
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@1c
    const/4 v1, 0x3

    #@1d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@20
    .line 980
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@22
    const/4 v1, 0x4

    #@23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@26
    .line 981
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@28
    .line 983
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    #@2a
    .line 985
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 986
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    #@30
    invoke-interface {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;->destroy()V

    #@33
    .line 987
    iput-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    #@35
    .line 967
    :cond_0
    return-void
.end method

.method private isDestroyedLocked()Z
    .locals 1

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    #@0
    .prologue
    .line 890
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 892
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 893
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@b
    .line 894
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    #@d
    .line 893
    const/4 v3, 0x4

    #@e
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 889
    return-void

    #@17
    .line 890
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public kill(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 901
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 903
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 904
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@b
    const/4 v2, 0x5

    #@c
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v1

    #@14
    .line 900
    return-void

    #@15
    .line 901
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 7
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p4, "metadata"    # Landroid/os/Bundle;
    .param p5, "sequence"    # I

    #@0
    .prologue
    .line 825
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    #@3
    move-result-object v2

    #@4
    .line 827
    .local v2, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p3, v2, p5}, Landroid/print/ILayoutResultCallback;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 834
    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5

    #@a
    .line 836
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    monitor-exit v5

    #@11
    .line 837
    return-void

    #@12
    .line 828
    :catch_0
    move-exception v3

    #@13
    .line 830
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrintManager"

    #@16
    const-string/jumbo v5, "Error notifying for layout start"

    #@19
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 831
    return-void

    #@1d
    .line 840
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@20
    move-result-object v1

    #@21
    .line 843
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@24
    move-result-object v0

    #@25
    .line 844
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    #@27
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@29
    .line 845
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2b
    .line 846
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2d
    .line 847
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@2f
    .line 848
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;

    #@31
    invoke-direct {v4, p0, p3, p5}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V

    #@34
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@36
    .line 849
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    #@38
    .line 851
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@3a
    const/4 v6, 0x2

    #@3b
    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    monitor-exit v5

    #@43
    .line 823
    return-void

    #@44
    .line 834
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_0
    move-exception v4

    #@45
    monitor-exit v5

    #@46
    throw v4
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 916
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 947
    const/4 v0, 0x0

    #@1
    .line 948
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 949
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    #@6
    if-ne p1, v2, :cond_0

    #@8
    .line 950
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    #@a
    .line 951
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .end local v0    # "observer":Landroid/print/IPrintDocumentAdapterObserver;
    :cond_0
    monitor-exit v3

    #@e
    .line 954
    if-eqz v0, :cond_1

    #@10
    .line 956
    :try_start_1
    invoke-interface {v0}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@13
    .line 941
    :cond_1
    :goto_0
    return-void

    #@14
    .line 948
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2

    #@17
    .line 957
    :catch_0
    move-exception v1

    #@18
    .line 958
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@1b
    const-string/jumbo v3, "Error announcing destroyed state"

    #@1e
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 911
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 926
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 936
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 921
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 931
    return-void
.end method

.method public setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/print/IPrintDocumentAdapterObserver;

    #@0
    .prologue
    .line 796
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 797
    :try_start_0
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    #@5
    .line 798
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    .local v0, "destroyed":Z
    monitor-exit v3

    #@a
    .line 801
    if-eqz v0, :cond_0

    #@c
    if-eqz p1, :cond_0

    #@e
    .line 803
    :try_start_1
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@11
    .line 794
    :cond_0
    :goto_0
    return-void

    #@12
    .line 796
    .end local v0    # "destroyed":Z
    :catchall_0
    move-exception v2

    #@13
    monitor-exit v3

    #@14
    throw v2

    #@15
    .line 804
    .restart local v0    # "destroyed":Z
    :catch_0
    move-exception v1

    #@16
    .line 805
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "PrintManager"

    #@19
    const-string/jumbo v3, "Error announcing destroyed state"

    #@1c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 812
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 814
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 815
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@b
    .line 816
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    #@d
    .line 815
    const/4 v3, 0x1

    #@e
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 811
    return-void

    #@17
    .line 812
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 7
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/print/IWriteResultCallback;
    .param p4, "sequence"    # I

    #@0
    .prologue
    .line 859
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    #@3
    move-result-object v2

    #@4
    .line 861
    .local v2, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p3, v2, p4}, Landroid/print/IWriteResultCallback;->onWriteStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 868
    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    #@9
    monitor-enter v5

    #@a
    .line 870
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    monitor-exit v5

    #@11
    .line 871
    return-void

    #@12
    .line 862
    :catch_0
    move-exception v3

    #@13
    .line 864
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrintManager"

    #@16
    const-string/jumbo v5, "Error notifying for write start"

    #@19
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 865
    return-void

    #@1d
    .line 874
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    #@20
    move-result-object v1

    #@21
    .line 877
    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@24
    move-result-object v0

    #@25
    .line 878
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    #@27
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@29
    .line 879
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@2b
    .line 880
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@2d
    .line 881
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@2f
    .line 882
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;

    #@31
    invoke-direct {v4, p0, p3, p2, p4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V

    #@34
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    #@36
    .line 884
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    #@38
    const/4 v6, 0x3

    #@39
    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    monitor-exit v5

    #@41
    .line 857
    return-void

    #@42
    .line 868
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_0
    move-exception v4

    #@43
    monitor-exit v5

    #@44
    throw v4
.end method
