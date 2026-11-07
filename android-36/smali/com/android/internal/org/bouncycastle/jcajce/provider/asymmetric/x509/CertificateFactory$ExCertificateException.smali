.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;
.super Ljava/security/cert/CertificateException;
.source "CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExCertificateException"
.end annotation


# instance fields
.field private blacklist cause:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 474
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 476
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    .line 477
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 468
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 469
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    .line 470
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 481
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory$ExCertificateException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
