.class public abstract Landroid/net/connectivity/org/chromium/base/Features;
.super Ljava/lang/Object;
.source "Features.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/Features$Natives;
    }
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/Features;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected abstract blacklist getFeaturePointer()J
.end method

.method public blacklist getFieldTrialParamByFeatureAsBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 47
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeaturesJni;->get()Landroid/net/connectivity/org/chromium/base/Features$Natives;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/Features;->getFeaturePointer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/net/connectivity/org/chromium/base/Features$Natives;->getFieldTrialParamByFeatureAsBoolean(JLjava/lang/String;Z)Z

    move-result v0

    .line 47
    return v0
.end method

.method public blacklist getFieldTrialParamByFeatureAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "paramName"    # Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeaturesJni;->get()Landroid/net/connectivity/org/chromium/base/Features$Natives;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/Features;->getFeaturePointer()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Landroid/net/connectivity/org/chromium/base/Features$Natives;->getFieldTrialParamByFeatureAsString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Features;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 5

    .line 33
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/Features;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/FeatureList;->getTestValueForFeatureStrict(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 34
    .local v0, "testValue":Ljava/lang/Boolean;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 35
    :cond_f
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FeaturesJni;->get()Landroid/net/connectivity/org/chromium/base/Features$Natives;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/Features;->getFeaturePointer()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/Features$Natives;->isEnabled(J)Z

    move-result v1

    return v1
.end method
