.class public Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;
.super Ljava/security/cert/CertPathValidatorException;
.source "ExtCertPathValidatorException.java"


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 5

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 32
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathValidatorException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
