.class public final Ljava/security/UnresolvedPermission;
.super Ljava/security/Permission;
.source "UnresolvedPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "actions"    # Ljava/lang/String;
    .param p4, "certs"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 48
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUnresolvedActions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUnresolvedCerts()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUnresolvedName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUnresolvedType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "p"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    return v0
.end method
