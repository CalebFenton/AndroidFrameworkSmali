.class public abstract Llibcore/net/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;
    }
.end annotation


# static fields
.field private static volatile blacklist instance:Llibcore/net/NetworkSecurityPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;

    invoke-direct {v0}, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;-><init>()V

    sput-object v0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    return-void
.end method

.method public constructor blacklist test-api <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static blacklist test-api getInstance()Llibcore/net/NetworkSecurityPolicy;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 64
    sget-object v0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    return-object v0
.end method

.method public static blacklist test-api setInstance(Llibcore/net/NetworkSecurityPolicy;)V
    .registers 3
    .param p0, "policy"    # Llibcore/net/NetworkSecurityPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 76
    if-eqz p0, :cond_5

    .line 79
    sput-object p0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    .line 80
    return-void

    .line 77
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "policy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist test-api isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public abstract greylist test-api isCleartextTrafficPermitted()Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method

.method public abstract blacklist test-api isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end method
