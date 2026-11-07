.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist callstyleCallbackApi()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notificationClassification()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notificationConversationChannelManagement()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notificationForceGrouping()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist notificationRegroupOnClassification()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notificationSilentFlag()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rankingUpdateAshmem()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist redactSensitiveNotificationsBigTextStyle()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist redactSensitiveNotificationsFromUntrustedListeners()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method
