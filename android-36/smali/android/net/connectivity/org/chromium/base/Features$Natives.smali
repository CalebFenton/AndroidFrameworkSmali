.class interface abstract Landroid/net/connectivity/org/chromium/base/Features$Natives;
.super Ljava/lang/Object;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/Features;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist getFieldTrialParamByFeatureAsBoolean(JLjava/lang/String;Z)Z
.end method

.method public abstract blacklist getFieldTrialParamByFeatureAsString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist isEnabled(J)Z
.end method
