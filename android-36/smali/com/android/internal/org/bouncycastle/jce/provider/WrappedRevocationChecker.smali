.class Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;
.super Ljava/lang/Object;
.source "WrappedRevocationChecker.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;


# instance fields
.field private final blacklist checker:Ljava/security/cert/PKIXCertPathChecker;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/PKIXCertPathChecker;)V
    .registers 2
    .param p1, "checker"    # Ljava/security/cert/PKIXCertPathChecker;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist check(Ljava/security/cert/Certificate;)V
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0, p1}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;)V

    .line 36
    return-void
.end method

.method public blacklist initialize(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V
    .registers 4
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/WrappedRevocationChecker;->checker:Ljava/security/cert/PKIXCertPathChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 30
    return-void
.end method

.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 24
    return-void
.end method
