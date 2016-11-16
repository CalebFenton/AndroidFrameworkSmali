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
.field final synthetic this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field final synthetic val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p2, "val$c"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@2
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->val$c:Ljava/security/cert/X509Certificate;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    #@3
    invoke-static {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->-wrap0(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 416
    return v3

    #@a
    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->val$c:Ljava/security/cert/X509Certificate;

    #@c
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 419
    const/4 v1, 0x1

    #@14
    return v1

    #@15
    .line 420
    :catch_0
    move-exception v0

    #@16
    .line 421
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method
