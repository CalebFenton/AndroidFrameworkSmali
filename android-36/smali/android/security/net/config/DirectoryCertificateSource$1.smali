.class Landroid/security/net/config/DirectoryCertificateSource$1;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/DirectoryCertificateSource$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/net/config/DirectoryCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
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

    .line 90
    iput-object p2, p0, Landroid/security/net/config/DirectoryCertificateSource$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .line 93
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource$1;->val$cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
