.class public interface abstract Ljava/security/acl/Acl;
.super Ljava/lang/Object;
.source "Acl.java"

# interfaces
.implements Ljava/security/acl/Owner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "9"
.end annotation


# virtual methods
.method public abstract whitelist test-api addEntry(Ljava/security/Principal;Ljava/security/acl/AclEntry;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api checkPermission(Ljava/security/Principal;Ljava/security/acl/Permission;)Z
.end method

.method public abstract whitelist test-api entries()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/acl/AclEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getPermissions(Ljava/security/Principal;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/security/acl/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api removeEntry(Ljava/security/Principal;Ljava/security/acl/AclEntry;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api setName(Ljava/security/Principal;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method
