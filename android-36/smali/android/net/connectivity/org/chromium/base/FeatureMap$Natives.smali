.class interface abstract Landroid/net/connectivity/org/chromium/base/FeatureMap$Natives;
.super Ljava/lang/Object;
.source "FeatureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/FeatureMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist getFieldTrialParamByFeature(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getFieldTrialParamByFeatureAsBoolean(JLjava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract blacklist getFieldTrialParamByFeatureAsDouble(JLjava/lang/String;Ljava/lang/String;D)D
.end method

.method public abstract blacklist getFieldTrialParamByFeatureAsInt(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract blacklist getFlattedFieldTrialParamsForFeature(JLjava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract blacklist isEnabled(JLjava/lang/String;)Z
.end method
