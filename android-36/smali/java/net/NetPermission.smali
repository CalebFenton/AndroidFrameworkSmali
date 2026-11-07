.class public final Ljava/net/NetPermission;
.super Ljava/security/BasicPermission;
.source "NetPermission.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 45
    const-string v0, ""

    invoke-direct {p0, v0, v0}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
