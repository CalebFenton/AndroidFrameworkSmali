.class public Lorg/apache/harmony/security/x509/tsp/MessageImprint;
.super Ljava/lang/Object;
.source "MessageImprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/tsp/MessageImprint$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final hashedMessage:[B


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/tsp/MessageImprint;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/tsp/MessageImprint;)[B
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->hashedMessage:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 47
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/MessageImprint$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 48
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    .line 49
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    #@d
    move-result-object v2

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 47
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/MessageImprint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@14
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@16
    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 0
    .param p1, "algId"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p2, "hashedMessage"    # [B

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@5
    .line 44
    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->hashedMessage:[B

    #@7
    .line 42
    return-void
.end method
