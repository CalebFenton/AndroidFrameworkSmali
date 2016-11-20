.class public abstract Llibcore/net/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;
    }
.end annotation


# static fields
.field private static volatile instance:Llibcore/net/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    new-instance v0, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;

    #@2
    invoke-direct {v0}, Llibcore/net/NetworkSecurityPolicy$DefaultNetworkSecurityPolicy;-><init>()V

    #@5
    sput-object v0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Llibcore/net/NetworkSecurityPolicy;
    .locals 1

    #@0
    .prologue
    .line 34
    sget-object v0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    #@2
    return-object v0
.end method

.method public static setInstance(Llibcore/net/NetworkSecurityPolicy;)V
    .locals 2
    .param p0, "policy"    # Llibcore/net/NetworkSecurityPolicy;

    #@0
    .prologue
    .line 38
    if-nez p0, :cond_0

    #@2
    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "policy == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 41
    :cond_0
    sput-object p0, Llibcore/net/NetworkSecurityPolicy;->instance:Llibcore/net/NetworkSecurityPolicy;

    #@d
    .line 37
    return-void
.end method


# virtual methods
.method public abstract isCleartextTrafficPermitted()Z
.end method

.method public abstract isCleartextTrafficPermitted(Ljava/lang/String;)Z
.end method
