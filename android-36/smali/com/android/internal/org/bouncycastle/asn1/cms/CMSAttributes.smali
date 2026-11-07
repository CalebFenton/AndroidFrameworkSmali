.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;
.super Ljava/lang/Object;
.source "CMSAttributes.java"


# static fields
.field public static final blacklist cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist contentHint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_contentHint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->contentHint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
