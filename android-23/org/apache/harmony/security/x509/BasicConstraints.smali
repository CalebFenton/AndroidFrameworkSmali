.class public final Lorg/apache/harmony/security/x509/BasicConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "BasicConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/BasicConstraints$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private ca:Z

.field private pathLenConstraint:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 90
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 91
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    .line 90
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@16
    sput-object v0, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@18
    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@5
    .line 45
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    #@7
    .line 47
    const v1, 0x7fffffff

    #@a
    iput v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    #@c
    .line 54
    sget-object v1, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@e
    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/Object;

    #@14
    .line 55
    .local v0, "values":[Ljava/lang/Object;
    aget-object v1, v0, v2

    #@16
    check-cast v1, Ljava/lang/Boolean;

    #@18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@1b
    move-result v1

    #@1c
    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    #@1e
    .line 56
    aget-object v1, v0, v3

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 57
    new-instance v2, Ljava/math/BigInteger;

    #@24
    aget-object v1, v0, v3

    #@26
    check-cast v1, [B

    #@28
    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@2b
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    #@31
    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "BasicConstraints [\n"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 81
    const-string/jumbo v1, "  CA: "

    #@12
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 81
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    #@18
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 82
    const-string/jumbo v1, "\n  "

    #@1f
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 82
    const-string/jumbo v1, "pathLenConstraint: "

    #@2a
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 83
    iget v1, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    #@30
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 83
    const/16 v1, 0xa

    #@36
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 84
    const-string/jumbo v1, "]\n"

    #@41
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 79
    return-void
.end method

.method public getCa()Z
    .locals 1

    #@0
    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    #@2
    return v0
.end method

.method public getEncoded()[B
    .locals 4

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 74
    sget-object v0, Lorg/apache/harmony/security/x509/BasicConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->ca:Z

    #@b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v2

    #@f
    const/4 v3, 0x0

    #@10
    aput-object v2, v1, v3

    #@12
    iget v2, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    #@14
    int-to-long v2, v2

    #@15
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    #@22
    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->encoding:[B

    #@24
    return-object v0
.end method

.method public getPathLenConstraint()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Lorg/apache/harmony/security/x509/BasicConstraints;->pathLenConstraint:I

    #@2
    return v0
.end method
