.class Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$SdkSandboxActivityAuthorityImpl;
.super Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
.source "SdkSandboxActivityAuthority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdkSandboxActivityAuthorityImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;-><init>(Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$SdkSandboxActivityAuthorityImpl;-><init>()V

    return-void
.end method
