.class public interface abstract Ljava/security/cert/CertPathChecker;
.super Ljava/lang/Object;
.source "CertPathChecker.java"


# virtual methods
.method public abstract whitelist test-api check(Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api init(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isForwardCheckingSupported()Z
.end method
