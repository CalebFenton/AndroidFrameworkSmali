.class public Lorg/apache/harmony/security/x509/tsp/TSTInfo;
.super Ljava/lang/Object;
.source "TSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;,
        Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;
    }
.end annotation


# static fields
.field public static final ACCURACY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final accuracy:[I

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final genTime:Ljava/util/Date;

.field private final messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

.field private final nonce:Ljava/math/BigInteger;

.field private final ordering:Ljava/lang/Boolean;

.field private final policy:Ljava/lang/String;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final tsa:Lorg/apache/harmony/security/x509/GeneralName;

.field private final version:I


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)[I
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/util/Date;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/Boolean;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)I
    .locals 1

    #@0
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 209
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;

    #@6
    new-array v1, v6, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@8
    .line 210
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@b
    move-result-object v2

    #@c
    aput-object v2, v1, v4

    #@e
    .line 211
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@11
    move-result-object v2

    #@12
    aput-object v2, v1, v5

    #@14
    .line 212
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@17
    move-result-object v2

    #@18
    aput-object v2, v1, v3

    #@1a
    .line 209
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@1d
    .line 208
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ACCURACY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@1f
    .line 246
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;

    #@21
    const/16 v1, 0xa

    #@23
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@25
    .line 247
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v1, v4

    #@2b
    .line 248
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v1, v5

    #@31
    .line 249
    sget-object v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@33
    aput-object v2, v1, v3

    #@35
    .line 250
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@38
    move-result-object v2

    #@39
    aput-object v2, v1, v6

    #@3b
    .line 251
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@3e
    move-result-object v2

    #@3f
    const/4 v3, 0x4

    #@40
    aput-object v2, v1, v3

    #@42
    .line 252
    sget-object v2, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ACCURACY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@44
    const/4 v3, 0x5

    #@45
    aput-object v2, v1, v3

    #@47
    .line 253
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    #@4a
    move-result-object v2

    #@4b
    const/4 v3, 0x6

    #@4c
    aput-object v2, v1, v3

    #@4e
    .line 254
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    #@51
    move-result-object v2

    #@52
    const/4 v3, 0x7

    #@53
    aput-object v2, v1, v3

    #@55
    .line 255
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    #@57
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@59
    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@5c
    const/16 v3, 0x8

    #@5e
    aput-object v2, v1, v3

    #@60
    .line 256
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    #@62
    sget-object v3, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@64
    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    #@67
    const/16 v3, 0x9

    #@69
    aput-object v2, v1, v3

    #@6b
    .line 246
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@6e
    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@70
    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/math/BigInteger;Ljava/util/Date;[ILjava/lang/Boolean;Ljava/math/BigInteger;Lorg/apache/harmony/security/x509/GeneralName;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "messageImprint"    # Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .param p4, "serialNumber"    # Ljava/math/BigInteger;
    .param p5, "genTime"    # Ljava/util/Date;
    .param p6, "accuracy"    # [I
    .param p7, "ordering"    # Ljava/lang/Boolean;
    .param p8, "nonce"    # Ljava/math/BigInteger;
    .param p9, "tsa"    # Lorg/apache/harmony/security/x509/GeneralName;
    .param p10, "extensions"    # Lorg/apache/harmony/security/x509/Extensions;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput p1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    #@5
    .line 91
    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    #@7
    .line 92
    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@9
    .line 93
    iput-object p4, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    #@b
    .line 94
    iput-object p5, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    #@d
    .line 95
    iput-object p6, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@f
    .line 96
    iput-object p7, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    #@11
    .line 97
    iput-object p8, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    #@13
    .line 98
    iput-object p9, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    #@15
    .line 99
    iput-object p10, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@17
    .line 89
    return-void
.end method


# virtual methods
.method public getAccuracy()[I
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@2
    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getMessageImprint()Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@2
    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getOrdering()Ljava/lang/Boolean;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getTsa()Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 104
    .local v0, "res":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "-- TSTInfo:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 105
    const-string/jumbo v1, "\nversion:  "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 106
    iget v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    .line 107
    const-string/jumbo v1, "\npolicy:  "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 108
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 109
    const-string/jumbo v1, "\nmessageImprint:  "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 110
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 111
    const-string/jumbo v1, "\nserialNumber:  "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 112
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    .line 113
    const-string/jumbo v1, "\ngenTime:  "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 114
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    .line 115
    const-string/jumbo v1, "\naccuracy:  "

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 116
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@4a
    if-eqz v1, :cond_0

    #@4c
    .line 117
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@4e
    const/4 v2, 0x0

    #@4f
    aget v1, v1, v2

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string/jumbo v2, " sec, "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget-object v2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@5e
    const/4 v3, 0x1

    #@5f
    aget v2, v2, v3

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    const-string/jumbo v2, " millis, "

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    .line 118
    iget-object v2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    #@6e
    const/4 v3, 0x2

    #@6f
    aget v2, v2, v3

    #@71
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    .line 118
    const-string/jumbo v2, " micros"

    #@78
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 120
    :cond_0
    const-string/jumbo v1, "\nordering:  "

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 121
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    .line 122
    const-string/jumbo v1, "\nnonce:  "

    #@89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 123
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    .line 124
    const-string/jumbo v1, "\ntsa:  "

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 125
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    .line 126
    const-string/jumbo v1, "\nextensions:  "

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    .line 127
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    #@a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    .line 128
    const-string/jumbo v1, "\n-- TSTInfo End\n"

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    return-object v1
.end method
