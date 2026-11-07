.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;
.super Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 1874
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method
