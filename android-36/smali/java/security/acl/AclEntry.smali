.class public interface abstract Ljava/security/acl/AclEntry;
.super Ljava/lang/Object;
.source "AclEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "9"
.end annotation


# virtual methods
.method public abstract whitelist test-api addPermission(Ljava/security/acl/Permission;)Z
.end method

.method public abstract whitelist test-api checkPermission(Ljava/security/acl/Permission;)Z
.end method

.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract whitelist test-api getPrincipal()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api isNegative()Z
.end method

.method public abstract whitelist test-api permissions()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/acl/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api removePermission(Ljava/security/acl/Permission;)Z
.end method

.method public abstract whitelist test-api setNegativePermissions()V
.end method

.method public abstract whitelist test-api setPrincipal(Ljava/security/Principal;)Z
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
