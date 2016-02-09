.class public Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;
.super Lcom/android/org/bouncycastle/asn1/DERBitString;
.source "NetscapeCertType.java"


# static fields
.field public static final objectSigning:I = 0x10

.field public static final objectSigningCA:I = 0x1

.field public static final reserved:I = 0x8

.field public static final smime:I = 0x20

.field public static final smimeCA:I = 0x2

.field public static final sslCA:I = 0x4

.field public static final sslClient:I = 0x80

.field public static final sslServer:I = 0x40


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "usage"    # I

    #@0
    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;->getBytes(I)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;->getPadBits(I)I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    #@b
    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V
    .locals 2
    .param p1, "usage"    # Lcom/android/org/bouncycastle/asn1/DERBitString;

    #@0
    .prologue
    .line 47
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
    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NetscapeCertType: 0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/misc/NetscapeCertType;->data:[B

    #@e
    const/4 v2, 0x0

    #@f
    aget-byte v1, v1, v2

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method
