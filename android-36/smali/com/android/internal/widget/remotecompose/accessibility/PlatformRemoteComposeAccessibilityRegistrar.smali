.class public Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeAccessibilityRegistrar;
.super Ljava/lang/Object;
.source "PlatformRemoteComposeAccessibilityRegistrar.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearAccessibilityDelegate(Landroid/view/View;)V
    .registers 3
    .param p1, "remoteComposePlayer"    # Landroid/view/View;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 47
    return-void
.end method

.method public blacklist forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;
    .registers 6
    .param p1, "player"    # Landroid/view/View;
    .param p2, "coreDocument"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 33
    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;

    .line 36
    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;-><init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    new-instance v2, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;

    invoke-direct {v2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;-><init>(Landroid/view/View;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;-><init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;)V

    .line 33
    return-object v0
.end method

.method public blacklist setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 4
    .param p1, "remoteComposePlayer"    # Landroid/view/View;
    .param p2, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 41
    nop

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeAccessibilityRegistrar;->forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 43
    return-void
.end method
