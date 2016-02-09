.class Lcom/android/org/conscrypt/TrustedCertificateStore$3;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
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
    .line 369
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$3;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$3;->val$c:Ljava/security/cert/X509Certificate;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$3;->val$c:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 374
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 375
    :catch_0
    move-exception v0

    #@c
    .line 376
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@d
    return v1
.end method
