.class public interface abstract Ljava/security/acl/Owner;
.super Ljava/lang/Object;
.source "Owner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "9"
.end annotation


# virtual methods
.method public abstract whitelist test-api addOwner(Ljava/security/Principal;Ljava/security/Principal;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api deleteOwner(Ljava/security/Principal;Ljava/security/Principal;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/acl/NotOwnerException;,
            Ljava/security/acl/LastOwnerException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isOwner(Ljava/security/Principal;)Z
.end method
