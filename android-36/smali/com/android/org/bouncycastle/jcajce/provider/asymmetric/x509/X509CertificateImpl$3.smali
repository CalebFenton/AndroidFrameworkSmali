.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;
.super Ljava/lang/Object;
.source "X509CertificateImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;


# instance fields
.field final synthetic blacklist val$sigProvider:Ljava/security/Provider;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/security/Provider;)V
    .registers 3

    .line 598
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;->val$sigProvider:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    .line 602
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;->val$sigProvider:Ljava/security/Provider;

    if-eqz p0, :cond_9

    .line 604
    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    .line 608
    :cond_9
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
