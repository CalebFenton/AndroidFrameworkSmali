.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private blacklist mIsFromTransactionItem:Z

.field private final greylist-max-o mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    .line 11719
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 11720
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 11721
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    .line 11722
    return-void
.end method

.method private static greylist-max-o checkCallingPermission(Ljava/lang/String;)I
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;

    .line 11867
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 11868
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 11867
    invoke-interface {v0, p0, v1, v2}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 11869
    :catch_11
    move-exception v0

    .line 11870
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method static synthetic blacklist lambda$dumpWindow$0(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    .line 11976
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 11978
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 11979
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 11980
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 11981
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_22

    .line 11983
    .end local v1    # "pw":Ljava/io/PrintWriter;
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 11984
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 11985
    nop

    .line 11986
    return-void

    .line 11983
    :catchall_22
    move-exception v1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 11984
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 11985
    throw v1
.end method


# virtual methods
.method public greylist-max-o closeSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 11908
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11909
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11910
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    .line 11912
    :cond_d
    return-void
.end method

.method public greylist-max-o dispatchAppVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 11851
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11852
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11853
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    .line 11855
    :cond_d
    return-void
.end method

.method public greylist-max-o dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 11939
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11940
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11941
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 11943
    :cond_d
    return-void
.end method

.method public greylist-max-o dispatchGetNewSurface()V
    .registers 2

    .line 11859
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11860
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11861
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    .line 11863
    :cond_d
    return-void
.end method

.method public greylist-max-o dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 11928
    if-eqz p6, :cond_e

    .line 11930
    :try_start_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 11932
    goto :goto_e

    .line 11931
    :catch_d
    move-exception v0

    .line 11934
    :cond_e
    :goto_e
    return-void
.end method

.method public blacklist dispatchWallpaperOffsets(FFFFFZ)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "zoom"    # F
    .param p6, "sync"    # Z

    .line 11917
    if-eqz p6, :cond_d

    .line 11919
    :try_start_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 11921
    goto :goto_d

    .line 11920
    :catch_c
    move-exception v0

    .line 11923
    :cond_d
    :goto_d
    return-void
.end method

.method public greylist-max-o dispatchWindowShown()V
    .registers 2

    .line 11947
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11948
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11949
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowShown()V

    .line 11951
    :cond_d
    return-void
.end method

.method public blacklist dumpWindow(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 11971
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11972
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_b

    .line 11973
    return-void

    .line 11975
    :cond_b
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v2, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 11987
    return-void
.end method

.method public greylist-max-o executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .line 11876
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11877
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_6c

    .line 11878
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 11879
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_6c

    .line 11880
    const-string v2, "android.permission.DUMP"

    invoke-static {v2}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_41

    .line 11887
    const/4 v2, 0x0

    .line 11889
    .local v2, "clientStream":Ljava/io/OutputStream;
    :try_start_17
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, v3

    .line 11890
    invoke-static {v1, p1, p2, v2}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_27
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 11894
    nop

    .line 11896
    :try_start_21
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_31

    goto :goto_30

    .line 11894
    :catchall_25
    move-exception v3

    goto :goto_36

    .line 11891
    :catch_27
    move-exception v3

    .line 11892
    .local v3, "e":Ljava/io/IOException;
    :try_start_28
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_25

    .line 11894
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6c

    .line 11896
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 11899
    :goto_30
    goto :goto_6c

    .line 11897
    :catch_31
    move-exception v3

    .line 11898
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 11894
    :goto_36
    if-eqz v2, :cond_40

    .line 11896
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 11899
    goto :goto_40

    .line 11897
    :catch_3c
    move-exception v4

    .line 11898
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 11901
    .end local v4    # "e":Ljava/io/IOException;
    :cond_40
    :goto_40
    throw v3

    .line 11882
    .end local v2    # "clientStream":Ljava/io/OutputStream;
    :cond_41
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11883
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11904
    .end local v1    # "view":Landroid/view/View;
    :cond_6c
    :goto_6c
    return-void
.end method

.method public blacklist hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 11827
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11828
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_20

    .line 11829
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    .line 11830
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 11829
    const-string v3, "ViewRootImpl.W#hideInsets"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11833
    :cond_20
    const/16 v1, 0x1d

    if-eqz v0, :cond_2f

    .line 11834
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11835
    invoke-static {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->-$$Nest$mhideInsets(Landroid/view/ViewRootImpl;IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_36

    .line 11837
    :cond_2f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11839
    :goto_36
    return-void
.end method

.method public blacklist insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 10
    .param p1, "insetsState"    # Landroid/view/InsetsState;
    .param p2, "activeControls"    # Landroid/view/InsetsSourceControl$Array;

    .line 11773
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11774
    .local v0, "isFromInsetsControlChangeItem":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11775
    iget-object v2, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 11776
    .local v2, "viewAncestor":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_15

    .line 11777
    if-eqz v0, :cond_14

    .line 11778
    invoke-virtual {p2}, Landroid/view/InsetsSourceControl$Array;->release()V

    .line 11780
    :cond_14
    return-void

    .line 11782
    :cond_15
    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 11783
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v3

    .line 11785
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 11783
    const-string v5, "ViewRootImpl#dispatchInsetsControlChanged"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11790
    :cond_37
    if-eqz v0, :cond_4d

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 11791
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_4d

    .line 11792
    invoke-virtual {v2, p1, p2}, Landroid/view/ViewRootImpl;->handleInsetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 11793
    return-void

    .line 11796
    :cond_4d
    const/4 v3, 0x1

    if-nez v0, :cond_5c

    .line 11797
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_5c

    move v1, v3

    goto :goto_5d

    :cond_5c
    nop

    .line 11798
    .local v1, "needsCopy":Z
    :goto_5d
    if-eqz v1, :cond_6b

    .line 11799
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4, p1, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    move-object p1, v4

    .line 11800
    new-instance v4, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v4, p2, v3}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    move-object p2, v4

    .line 11804
    :cond_6b
    invoke-static {v2, p1, p2}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    .line 11805
    return-void
.end method

.method public greylist-max-o moved(II)V
    .registers 4
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 11843
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11844
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11845
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMoved(II)V

    .line 11847
    :cond_d
    return-void
.end method

.method public blacklist onExecutingWindowStateTransactionItem()V
    .registers 2

    .line 11726
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11727
    return-void
.end method

.method public greylist-max-o requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 4
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 11955
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11956
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11957
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 11959
    :cond_d
    return-void
.end method

.method public blacklist requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/IScrollCaptureResponseListener;

    .line 11963
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11964
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_d

    .line 11965
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 11967
    :cond_d
    return-void
.end method

.method public blacklist resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    .registers 35
    .param p1, "frames"    # Landroid/window/ClientWindowFrames;
    .param p2, "reportDraw"    # Z
    .param p3, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p4, "insetsState"    # Landroid/view/InsetsState;
    .param p5, "forceLayout"    # Z
    .param p6, "alwaysConsumeSystemBars"    # Z
    .param p7, "displayId"    # I
    .param p8, "syncSeqId"    # I
    .param p9, "dragResizing"    # Z
    .param p10, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 11734
    move-object/from16 v0, p0

    move-object/from16 v5, p4

    iget-boolean v12, v0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11735
    .local v12, "isFromResizeItem":Z
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl$W;->mIsFromTransactionItem:Z

    .line 11738
    iget-object v2, v0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 11739
    .local v13, "viewAncestor":Landroid/view/ViewRootImpl;
    if-nez v13, :cond_15

    .line 11740
    return-void

    .line 11742
    :cond_15
    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 11743
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v2

    .line 11744
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 11743
    const-string v4, "ViewRootImpl.W#resized"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11749
    :cond_37
    if-eqz v12, :cond_60

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 11750
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_60

    .line 11751
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object v1, v13

    .end local v13    # "viewAncestor":Landroid/view/ViewRootImpl;
    .local v1, "viewAncestor":Landroid/view/ViewRootImpl;
    invoke-static/range {v1 .. v11}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    .line 11754
    .end local v1    # "viewAncestor":Landroid/view/ViewRootImpl;
    .restart local v13    # "viewAncestor":Landroid/view/ViewRootImpl;
    return-void

    .line 11757
    :cond_60
    const/4 v2, 0x1

    if-nez v12, :cond_6f

    .line 11758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_6f

    move v1, v2

    goto :goto_70

    :cond_6f
    nop

    .line 11759
    .local v1, "needsCopy":Z
    :goto_70
    if-eqz v1, :cond_8b

    .line 11760
    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3, v5, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 11761
    .end local p4    # "insetsState":Landroid/view/InsetsState;
    .local v3, "insetsState":Landroid/view/InsetsState;
    new-instance v2, Landroid/window/ClientWindowFrames;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Landroid/window/ClientWindowFrames;-><init>(Landroid/window/ClientWindowFrames;)V

    .line 11762
    .end local p1    # "frames":Landroid/window/ClientWindowFrames;
    .local v2, "frames":Landroid/window/ClientWindowFrames;
    new-instance v4, Landroid/util/MergedConfiguration;

    move-object/from16 v6, p3

    invoke-direct {v4, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    move-object v14, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v4, "mergedConfiguration":Landroid/util/MergedConfiguration;
    goto :goto_94

    .line 11759
    .end local v2    # "frames":Landroid/window/ClientWindowFrames;
    .end local v3    # "insetsState":Landroid/view/InsetsState;
    .end local v4    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local p1    # "frames":Landroid/window/ClientWindowFrames;
    .restart local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local p4    # "insetsState":Landroid/view/InsetsState;
    :cond_8b
    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object v14, v4

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    .line 11764
    .end local p1    # "frames":Landroid/window/ClientWindowFrames;
    .end local p3    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local p4    # "insetsState":Landroid/view/InsetsState;
    .local v14, "frames":Landroid/window/ClientWindowFrames;
    .local v16, "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v17, "insetsState":Landroid/view/InsetsState;
    :goto_94
    move/from16 v15, p2

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v23, p10

    invoke-static/range {v13 .. v23}, Landroid/view/ViewRootImpl;->-$$Nest$mdispatchResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    .line 11767
    return-void
.end method

.method public blacklist showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9
    .param p1, "types"    # I
    .param p2, "fromIme"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 11810
    iget-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 11811
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz p2, :cond_20

    .line 11812
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    .line 11813
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 11812
    const-string v3, "ViewRootImpl.W#showInsets"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 11816
    :cond_20
    const/16 v1, 0x1c

    if-eqz v0, :cond_2f

    .line 11817
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11818
    invoke-static {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->-$$Nest$mshowInsets(Landroid/view/ViewRootImpl;IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_36

    .line 11820
    :cond_2f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 11822
    :goto_36
    return-void
.end method
