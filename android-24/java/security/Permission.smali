.class public abstract Ljava/security/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/security/Guard;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public checkGuard(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    return-void
.end method

.method public abstract getActions()Ljava/lang/String;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract implies(Ljava/security/Permission;)Z
.end method

.method public newPermissionCollection()Ljava/security/PermissionCollection;
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/security/Permissions;

    #@2
    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    #@5
    return-object v0
.end method
