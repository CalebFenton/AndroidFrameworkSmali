.class public Lcom/android/org/bouncycastle/asn1/DERNull;
.super Lcom/android/org/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final greylist INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

.field private static final blacklist zeroBytes:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Null;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/4 p0, 0x5

    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    const/4 p0, 0x0

    .line 31
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p0

    return p0
.end method
