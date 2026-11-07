.class public final synthetic Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/sdksandbox/SandboxedSdkContext;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/sdksandbox/SandboxedSdkContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo$$ExternalSyntheticLambda0;->f$0:Landroid/app/sdksandbox/SandboxedSdkContext;

    return-void
.end method


# virtual methods
.method public final blacklist getSdkApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry$HandlerInfo$$ExternalSyntheticLambda0;->f$0:Landroid/app/sdksandbox/SandboxedSdkContext;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method
