.class Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
.super Ljava/security/cert/CertPathValidatorException;
.source "RecoverableCertPathValidatorException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 13
    return-void
.end method
