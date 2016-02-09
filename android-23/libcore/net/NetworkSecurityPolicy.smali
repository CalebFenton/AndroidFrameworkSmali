.class public Llibcore/net/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static volatile cleartextTrafficPermitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const/4 v0, 0x1

    #@1
    sput-boolean v0, Llibcore/net/NetworkSecurityPolicy;->cleartextTrafficPermitted:Z

    #@3
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 54
    sget-boolean v0, Llibcore/net/NetworkSecurityPolicy;->cleartextTrafficPermitted:Z

    #@2
    return v0
.end method

.method public static setCleartextTrafficPermitted(Z)V
    .locals 0
    .param p0, "permitted"    # Z

    #@0
    .prologue
    .line 64
    sput-boolean p0, Llibcore/net/NetworkSecurityPolicy;->cleartextTrafficPermitted:Z

    #@2
    .line 63
    return-void
.end method
