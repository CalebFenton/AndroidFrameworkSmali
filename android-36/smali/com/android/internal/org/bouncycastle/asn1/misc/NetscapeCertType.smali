.class public Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;
.super Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
.source "NetscapeCertType.java"


# static fields
.field public static final blacklist objectSigning:I = 0x10

.field public static final blacklist objectSigningCA:I = 0x1

.field public static final blacklist reserved:I = 0x8

.field public static final blacklist smime:I = 0x20

.field public static final blacklist smimeCA:I = 0x2

.field public static final blacklist sslCA:I = 0x4

.field public static final blacklist sslClient:I = 0x80

.field public static final blacklist sslServer:I = 0x40


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "usage"    # I

    .line 44
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 4
    .param p1, "usage"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 50
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist hasUsages(I)Z
    .registers 3
    .param p1, "usages"    # I

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeCertType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
