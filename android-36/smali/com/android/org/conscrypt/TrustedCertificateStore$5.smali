.class Lcom/android/org/conscrypt/TrustedCertificateStore$5;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

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

    .line 475
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .line 479
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-static {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->-$$Nest$misDeletedSystemCertificate(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 480
    return v0

    .line 482
    :cond_a
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    .line 483
    const/4 v0, 0x1

    return v0

    .line 484
    :catch_15
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method
