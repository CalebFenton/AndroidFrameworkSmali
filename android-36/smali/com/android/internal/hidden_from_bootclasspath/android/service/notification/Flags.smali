.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags; = null

.field public static final blacklist FLAG_CALLSTYLE_CALLBACK_API:Ljava/lang/String; = "android.service.notification.callstyle_callback_api"

.field public static final blacklist FLAG_NOTIFICATION_CLASSIFICATION:Ljava/lang/String; = "android.service.notification.notification_classification"

.field public static final blacklist FLAG_NOTIFICATION_CONVERSATION_CHANNEL_MANAGEMENT:Ljava/lang/String; = "android.service.notification.notification_conversation_channel_management"

.field public static final blacklist FLAG_NOTIFICATION_FORCE_GROUPING:Ljava/lang/String; = "android.service.notification.notification_force_grouping"

.field public static final blacklist FLAG_NOTIFICATION_REGROUP_ON_CLASSIFICATION:Ljava/lang/String; = "android.service.notification.notification_regroup_on_classification"

.field public static final blacklist FLAG_NOTIFICATION_SILENT_FLAG:Ljava/lang/String; = "android.service.notification.notification_silent_flag"

.field public static final blacklist FLAG_RANKING_UPDATE_ASHMEM:Ljava/lang/String; = "android.service.notification.ranking_update_ashmem"

.field public static final blacklist FLAG_REDACT_SENSITIVE_NOTIFICATIONS_BIG_TEXT_STYLE:Ljava/lang/String; = "android.service.notification.redact_sensitive_notifications_big_text_style"

.field public static final blacklist FLAG_REDACT_SENSITIVE_NOTIFICATIONS_FROM_UNTRUSTED_LISTENERS:Ljava/lang/String; = "android.service.notification.redact_sensitive_notifications_from_untrusted_listeners"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist callstyleCallbackApi()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->callstyleCallbackApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationClassification()Z
    .registers 1

    .line 37
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->notificationClassification()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationConversationChannelManagement()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->notificationConversationChannelManagement()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationForceGrouping()Z
    .registers 1

    .line 51
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->notificationForceGrouping()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationRegroupOnClassification()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->notificationRegroupOnClassification()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationSilentFlag()Z
    .registers 1

    .line 65
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->notificationSilentFlag()Z

    move-result v0

    return v0
.end method

.method public static blacklist rankingUpdateAshmem()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->rankingUpdateAshmem()Z

    move-result v0

    return v0
.end method

.method public static blacklist redactSensitiveNotificationsBigTextStyle()Z
    .registers 1

    .line 79
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->redactSensitiveNotificationsBigTextStyle()Z

    move-result v0

    return v0
.end method

.method public static blacklist redactSensitiveNotificationsFromUntrustedListeners()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;->redactSensitiveNotificationsFromUntrustedListeners()Z

    move-result v0

    return v0
.end method
