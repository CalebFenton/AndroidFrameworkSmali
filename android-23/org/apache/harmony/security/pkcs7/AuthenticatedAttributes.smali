.class final Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
.super Ljava/lang/Object;
.source "AuthenticatedAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private final authenticatedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 59
    new-instance v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;

    #@2
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@4
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@7
    .line 58
    sput-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@9
    .line 34
    return-void
.end method

.method private constructor <init>([BLjava/util/List;)V
    .locals 0
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p2, "authenticatedAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x501/AttributeTypeAndValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    #@5
    .line 41
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    #@7
    .line 39
    return-void
.end method

.method synthetic constructor <init>([BLjava/util/List;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;)V
    .locals 0
    .param p1, "encoding"    # [B
    .param p2, "authenticatedAttributes"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;-><init>([BLjava/util/List;)V

    #@3
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 53
    sget-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    #@c
    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    #@e
    return-object v0
.end method
