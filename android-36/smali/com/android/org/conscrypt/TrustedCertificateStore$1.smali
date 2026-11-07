.class Lcom/android/org/conscrypt/TrustedCertificateStore$1;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$x:Ljava/security/cert/X509Certificate;


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

    .line 379
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$1;->val$x:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 382
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$1;->val$x:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
