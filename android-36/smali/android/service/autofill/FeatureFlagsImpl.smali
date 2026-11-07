.class public final Landroid/service/autofill/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/service/autofill/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist addLastFocusedIdToClientState()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist addLastFocusedIdToFillEventHistory()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist addSessionIdToClientState()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist autofillCredmanDevIntegration()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autofillCredmanIntegration()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autofillCredmanIntegrationPhase2()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist autofillSessionDestroyed()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autofillWMetrics()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fillDialogImprovements()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fillDialogImprovementsImpl()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fillFieldsFromCurrentSessionOnly()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fixGetAutofillComponent()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist highlightAutofillSingleField()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist improveFillDialogAconfig()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist includeInvisibleViewGroupInAssistStructure()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist metricsFixes()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist multipleFillHistory()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist relayout()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist relayoutFix()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist remoteFillServiceUseWeakReference()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist test()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public greylist testFlag()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method
