.class public Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
.super Lcom/android/org/bouncycastle/asn1/DERBitString;
.source "ReasonFlags.java"


# static fields
.field public static final AA_COMPROMISE:I = 0x8000

.field public static final AFFILIATION_CHANGED:I = 0x10

.field public static final CA_COMPROMISE:I = 0x20

.field public static final CERTIFICATE_HOLD:I = 0x2

.field public static final CESSATION_OF_OPERATION:I = 0x4

.field public static final KEY_COMPROMISE:I = 0x40

.field public static final PRIVILEGE_WITHDRAWN:I = 0x1

.field public static final SUPERSEDED:I = 0x8

.field public static final UNUSED:I = 0x80

.field public static final aACompromise:I = 0x8000

.field public static final affiliationChanged:I = 0x10

.field public static final cACompromise:I = 0x20

.field public static final certificateHold:I = 0x2

.field public static final cessationOfOperation:I = 0x4

.field public static final keyCompromise:I = 0x40

.field public static final privilegeWithdrawn:I = 0x1

.field public static final superseded:I = 0x8

.field public static final unused:I = 0x80


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "reasons"    # I

    #@0
    .prologue
    .line 77
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->getBytes(I)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->getPadBits(I)I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@b
    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 2
    .param p1, "reasons"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@b
    .line 81
    return-void
.end method
