.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSetupCompleteObserver"
.end annotation


# instance fields
.field private blacklist mIsRegistered:Z

.field private blacklist mUserId:I

.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 693
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 694
    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 695
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 696
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    .line 698
    :cond_13
    return-void
.end method

.method private blacklist isUserSetupComplete()Z
    .registers 5

    .line 701
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    move v3, v1

    :cond_18
    return v3
.end method

.method private blacklist registerObserver()V
    .registers 5

    .line 706
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-eqz v0, :cond_5

    .line 707
    return-void

    .line 709
    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 710
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 709
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 713
    return-void
.end method

.method private blacklist setEmptyShortcutTargetIfNeeded()V
    .registers 8

    .line 737
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mhasFeatureLeanback(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 739
    return-void

    .line 742
    :cond_9
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 744
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "shortcutTargets":Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 747
    return-void

    .line 750
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040228

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "defaultShortcutTarget":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v4, v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v5

    .line 753
    invoke-virtual {v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 754
    const/4 v6, -0x1

    invoke-virtual {v4, v6, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v4

    .line 756
    .local v4, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_46
    if-ltz v5, :cond_5c

    .line 757
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 758
    return-void

    .line 756
    :cond_59
    add-int/lit8 v5, v5, -0x1

    goto :goto_46

    .line 762
    .end local v5    # "i":I
    :cond_5c
    const-string v5, ""

    iget v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 764
    return-void
.end method

.method private blacklist unregisterObserver()V
    .registers 2

    .line 724
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 725
    return-void

    .line 727
    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 729
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 717
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 718
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    .line 719
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->setEmptyShortcutTargetIfNeeded()V

    .line 721
    :cond_c
    return-void
.end method

.method blacklist onUserSwitched(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 767
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    if-ne v0, p1, :cond_5

    .line 768
    return-void

    .line 770
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    .line 771
    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 772
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 773
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    .line 775
    :cond_13
    return-void
.end method
