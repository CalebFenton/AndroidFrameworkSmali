.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.super Ljava/lang/Object;
.source "PBEPBKDF2.java"


# static fields
.field private static final blacklist prfCodes:Ljava/util/Map;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetprfCodes()Ljava/util/Map;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    .line 47
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
