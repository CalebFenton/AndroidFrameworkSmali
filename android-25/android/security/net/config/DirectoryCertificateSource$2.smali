.class Landroid/security/net/config/DirectoryCertificateSource$2;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/DirectoryCertificateSource$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/DirectoryCertificateSource;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/net/config/DirectoryCertificateSource;

.field final synthetic val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/security/net/config/DirectoryCertificateSource;
    .param p2, "val$cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource$2;->this$0:Landroid/security/net/config/DirectoryCertificateSource;

    #@2
    iput-object p2, p0, Landroid/security/net/config/DirectoryCertificateSource$2;->val$cert:Ljava/security/cert/X509Certificate;

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
    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource$2;->val$cert:Ljava/security/cert/X509Certificate;

    #@2
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 108
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 109
    :catch_0
    move-exception v0

    #@c
    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@d
    return v1
.end method
