.class public final Lsun/security/provider/certpath/OCSPResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;,
        Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    }
.end annotation


# static fields
.field private static final synthetic -sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I = null

.field private static final CERT_STATUS_GOOD:I = 0x0

.field private static final CERT_STATUS_REVOKED:I = 0x1

.field private static final CERT_STATUS_UNKNOWN:I = 0x2

.field private static final DEFAULT_MAX_CLOCK_SKEW:I = 0xdbba0

.field private static final KEY_TAG:I = 0x2

.field private static final KP_OCSP_SIGNING_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final MAX_CLOCK_SKEW:I

.field private static final NAME_TAG:I = 0x1

.field private static final OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final debug:Lsun/security/util/Debug;

.field private static final dump:Z

.field private static rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private static values:[Ljava/security/cert/CRLReason;


# instance fields
.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private responderKeyId:Lsun/security/x509/KeyIdentifier;

.field private responderName:Ljavax/security/auth/x500/X500Principal;

.field private final responseNonce:[B

.field private final responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private final sigAlgId:Lsun/security/x509/AlgorithmId;

.field private final signature:[B

.field private signerCert:Lsun/security/x509/X509CertImpl;

.field private final singleResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            "Lsun/security/provider/certpath/OCSPResponse$SingleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final tbsResponseData:[B


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    #@0
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@2
    return-object v0
.end method

.method static synthetic -get1()[Ljava/security/cert/CRLReason;
    .locals 1

    #@0
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    #@2
    return-object v0
.end method

.method private static synthetic -getsun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x5

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x6

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x2

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x3

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x4

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@6
    .line 134
    const-string/jumbo v0, "certpath"

    #@9
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@f
    .line 135
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@11
    if-eqz v0, :cond_0

    #@13
    const-string/jumbo v0, "ocsp"

    #@16
    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    :goto_0
    sput-boolean v0, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    #@1c
    .line 137
    const/16 v0, 0xa

    #@1e
    new-array v0, v0, [I

    #@20
    fill-array-data v0, :array_0

    #@23
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@26
    move-result-object v0

    #@27
    .line 136
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    #@29
    .line 157
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->initializeClockSkew()I

    #@2c
    move-result v0

    #@2d
    sput v0, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    #@2f
    .line 176
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    #@32
    move-result-object v0

    #@33
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    #@35
    .line 121
    return-void

    #@36
    .line 135
    :cond_0
    const/4 v0, 0x0

    #@37
    goto :goto_0

    #@38
    .line 137
    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x1
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 30
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 185
    const/16 v27, 0x0

    #@5
    move-object/from16 v0, v27

    #@7
    move-object/from16 v1, p0

    #@9
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@b
    .line 186
    const/16 v27, 0x0

    #@d
    move-object/from16 v0, v27

    #@f
    move-object/from16 v1, p0

    #@11
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    #@13
    .line 187
    const/16 v27, 0x0

    #@15
    move-object/from16 v0, v27

    #@17
    move-object/from16 v1, p0

    #@19
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    #@1b
    .line 193
    sget-boolean v27, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    #@1d
    if-eqz v27, :cond_0

    #@1f
    .line 194
    new-instance v10, Lsun/misc/HexDumpEncoder;

    #@21
    invoke-direct {v10}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@24
    .line 195
    .local v10, "hexEnc":Lsun/misc/HexDumpEncoder;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@26
    new-instance v28, Ljava/lang/StringBuilder;

    #@28
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v29, "OCSPResponse bytes...\n\n"

    #@2e
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v28

    #@32
    .line 196
    move-object/from16 v0, p1

    #@34
    invoke-virtual {v10, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@37
    move-result-object v29

    #@38
    .line 195
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v28

    #@3c
    .line 196
    const-string/jumbo v29, "\n"

    #@3f
    .line 195
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v28

    #@43
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v28

    #@47
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@4a
    .line 198
    .end local v10    # "hexEnc":Lsun/misc/HexDumpEncoder;
    :cond_0
    new-instance v6, Lsun/security/util/DerValue;

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-direct {v6, v0}, Lsun/security/util/DerValue;-><init>([B)V

    #@51
    .line 199
    .local v6, "der":Lsun/security/util/DerValue;
    iget-byte v0, v6, Lsun/security/util/DerValue;->tag:B

    #@53
    move/from16 v27, v0

    #@55
    const/16 v28, 0x30

    #@57
    move/from16 v0, v27

    #@59
    move/from16 v1, v28

    #@5b
    if-eq v0, v1, :cond_1

    #@5d
    .line 200
    new-instance v27, Ljava/io/IOException;

    #@5f
    const-string/jumbo v28, "Bad encoding in OCSP response: expected ASN.1 SEQUENCE tag."

    #@62
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v27

    #@66
    .line 203
    :cond_1
    invoke-virtual {v6}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@69
    move-result-object v8

    #@6a
    .line 206
    .local v8, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    #@6d
    move-result v23

    #@6e
    .line 207
    .local v23, "status":I
    if-ltz v23, :cond_3

    #@70
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@72
    move-object/from16 v0, v27

    #@74
    array-length v0, v0

    #@75
    move/from16 v27, v0

    #@77
    move/from16 v0, v23

    #@79
    move/from16 v1, v27

    #@7b
    if-ge v0, v1, :cond_3

    #@7d
    .line 208
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@7f
    aget-object v27, v27, v23

    #@81
    move-object/from16 v0, v27

    #@83
    move-object/from16 v1, p0

    #@85
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@87
    .line 213
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@89
    if-eqz v27, :cond_2

    #@8b
    .line 214
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@8d
    new-instance v28, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v29, "OCSP response status: "

    #@95
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v28

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@9d
    move-object/from16 v29, v0

    #@9f
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v28

    #@a3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v28

    #@a7
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@aa
    .line 216
    :cond_2
    move-object/from16 v0, p0

    #@ac
    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@ae
    move-object/from16 v27, v0

    #@b0
    sget-object v28, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@b2
    move-object/from16 v0, v27

    #@b4
    move-object/from16 v1, v28

    #@b6
    if-eq v0, v1, :cond_4

    #@b8
    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@bb
    move-result-object v27

    #@bc
    move-object/from16 v0, v27

    #@be
    move-object/from16 v1, p0

    #@c0
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    #@c2
    .line 219
    new-instance v27, Ljava/util/ArrayList;

    #@c4
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    #@c7
    move-object/from16 v0, v27

    #@c9
    move-object/from16 v1, p0

    #@cb
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@cd
    .line 220
    const/16 v27, 0x0

    #@cf
    move-object/from16 v0, v27

    #@d1
    move-object/from16 v1, p0

    #@d3
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@d5
    .line 221
    const/16 v27, 0x0

    #@d7
    move-object/from16 v0, v27

    #@d9
    move-object/from16 v1, p0

    #@db
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    #@dd
    .line 222
    const/16 v27, 0x0

    #@df
    move-object/from16 v0, v27

    #@e1
    move-object/from16 v1, p0

    #@e3
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    #@e5
    .line 223
    const/16 v27, 0x0

    #@e7
    move-object/from16 v0, v27

    #@e9
    move-object/from16 v1, p0

    #@eb
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    #@ed
    .line 224
    return-void

    #@ee
    .line 211
    :cond_3
    new-instance v27, Ljava/io/IOException;

    #@f0
    new-instance v28, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v29, "Unknown OCSPResponse status: "

    #@f8
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v28

    #@fc
    move-object/from16 v0, v28

    #@fe
    move/from16 v1, v23

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@103
    move-result-object v28

    #@104
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v28

    #@108
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10b
    throw v27

    #@10c
    .line 228
    :cond_4
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@10f
    move-result-object v6

    #@110
    .line 229
    const/16 v27, 0x0

    #@112
    move/from16 v0, v27

    #@114
    invoke-virtual {v6, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@117
    move-result v27

    #@118
    if-nez v27, :cond_5

    #@11a
    .line 230
    new-instance v27, Ljava/io/IOException;

    #@11c
    const-string/jumbo v28, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 context specific tag 0."

    #@11f
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@122
    throw v27

    #@123
    .line 233
    :cond_5
    iget-object v0, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@125
    move-object/from16 v27, v0

    #@127
    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@12a
    move-result-object v25

    #@12b
    .line 234
    .local v25, "tmp":Lsun/security/util/DerValue;
    move-object/from16 v0, v25

    #@12d
    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    #@12f
    move/from16 v27, v0

    #@131
    const/16 v28, 0x30

    #@133
    move/from16 v0, v27

    #@135
    move/from16 v1, v28

    #@137
    if-eq v0, v1, :cond_6

    #@139
    .line 235
    new-instance v27, Ljava/io/IOException;

    #@13b
    const-string/jumbo v28, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 SEQUENCE tag."

    #@13e
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@141
    throw v27

    #@142
    .line 240
    :cond_6
    move-object/from16 v0, v25

    #@144
    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@146
    .line 241
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@149
    move-result-object v16

    #@14a
    .line 242
    .local v16, "responseType":Lsun/security/util/ObjectIdentifier;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    #@14c
    move-object/from16 v0, v16

    #@14e
    move-object/from16 v1, v27

    #@150
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@153
    move-result v27

    #@154
    if-eqz v27, :cond_8

    #@156
    .line 243
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@158
    if-eqz v27, :cond_7

    #@15a
    .line 244
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@15c
    const-string/jumbo v28, "OCSP response type: basic"

    #@15f
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@162
    .line 256
    :cond_7
    new-instance v3, Lsun/security/util/DerInputStream;

    #@164
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@167
    move-result-object v27

    #@168
    move-object/from16 v0, v27

    #@16a
    invoke-direct {v3, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@16d
    .line 258
    .local v3, "basicOCSPResponse":Lsun/security/util/DerInputStream;
    const/16 v27, 0x2

    #@16f
    move/from16 v0, v27

    #@171
    invoke-virtual {v3, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@174
    move-result-object v20

    #@175
    .line 259
    .local v20, "seqTmp":[Lsun/security/util/DerValue;
    move-object/from16 v0, v20

    #@177
    array-length v0, v0

    #@178
    move/from16 v27, v0

    #@17a
    const/16 v28, 0x3

    #@17c
    move/from16 v0, v27

    #@17e
    move/from16 v1, v28

    #@180
    if-ge v0, v1, :cond_a

    #@182
    .line 260
    new-instance v27, Ljava/io/IOException;

    #@184
    const-string/jumbo v28, "Unexpected BasicOCSPResponse value"

    #@187
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18a
    throw v27

    #@18b
    .line 247
    .end local v3    # "basicOCSPResponse":Lsun/security/util/DerInputStream;
    .end local v20    # "seqTmp":[Lsun/security/util/DerValue;
    :cond_8
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@18d
    if-eqz v27, :cond_9

    #@18f
    .line 248
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@191
    new-instance v28, Ljava/lang/StringBuilder;

    #@193
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@196
    const-string/jumbo v29, "OCSP response type: "

    #@199
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v28

    #@19d
    move-object/from16 v0, v28

    #@19f
    move-object/from16 v1, v16

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v28

    #@1a5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v28

    #@1a9
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1ac
    .line 250
    :cond_9
    new-instance v27, Ljava/io/IOException;

    #@1ae
    new-instance v28, Ljava/lang/StringBuilder;

    #@1b0
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@1b3
    const-string/jumbo v29, "Unsupported OCSP response type: "

    #@1b6
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v28

    #@1ba
    move-object/from16 v0, v28

    #@1bc
    move-object/from16 v1, v16

    #@1be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v28

    #@1c2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v28

    #@1c6
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c9
    throw v27

    #@1ca
    .line 263
    .restart local v3    # "basicOCSPResponse":Lsun/security/util/DerInputStream;
    .restart local v20    # "seqTmp":[Lsun/security/util/DerValue;
    :cond_a
    const/16 v27, 0x0

    #@1cc
    aget-object v14, v20, v27

    #@1ce
    .line 266
    .local v14, "responseData":Lsun/security/util/DerValue;
    const/16 v27, 0x0

    #@1d0
    aget-object v27, v20, v27

    #@1d2
    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->toByteArray()[B

    #@1d5
    move-result-object v27

    #@1d6
    move-object/from16 v0, v27

    #@1d8
    move-object/from16 v1, p0

    #@1da
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    #@1dc
    .line 269
    iget-byte v0, v14, Lsun/security/util/DerValue;->tag:B

    #@1de
    move/from16 v27, v0

    #@1e0
    const/16 v28, 0x30

    #@1e2
    move/from16 v0, v27

    #@1e4
    move/from16 v1, v28

    #@1e6
    if-eq v0, v1, :cond_b

    #@1e8
    .line 270
    new-instance v27, Ljava/io/IOException;

    #@1ea
    const-string/jumbo v28, "Bad encoding in tbsResponseData element of OCSP response: expected ASN.1 SEQUENCE tag."

    #@1ed
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f0
    throw v27

    #@1f1
    .line 273
    :cond_b
    iget-object v0, v14, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1f3
    move-object/from16 v19, v0

    #@1f5
    .line 274
    .local v19, "seqDerIn":Lsun/security/util/DerInputStream;
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1f8
    move-result-object v17

    #@1f9
    .line 277
    .local v17, "seq":Lsun/security/util/DerValue;
    const/16 v27, 0x0

    #@1fb
    move-object/from16 v0, v17

    #@1fd
    move/from16 v1, v27

    #@1ff
    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@202
    move-result v27

    #@203
    if-eqz v27, :cond_d

    #@205
    .line 279
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->isConstructed()Z

    #@208
    move-result v27

    #@209
    if-eqz v27, :cond_d

    #@20b
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->isContextSpecific()Z

    #@20e
    move-result v27

    #@20f
    if-eqz v27, :cond_d

    #@211
    .line 281
    move-object/from16 v0, v17

    #@213
    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@215
    move-object/from16 v27, v0

    #@217
    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@21a
    move-result-object v17

    #@21b
    .line 282
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getInteger()I

    #@21e
    move-result v26

    #@21f
    .line 283
    .local v26, "version":I
    move-object/from16 v0, v17

    #@221
    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@223
    move-object/from16 v27, v0

    #@225
    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->available()I

    #@228
    move-result v27

    #@229
    if-eqz v27, :cond_c

    #@22b
    .line 284
    new-instance v27, Ljava/io/IOException;

    #@22d
    const-string/jumbo v28, "Bad encoding in version  element of OCSP response: bad format"

    #@230
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@233
    throw v27

    #@234
    .line 287
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@237
    move-result-object v17

    #@238
    .line 292
    .end local v26    # "version":I
    :cond_d
    move-object/from16 v0, v17

    #@23a
    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    #@23c
    move/from16 v27, v0

    #@23e
    and-int/lit8 v27, v27, 0x1f

    #@240
    move/from16 v0, v27

    #@242
    int-to-byte v0, v0

    #@243
    move/from16 v27, v0

    #@245
    move/from16 v0, v27

    #@247
    int-to-short v0, v0

    #@248
    move/from16 v24, v0

    #@24a
    .line 293
    .local v24, "tag":S
    const/16 v27, 0x1

    #@24c
    move/from16 v0, v24

    #@24e
    move/from16 v1, v27

    #@250
    if-ne v0, v1, :cond_11

    #@252
    .line 294
    new-instance v27, Ljavax/security/auth/x500/X500Principal;

    #@254
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@257
    move-result-object v28

    #@258
    invoke-virtual/range {v28 .. v28}, Lsun/security/util/DerInputStream;->toByteArray()[B

    #@25b
    move-result-object v28

    #@25c
    invoke-direct/range {v27 .. v28}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    #@25f
    move-object/from16 v0, v27

    #@261
    move-object/from16 v1, p0

    #@263
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    #@265
    .line 295
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@267
    if-eqz v27, :cond_e

    #@269
    .line 296
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@26b
    new-instance v28, Ljava/lang/StringBuilder;

    #@26d
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@270
    const-string/jumbo v29, "Responder\'s name: "

    #@273
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v28

    #@277
    move-object/from16 v0, p0

    #@279
    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    #@27b
    move-object/from16 v29, v0

    #@27d
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@280
    move-result-object v28

    #@281
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@284
    move-result-object v28

    #@285
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@288
    .line 310
    :cond_e
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@28b
    move-result-object v17

    #@28c
    .line 311
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@28e
    if-eqz v27, :cond_f

    #@290
    .line 312
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    #@293
    move-result-object v13

    #@294
    .line 313
    .local v13, "producedAtDate":Ljava/util/Date;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@296
    new-instance v28, Ljava/lang/StringBuilder;

    #@298
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@29b
    const-string/jumbo v29, "OCSP response produced at: "

    #@29e
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v28

    #@2a2
    move-object/from16 v0, v28

    #@2a4
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v28

    #@2a8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ab
    move-result-object v28

    #@2ac
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2af
    .line 317
    .end local v13    # "producedAtDate":Ljava/util/Date;
    :cond_f
    const/16 v27, 0x1

    #@2b1
    move-object/from16 v0, v19

    #@2b3
    move/from16 v1, v27

    #@2b5
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@2b8
    move-result-object v22

    #@2b9
    .line 318
    .local v22, "singleResponseDer":[Lsun/security/util/DerValue;
    new-instance v27, Ljava/util/HashMap;

    #@2bb
    move-object/from16 v0, v22

    #@2bd
    array-length v0, v0

    #@2be
    move/from16 v28, v0

    #@2c0
    invoke-direct/range {v27 .. v28}, Ljava/util/HashMap;-><init>(I)V

    #@2c3
    move-object/from16 v0, v27

    #@2c5
    move-object/from16 v1, p0

    #@2c7
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    #@2c9
    .line 319
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@2cb
    if-eqz v27, :cond_10

    #@2cd
    .line 320
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@2cf
    new-instance v28, Ljava/lang/StringBuilder;

    #@2d1
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@2d4
    const-string/jumbo v29, "OCSP number of SingleResponses: "

    #@2d7
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    move-result-object v28

    #@2db
    .line 321
    move-object/from16 v0, v22

    #@2dd
    array-length v0, v0

    #@2de
    move/from16 v29, v0

    #@2e0
    .line 320
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e3
    move-result-object v28

    #@2e4
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e7
    move-result-object v28

    #@2e8
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2eb
    .line 323
    :cond_10
    const/4 v11, 0x0

    #@2ec
    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v22

    #@2ee
    array-length v0, v0

    #@2ef
    move/from16 v27, v0

    #@2f1
    move/from16 v0, v27

    #@2f3
    if-ge v11, v0, :cond_13

    #@2f5
    .line 325
    new-instance v21, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@2f7
    aget-object v27, v22, v11

    #@2f9
    const/16 v28, 0x0

    #@2fb
    move-object/from16 v0, v21

    #@2fd
    move-object/from16 v1, v27

    #@2ff
    move-object/from16 v2, v28

    #@301
    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V

    #@304
    .line 326
    .local v21, "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    move-object/from16 v0, p0

    #@306
    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    #@308
    move-object/from16 v27, v0

    #@30a
    invoke-static/range {v21 .. v21}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-wrap0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;

    #@30d
    move-result-object v28

    #@30e
    move-object/from16 v0, v27

    #@310
    move-object/from16 v1, v28

    #@312
    move-object/from16 v2, v21

    #@314
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@317
    .line 323
    add-int/lit8 v11, v11, 0x1

    #@319
    goto :goto_1

    #@31a
    .line 298
    .end local v11    # "i":I
    .end local v21    # "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .end local v22    # "singleResponseDer":[Lsun/security/util/DerValue;
    :cond_11
    const/16 v27, 0x2

    #@31c
    move/from16 v0, v24

    #@31e
    move/from16 v1, v27

    #@320
    if-ne v0, v1, :cond_12

    #@322
    .line 299
    new-instance v27, Lsun/security/x509/KeyIdentifier;

    #@324
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@327
    move-result-object v28

    #@328
    invoke-virtual/range {v28 .. v28}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@32b
    move-result-object v28

    #@32c
    invoke-direct/range {v27 .. v28}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    #@32f
    move-object/from16 v0, v27

    #@331
    move-object/from16 v1, p0

    #@333
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    #@335
    .line 300
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@337
    if-eqz v27, :cond_e

    #@339
    .line 301
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@33b
    new-instance v28, Ljava/lang/StringBuilder;

    #@33d
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@340
    const-string/jumbo v29, "Responder\'s key ID: "

    #@343
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@346
    move-result-object v28

    #@347
    .line 302
    move-object/from16 v0, p0

    #@349
    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    #@34b
    move-object/from16 v29, v0

    #@34d
    invoke-virtual/range {v29 .. v29}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    #@350
    move-result-object v29

    #@351
    invoke-static/range {v29 .. v29}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    #@354
    move-result-object v29

    #@355
    .line 301
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@358
    move-result-object v28

    #@359
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35c
    move-result-object v28

    #@35d
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@360
    goto/16 :goto_0

    #@362
    .line 305
    :cond_12
    new-instance v27, Ljava/io/IOException;

    #@364
    const-string/jumbo v28, "Bad encoding in responderID element of OCSP response: expected ASN.1 context specific tag 0 or 1"

    #@367
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@36a
    throw v27

    #@36b
    .line 330
    .restart local v11    # "i":I
    .restart local v22    # "singleResponseDer":[Lsun/security/util/DerValue;
    :cond_13
    const/4 v12, 0x0

    #@36c
    .line 331
    .local v12, "nonce":[B
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->available()I

    #@36f
    move-result v27

    #@370
    if-lez v27, :cond_17

    #@372
    .line 332
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@375
    move-result-object v17

    #@376
    .line 333
    const/16 v27, 0x1

    #@378
    move-object/from16 v0, v17

    #@37a
    move/from16 v1, v27

    #@37c
    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@37f
    move-result v27

    #@380
    if-eqz v27, :cond_17

    #@382
    .line 334
    move-object/from16 v0, v17

    #@384
    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@386
    move-object/from16 v27, v0

    #@388
    const/16 v28, 0x3

    #@38a
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@38d
    move-result-object v15

    #@38e
    .line 335
    .local v15, "responseExtDer":[Lsun/security/util/DerValue;
    const/4 v11, 0x0

    #@38f
    .end local v12    # "nonce":[B
    :goto_2
    array-length v0, v15

    #@390
    move/from16 v27, v0

    #@392
    move/from16 v0, v27

    #@394
    if-ge v11, v0, :cond_17

    #@396
    .line 336
    new-instance v9, Lsun/security/x509/Extension;

    #@398
    aget-object v27, v15, v11

    #@39a
    move-object/from16 v0, v27

    #@39c
    invoke-direct {v9, v0}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    #@39f
    .line 337
    .local v9, "ext":Lsun/security/x509/Extension;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@3a1
    if-eqz v27, :cond_14

    #@3a3
    .line 338
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@3a5
    new-instance v28, Ljava/lang/StringBuilder;

    #@3a7
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@3aa
    const-string/jumbo v29, "OCSP extension: "

    #@3ad
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v28

    #@3b1
    move-object/from16 v0, v28

    #@3b3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v28

    #@3b7
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ba
    move-result-object v28

    #@3bb
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@3be
    .line 341
    :cond_14
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@3c1
    move-result-object v27

    #@3c2
    .line 342
    sget-object v28, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    #@3c4
    .line 341
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@3c7
    move-result v27

    #@3c8
    if-eqz v27, :cond_16

    #@3ca
    .line 344
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionValue()[B

    #@3cd
    move-result-object v12

    #@3ce
    .line 335
    :cond_15
    add-int/lit8 v11, v11, 0x1

    #@3d0
    goto :goto_2

    #@3d1
    .line 345
    :cond_16
    invoke-virtual {v9}, Lsun/security/x509/Extension;->isCritical()Z

    #@3d4
    move-result v27

    #@3d5
    if-eqz v27, :cond_15

    #@3d7
    .line 346
    new-instance v27, Ljava/io/IOException;

    #@3d9
    .line 347
    new-instance v28, Ljava/lang/StringBuilder;

    #@3db
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@3de
    const-string/jumbo v29, "Unsupported OCSP critical extension: "

    #@3e1
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e4
    move-result-object v28

    #@3e5
    .line 348
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    #@3e8
    move-result-object v29

    #@3e9
    .line 347
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3ec
    move-result-object v28

    #@3ed
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f0
    move-result-object v28

    #@3f1
    .line 346
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f4
    throw v27

    #@3f5
    .line 353
    .end local v9    # "ext":Lsun/security/x509/Extension;
    .end local v15    # "responseExtDer":[Lsun/security/util/DerValue;
    :cond_17
    move-object/from16 v0, p0

    #@3f7
    iput-object v12, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    #@3f9
    .line 356
    const/16 v27, 0x1

    #@3fb
    aget-object v27, v20, v27

    #@3fd
    invoke-static/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    #@400
    move-result-object v27

    #@401
    move-object/from16 v0, v27

    #@403
    move-object/from16 v1, p0

    #@405
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@407
    .line 359
    const/16 v27, 0x2

    #@409
    aget-object v27, v20, v27

    #@40b
    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->getBitString()[B

    #@40e
    move-result-object v27

    #@40f
    move-object/from16 v0, v27

    #@411
    move-object/from16 v1, p0

    #@413
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    #@415
    .line 362
    move-object/from16 v0, v20

    #@417
    array-length v0, v0

    #@418
    move/from16 v27, v0

    #@41a
    const/16 v28, 0x3

    #@41c
    move/from16 v0, v27

    #@41e
    move/from16 v1, v28

    #@420
    if-le v0, v1, :cond_1a

    #@422
    .line 364
    const/16 v27, 0x3

    #@424
    aget-object v18, v20, v27

    #@426
    .line 365
    .local v18, "seqCert":Lsun/security/util/DerValue;
    const/16 v27, 0x0

    #@428
    move-object/from16 v0, v18

    #@42a
    move/from16 v1, v27

    #@42c
    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@42f
    move-result v27

    #@430
    if-nez v27, :cond_18

    #@432
    .line 366
    new-instance v27, Ljava/io/IOException;

    #@434
    const-string/jumbo v28, "Bad encoding in certs element of OCSP response: expected ASN.1 context specific tag 0."

    #@437
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@43a
    throw v27

    #@43b
    .line 369
    :cond_18
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    #@43e
    move-result-object v27

    #@43f
    const/16 v28, 0x3

    #@441
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@444
    move-result-object v7

    #@445
    .line 370
    .local v7, "derCerts":[Lsun/security/util/DerValue;
    new-instance v27, Ljava/util/ArrayList;

    #@447
    array-length v0, v7

    #@448
    move/from16 v28, v0

    #@44a
    invoke-direct/range {v27 .. v28}, Ljava/util/ArrayList;-><init>(I)V

    #@44d
    move-object/from16 v0, v27

    #@44f
    move-object/from16 v1, p0

    #@451
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@453
    .line 372
    const/4 v11, 0x0

    #@454
    :goto_3
    :try_start_0
    array-length v0, v7

    #@455
    move/from16 v27, v0

    #@457
    move/from16 v0, v27

    #@459
    if-ge v11, v0, :cond_1b

    #@45b
    .line 374
    new-instance v5, Lsun/security/x509/X509CertImpl;

    #@45d
    aget-object v27, v7, v11

    #@45f
    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->toByteArray()[B

    #@462
    move-result-object v27

    #@463
    move-object/from16 v0, v27

    #@465
    invoke-direct {v5, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    #@468
    .line 375
    .local v5, "cert":Lsun/security/x509/X509CertImpl;
    move-object/from16 v0, p0

    #@46a
    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@46c
    move-object/from16 v27, v0

    #@46e
    move-object/from16 v0, v27

    #@470
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@473
    .line 377
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@475
    if-eqz v27, :cond_19

    #@477
    .line 378
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@479
    new-instance v28, Ljava/lang/StringBuilder;

    #@47b
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@47e
    const-string/jumbo v29, "OCSP response cert #"

    #@481
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@484
    move-result-object v28

    #@485
    add-int/lit8 v29, v11, 0x1

    #@487
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48a
    move-result-object v28

    #@48b
    const-string/jumbo v29, ": "

    #@48e
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@491
    move-result-object v28

    #@492
    .line 379
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@495
    move-result-object v29

    #@496
    .line 378
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@499
    move-result-object v28

    #@49a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49d
    move-result-object v28

    #@49e
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a1
    .line 372
    :cond_19
    add-int/lit8 v11, v11, 0x1

    #@4a3
    goto :goto_3

    #@4a4
    .line 382
    .end local v5    # "cert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v4

    #@4a5
    .line 383
    .local v4, "ce":Ljava/security/cert/CertificateException;
    new-instance v27, Ljava/io/IOException;

    #@4a7
    const-string/jumbo v28, "Bad encoding in X509 Certificate"

    #@4aa
    move-object/from16 v0, v27

    #@4ac
    move-object/from16 v1, v28

    #@4ae
    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b1
    throw v27

    #@4b2
    .line 386
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .end local v7    # "derCerts":[Lsun/security/util/DerValue;
    .end local v18    # "seqCert":Lsun/security/util/DerValue;
    :cond_1a
    new-instance v27, Ljava/util/ArrayList;

    #@4b4
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    #@4b7
    move-object/from16 v0, v27

    #@4b9
    move-object/from16 v1, p0

    #@4bb
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@4bd
    .line 192
    :cond_1b
    return-void
.end method

.method private static initializeClockSkew()I
    .locals 3

    #@0
    .prologue
    .line 166
    new-instance v1, Lsun/security/action/GetIntegerAction;

    #@2
    const-string/jumbo v2, "com.sun.security.ocsp.clockSkew"

    #@5
    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 165
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 167
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v1

    #@14
    if-gez v1, :cond_1

    #@16
    .line 168
    :cond_0
    const v1, 0xdbba0

    #@19
    return v1

    #@1a
    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v1

    #@1e
    mul-int/lit16 v1, v1, 0x3e8

    #@20
    return v1
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 634
    :try_start_0
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@2
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@9
    move-result-object v1

    #@a
    .line 635
    .local v1, "respSignature":Ljava/security/Signature;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@11
    .line 636
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    #@13
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    #@16
    .line 638
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    #@18
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 639
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 640
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@24
    const-string/jumbo v3, "Verified signature of OCSP Response"

    #@27
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@2a
    .line 642
    :cond_0
    const/4 v2, 0x1

    #@2b
    return v2

    #@2c
    .line 645
    :cond_1
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 646
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@32
    .line 647
    const-string/jumbo v3, "Error verifying signature of OCSP Response"

    #@35
    .line 646
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 649
    :cond_2
    const/4 v2, 0x0

    #@39
    return v2

    #@3a
    .line 653
    .end local v1    # "respSignature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    #@3b
    .line 654
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@3d
    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v2
.end method


# virtual methods
.method getResponseStatus()Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .locals 1

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@2
    return-object v0
.end method

.method getSignerCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@2
    return-object v0
.end method

.method getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .locals 1
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@8
    return-object v0
.end method

.method verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    .locals 29
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-getsun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues()[I

    #@3
    move-result-object v2

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@8
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    #@b
    move-result v3

    #@c
    aget v2, v2, v3

    #@e
    packed-switch v2, :pswitch_data_0

    #@11
    .line 404
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "OCSP response error: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 405
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@23
    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 399
    :pswitch_0
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@31
    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "OCSP response error: "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v4, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 401
    sget-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@4b
    .line 400
    const/4 v4, 0x0

    #@4c
    const/4 v5, 0x0

    #@4d
    const/4 v6, -0x1

    #@4e
    .line 399
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@51
    throw v2

    #@52
    .line 410
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v13

    #@56
    .local v13, "certId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_3

    #@5c
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v12

    #@60
    check-cast v12, Lsun/security/provider/certpath/CertId;

    #@62
    .line 411
    .local v12, "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v12}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@67
    move-result-object v26

    #@68
    .line 412
    .local v26, "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    if-nez v26, :cond_2

    #@6a
    .line 413
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@6c
    if-eqz v2, :cond_1

    #@6e
    .line 414
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@70
    new-instance v3, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v4, "No response found for CertId: "

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@87
    .line 416
    :cond_1
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@89
    .line 417
    const-string/jumbo v3, "OCSP response does not include a response for a certificate supplied in the OCSP request"

    #@8c
    .line 416
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v2

    #@90
    .line 420
    :cond_2
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@92
    if-eqz v2, :cond_0

    #@94
    .line 421
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@96
    new-instance v3, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v4, "Status of certificate (with serial number "

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    .line 422
    invoke-virtual {v12}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    #@a5
    move-result-object v4

    #@a6
    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    .line 422
    const-string/jumbo v4, ") is: "

    #@ad
    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    .line 422
    invoke-virtual/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    #@b4
    move-result-object v4

    #@b5
    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v3

    #@bd
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@c0
    goto :goto_0

    #@c1
    .line 427
    .end local v12    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_3
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@c5
    if-nez v2, :cond_6

    #@c7
    .line 431
    :try_start_0
    move-object/from16 v0, p0

    #@c9
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@cb
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@ce
    move-result-object v3

    #@cf
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d2
    .line 432
    if-eqz p3, :cond_4

    #@d4
    .line 433
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@d8
    invoke-static/range {p3 .. p3}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@db
    move-result-object v3

    #@dc
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@df
    .line 440
    :cond_4
    move-object/from16 v0, p0

    #@e1
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    #@e3
    if-eqz v2, :cond_8

    #@e5
    .line 441
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@e9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ec
    move-result-object v11

    #@ed
    .local v11, "cert$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@f0
    move-result v2

    #@f1
    if-eqz v2, :cond_6

    #@f3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f6
    move-result-object v10

    #@f7
    check-cast v10, Lsun/security/x509/X509CertImpl;

    #@f9
    .line 442
    .local v10, "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@fc
    move-result-object v2

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    #@101
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v2

    #@105
    if-eqz v2, :cond_5

    #@107
    .line 443
    move-object/from16 v0, p0

    #@109
    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@10b
    .line 477
    .end local v10    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v11    # "cert$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    #@10d
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@10f
    if-eqz v2, :cond_7

    #@111
    .line 479
    move-object/from16 v0, p0

    #@113
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v2, v0}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@11a
    move-result v2

    #@11b
    if-eqz v2, :cond_b

    #@11d
    .line 480
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@11f
    if-eqz v2, :cond_7

    #@121
    .line 481
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@123
    const-string/jumbo v3, "OCSP response is signed by the target\'s Issuing CA"

    #@126
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@129
    .line 574
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@12d
    if-eqz v2, :cond_11

    #@12f
    .line 577
    move-object/from16 v0, p0

    #@131
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@133
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@136
    move-result-object v2

    #@137
    move-object/from16 v0, p0

    #@139
    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    #@13b
    invoke-static {v2, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    #@13e
    .line 579
    move-object/from16 v0, p0

    #@140
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@142
    move-object/from16 v0, p0

    #@144
    invoke-direct {v0, v2}, Lsun/security/provider/certpath/OCSPResponse;->verifySignature(Ljava/security/cert/X509Certificate;)Z

    #@147
    move-result v2

    #@148
    if-nez v2, :cond_12

    #@14a
    .line 580
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@14c
    .line 581
    const-string/jumbo v3, "Error verifying OCSP Response\'s signature"

    #@14f
    .line 580
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@152
    throw v2

    #@153
    .line 435
    :catch_0
    move-exception v9

    #@154
    .line 436
    .local v9, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@156
    .line 437
    const-string/jumbo v3, "Invalid issuer or trusted responder certificate"

    #@159
    .line 436
    invoke-direct {v2, v3, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@15c
    throw v2

    #@15d
    .line 447
    .end local v9    # "ce":Ljava/security/cert/CertificateException;
    :cond_8
    move-object/from16 v0, p0

    #@15f
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    #@161
    if-eqz v2, :cond_6

    #@163
    .line 448
    move-object/from16 v0, p0

    #@165
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    #@167
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16a
    move-result-object v11

    #@16b
    .restart local v11    # "cert$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@16e
    move-result v2

    #@16f
    if-eqz v2, :cond_6

    #@171
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@174
    move-result-object v10

    #@175
    check-cast v10, Lsun/security/x509/X509CertImpl;

    #@177
    .line 452
    .restart local v10    # "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectKeyId()Lsun/security/x509/KeyIdentifier;

    #@17a
    move-result-object v14

    #@17b
    .line 453
    .local v14, "certKeyId":Lsun/security/x509/KeyIdentifier;
    if-eqz v14, :cond_a

    #@17d
    move-object/from16 v0, p0

    #@17f
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    #@181
    invoke-virtual {v2, v14}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    #@184
    move-result v2

    #@185
    if-eqz v2, :cond_a

    #@187
    .line 454
    move-object/from16 v0, p0

    #@189
    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@18b
    goto :goto_1

    #@18c
    .line 463
    :cond_a
    :try_start_1
    new-instance v15, Lsun/security/x509/KeyIdentifier;

    #@18e
    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    #@191
    move-result-object v2

    #@192
    invoke-direct {v15, v2}, Lsun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    #@195
    .end local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    .local v15, "certKeyId":Lsun/security/x509/KeyIdentifier;
    move-object v14, v15

    #@196
    .line 467
    .end local v15    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    .restart local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :goto_3
    move-object/from16 v0, p0

    #@198
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    #@19a
    invoke-virtual {v2, v14}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    #@19d
    move-result v2

    #@19e
    if-eqz v2, :cond_9

    #@1a0
    .line 468
    move-object/from16 v0, p0

    #@1a2
    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@1a4
    goto/16 :goto_1

    #@1a6
    .line 487
    .end local v10    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v11    # "cert$iterator":Ljava/util/Iterator;
    .end local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :cond_b
    move-object/from16 v0, p0

    #@1a8
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@1aa
    move-object/from16 v0, p3

    #@1ac
    invoke-virtual {v2, v0}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    #@1af
    move-result v2

    #@1b0
    if-eqz v2, :cond_c

    #@1b2
    .line 488
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@1b4
    if-eqz v2, :cond_7

    #@1b6
    .line 489
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@1b8
    const-string/jumbo v3, "OCSP response is signed by a Trusted Responder"

    #@1bb
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@1be
    goto/16 :goto_2

    #@1c0
    .line 495
    :cond_c
    move-object/from16 v0, p0

    #@1c2
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@1c4
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1c7
    move-result-object v2

    #@1c8
    .line 496
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@1cb
    move-result-object v3

    #@1cc
    .line 495
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    #@1cf
    move-result v2

    #@1d0
    if-eqz v2, :cond_10

    #@1d2
    .line 500
    :try_start_2
    move-object/from16 v0, p0

    #@1d4
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@1d6
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage()Ljava/util/List;

    #@1d9
    move-result-object v20

    #@1da
    .line 501
    .local v20, "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_e

    #@1dc
    .line 502
    const-string/jumbo v2, "1.3.6.1.5.5.7.3.9"

    #@1df
    move-object/from16 v0, v20

    #@1e1
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_2 .. :try_end_2} :catch_2

    #@1e4
    move-result v2

    #@1e5
    if-eqz v2, :cond_e

    #@1e7
    .line 516
    new-instance v8, Lsun/security/provider/certpath/AlgorithmChecker;

    #@1e9
    .line 517
    new-instance v2, Ljava/security/cert/TrustAnchor;

    #@1eb
    const/4 v3, 0x0

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-direct {v2, v0, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    #@1f1
    .line 516
    invoke-direct {v8, v2}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    #@1f4
    .line 518
    .local v8, "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v2, 0x0

    #@1f5
    invoke-virtual {v8, v2}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    #@1f8
    .line 519
    move-object/from16 v0, p0

    #@1fa
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@1fc
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@1ff
    move-result-object v3

    #@200
    invoke-virtual {v8, v2, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    #@203
    .line 523
    if-nez p4, :cond_f

    #@205
    .line 524
    :try_start_3
    move-object/from16 v0, p0

    #@207
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@209
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->checkValidity()V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    #@20c
    .line 542
    :goto_4
    move-object/from16 v0, p0

    #@20e
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@210
    sget-object v3, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    #@212
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@215
    move-result-object v21

    #@216
    .line 543
    .local v21, "noCheck":Lsun/security/x509/Extension;
    if-eqz v21, :cond_d

    #@218
    .line 544
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@21a
    if-eqz v2, :cond_d

    #@21c
    .line 545
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@21e
    const-string/jumbo v3, "Responder\'s certificate includes the extension id-pkix-ocsp-nocheck."

    #@221
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@224
    .line 555
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    #@226
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@228
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@22b
    move-result-object v3

    #@22c
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    #@22f
    .line 556
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@231
    if-eqz v2, :cond_7

    #@233
    .line 557
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@235
    const-string/jumbo v3, "OCSP response is signed by an Authorized Responder"

    #@238
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1

    #@23b
    goto/16 :goto_2

    #@23d
    .line 562
    :catch_1
    move-exception v18

    #@23e
    .line 563
    .local v18, "e":Ljava/security/GeneralSecurityException;
    const/4 v2, 0x0

    #@23f
    move-object/from16 v0, p0

    #@241
    iput-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@243
    goto/16 :goto_2

    #@245
    .line 503
    .end local v8    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v18    # "e":Ljava/security/GeneralSecurityException;
    .end local v21    # "noCheck":Lsun/security/x509/Extension;
    :cond_e
    :try_start_5
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@247
    .line 504
    const-string/jumbo v3, "Responder\'s certificate not valid for signing OCSP responses"

    #@24a
    .line 503
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@24d
    throw v2
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_2

    #@24e
    .line 507
    .end local v20    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v16

    #@24f
    .line 509
    .local v16, "cpe":Ljava/security/cert/CertificateParsingException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@251
    .line 510
    const-string/jumbo v3, "Responder\'s certificate not valid for signing OCSP responses"

    #@254
    .line 509
    move-object/from16 v0, v16

    #@256
    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@259
    throw v2

    #@25a
    .line 526
    .end local v16    # "cpe":Ljava/security/cert/CertificateParsingException;
    .restart local v8    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .restart local v20    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    #@25c
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    #@25e
    move-object/from16 v0, p4

    #@260
    invoke-virtual {v2, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3

    #@263
    goto :goto_4

    #@264
    .line 528
    :catch_3
    move-exception v19

    #@265
    .line 529
    .local v19, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@267
    .line 530
    const-string/jumbo v3, "Responder\'s certificate not within the validity period"

    #@26a
    .line 529
    move-object/from16 v0, v19

    #@26c
    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26f
    throw v2

    #@270
    .line 566
    .end local v8    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v19    # "e":Ljava/security/cert/CertificateException;
    .end local v20    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@272
    .line 567
    const-string/jumbo v3, "Responder\'s certificate is not authorized to sign OCSP responses"

    #@275
    .line 566
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@278
    throw v2

    #@279
    .line 585
    :cond_11
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@27b
    .line 586
    const-string/jumbo v3, "Unable to verify OCSP Response\'s signature"

    #@27e
    .line 585
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@281
    throw v2

    #@282
    .line 590
    :cond_12
    if-eqz p5, :cond_13

    #@284
    .line 591
    move-object/from16 v0, p0

    #@286
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    #@288
    if-eqz v2, :cond_13

    #@28a
    move-object/from16 v0, p0

    #@28c
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    #@28e
    move-object/from16 v0, p5

    #@290
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@293
    move-result v2

    #@294
    if-eqz v2, :cond_19

    #@296
    .line 596
    :cond_13
    if-nez p4, :cond_1a

    #@298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@29b
    move-result-wide v22

    #@29c
    .line 597
    .local v22, "now":J
    :goto_5
    new-instance v25, Ljava/util/Date;

    #@29e
    sget v2, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    #@2a0
    int-to-long v2, v2

    #@2a1
    add-long v2, v2, v22

    #@2a3
    move-object/from16 v0, v25

    #@2a5
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@2a8
    .line 598
    .local v25, "nowPlusSkew":Ljava/util/Date;
    new-instance v24, Ljava/util/Date;

    #@2aa
    sget v2, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    #@2ac
    int-to-long v2, v2

    #@2ad
    sub-long v2, v22, v2

    #@2af
    move-object/from16 v0, v24

    #@2b1
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@2b4
    .line 599
    .local v24, "nowMinusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    #@2b6
    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    #@2b8
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@2bb
    move-result-object v2

    #@2bc
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2bf
    move-result-object v27

    #@2c0
    .local v27, "sr$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    #@2c3
    move-result v2

    #@2c4
    if-eqz v2, :cond_1b

    #@2c6
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c9
    move-result-object v26

    #@2ca
    check-cast v26, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    #@2cc
    .line 600
    .restart local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@2ce
    if-eqz v2, :cond_16

    #@2d0
    .line 601
    const-string/jumbo v28, ""

    #@2d3
    .line 602
    .local v28, "until":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@2d6
    move-result-object v2

    #@2d7
    if-eqz v2, :cond_15

    #@2d9
    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    #@2db
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2de
    const-string/jumbo v3, " until "

    #@2e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e4
    move-result-object v2

    #@2e5
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@2e8
    move-result-object v3

    #@2e9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2ec
    move-result-object v2

    #@2ed
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f0
    move-result-object v28

    #@2f1
    .line 605
    :cond_15
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    #@2f3
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2f8
    const-string/jumbo v4, "Response\'s validity interval is from "

    #@2fb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fe
    move-result-object v3

    #@2ff
    .line 606
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@302
    move-result-object v4

    #@303
    .line 605
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v3

    #@307
    move-object/from16 v0, v28

    #@309
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30c
    move-result-object v3

    #@30d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@310
    move-result-object v3

    #@311
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@314
    .line 610
    .end local v28    # "until":Ljava/lang/String;
    :cond_16
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@317
    move-result-object v2

    #@318
    if-eqz v2, :cond_17

    #@31a
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@31d
    move-result-object v2

    #@31e
    move-object/from16 v0, v25

    #@320
    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@323
    move-result v2

    #@324
    if-nez v2, :cond_18

    #@326
    .line 611
    :cond_17
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@329
    move-result-object v2

    #@32a
    if-eqz v2, :cond_14

    #@32c
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    #@32f
    move-result-object v2

    #@330
    move-object/from16 v0, v24

    #@332
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@335
    move-result v2

    #@336
    .line 610
    if-eqz v2, :cond_14

    #@338
    .line 613
    :cond_18
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@33a
    .line 614
    const-string/jumbo v3, "Response is unreliable: its validity interval is out-of-date"

    #@33d
    .line 613
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@340
    throw v2

    #@341
    .line 592
    .end local v22    # "now":J
    .end local v24    # "nowMinusSkew":Ljava/util/Date;
    .end local v25    # "nowPlusSkew":Ljava/util/Date;
    .end local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .end local v27    # "sr$iterator":Ljava/util/Iterator;
    :cond_19
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@343
    const-string/jumbo v3, "Nonces don\'t match"

    #@346
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@349
    throw v2

    #@34a
    .line 596
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    #@34d
    move-result-wide v22

    #@34e
    .restart local v22    # "now":J
    goto/16 :goto_5

    #@350
    .line 392
    .restart local v24    # "nowMinusSkew":Ljava/util/Date;
    .restart local v25    # "nowPlusSkew":Ljava/util/Date;
    .restart local v27    # "sr$iterator":Ljava/util/Iterator;
    :cond_1b
    return-void

    #@351
    .line 464
    .end local v22    # "now":J
    .end local v24    # "nowMinusSkew":Ljava/util/Date;
    .end local v25    # "nowPlusSkew":Ljava/util/Date;
    .end local v27    # "sr$iterator":Ljava/util/Iterator;
    .restart local v10    # "cert":Lsun/security/x509/X509CertImpl;
    .restart local v11    # "cert$iterator":Ljava/util/Iterator;
    .restart local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :catch_4
    move-exception v17

    #@352
    .local v17, "e":Ljava/io/IOException;
    goto/16 :goto_3

    #@354
    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
