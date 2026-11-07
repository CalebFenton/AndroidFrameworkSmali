.class public Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashSet;

    const-string v9, "android.service.notification.redact_sensitive_notifications_from_untrusted_listeners"

    const-string v10, ""

    const-string v1, "android.service.notification.callstyle_callback_api"

    const-string v2, "android.service.notification.notification_classification"

    const-string v3, "android.service.notification.notification_conversation_channel_management"

    const-string v4, "android.service.notification.notification_force_grouping"

    const-string v5, "android.service.notification.notification_regroup_on_classification"

    const-string v6, "android.service.notification.notification_silent_flag"

    const-string v7, "android.service.notification.ranking_update_ashmem"

    const-string v8, "android.service.notification.redact_sensitive_notifications_big_text_style"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist callstyleCallbackApi()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.service.notification.callstyle_callback_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    const-string v7, "android.service.notification.redact_sensitive_notifications_big_text_style"

    const-string v8, "android.service.notification.redact_sensitive_notifications_from_untrusted_listeners"

    const-string v0, "android.service.notification.callstyle_callback_api"

    const-string v1, "android.service.notification.notification_classification"

    const-string v2, "android.service.notification.notification_conversation_channel_management"

    const-string v3, "android.service.notification.notification_force_grouping"

    const-string v4, "android.service.notification.notification_regroup_on_classification"

    const-string v5, "android.service.notification.notification_silent_flag"

    const-string v6, "android.service.notification.ranking_update_ashmem"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 96
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notificationClassification()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.service.notification.notification_classification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationConversationChannelManagement()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.service.notification.notification_conversation_channel_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationForceGrouping()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.service.notification.notification_force_grouping"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationRegroupOnClassification()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.service.notification.notification_regroup_on_classification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist notificationSilentFlag()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.service.notification.notification_silent_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rankingUpdateAshmem()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.service.notification.ranking_update_ashmem"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist redactSensitiveNotificationsBigTextStyle()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.service.notification.redact_sensitive_notifications_big_text_style"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist redactSensitiveNotificationsFromUntrustedListeners()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.service.notification.redact_sensitive_notifications_from_untrusted_listeners"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
