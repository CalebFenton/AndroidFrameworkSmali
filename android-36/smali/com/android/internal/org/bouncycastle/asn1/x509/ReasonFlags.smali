.class public Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;
.super Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
.source "ReasonFlags.java"


# static fields
.field public static final blacklist AA_COMPROMISE:I = 0x8000

.field public static final blacklist AFFILIATION_CHANGED:I = 0x10

.field public static final blacklist CA_COMPROMISE:I = 0x20

.field public static final blacklist CERTIFICATE_HOLD:I = 0x2

.field public static final blacklist CESSATION_OF_OPERATION:I = 0x4

.field public static final blacklist KEY_COMPROMISE:I = 0x40

.field public static final blacklist PRIVILEGE_WITHDRAWN:I = 0x1

.field public static final blacklist SUPERSEDED:I = 0x8

.field public static final blacklist UNUSED:I = 0x80

.field public static final blacklist aACompromise:I = 0x8000

.field public static final blacklist affiliationChanged:I = 0x10

.field public static final blacklist cACompromise:I = 0x20

.field public static final blacklist certificateHold:I = 0x2

.field public static final blacklist cessationOfOperation:I = 0x4

.field public static final blacklist keyCompromise:I = 0x40

.field public static final blacklist privilegeWithdrawn:I = 0x1

.field public static final blacklist superseded:I = 0x8

.field public static final blacklist unused:I = 0x80


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "reasons"    # I

    .line 80
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 4
    .param p1, "reasons"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 87
    return-void
.end method
