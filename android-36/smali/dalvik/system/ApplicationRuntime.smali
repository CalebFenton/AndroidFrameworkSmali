.class public final Ldalvik/system/ApplicationRuntime;
.super Ljava/lang/Object;
.source "ApplicationRuntime.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api getBaseApkOptimizationInfo()Ldalvik/system/DexFile$OptimizationInfo;
    .registers 1

    .line 32
    invoke-static {}, Ldalvik/system/VMRuntime;->getBaseApkOptimizationInfo()Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    return-object v0
.end method
