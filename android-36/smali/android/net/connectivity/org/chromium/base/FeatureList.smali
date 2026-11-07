.class public Landroid/net/connectivity/org/chromium/base/FeatureList;
.super Ljava/lang/Object;
.source "FeatureList.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;,
        Landroid/net/connectivity/org/chromium/base/FeatureList$Natives;
    }
.end annotation


# static fields
.field private static blacklist sDisableNativeForTesting:Z

.field private static blacklist sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisableNativeForTesting()Z
    .registers 1

    .line 200
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    return v0
.end method

.method public static blacklist getTestValueForFeature(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "featureName"    # Ljava/lang/String;

    .line 300
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 301
    .local v0, "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    if-eqz v0, :cond_b

    .line 302
    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->getFeatureFlagOverride(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 303
    .local v1, "override":Ljava/lang/Boolean;
    if-eqz v1, :cond_b

    .line 304
    return-object v1

    .line 307
    .end local v1    # "override":Ljava/lang/Boolean;
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getTestValueForFeatureStrict(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .param p0, "featureName"    # Ljava/lang/String;

    .line 278
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 279
    .local v0, "testValue":Ljava/lang/Boolean;
    if-nez v0, :cond_2a

    sget-boolean v1, Landroid/net/connectivity/org/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    if-nez v1, :cond_b

    goto :goto_2a

    .line 280
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No test value configured for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and native is not available to provide a default value. Use @EnableFeatures or @DisableFeatures to provide test values for the flag."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public static blacklist getTestValueForFieldTrialParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "paramName"    # Ljava/lang/String;

    .line 321
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 322
    .local v0, "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    if-eqz v0, :cond_9

    .line 323
    invoke-virtual {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->getFieldTrialParamOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 325
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getTestValuesForAllFieldTrialParamsForFeature(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p0, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 341
    .local v0, "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    if-eqz v0, :cond_9

    .line 342
    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->getAllFieldTrialParamOverridesForFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 344
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist hasTestFeature(Ljava/lang/String;)Z
    .registers 3
    .param p0, "featureName"    # Ljava/lang/String;

    .line 254
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 255
    .local v0, "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->-$$Nest$fgetmFeatureFlags(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static blacklist hasTestParam(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "paramName"    # Ljava/lang/String;

    .line 264
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 265
    .local v0, "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    if-eqz v0, :cond_20

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->-$$Nest$fgetmFieldTrialParams(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)Ljava/util/Map;

    move-result-object v1

    .line 266
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->-$$Nest$fgetmFieldTrialParams(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)Ljava/util/Map;

    move-result-object v1

    .line 267
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 265
    :goto_21
    return v1
.end method

.method public static blacklist isInitialized()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    if-eqz v0, :cond_8

    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    if-nez v0, :cond_e

    :cond_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist isNativeInitialized()Z
    .registers 1

    .line 179
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 188
    :cond_c
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureListJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureList$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$Natives;->isInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisableNativeForTesting$0(Z)V
    .registers 1
    .param p0, "prev"    # Z

    .line 195
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    return-void
.end method

.method static synthetic blacklist lambda$setTestValues$1(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V
    .registers 1
    .param p0, "prevValues"    # Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 223
    sput-object p0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    return-void
.end method

.method public static blacklist mergeTestValues(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;Z)V
    .registers 5
    .param p0, "testValuesToMerge"    # Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    .param p1, "replace"    # Z

    .line 238
    new-instance v0, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;-><init>()V

    .line 239
    .local v0, "newTestValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    sget-object v1, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    if-eqz v1, :cond_f

    .line 240
    sget-object v1, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->merge(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;Z)V

    .line 242
    :cond_f
    invoke-virtual {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->merge(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;Z)V

    .line 243
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->setTestValues(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V

    .line 244
    return-void
.end method

.method public static blacklist setDisableNativeForTesting(Z)V
    .registers 3
    .param p0, "value"    # Z

    .line 193
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    .line 194
    .local v0, "prev":Z
    sput-boolean p0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sDisableNativeForTesting:Z

    .line 195
    new-instance v1, Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public static blacklist setTestFeatures(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p0, "testFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez p0, :cond_7

    .line 207
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->setTestValues(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V

    goto :goto_12

    .line 209
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;-><init>()V

    .line 210
    .local v0, "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;->setFeatureFlagsOverride(Ljava/util/Map;)V

    .line 211
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->setTestValues(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V

    .line 213
    .end local v0    # "testValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    :goto_12
    return-void
.end method

.method public static blacklist setTestValues(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V
    .registers 3
    .param p0, "testValues"    # Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 221
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 222
    .local v0, "prevValues":Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;
    sput-object p0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 223
    new-instance v1, Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/base/FeatureList$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public static blacklist setTestValuesNoResetForTesting(Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;)V
    .registers 1
    .param p0, "testValues"    # Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 228
    sput-object p0, Landroid/net/connectivity/org/chromium/base/FeatureList;->sTestFeatures:Landroid/net/connectivity/org/chromium/base/FeatureList$TestValues;

    .line 229
    return-void
.end method
