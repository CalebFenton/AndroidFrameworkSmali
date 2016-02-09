.class public final Lorg/apache/harmony/security/x509/Validity;
.super Ljava/lang/Object;
.source "Validity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/Validity$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final notAfter:Ljava/util/Date;

.field private final notBefore:Ljava/util/Date;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 86
    new-instance v0, Lorg/apache/harmony/security/x509/Validity$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    sget-object v2, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    sget-object v2, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@c
    const/4 v3, 0x1

    #@d
    aput-object v2, v1, v3

    #@f
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Validity$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@12
    .line 85
    sput-object v0, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@14
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;

    #@5
    .line 55
    iput-object p2, p0, Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;

    #@7
    .line 53
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 77
    sget-object v0, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->encoding:[B

    #@c
    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->encoding:[B

    #@e
    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;

    #@2
    return-object v0
.end method
