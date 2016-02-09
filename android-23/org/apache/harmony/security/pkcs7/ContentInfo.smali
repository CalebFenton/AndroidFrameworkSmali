.class public final Lorg/apache/harmony/security/pkcs7/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs7/ContentInfo$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final DATA:[I

.field public static final DIGESTED_DATA:[I

.field public static final ENCRYPTED_DATA:[I

.field public static final ENVELOPED_DATA:[I

.field public static final SIGNED_AND_ENVELOPED_DATA:[I

.field public static final SIGNED_DATA:[I


# instance fields
.field private final content:Ljava/lang/Object;

.field private encoding:[B

.field private final oid:[I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x7

    #@2
    .line 46
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    #@9
    .line 47
    new-array v0, v1, [I

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    #@10
    .line 48
    new-array v0, v1, [I

    #@12
    fill-array-data v0, :array_2

    #@15
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ENVELOPED_DATA:[I

    #@17
    .line 49
    new-array v0, v1, [I

    #@19
    fill-array-data v0, :array_3

    #@1c
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_AND_ENVELOPED_DATA:[I

    #@1e
    .line 50
    new-array v0, v1, [I

    #@20
    fill-array-data v0, :array_4

    #@23
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DIGESTED_DATA:[I

    #@25
    .line 51
    new-array v0, v1, [I

    #@27
    fill-array-data v0, :array_5

    #@2a
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ENCRYPTED_DATA:[I

    #@2c
    .line 107
    new-instance v0, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;

    #@2e
    const/4 v1, 0x2

    #@2f
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@31
    .line 108
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@34
    move-result-object v2

    #@35
    aput-object v2, v1, v4

    #@37
    .line 109
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@39
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    #@3c
    move-result-object v3

    #@3d
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@40
    const/4 v3, 0x1

    #@41
    aput-object v2, v1, v3

    #@43
    .line 107
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@46
    .line 106
    sput-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@48
    .line 43
    return-void

    #@49
    .line 46
    nop

    #@4a
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x1
    .end array-data

    #@5c
    .line 47
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x2
    .end array-data

    #@6e
    .line 48
    :array_2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x3
    .end array-data

    #@80
    .line 49
    :array_3
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x4
    .end array-data

    #@92
    .line 50
    :array_4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x5
    .end array-data

    #@a4
    .line 51
    :array_5
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x6
    .end array-data
.end method

.method private constructor <init>([ILjava/lang/Object;[B)V
    .locals 0
    .param p1, "oid"    # [I
    .param p2, "content"    # Ljava/lang/Object;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    #@5
    .line 59
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    #@7
    .line 60
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    #@9
    .line 57
    return-void
.end method

.method synthetic constructor <init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo;)V
    .locals 0
    .param p1, "oid"    # [I
    .param p2, "content"    # Ljava/lang/Object;
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getContentType()[I
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 80
    sget-object v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    #@c
    .line 85
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->encoding:[B

    #@e
    return-object v0
.end method

.method public getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;
    .locals 2

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    #@2
    sget-object v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    #@c
    check-cast v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    #@e
    return-object v0

    #@f
    .line 67
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 90
    .local v1, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "==== ContentInfo:"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 91
    const-string/jumbo v2, "\n== ContentType (OID): "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 92
    iget-object v3, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I

    #@13
    const/4 v2, 0x0

    #@14
    array-length v4, v3

    #@15
    :goto_0
    if-ge v2, v4, :cond_0

    #@17
    aget v0, v3, v2

    #@19
    .line 93
    .local v0, "i":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 94
    const/16 v5, 0x20

    #@1e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    .line 92
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 96
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v2, "\n== Content: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 97
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    #@2c
    if-eqz v2, :cond_1

    #@2e
    .line 98
    const-string/jumbo v2, "\n"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 99
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;

    #@36
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 101
    :cond_1
    const-string/jumbo v2, "\n== Content End"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 102
    const-string/jumbo v2, "\n==== ContentInfo End\n"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    return-object v2
.end method
