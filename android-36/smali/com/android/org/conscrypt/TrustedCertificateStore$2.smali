.class Lcom/android/org/conscrypt/TrustedCertificateStore$2;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .line 404
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
