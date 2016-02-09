.class public final Lorg/apache/harmony/security/x509/OtherName;
.super Ljava/lang/Object;
.source "OtherName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/OtherName$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private typeID:Ljava/lang/String;

.field private value:[B


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/OtherName;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->typeID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/OtherName;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->value:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 86
    new-instance v0, Lorg/apache/harmony/security/x509/OtherName$1;

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 87
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v1, v4

    #@c
    .line 88
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@e
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    #@11
    move-result-object v3

    #@12
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    .line 86
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/OtherName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1b
    sput-object v0, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1d
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/OtherName;-><init>(Ljava/lang/String;[B[B)V

    #@4
    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lorg/apache/harmony/security/x509/OtherName;->typeID:Ljava/lang/String;

    #@5
    .line 62
    iput-object p2, p0, Lorg/apache/harmony/security/x509/OtherName;->value:[B

    #@7
    .line 63
    iput-object p3, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    #@9
    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[B[BLorg/apache/harmony/security/x509/OtherName;)V
    .locals 0
    .param p1, "typeID"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "encoding"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/OtherName;-><init>(Ljava/lang/String;[B[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 78
    sget-object v0, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    #@c
    .line 80
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    #@e
    return-object v0
.end method

.method public getValue()[B
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->value:[B

    #@2
    return-object v0
.end method
