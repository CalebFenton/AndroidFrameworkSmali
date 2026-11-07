.class Landroid/net/connectivity/org/chromium/base/FeatureMapJni;
.super Ljava/lang/Object;
.source "FeatureMapJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;


# static fields
.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FeatureMapJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getFieldTrialParamByFeature(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "featureMap"    # J
    .param p3, "featureName"    # Ljava/lang/String;
    .param p4, "paramName"    # Ljava/lang/String;

    .line 34
    invoke-static {p1, p2, p3, p4}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeature(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFieldTrialParamByFeatureAsBoolean(JLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "featureMap"    # J
    .param p3, "featureName"    # Ljava/lang/String;
    .param p4, "paramName"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Z

    .line 42
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeatureAsBoolean(JLjava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist getFieldTrialParamByFeatureAsDouble(JLjava/lang/String;Ljava/lang/String;D)D
    .registers 9
    .param p1, "featureMap"    # J
    .param p3, "featureName"    # Ljava/lang/String;
    .param p4, "paramName"    # Ljava/lang/String;
    .param p5, "defaultValue"    # D

    .line 51
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeatureAsDouble(JLjava/lang/Object;Ljava/lang/Object;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFieldTrialParamByFeatureAsInt(JLjava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "featureMap"    # J
    .param p3, "featureName"    # Ljava/lang/String;
    .param p4, "paramName"    # Ljava/lang/String;
    .param p5, "defaultValue"    # I

    .line 60
    invoke-static {p1, p2, p3, p4, p5}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_FeatureMap_getFieldTrialParamByFeatureAsInt(JLjava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public blacklist getFlattedFieldTrialParamsForFeature(JLjava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "featureMap"    # J
    .param p3, "featureName"    # Ljava/lang/String;

    .line 69
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_FeatureMap_getFlattedFieldTrialParamsForFeature(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled(JLjava/lang/String;)Z
    .registers 5
    .param p1, "featureMap"    # J
    .param p3, "featureName"    # Ljava/lang/String;

    .line 76
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_FeatureMap_isEnabled(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method
