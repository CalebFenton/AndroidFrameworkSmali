.class public final Ljava/net/SocketPermission;
.super Ljava/security/Permission;
.source "SocketPermission.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 41
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 43
    const/4 v0, 0x1

    return v0
.end method
