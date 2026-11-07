.class public interface abstract Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;
.super Ljava/lang/Object;
.source "KISAObjectIdentifiers.java"


# static fields
.field public static final blacklist id_mod_cms_seed:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_npki_app_cmsSeed_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_seedCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_seedMAC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist pbeWithSHA1AndSEED_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.410.200004.1.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.410.200004.1.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedMAC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.410.200004.1.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->pbeWithSHA1AndSEED_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.410.200004.7.1.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.840.113549.1.9.16.0.24"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_mod_cms_seed:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
