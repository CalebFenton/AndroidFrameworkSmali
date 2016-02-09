.class public final Lorg/apache/harmony/security/x509/TBSCertList;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;,
        Lorg/apache/harmony/security/x509/TBSCertList$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final nextUpdate:Ljava/util/Date;

.field private final revokedCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final thisUpdate:Ljava/util/Date;

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lorg/apache/harmony/security/x509/TBSCertList;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 323
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$1;

    #@3
    const/4 v1, 0x7

    #@4
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 324
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v1, v4

    #@c
    .line 325
    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 326
    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@13
    const/4 v3, 0x2

    #@14
    aput-object v2, v1, v3

    #@16
    .line 327
    sget-object v2, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@18
    const/4 v3, 0x3

    #@19
    aput-object v2, v1, v3

    #@1b
    .line 328
    sget-object v2, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@1d
    const/4 v3, 0x4

    #@1e
    aput-object v2, v1, v3

    #@20
    .line 329
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    #@22
    sget-object v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@24
    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@27
    const/4 v3, 0x5

    #@28
    aput-object v2, v1, v3

    #@2a
    .line 330
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@2c
    sget-object v3, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2e
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@31
    const/4 v3, 0x6

    #@32
    aput-object v2, v1, v3

    #@34
    .line 323
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@37
    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@39
    .line 67
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p4, "thisUpdate"    # Ljava/util/Date;
    .param p5, "nextUpdate"    # Ljava/util/Date;
    .param p7, "crlExtensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p8, "encoding"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/harmony/security/x509/AlgorithmIdentifier;",
            "Lorg/apache/harmony/security/x501/Name;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;",
            "Lorg/apache/harmony/security/x509/Extensions;",
            "[B)V"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p6, "revokedCertificates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@5
    .line 199
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@7
    .line 200
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@9
    .line 201
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@b
    .line 202
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@d
    .line 203
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@f
    .line 204
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@11
    .line 205
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    #@13
    .line 197
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "signature"    # Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .param p3, "issuer"    # Lorg/apache/harmony/security/x501/Name;
    .param p4, "thisUpdate"    # Ljava/util/Date;
    .param p5, "nextUpdate"    # Ljava/util/Date;
    .param p6, "revokedCertificates"    # Ljava/util/List;
    .param p7, "crlExtensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p8, "encoding"    # [B

    #@0
    .prologue
    invoke-direct/range {p0 .. p8}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v8, 0x5d

    #@2
    const/16 v7, 0xa

    #@4
    .line 296
    const-string/jumbo v4, "X.509 CRL v"

    #@7
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v4

    #@b
    iget v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    .line 297
    const-string/jumbo v4, "\nSignature Algorithm: ["

    #@13
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 298
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@18
    invoke-virtual {v4, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    #@1b
    .line 299
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 300
    const-string/jumbo v4, "\nIssuer: "

    #@21
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@27
    const-string/jumbo v6, "RFC2253"

    #@2a
    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 301
    const-string/jumbo v4, "\n\nThis Update: "

    #@34
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    .line 302
    const-string/jumbo v4, "\nNext Update: "

    #@40
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 303
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@4f
    if-eqz v4, :cond_1

    #@51
    .line 304
    const-string/jumbo v4, "\nRevoked Certificates: "

    #@54
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@5a
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@5d
    move-result v5

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    const-string/jumbo v5, " ["

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    .line 305
    const/4 v0, 0x1

    #@69
    .line 306
    .local v0, "number":I
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@6b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v3

    #@6f
    .local v3, "revokedCertificate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_0

    #@75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v2

    #@79
    check-cast v2, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    #@7b
    .line 307
    .local v2, "revokedCertificate":Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    const-string/jumbo v4, "\n  ["

    #@7e
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    add-int/lit8 v1, v0, 0x1

    #@84
    .end local v0    # "number":I
    .local v1, "number":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8b
    .line 308
    const-string/jumbo v4, "  "

    #@8e
    invoke-virtual {v2, p1, v4}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@91
    .line 309
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@94
    move v0, v1

    #@95
    .end local v1    # "number":I
    .restart local v0    # "number":I
    goto :goto_0

    #@96
    .line 311
    .end local v2    # "revokedCertificate":Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    :cond_0
    const-string/jumbo v4, "]\n"

    #@99
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 313
    .end local v0    # "number":I
    .end local v3    # "revokedCertificate$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@9e
    if-eqz v4, :cond_2

    #@a0
    .line 314
    const-string/jumbo v4, "\nCRL Extensions: "

    #@a3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@a9
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    #@ac
    move-result v5

    #@ad
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    const-string/jumbo v5, " ["

    #@b4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 315
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@b9
    const-string/jumbo v5, "  "

    #@bc
    invoke-virtual {v4, p1, v5}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@bf
    .line 316
    const-string/jumbo v4, "]\n"

    #@c2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 295
    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-wide/16 v6, 0x3e8

    #@3
    .line 268
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 269
    return v1

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 271
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    #@b
    .line 272
    .local v0, "that":Lorg/apache/harmony/security/x509/TBSCertList;
    iget v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@d
    iget v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@f
    if-ne v2, v3, :cond_2

    #@11
    .line 273
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@13
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@15
    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    .line 272
    if-eqz v2, :cond_2

    #@1b
    .line 274
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@1d
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    #@20
    move-result-object v2

    #@21
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@23
    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    #@26
    move-result-object v3

    #@27
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@2a
    move-result v2

    #@2b
    .line 272
    if-eqz v2, :cond_2

    #@2d
    .line 275
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@2f
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@32
    move-result-wide v2

    #@33
    div-long/2addr v2, v6

    #@34
    .line 276
    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@36
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@39
    move-result-wide v4

    #@3a
    div-long/2addr v4, v6

    #@3b
    .line 275
    cmp-long v2, v2, v4

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 277
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@41
    if-nez v2, :cond_3

    #@43
    .line 278
    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@45
    if-nez v2, :cond_2

    #@47
    .line 281
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@49
    if-eqz v2, :cond_1

    #@4b
    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@4d
    if-nez v2, :cond_4

    #@4f
    .line 282
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@51
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@53
    if-ne v2, v3, :cond_4

    #@55
    .line 284
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@57
    if-nez v2, :cond_5

    #@59
    .line 285
    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@5b
    if-nez v2, :cond_2

    #@5d
    const/4 v1, 0x1

    #@5e
    .line 272
    :cond_2
    :goto_2
    return v1

    #@5f
    .line 279
    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@61
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@64
    move-result-wide v2

    #@65
    div-long/2addr v2, v6

    #@66
    .line 280
    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@68
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@6b
    move-result-wide v4

    #@6c
    div-long/2addr v4, v6

    #@6d
    .line 279
    cmp-long v2, v2, v4

    #@6f
    if-nez v2, :cond_2

    #@71
    goto :goto_0

    #@72
    .line 283
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@74
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@76
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v2

    #@7a
    .line 272
    if-eqz v2, :cond_2

    #@7c
    goto :goto_1

    #@7d
    .line 286
    :cond_5
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@7f
    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@81
    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v1

    #@85
    goto :goto_2
.end method

.method public getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 262
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    #@c
    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    #@e
    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@2
    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 212
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 290
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    #@2
    mul-int/lit8 v0, v0, 0x25

    #@4
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    #@6
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    mul-int/lit8 v0, v0, 0x25

    #@d
    .line 291
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    #@f
    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@16
    move-result v1

    #@17
    .line 290
    add-int/2addr v0, v1

    #@18
    mul-int/lit8 v0, v0, 0x25

    #@1a
    .line 292
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    #@1c
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@1f
    move-result-wide v2

    #@20
    long-to-int v1, v2

    #@21
    div-int/lit16 v1, v1, 0x3e8

    #@23
    .line 290
    add-int/2addr v0, v1

    #@24
    return v0
.end method
