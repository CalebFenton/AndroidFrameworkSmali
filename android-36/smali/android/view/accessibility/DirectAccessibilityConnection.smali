.class Landroid/view/accessibility/DirectAccessibilityConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Default;
.source "DirectAccessibilityConnection.java"


# static fields
.field private static final blacklist FETCH_FLAGS:I = 0x180

.field private static final blacklist INTERACTIVE_REGION:Landroid/graphics/Region;


# instance fields
.field private final blacklist mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final blacklist mMyProcessId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/accessibility/IAccessibilityInteractionConnection;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 4
    .param p1, "accessibilityInteractionConnection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p2, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 64
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Default;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 66
    iput-object p2, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "threadId"    # J
    .param p9, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 76
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    .line 77
    .local v1, "spec":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v6, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v10, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v13, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v9, 0x180

    move-wide/from16 v4, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v11, p7

    move-object/from16 v15, p9

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 81
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 25
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 90
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    .line 91
    .local v1, "spec":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 94
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 25
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewId"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    .line 104
    .local v1, "spec":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 107
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 25
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 115
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    .line 116
    .local v1, "spec":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 119
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 25
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 127
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    move-result-object v1

    .line 128
    .local v1, "spec":Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    iget-object v3, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-object v7, Landroid/view/accessibility/DirectAccessibilityConnection;->INTERACTIVE_REGION:Landroid/graphics/Region;

    iget v11, v0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    iget-object v14, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v15, v1, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    const/16 v10, 0x180

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    invoke-interface/range {v3 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 131
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 21
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mAccessibilityInteractionConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    const/16 v7, 0x180

    iget v8, p0, Landroid/view/accessibility/DirectAccessibilityConnection;->mMyProcessId:I

    move-wide v1, p2

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v9, p8

    invoke-interface/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method
