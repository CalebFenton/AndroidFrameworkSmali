.class public final Ljava/io/FilePermission;
.super Ljava/security/Permission;
.source "FilePermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 40
    const/4 v0, 0x1

    return v0
.end method
