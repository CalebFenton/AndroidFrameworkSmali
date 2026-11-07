.class public abstract Landroid/net/connectivity/org/chromium/base/CpuFeatures;
.super Ljava/lang/Object;
.source "CpuFeatures.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/CpuFeatures$Natives;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCount()I
    .registers 1

    .line 27
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CpuFeaturesJni;->get()Landroid/net/connectivity/org/chromium/base/CpuFeatures$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/CpuFeatures$Natives;->getCoreCount()I

    move-result v0

    return v0
.end method

.method public static blacklist getMask()J
    .registers 2

    .line 36
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/CpuFeaturesJni;->get()Landroid/net/connectivity/org/chromium/base/CpuFeatures$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/CpuFeatures$Natives;->getCpuFeatures()J

    move-result-wide v0

    return-wide v0
.end method
