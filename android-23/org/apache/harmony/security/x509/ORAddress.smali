.class public final Lorg/apache/harmony/security/x509/ORAddress;
.super Ljava/lang/Object;
.source "ORAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/ORAddress$1;,
        Lorg/apache/harmony/security/x509/ORAddress$2;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 66
    new-instance v0, Lorg/apache/harmony/security/x509/ORAddress$2;

    #@3
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 67
    new-instance v2, Lorg/apache/harmony/security/x509/ORAddress$1;

    #@8
    new-array v3, v4, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@a
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x509/ORAddress$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@d
    aput-object v2, v1, v4

    #@f
    .line 66
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ORAddress$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@12
    sput-object v0, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@14
    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 58
    sget-object v0, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress;->encoding:[B

    #@c
    .line 60
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress;->encoding:[B

    #@e
    return-object v0
.end method
