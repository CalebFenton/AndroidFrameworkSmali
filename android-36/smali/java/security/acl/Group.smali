.class public interface abstract Ljava/security/acl/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "9"
.end annotation


# virtual methods
.method public abstract whitelist test-api addMember(Ljava/security/Principal;)Z
.end method

.method public abstract whitelist test-api isMember(Ljava/security/Principal;)Z
.end method

.method public abstract whitelist test-api members()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api removeMember(Ljava/security/Principal;)Z
.end method
