.class public final Landroid/appwidget/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/appwidget/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist drawDataParcel()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist engagementMetrics()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist generatedPreviews()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist notKeyguardCategory()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist remoteAdapterConversion()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist remoteDocumentSupport()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist remoteViewsProto()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeAppWidgetServiceIoFromCriticalPath()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist securityPolicyInteractAcrossUsers()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist supportResumeRestoreAfterReboot()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist throttleWidgetUpdates()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist useSmallerAppWidgetSystemRadius()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method
