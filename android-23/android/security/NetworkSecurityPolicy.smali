.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 30
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    #@2
    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    #@5
    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    #@7
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    #@0
    .prologue
    .line 41
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    #@2
    return-object v0
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    #@0
    .prologue
    .line 63
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 0
    .param p1, "permitted"    # Z

    #@0
    .prologue
    .line 75
    invoke-static {p1}, Llibcore/net/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    #@3
    .line 74
    return-void
.end method
