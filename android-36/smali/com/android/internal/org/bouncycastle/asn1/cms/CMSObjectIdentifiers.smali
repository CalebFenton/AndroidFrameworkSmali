.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMSObjectIdentifiers.java"


# static fields
.field public static final blacklist authEnvelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist authenticatedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist compressedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist digestedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist encryptedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist envelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_ri:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_ri_ocsp_response:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_ri_scvp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist signedAndEnvelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist timestampedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedAndEnvelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedAndEnvelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->digestedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_compressedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authEnvelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_timestampedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.16"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri_ocsp_response:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri_scvp:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
