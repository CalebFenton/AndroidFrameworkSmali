.class public final Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
.super Ljava/lang/Object;
.source "AlgorithmIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private algorithmName:Ljava/lang/String;

.field private encoding:[B

.field private parameters:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 150
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 151
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
    .line 150
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@16
    sput-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@18
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 61
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "algorithmName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    #@4
    .line 79
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    #@6
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "parameters"    # [B

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    #@4
    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "parameters"    # [B
    .param p3, "encoding"    # [B

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@5
    .line 70
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@7
    .line 71
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    #@9
    .line 68
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 138
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@9
    if-nez v0, :cond_0

    #@b
    .line 139
    const-string/jumbo v0, ", no params, "

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 143
    :goto_0
    const-string/jumbo v0, "OID = "

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 144
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 136
    return-void

    #@1f
    .line 141
    :cond_0
    const-string/jumbo v0, ", params unparsed, "

    #@22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ai"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 122
    instance-of v2, p1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 123
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 125
    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@9
    .line 126
    .local v0, "algid":Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@b
    iget-object v3, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 127
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@15
    if-nez v2, :cond_2

    #@17
    .line 128
    iget-object v2, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@19
    if-nez v2, :cond_1

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 126
    :cond_1
    :goto_0
    return v1

    #@1d
    .line 129
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@1f
    iget-object v2, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@21
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@24
    move-result v1

    #@25
    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@6
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    #@c
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    #@e
    if-nez v0, :cond_0

    #@10
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@12
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    #@14
    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    #@16
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 116
    sget-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    #@c
    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    #@e
    return-object v0
.end method

.method public getParameters()[B
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v1, v0, 0x25

    #@8
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    #@e
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@11
    move-result v0

    #@12
    :goto_0
    add-int/2addr v0, v1

    #@13
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method
