.class public interface abstract Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMSObjectIdentifiers.java"


# static fields
.field public static final authEnvelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authenticatedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final compressedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final digestedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final envelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ri:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ri_ocsp_response:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ri_scvp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final signedAndEnvelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final timestampedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 9
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@4
    .line 11
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8
    .line 13
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c
    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedAndEnvelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedAndEnvelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    .line 17
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->digestedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@14
    .line 19
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@16
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@18
    .line 21
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    .line 23
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_compressedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1e
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@20
    .line 25
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authEnvelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@22
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@24
    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_timestampedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@26
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@28
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    const-string/jumbo v1, "1.3.6.1.5.5.7.16"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@32
    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@34
    const-string/jumbo v1, "2"

    #@37
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3a
    move-result-object v0

    #@3b
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri_ocsp_response:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3d
    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3f
    const-string/jumbo v1, "4"

    #@42
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Lcom/android/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ri_scvp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@48
    .line 6
    return-void
.end method
