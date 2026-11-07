.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source "X509CertificateObject.java"


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 394
    invoke-direct {p0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 1

    .line 400
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
