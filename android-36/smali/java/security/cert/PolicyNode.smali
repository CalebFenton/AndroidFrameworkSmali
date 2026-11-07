.class public interface abstract Ljava/security/cert/PolicyNode;
.super Ljava/lang/Object;
.source "PolicyNode.java"


# virtual methods
.method public abstract whitelist test-api getChildren()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/security/cert/PolicyNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getDepth()I
.end method

.method public abstract whitelist test-api getExpectedPolicies()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getParent()Ljava/security/cert/PolicyNode;
.end method

.method public abstract whitelist test-api getPolicyQualifiers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api getValidPolicy()Ljava/lang/String;
.end method

.method public abstract whitelist test-api isCritical()Z
.end method
