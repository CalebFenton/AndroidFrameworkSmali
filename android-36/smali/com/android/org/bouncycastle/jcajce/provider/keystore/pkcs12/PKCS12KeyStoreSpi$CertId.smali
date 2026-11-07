.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# instance fields
.field blacklist id:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V
    .registers 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->-$$Nest$mcreateSubjectKeyId(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->id:[B

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V
    .registers 3

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->id:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 207
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 212
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 214
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->id:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->id:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->id:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
