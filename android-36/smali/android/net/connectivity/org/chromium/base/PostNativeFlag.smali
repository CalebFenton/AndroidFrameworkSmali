.class public Landroid/net/connectivity/org/chromium/base/PostNativeFlag;
.super Landroid/net/connectivity/org/chromium/base/Flag;
.source "PostNativeFlag.java"


# instance fields
.field private blacklist mInMemoryCachedValue:Ljava/lang/Boolean;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;)V
    .registers 3
    .param p1, "featureMap"    # Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .param p2, "featureName"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/Flag;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected blacklist clearInMemoryCachedValueForTesting()V
    .registers 2

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mInMemoryCachedValue:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 3

    .line 19
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mInMemoryCachedValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mInMemoryCachedValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 21
    :cond_b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mFeatureName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->hasTestFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 22
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 25
    :cond_1c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mInMemoryCachedValue:Ljava/lang/Boolean;

    .line 26
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/PostNativeFlag;->mInMemoryCachedValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
