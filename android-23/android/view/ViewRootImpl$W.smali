.class Landroid/view/ViewRootImpl$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private final mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 6679
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    #@3
    .line 6680
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@a
    .line 6681
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    #@c
    iput-object v0, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    #@e
    .line 6679
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .locals 4
    .param p0, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6729
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 6730
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v2

    #@8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@b
    move-result v3

    #@c
    .line 6729
    invoke-interface {v1, p0, v2, v3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 6731
    :catch_0
    move-exception v0

    #@12
    .line 6732
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    #@13
    return v1
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6770
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6771
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6772
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchCloseSystemDialogs(Ljava/lang/String;)V

    #@d
    .line 6769
    :cond_0
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 6705
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6706
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6707
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchAppVisibility(Z)V

    #@d
    .line 6704
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/DragEvent;

    #@0
    .prologue
    .line 6801
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6802
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6803
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchDragEvent(Landroid/view/DragEvent;)V

    #@d
    .line 6800
    :cond_0
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    #@0
    .prologue
    .line 6713
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6714
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6715
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchGetNewSurface()V

    #@d
    .line 6712
    :cond_0
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    #@0
    .prologue
    .line 6810
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6811
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6812
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dispatchSystemUiVisibilityChanged(IIII)V

    #@d
    .line 6809
    :cond_0
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    #@0
    .prologue
    .line 6790
    if-eqz p6, :cond_0

    #@2
    .line 6792
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    #@4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 6789
    :cond_0
    :goto_0
    return-void

    #@d
    .line 6793
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "sync"    # Z

    #@0
    .prologue
    .line 6779
    if-eqz p5, :cond_0

    #@2
    .line 6781
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mWindowSession:Landroid/view/IWindowSession;

    #@4
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 6778
    :cond_0
    :goto_0
    return-void

    #@c
    .line 6782
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchWindowShown()V
    .locals 2

    #@0
    .prologue
    .line 6835
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6836
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6837
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowShown()V

    #@d
    .line 6834
    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    #@0
    .prologue
    .line 6738
    iget-object v5, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Landroid/view/ViewRootImpl;

    #@8
    .line 6739
    .local v4, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_1

    #@a
    .line 6740
    iget-object v3, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    .line 6741
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    #@e
    .line 6742
    const-string/jumbo v5, "android.permission.DUMP"

    #@11
    invoke-static {v5}, Landroid/view/ViewRootImpl$W;->checkCallingPermission(Ljava/lang/String;)I

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 6744
    new-instance v5, Ljava/lang/SecurityException;

    #@19
    new-instance v6, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v7, "Insufficient permissions to invoke executeCommand() from pid="

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    .line 6745
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@28
    move-result v7

    #@29
    .line 6744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    .line 6746
    const-string/jumbo v7, ", uid="

    #@30
    .line 6744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    .line 6746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@37
    move-result v7

    #@38
    .line 6744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@43
    throw v5

    #@44
    .line 6749
    :cond_0
    const/4 v0, 0x0

    #@45
    .line 6751
    .local v0, "clientStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@47
    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 6752
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .local v1, "clientStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, p1, p2, v1}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4d
    .line 6756
    if-eqz v1, :cond_1

    #@4f
    .line 6758
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@52
    .line 6737
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    #@53
    .line 6759
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    .restart local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v2

    #@54
    .line 6760
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    #@57
    goto :goto_0

    #@58
    .line 6753
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    #@59
    .line 6754
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    .line 6756
    if-eqz v0, :cond_1

    #@5e
    .line 6758
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@61
    goto :goto_0

    #@62
    .line 6759
    :catch_2
    move-exception v2

    #@63
    .line 6760
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    #@66
    goto :goto_0

    #@67
    .line 6755
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@68
    .line 6756
    :goto_2
    if-eqz v0, :cond_2

    #@6a
    .line 6758
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@6d
    .line 6755
    :cond_2
    :goto_3
    throw v5

    #@6e
    .line 6759
    :catch_3
    move-exception v2

    #@6f
    .line 6760
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    #@72
    goto :goto_3

    #@73
    .line 6755
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    #@74
    move-object v0, v1

    #@75
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .local v0, "clientStream":Ljava/io/OutputStream;
    goto :goto_2

    #@76
    .line 6753
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v1    # "clientStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    #@77
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    #@78
    .end local v1    # "clientStream":Ljava/io/OutputStream;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public moved(II)V
    .locals 2
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    #@0
    .prologue
    .line 6697
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6698
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6699
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMoved(II)V

    #@d
    .line 6696
    :cond_0
    return-void
.end method

.method public onAnimationStarted(I)V
    .locals 2
    .param p1, "remainingFrameCount"    # I

    #@0
    .prologue
    .line 6819
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6820
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6821
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchWindowAnimationStarted(I)V

    #@d
    .line 6818
    :cond_0
    return-void
.end method

.method public onAnimationStopped()V
    .locals 2

    #@0
    .prologue
    .line 6827
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6828
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6829
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchWindowAnimationStopped()V

    #@d
    .line 6826
    :cond_0
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 9
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 6688
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6689
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    move-object v6, p6

    #@10
    move/from16 v7, p7

    #@12
    move-object/from16 v8, p8

    #@14
    .line 6690
    invoke-virtual/range {v0 .. v8}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    #@17
    .line 6687
    :cond_0
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    #@0
    .prologue
    .line 6721
    iget-object v1, p0, Landroid/view/ViewRootImpl$W;->mViewAncestor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/ViewRootImpl;

    #@8
    .line 6722
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@a
    .line 6723
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    #@d
    .line 6720
    :cond_0
    return-void
.end method
