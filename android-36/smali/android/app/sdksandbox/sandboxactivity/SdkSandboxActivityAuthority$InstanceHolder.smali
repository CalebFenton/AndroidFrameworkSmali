.class Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$InstanceHolder;
.super Ljava/lang/Object;
.source "SdkSandboxActivityAuthority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;
    .registers 1

    sget-object v0, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$InstanceHolder;->INSTANCE:Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$SdkSandboxActivityAuthorityImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$SdkSandboxActivityAuthorityImpl;-><init>(Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority-IA;)V

    sput-object v0, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority$InstanceHolder;->INSTANCE:Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
