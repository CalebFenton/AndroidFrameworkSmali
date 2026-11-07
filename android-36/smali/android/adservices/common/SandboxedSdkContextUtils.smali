.class public final Landroid/adservices/common/SandboxedSdkContextUtils;
.super Ljava/lang/Object;
.source "SandboxedSdkContextUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    const/4 v0, 0x0

    if-eqz p0, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_a

    goto :goto_13

    .line 45
    :cond_a
    instance-of v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;

    if-nez v1, :cond_f

    .line 46
    return-object v0

    .line 49
    :cond_f
    move-object v0, p0

    check-cast v0, Landroid/app/sdksandbox/SandboxedSdkContext;

    return-object v0

    .line 42
    :cond_13
    :goto_13
    return-object v0
.end method
