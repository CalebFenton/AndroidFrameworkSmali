.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;
.super Ljava/security/cert/CertificateEncodingException;
.source "X509CertificateObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509CertificateEncodingException"
.end annotation


# instance fields
.field private final blacklist cause:Ljava/lang/Throwable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 394
    invoke-direct {p0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;->cause:Ljava/lang/Throwable;

    .line 396
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject$X509CertificateEncodingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
