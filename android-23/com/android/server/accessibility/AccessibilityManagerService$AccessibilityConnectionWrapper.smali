.class Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityConnectionWrapper"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mUserId:I

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "windowId"    # I
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 1722
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1724
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    #@7
    .line 1725
    iput p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mUserId:I

    #@9
    .line 1726
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@b
    .line 1723
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    #@3
    .line 1740
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    monitor-enter v1

    #@a
    .line 1741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@c
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    #@e
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mUserId:I

    #@10
    invoke-static {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap20(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v1

    #@14
    .line 1738
    return-void

    #@15
    .line 1740
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1730
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@2
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@a
    .line 1729
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    #@0
    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    #@2
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 1733
    return-void
.end method
