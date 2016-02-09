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
.field final synthetic this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field final synthetic val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "val$c"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;->val$c:Ljava/security/cert/X509Certificate;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;->val$c:Ljava/security/cert/X509Certificate;

    #@6
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method
