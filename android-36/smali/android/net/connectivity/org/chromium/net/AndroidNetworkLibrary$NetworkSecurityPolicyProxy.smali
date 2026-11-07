.class public Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;
.super Ljava/lang/Object;
.source "AndroidNetworkLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSecurityPolicyProxy"
.end annotation


# static fields
.field private static blacklist sInstance:Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 357
    new-instance v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->sInstance:Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;
    .registers 1

    .line 360
    sget-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->sInstance:Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    return-object v0
.end method

.method static synthetic blacklist lambda$setInstanceForTesting$0(Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;)V
    .registers 1
    .param p0, "oldValue"    # Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    .line 367
    sput-object p0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->sInstance:Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    return-void
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;)V
    .registers 3
    .param p0, "networkSecurityPolicyProxy"    # Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    .line 365
    sget-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->sInstance:Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    .line 366
    .local v0, "oldValue":Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;
    sput-object p0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;->sInstance:Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;

    .line 367
    new-instance v1, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$NetworkSecurityPolicyProxy;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method


# virtual methods
.method public blacklist isCleartextTrafficPermitted()Z
    .registers 2

    .line 381
    nop

    .line 385
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public blacklist isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "host"    # Ljava/lang/String;

    .line 372
    nop

    .line 376
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
