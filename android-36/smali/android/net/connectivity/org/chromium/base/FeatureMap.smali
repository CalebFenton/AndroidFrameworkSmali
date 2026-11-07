.class public abstract Landroid/net/connectivity/org/chromium/base/FeatureMap;
.super Ljava/lang/Object;
.source "FeatureMap.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mNativeMapPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist ensureNativeMapInit()V
    .registers 5

    .line 159
    nop

    .line 161
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 162
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->getNativeMap()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    .line 163
    nop

    .line 165
    :cond_10
    return-void
.end method


# virtual methods
.method public blacklist getFieldTrialParamByFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 66
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFieldTrialParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "testValue":Ljava/lang/String;
    if-eqz v0, :cond_7

    return-object v0

    .line 68
    :cond_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getDisableNativeForTesting()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, ""

    return-object v1

    .line 69
    :cond_10
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->ensureNativeMapInit()V

    .line 70
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    .line 71
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;->getFieldTrialParamByFeature(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    return-object v1
.end method

.method public blacklist getFieldTrialParamByFeatureAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 85
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFieldTrialParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "testValue":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 87
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getDisableNativeForTesting()Z

    move-result v1

    if-eqz v1, :cond_16

    return p3

    .line 88
    :cond_16
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->ensureNativeMapInit()V

    .line 89
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    .line 90
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "featureName":Ljava/lang/String;
    .end local p2    # "paramName":Ljava/lang/String;
    .end local p3    # "defaultValue":Z
    .local v5, "featureName":Ljava/lang/String;
    .local v6, "paramName":Ljava/lang/String;
    .local v7, "defaultValue":Z
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;->getFieldTrialParamByFeatureAsBoolean(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 89
    return p1
.end method

.method public blacklist getFieldTrialParamByFeatureAsDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .registers 14
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D

    .line 125
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFieldTrialParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "testValue":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 127
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getDisableNativeForTesting()Z

    move-result v1

    if-eqz v1, :cond_16

    return-wide p3

    .line 128
    :cond_16
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->ensureNativeMapInit()V

    .line 129
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    .line 130
    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    .end local p1    # "featureName":Ljava/lang/String;
    .end local p2    # "paramName":Ljava/lang/String;
    .end local p3    # "defaultValue":D
    .local v5, "featureName":Ljava/lang/String;
    .local v6, "paramName":Ljava/lang/String;
    .local v7, "defaultValue":D
    invoke-interface/range {v2 .. v8}, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;->getFieldTrialParamByFeatureAsDouble(JLjava/lang/String;Ljava/lang/String;D)D

    move-result-wide p1

    .line 129
    return-wide p1
.end method

.method public blacklist getFieldTrialParamByFeatureAsInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 105
    invoke-static {p1, p2}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFieldTrialParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "testValue":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 107
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getDisableNativeForTesting()Z

    move-result v1

    if-eqz v1, :cond_16

    return p3

    .line 108
    :cond_16
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->ensureNativeMapInit()V

    .line 109
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    .line 110
    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "featureName":Ljava/lang/String;
    .end local p2    # "paramName":Ljava/lang/String;
    .end local p3    # "defaultValue":I
    .local v5, "featureName":Ljava/lang/String;
    .local v6, "paramName":Ljava/lang/String;
    .local v7, "defaultValue":I
    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;->getFieldTrialParamByFeatureAsInt(JLjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 109
    return p1
.end method

.method public blacklist getFieldTrialParamsForFeature(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .param p1, "featureName"    # Ljava/lang/String;
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

    .line 136
    nop

    .line 137
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValuesForAllFieldTrialParamsForFeature(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 138
    .local v0, "testValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    return-object v0

    .line 139
    :cond_8
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getDisableNativeForTesting()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 141
    :cond_13
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->ensureNativeMapInit()V

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    .line 145
    invoke-interface {v2, v3, v4, p1}, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;->getFlattedFieldTrialParamsForFeature(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "flattenedParams":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    array-length v4, v2

    if-ge v3, v4, :cond_35

    .line 147
    aget-object v4, v2, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v2, v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v3, v3, 0x2

    goto :goto_26

    .line 149
    .end local v3    # "i":I
    :cond_35
    return-object v1
.end method

.method protected abstract blacklist getNativeMap()J
.end method

.method public blacklist isEnabledInNative(Ljava/lang/String;)Z
    .registers 6
    .param p1, "featureName"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFeatureStrict(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 52
    .local v0, "testValue":Ljava/lang/Boolean;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 53
    :cond_b
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;->ensureNativeMapInit()V

    .line 54
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/FeatureMap;->mNativeMapPtr:J

    invoke-interface {v1, v2, v3, p1}, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;->isEnabled(JLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist mutableFlagWithSafeDefault(Ljava/lang/String;Z)Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;
    .registers 4
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 155
    new-instance v0, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/connectivity/org/chromium/base/MutableFlagWithSafeDefault;-><init>(Landroid/net/connectivity/org/chromium/base/FeatureMap;Ljava/lang/String;Z)V

    return-object v0
.end method
