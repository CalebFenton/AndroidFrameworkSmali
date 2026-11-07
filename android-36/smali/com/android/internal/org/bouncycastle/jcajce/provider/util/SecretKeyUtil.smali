.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;
.super Ljava/lang/Object;
.source "SecretKeyUtil.java"


# static fields
.field private static blacklist keySizes:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0x80

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0x100

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getKeySize(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .registers 3
    .param p0, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/SecretKeyUtil;->keySizes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 37
    .local v0, "size":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 42
    :cond_f
    const/4 v1, -0x1

    return v1
.end method
