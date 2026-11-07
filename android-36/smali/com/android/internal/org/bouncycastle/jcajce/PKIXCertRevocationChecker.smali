.class public interface abstract Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;
.super Ljava/lang/Object;
.source "PKIXCertRevocationChecker.java"


# virtual methods
.method public abstract blacklist check(Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method

.method public abstract blacklist initialize(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method

.method public abstract blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method
