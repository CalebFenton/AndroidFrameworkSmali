.class public final Lorg/apache/harmony/security/x509/PolicyInformation;
.super Ljava/lang/Object;
.source "PolicyInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/PolicyInformation$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final policyIdentifier:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/PolicyInformation;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 85
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyInformation$1;

    #@2
    .line 86
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    .line 85
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyInformation$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@16
    sput-object v0, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@18
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyIdentifier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    #@5
    .line 57
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "Policy Identifier ["

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v0

    #@7
    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const/16 v1, 0x5d

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 78
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    sget-object v0, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    #@c
    .line 75
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->encoding:[B

    #@e
    return-object v0
.end method

.method public getPolicyIdentifier()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;

    #@2
    return-object v0
.end method
