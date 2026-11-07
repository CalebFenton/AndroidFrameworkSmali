.class public interface abstract Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;
.super Ljava/lang/Object;
.source "ISISMTTObjectIdentifiers.java"


# static fields
.field public static final blacklist id_isismtt:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_PKReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_additionalInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_admission:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_certHash:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_certInDirSince:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_declarationOfMajority:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_iCCSN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_liabilityLimitationFlag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_monetaryLimit:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_nameAtBirth:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_namingAuthorities:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_procuration:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_requestedCertificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_restriction:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_at_retrieveIfAllowed:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_cp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_isismtt_cp_accredited:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.36.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_cp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_cp_accredited:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    const-string v2, "3"

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_procuration:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_admission:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_monetaryLimit:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_declarationOfMajority:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_iCCSN:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_PKReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_restriction:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_retrieveIfAllowed:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 133
    const-string v1, "10"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_requestedCertificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    const-string v1, "11"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_namingAuthorities:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 154
    const-string v1, "12"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_certInDirSince:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    const-string v1, "13"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_certHash:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 174
    const-string v1, "14"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_nameAtBirth:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 188
    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_additionalInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 205
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "0.2.262.1.10.12.0"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_liabilityLimitationFlag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
