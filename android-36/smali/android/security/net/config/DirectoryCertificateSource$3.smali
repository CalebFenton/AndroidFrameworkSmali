.class Landroid/security/net/config/DirectoryCertificateSource$3;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/DirectoryCertificateSource$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/DirectoryCertificateSource;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$cert:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor blacklist <init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "this$0"    # Landroid/security/net/config/DirectoryCertificateSource;
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

    .line 115
    iput-object p2, p0, Landroid/security/net/config/DirectoryCertificateSource$3;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .line 119
    :try_start_0
    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource$3;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 120
    const/4 v0, 0x1

    return v0

    .line 121
    :catch_b
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method
