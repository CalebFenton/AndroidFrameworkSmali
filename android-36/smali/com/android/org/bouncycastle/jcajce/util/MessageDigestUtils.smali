.class public abstract Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;
.super Ljava/lang/Object;
.source "MessageDigestUtils.java"


# static fields
.field private static blacklist digestOidMap:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    .line 38
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getDigestName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2

    .line 113
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/util/MessageDigestUtils;->digestOidMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 119
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
