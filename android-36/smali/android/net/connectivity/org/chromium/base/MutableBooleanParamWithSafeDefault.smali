.class public Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;
.super Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;
.source "MutableBooleanParamWithSafeDefault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "featureMap"    # Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "paramName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Z

    .line 11
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist getValue()Z
    .registers 2

    .line 16
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;->getValueBoxed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected blacklist readValueFromFeatureMap()Ljava/lang/Boolean;
    .registers 5

    .line 21
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;->mFeatureMap:Landroid/net/connectivity/org/chromium/base/FeatureMap;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;->mFeatureName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;->mParamName:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;->mDefaultValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->getFieldTrialParamByFeatureAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist readValueFromFeatureMap()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/MutableBooleanParamWithSafeDefault;->readValueFromFeatureMap()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
