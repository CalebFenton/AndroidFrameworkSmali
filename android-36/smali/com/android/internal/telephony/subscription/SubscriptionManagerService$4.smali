.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;
.super Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$Xc_i5bR5U5dr146DO8TT7jEx4h8(ILcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;)V
    .registers 3

    .line 608
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$u0d35Mcv8ZWtFLCQT0FpFdS9aic(Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;I)V
    .registers 2

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;->onSubscriptionChanged(I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/util/concurrent/Executor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$SubscriptionDatabaseManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onInitialized()V
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const-string v1, "Subscription database has been initialized."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlog(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 592
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 594
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->markSubscriptionsInactive(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public blacklist onSubscriptionChanged(I)V
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mupdateUserIdToAvailableSubs(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSubscriptionManagerServiceCallbacks(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 611
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionInfoChanged()V

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_2d

    .line 616
    invoke-virtual {v0}, Landroid/telephony/TelephonyRegistryManager;->notifySubscriptionInfoChanged()V

    .line 619
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$4;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmSubscriptionDatabaseManager(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    move-result-object p0

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_44

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_44

    if-eqz v0, :cond_44

    .line 623
    invoke-virtual {v0}, Landroid/telephony/TelephonyRegistryManager;->notifyOpportunisticSubscriptionInfoChanged()V

    :cond_44
    return-void
.end method
