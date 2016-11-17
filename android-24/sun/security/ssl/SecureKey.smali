.class Lsun/security/ssl/SecureKey;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"


# static fields
.field private static nullObject:Ljava/lang/Object;


# instance fields
.field private appKey:Ljava/lang/Object;

.field private securityCtx:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 796
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lsun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    #@7
    .line 795
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 812
    iput-object p1, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    #@5
    .line 813
    invoke-static {}, Lsun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    #@b
    .line 811
    return-void
.end method

.method static getCurrentSecurityContext()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 801
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 802
    .local v1, "sm":Ljava/lang/SecurityManager;
    const/4 v0, 0x0

    #@5
    .line 804
    .local v0, "context":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@7
    .line 805
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->getSecurityContext()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 806
    .end local v0    # "context":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 807
    sget-object v0, Lsun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    #@f
    .line 808
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 829
    instance-of v0, p1, Lsun/security/ssl/SecureKey;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v0, p1

    #@5
    nop

    #@6
    nop

    #@7
    iget-object v0, v0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    #@9
    iget-object v1, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 830
    nop

    #@12
    nop

    #@13
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    #@15
    iget-object v1, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 829
    :goto_0
    return v0

    #@1c
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method getAppKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method getSecurityContext()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 821
    iget-object v0, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method
