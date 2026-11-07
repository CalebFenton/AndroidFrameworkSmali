.class public Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
.super Ljava/security/cert/CertPathValidatorException;
.source "ExtCertPathValidatorException.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 24
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 32
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
