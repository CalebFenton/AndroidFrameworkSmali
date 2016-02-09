.class public Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevokedCertificate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerRetrieved:Z

.field private final revocationDate:Ljava/util/Date;

.field private final userCertificate:Ljava/math/BigInteger;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 168
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;

    #@2
    .line 169
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    sget-object v2, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 170
    sget-object v2, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 168
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@19
    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1b
    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .param p1, "userCertificate"    # Ljava/math/BigInteger;
    .param p2, "revocationDate"    # Ljava/util/Date;
    .param p3, "crlEntryExtensions"    # Lorg/apache/harmony/security/x509/Extensions;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@5
    .line 97
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@7
    .line 98
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@9
    .line 95
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "Certificate Serial Number: "

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "Revocation Date: "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 162
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "CRL Entry Extensions: ["

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, "  "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@51
    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const/16 v1, 0x5d

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 158
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "rc"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide/16 v6, 0x3e8

    #@2
    const/4 v1, 0x0

    #@3
    .line 141
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 142
    return v1

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 144
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    #@b
    .line 145
    .local v0, "rcert":Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@d
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 146
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@17
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@1a
    move-result-wide v2

    #@1b
    div-long/2addr v2, v6

    #@1c
    .line 147
    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@1e
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@21
    move-result-wide v4

    #@22
    div-long/2addr v4, v6

    #@23
    .line 146
    cmp-long v2, v2, v4

    #@25
    if-nez v2, :cond_1

    #@27
    .line 148
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@29
    if-nez v2, :cond_2

    #@2b
    .line 149
    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2d
    if-nez v2, :cond_1

    #@2f
    const/4 v1, 0x1

    #@30
    .line 145
    :cond_1
    :goto_0
    return v1

    #@31
    .line 150
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@33
    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@35
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    goto :goto_0
.end method

.method public getCrlEntryExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 135
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    #@c
    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    #@e
    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 119
    return-object v2

    #@6
    .line 121
    :cond_0
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuerRetrieved:Z

    #@8
    if-nez v1, :cond_1

    #@a
    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@c
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;

    #@f
    move-result-object v1

    #@10
    .line 123
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 128
    :goto_0
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuerRetrieved:Z

    #@15
    .line 130
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuer:Ljavax/security/auth/x500/X500Principal;

    #@17
    return-object v1

    #@18
    .line 125
    :catch_0
    move-exception v0

    #@19
    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@1c
    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getUserCertificate()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x25

    #@8
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    #@a
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@d
    move-result-wide v2

    #@e
    long-to-int v1, v2

    #@f
    div-int/lit16 v1, v1, 0x3e8

    #@11
    add-int/2addr v1, v0

    #@12
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@14
    if-nez v0, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    .line 154
    :goto_0
    add-int/2addr v0, v1

    #@18
    return v0

    #@19
    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@1b
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hashCode()I

    #@1e
    move-result v0

    #@1f
    goto :goto_0
.end method
