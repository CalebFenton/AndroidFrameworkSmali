.class public interface abstract Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Package"
.end annotation


# virtual methods
.method public abstract blacklist getBaseApkPath()Ljava/lang/String;
.end method

.method public abstract blacklist getOverlayPriority()I
.end method

.method public abstract blacklist getOverlayTarget()Ljava/lang/String;
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getTargetSdkVersion()I
.end method

.method public abstract blacklist isOverlayIsStatic()Z
.end method
