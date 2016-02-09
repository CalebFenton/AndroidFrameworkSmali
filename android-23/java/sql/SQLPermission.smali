.class public final Ljava/sql/SQLPermission;
.super Ljava/security/BasicPermission;
.source "SQLPermission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, ""

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-direct {p0, v0, v1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 33
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 35
    const/4 v0, 0x1

    #@1
    return v0
.end method
