.class public Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$Injector;
.super Ljava/lang/Object;
.source "SdkSandboxActivityRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist elapsedRealtime()J
    .registers 3

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSdkSandboxLocalSingleton()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;
    .registers 2

    .line 338
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxLocalSingleton;->getExistingInstance()Landroid/app/sdksandbox/SdkSandboxLocalSingleton;

    move-result-object v0

    return-object v0
.end method
