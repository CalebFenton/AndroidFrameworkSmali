.class final Landroid/view/AccessibilityEmbeddedConnection;
.super Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;
.source "AccessibilityEmbeddedConnection.java"


# instance fields
.field private final blacklist mTmpWindowMatrix:Landroid/graphics/Matrix;

.field private final blacklist mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 38
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mTmpWindowMatrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 6
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "hostViewId"    # I

    .line 44
    iget-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 45
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_26

    .line 46
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 48
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v2, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    .line 49
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p2, v2, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    .line 50
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 51
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {v1, p1, v2}, Landroid/view/accessibility/AccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 53
    :cond_23
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    return-object v2

    .line 55
    .end local v1    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist disassociateEmbeddedHierarchy()V
    .registers 5

    .line 60
    iget-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 61
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_25

    .line 62
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 64
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    .line 65
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    .line 66
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 67
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    .line 70
    .end local v1    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_25
    return-void
.end method

.method public blacklist setWindowMatrix([F)V
    .registers 5
    .param p1, "matrixValues"    # [F

    .line 74
    iget-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 75
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_27

    .line 76
    iget-object v1, p0, Landroid/view/AccessibilityEmbeddedConnection;->mTmpWindowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 77
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez v1, :cond_1e

    .line 78
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 80
    :cond_1e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/AccessibilityEmbeddedConnection;->mTmpWindowMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 82
    :cond_27
    return-void
.end method
