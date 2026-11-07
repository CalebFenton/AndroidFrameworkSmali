.class public Ljava/security/AccessControlException;
.super Ljava/lang/SecurityException;
.source "AccessControlException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x474ea5094463b577L


# instance fields
.field private greylist-max-o perm:Ljava/security/Permission;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/security/Permission;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/security/Permission;

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist test-api getPermission()Ljava/security/Permission;
    .registers 2

    .line 81
    iget-object v0, p0, Ljava/security/AccessControlException;->perm:Ljava/security/Permission;

    return-object v0
.end method
