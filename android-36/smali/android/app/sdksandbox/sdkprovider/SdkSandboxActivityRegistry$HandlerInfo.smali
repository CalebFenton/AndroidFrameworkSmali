.class Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;
.super Ljava/lang/Object;
.source "SdkSandboxActivityRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerInfo"
.end annotation


# instance fields
.field private final blacklist mContextInfo:Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

.field private final blacklist mHandler:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

.field private final blacklist mSdkContext:Landroid/app/sdksandbox/SandboxedSdkContext;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/app/sdksandbox/SandboxedSdkContext;Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "sdkContext"    # Landroid/app/sdksandbox/SandboxedSdkContext;
    .param p2, "handler"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mSdkContext:Landroid/app/sdksandbox/SandboxedSdkContext;

    .line 360
    iput-object p2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mHandler:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    .line 361
    iput-object p3, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mToken:Landroid/os/IBinder;

    .line 362
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mSdkContext:Landroid/app/sdksandbox/SandboxedSdkContext;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo$$ExternalSyntheticLambda0;-><init>(Landroid/app/sdksandbox/SandboxedSdkContext;)V

    iput-object v1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mContextInfo:Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

    .line 363
    return-void
.end method


# virtual methods
.method public blacklist getContextInfo()Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mContextInfo:Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

    return-object v0
.end method

.method public blacklist getHandler()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mHandler:Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityHandler;

    return-object v0
.end method

.method public blacklist getSdkContext()Landroid/app/sdksandbox/SandboxedSdkContext;
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mSdkContext:Landroid/app/sdksandbox/SandboxedSdkContext;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo;->mToken:Landroid/os/IBinder;

    return-object v0
.end method
