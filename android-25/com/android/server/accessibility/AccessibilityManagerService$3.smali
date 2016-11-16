.class Lcom/android/server/accessibility/AccessibilityManagerService$3;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field final synthetic val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field final synthetic val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "val$state"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p3, "val$service"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    .line 1402
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@4
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 1406
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@5
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@7
    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@9
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 1407
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@e
    .line 1408
    const-string/jumbo v4, "touch_exploration_granted_accessibility_services"

    #@11
    .line 1409
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@13
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@15
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@17
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@19
    .line 1407
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap19(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    #@1c
    .line 1411
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1e
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@20
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@22
    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@25
    move-result-object v2

    #@26
    .line 1412
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iput-boolean v7, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@28
    .line 1413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 1415
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2e
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@35
    move-result-object v3

    #@36
    .line 1416
    const-string/jumbo v4, "touch_exploration_enabled"

    #@39
    .line 1417
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@3b
    iget v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@3d
    .line 1416
    const/4 v6, 0x1

    #@3e
    .line 1415
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@41
    .line 1419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1421
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@46
    invoke-static {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@49
    .line 1404
    return-void

    #@4a
    .line 1418
    :catchall_0
    move-exception v3

    #@4b
    .line 1419
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4e
    .line 1418
    throw v3
.end method
