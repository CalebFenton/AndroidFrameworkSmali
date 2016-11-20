.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 7300
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    #@3
    .line 7301
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@a
    .line 7300
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 7309
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v14

    #@6
    check-cast v14, Landroid/view/ViewRootImpl;

    #@8
    .line 7310
    .local v14, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_0

    #@a
    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 7311
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    #@11
    move-result-object v2

    #@12
    move-wide/from16 v3, p1

    #@14
    move-object/from16 v5, p3

    #@16
    move/from16 v6, p4

    #@18
    move-object/from16 v7, p5

    #@1a
    move/from16 v8, p6

    #@1c
    move/from16 v9, p7

    #@1e
    move-wide/from16 v10, p8

    #@20
    move-object/from16 v12, p10

    #@22
    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@25
    .line 7308
    :goto_0
    return-void

    #@26
    .line 7318
    :cond_0
    const/4 v2, 0x0

    #@27
    :try_start_0
    move-object/from16 v0, p5

    #@29
    move/from16 v1, p4

    #@2b
    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 7319
    :catch_0
    move-exception v13

    #@30
    .local v13, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 17
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 7371
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@7
    move-result-object v15

    #@8
    check-cast v15, Landroid/view/ViewRootImpl;

    #@a
    .line 7372
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_0

    #@c
    iget-object v3, v15, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 7373
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    #@13
    move-result-object v3

    #@14
    move-wide/from16 v4, p1

    #@16
    move-object/from16 v6, p3

    #@18
    move-object/from16 v7, p4

    #@1a
    move/from16 v8, p5

    #@1c
    move-object/from16 v9, p6

    #@1e
    move/from16 v10, p7

    #@20
    move/from16 v11, p8

    #@22
    move-wide/from16 v12, p9

    #@24
    move-object/from16 v14, p11

    #@26
    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@29
    .line 7370
    :goto_0
    return-void

    #@2a
    .line 7380
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_0
    move-object/from16 v0, p6

    #@2d
    move/from16 v1, p5

    #@2f
    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    goto :goto_0

    #@33
    .line 7381
    :catch_0
    move-exception v2

    #@34
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 17
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 7350
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@7
    move-result-object v15

    #@8
    check-cast v15, Landroid/view/ViewRootImpl;

    #@a
    .line 7351
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_0

    #@c
    iget-object v3, v15, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 7352
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    #@13
    move-result-object v3

    #@14
    move-wide/from16 v4, p1

    #@16
    move-object/from16 v6, p3

    #@18
    move-object/from16 v7, p4

    #@1a
    move/from16 v8, p5

    #@1c
    move-object/from16 v9, p6

    #@1e
    move/from16 v10, p7

    #@20
    move/from16 v11, p8

    #@22
    move-wide/from16 v12, p9

    #@24
    move-object/from16 v14, p11

    #@26
    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@29
    .line 7349
    :goto_0
    return-void

    #@2a
    .line 7359
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_0
    move-object/from16 v0, p6

    #@2d
    move/from16 v1, p5

    #@2f
    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    goto :goto_0

    #@33
    .line 7360
    :catch_0
    move-exception v2

    #@34
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 17
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 7391
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@7
    move-result-object v15

    #@8
    check-cast v15, Landroid/view/ViewRootImpl;

    #@a
    .line 7392
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_0

    #@c
    iget-object v3, v15, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 7393
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    #@13
    move-result-object v3

    #@14
    move-wide/from16 v4, p1

    #@16
    move/from16 v6, p3

    #@18
    move-object/from16 v7, p4

    #@1a
    move/from16 v8, p5

    #@1c
    move-object/from16 v9, p6

    #@1e
    move/from16 v10, p7

    #@20
    move/from16 v11, p8

    #@22
    move-wide/from16 v12, p9

    #@24
    move-object/from16 v14, p11

    #@26
    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@29
    .line 7390
    :goto_0
    return-void

    #@2a
    .line 7400
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_0
    move-object/from16 v0, p6

    #@2d
    move/from16 v1, p5

    #@2f
    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    goto :goto_0

    #@33
    .line 7401
    :catch_0
    move-exception v2

    #@34
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 17
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 7411
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@7
    move-result-object v15

    #@8
    check-cast v15, Landroid/view/ViewRootImpl;

    #@a
    .line 7412
    .local v15, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_0

    #@c
    iget-object v3, v15, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 7413
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    #@13
    move-result-object v3

    #@14
    move-wide/from16 v4, p1

    #@16
    move/from16 v6, p3

    #@18
    move-object/from16 v7, p4

    #@1a
    move/from16 v8, p5

    #@1c
    move-object/from16 v9, p6

    #@1e
    move/from16 v10, p7

    #@20
    move/from16 v11, p8

    #@22
    move-wide/from16 v12, p9

    #@24
    move-object/from16 v14, p11

    #@26
    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    #@29
    .line 7410
    :goto_0
    return-void

    #@2a
    .line 7420
    :cond_0
    const/4 v3, 0x0

    #@2b
    :try_start_0
    move-object/from16 v0, p6

    #@2d
    move/from16 v1, p5

    #@2f
    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    goto :goto_0

    #@33
    .line 7421
    :catch_0
    move-exception v2

    #@34
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    #@0
    .prologue
    .line 7330
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v14

    #@6
    check-cast v14, Landroid/view/ViewRootImpl;

    #@8
    .line 7331
    .local v14, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_0

    #@a
    iget-object v3, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 7332
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    #@11
    move-result-object v3

    #@12
    move-wide/from16 v4, p1

    #@14
    move/from16 v6, p3

    #@16
    move-object/from16 v7, p4

    #@18
    move/from16 v8, p5

    #@1a
    move-object/from16 v9, p6

    #@1c
    move/from16 v10, p7

    #@1e
    move/from16 v11, p8

    #@20
    move-wide/from16 v12, p9

    #@22
    invoke-virtual/range {v3 .. v13}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    #@25
    .line 7329
    :goto_0
    return-void

    #@26
    .line 7338
    :cond_0
    const/4 v3, 0x0

    #@27
    :try_start_0
    move-object/from16 v0, p6

    #@29
    move/from16 v1, p5

    #@2b
    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 7339
    :catch_0
    move-exception v2

    #@30
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
