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
    .line 1326
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
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1330
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@5
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@7
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@9
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c
    .line 1331
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@e
    .line 1332
    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    #@11
    .line 1333
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@13
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    #@15
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@17
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    #@19
    .line 1331
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    #@1c
    .line 1335
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@20
    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@22
    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@25
    move-result-object v0

    #@26
    .line 1336
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iput-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    #@28
    .line 1337
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2a
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@31
    move-result-object v1

    #@32
    .line 1338
    const-string/jumbo v2, "touch_exploration_enabled"

    #@35
    .line 1339
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->val$service:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@37
    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    #@39
    .line 1337
    invoke-static {v1, v2, v5, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@3c
    .line 1340
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@3e
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    #@41
    .line 1328
    return-void
.end method
