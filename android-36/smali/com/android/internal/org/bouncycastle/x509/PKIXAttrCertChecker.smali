.class public abstract Lcom/android/internal/org/bouncycastle/x509/PKIXAttrCertChecker;
.super Ljava/lang/Object;
.source "PKIXAttrCertChecker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist check(Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract blacklist getSupportedExtensions()Ljava/util/Set;
.end method
