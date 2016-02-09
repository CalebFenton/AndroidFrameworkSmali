.class public Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
.super Ljava/lang/Object;
.source "TimeStampReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final certReq:Ljava/lang/Boolean;

.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

.field private final nonce:Ljava/math/BigInteger;

.field private final reqPolicy:Ljava/lang/String;

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 155
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;

    #@3
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 156
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v1, v4

    #@c
    .line 157
    sget-object v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@e
    const/4 v3, 0x1

    #@f
    aput-object v2, v1, v3

    #@11
    .line 158
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x2

    #@16
    aput-object v2, v1, v3

    #@18
    .line 159
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@1b
    move-result-object v2

    #@1c
    const/4 v3, 0x3

    #@1d
    aput-object v2, v1, v3

    #@1f
    .line 160
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@22
    move-result-object v2

    #@23
    const/4 v3, 0x4

    #@24
    aput-object v2, v1, v3

    #@26
    .line 161
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@28
    sget-object v3, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@2a
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@2d
    const/4 v3, 0x5

    #@2e
    aput-object v2, v1, v3

    #@30
    .line 155
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@33
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@35
    .line 50
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "messageImprint"    # Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .param p3, "reqPolicy"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/math/BigInteger;
    .param p5, "certReq"    # Ljava/lang/Boolean;
    .param p6, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput p1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    #@5
    .line 69
    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@7
    .line 70
    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    #@9
    .line 71
    iput-object p4, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    #@b
    .line 72
    iput-object p5, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    #@d
    .line 73
    iput-object p6, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@f
    .line 67
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "messageImprint"    # Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .param p3, "reqPolicy"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/math/BigInteger;
    .param p5, "certReq"    # Ljava/lang/Boolean;
    .param p6, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p7, "encoding"    # [B

    #@0
    .prologue
    .line 79
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;)V

    #@3
    .line 80
    iput-object p7, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    #@5
    .line 78
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "messageImprint"    # Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .param p3, "reqPolicy"    # Ljava/lang/String;
    .param p4, "nonce"    # Ljava/math/BigInteger;
    .param p5, "certReq"    # Ljava/lang/Boolean;
    .param p6, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;
    .param p7, "encoding"    # [B

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[B)V

    #@3
    return-void
.end method


# virtual methods
.method public getCertReq()Ljava/lang/Boolean;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 108
    sget-object v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    #@c
    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    #@e
    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getMessageImprint()Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@2
    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getReqPolicy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 152
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 85
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "-- TimeStampReq:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 86
    const-string/jumbo v1, "\nversion : "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 87
    iget v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 88
    const-string/jumbo v1, "\nmessageImprint:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 89
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    .line 90
    const-string/jumbo v1, "\nreqPolicy:  "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 91
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 92
    const-string/jumbo v1, "\nnonce:  "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 93
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    .line 94
    const-string/jumbo v1, "\ncertReq:  "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 95
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    .line 96
    const-string/jumbo v1, "\nextensions:  "

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 97
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    .line 98
    const-string/jumbo v1, "\n-- TimeStampReq End\n"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    return-object v1
.end method
