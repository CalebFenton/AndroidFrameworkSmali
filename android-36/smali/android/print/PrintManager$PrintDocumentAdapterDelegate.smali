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
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    }
.end annotation


# instance fields
.field private greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mObserver:Landroid/print/IPrintDocumentAdapterObserver;

.field private greylist-max-o mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCallback(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroyLocked(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;

    .line 829
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    .line 816
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 830
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 836
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 837
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 838
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 839
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 840
    return-void

    .line 833
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start printing for finishing activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o destroyLocked()V
    .registers 4

    .line 1006
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 1010
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 1015
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 1021
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 1023
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    if-eqz v1, :cond_35

    .line 1024
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    invoke-interface {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;->destroy()V

    .line 1025
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    .line 1027
    :cond_35
    return-void
.end method

.method private greylist-max-o isDestroyedLocked()Z
    .registers 2

    .line 1002
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public greylist-max-o finish()V
    .registers 5

    .line 939
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    if-nez v1, :cond_15

    .line 942
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 943
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 945
    :cond_15
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public greylist-max-o layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .registers 12
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p4, "metadata"    # Landroid/os/Bundle;
    .param p5, "sequence"    # I

    .line 874
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 876
    .local v0, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_4
    invoke-interface {p3, v0, p5}, Landroid/print/ILayoutResultCallback;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_3d

    .line 881
    nop

    .line 883
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_b
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 886
    monitor-exit v1

    return-void

    .line 889
    :cond_13
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 892
    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 893
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 894
    iput-object p1, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 895
    iput-object p2, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 896
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 897
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;

    invoke-direct {v4, p0, p3, p5}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 898
    iput-object p4, v3, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 900
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 901
    .end local v2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v1

    .line 902
    return-void

    .line 901
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v2

    .line 877
    :catch_3d
    move-exception v1

    .line 879
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error notifying for layout start"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    return-void
.end method

.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 956
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 987
    :try_start_4
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-ne p1, v2, :cond_e

    .line 988
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    move-object v0, v2

    .line 989
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V

    .line 991
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1e

    .line 992
    if-eqz v0, :cond_1d

    .line 994
    :try_start_11
    invoke-interface {v0}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 997
    goto :goto_1d

    .line 995
    :catch_15
    move-exception v1

    .line 996
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 999
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void

    .line 991
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 951
    return-void
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 966
    return-void
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 976
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 961
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 971
    return-void
.end method

.method public greylist-max-o setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/print/IPrintDocumentAdapterObserver;

    .line 845
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 846
    :try_start_3
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 847
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    .line 848
    .local v1, "destroyed":Z
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    .line 850
    if-eqz v1, :cond_1a

    if-eqz p1, :cond_1a

    .line 852
    :try_start_e
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    .line 855
    goto :goto_1a

    .line 853
    :catch_12
    move-exception v0

    .line 854
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void

    .line 848
    .end local v1    # "destroyed":Z
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public greylist-max-o start()V
    .registers 5

    .line 861
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    if-nez v1, :cond_15

    .line 864
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 867
    :cond_15
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public greylist-max-o write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .registers 11
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/print/IWriteResultCallback;
    .param p4, "sequence"    # I

    .line 908
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 910
    .local v0, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_4
    invoke-interface {p3, v0, p4}, Landroid/print/IWriteResultCallback;->onWriteStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_3b

    .line 915
    nop

    .line 917
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 919
    :try_start_b
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 920
    monitor-exit v1

    return-void

    .line 923
    :cond_13
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 926
    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 927
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 928
    iput-object p1, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 929
    iput-object p2, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 930
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 931
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;

    invoke-direct {v4, p0, p3, p2, p4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 933
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 934
    .end local v2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v1

    .line 935
    return-void

    .line 934
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_38

    throw v2

    .line 911
    :catch_3b
    move-exception v1

    .line 913
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error notifying for write start"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    return-void
.end method
