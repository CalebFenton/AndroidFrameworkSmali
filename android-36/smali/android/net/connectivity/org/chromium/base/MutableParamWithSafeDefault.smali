.class public abstract Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;
.super Landroid/net/connectivity/org/chromium/base/FeatureParam;
.source "MutableParamWithSafeDefault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/connectivity/org/chromium/base/FeatureParam<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "featureMap"    # Landroid/net/connectivity/org/chromium/base/FeatureMap;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/FeatureMap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;, "Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/base/FeatureParam;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected blacklist getValueBoxed()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;, "Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Object;

    return-object v0

    .line 47
    :cond_7
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mFeatureName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mParamName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/FeatureList;->hasTestParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 48
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->readValueFromFeatureMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :cond_16
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 52
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->readValueFromFeatureMap()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mInMemoryCachedValue:Ljava/lang/Object;

    return-object v0

    .line 56
    :cond_25
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/MutableParamWithSafeDefault;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract blacklist readValueFromFeatureMap()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
