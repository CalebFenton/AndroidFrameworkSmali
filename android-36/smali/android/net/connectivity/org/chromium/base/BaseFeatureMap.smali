.class public Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;
.super Landroid/net/connectivity/org/chromium/base/FeatureMap;
.source "BaseFeatureMap.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/BaseFeatureMap$Natives;
    }
.end annotation


# static fields
.field private static final blacklist sInstance:Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;->sInstance:Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/FeatureMap;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;
    .registers 1

    .line 21
    sget-object v0, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;->sInstance:Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;

    return-object v0
.end method

.method public static blacklist isEnabled(Ljava/lang/String;)Z
    .registers 2
    .param p0, "featureName"    # Ljava/lang/String;

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;->getInstance()Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected blacklist getNativeMap()J
    .registers 3

    .line 31
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BaseFeatureMapJni;->get()Landroid/net/connectivity/org/chromium/base/BaseFeatureMap$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/BaseFeatureMap$Natives;->getNativeMap()J

    move-result-wide v0

    return-wide v0
.end method
