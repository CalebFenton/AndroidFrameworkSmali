.class public abstract Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
.super Ljava/lang/Object;
.source "SdkSandboxActivityAuthority.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$InstanceHolder;,
        Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$SdkSandboxActivityAuthorityImpl;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
    .registers 1

    .line 44
    invoke-static {}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$InstanceHolder;->-$$Nest$sfgetINSTANCE()Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 61
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 62
    return v0

    .line 64
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.app.sdksandbox.action.START_SANDBOXED_ACTIVITY"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 66
    return v2

    .line 68
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "sandboxPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 70
    return v2

    .line 72
    :cond_31
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 74
    return v2

    .line 76
    :cond_46
    return v0
.end method


# virtual methods
.method public blacklist getActivityContextInfo(Landroid/content/Intent;)Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    invoke-static {}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->getInstance()Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;

    move-result-object v0

    .line 94
    .local v0, "registry":Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;
    invoke-virtual {v0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxActivityRegistry;->getContextInfo(Landroid/content/Intent;)Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;

    move-result-object v1

    .line 95
    .local v1, "contextInfo":Landroid/app/sdksandbox/sandboxactivity/ActivityContextInfo;
    if-eqz v1, :cond_b

    .line 101
    return-object v1

    .line 96
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no registered SdkSandboxActivityHandler for the passed intent, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
