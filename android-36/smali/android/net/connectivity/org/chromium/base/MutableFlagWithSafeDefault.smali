.class public Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;
.super Landroid/net/connectivity/org/chromium/base/Flag;
.source "MutableFlagWithSafeDefault.java"


# instance fields
.field private final blacklist mDefaultValue:Z

.field private blacklist mInMemoryCachedValue:Ljava/lang/Boolean;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "featureMap"    # Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/Flag;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;)V

    .line 23
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mDefaultValue:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected blacklist clearInMemoryCachedValueForTesting()V
    .registers 2

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Boolean;

    .line 57
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 41
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 42
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->hasTestFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 43
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 46
    :cond_1c
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 47
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Boolean;

    .line 48
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 51
    :cond_37
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mDefaultValue:Z

    return v0
.end method

.method public blacklist newBooleanParam(Ljava/lang/String;Z)Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 29
    new-instance v0, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public blacklist newIntParam(Ljava/lang/String;I)Landroid/net/connectivity/org/chromium/base/MutableIntParamWithSafeDefault;
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 35
    new-instance v0, Landroid/net/connectivity/org/chromium/base/MutableIntParamWithSafeDefault;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;->mFeatureName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/net/connectivity/org/chromium/base/MutableIntParamWithSafeDefault;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
