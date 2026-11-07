.class public final Landroid/net/connectivity/org/chromium/base/metrics/StatisticsRecorderAndroid;
.super Ljava/lang/Object;
.source "StatisticsRecorderAndroid.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/metrics/StatisticsRecorderAndroid$Natives;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist toJson(I)Ljava/lang/String;
    .registers 2
    .param p0, "verbosityLevel"    # I

    .line 22
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/metrics/StatisticsRecorderAndroidJni;->get()Landroid/net/connectivity/org/chromium/base/metrics/StatisticsRecorderAndroid$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/metrics/StatisticsRecorderAndroid$Natives;->toJson(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
