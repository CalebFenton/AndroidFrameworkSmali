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
.field private static final blacklist CERT_STATUS_GOOD:I = 0x0

.field private static final blacklist CERT_STATUS_REVOKED:I = 0x1

.field private static final blacklist CERT_STATUS_UNKNOWN:I = 0x2

.field private static final blacklist DEFAULT_MAX_CLOCK_SKEW:I = 0xdbba0

.field private static final blacklist KEY_TAG:I = 0x2

.field private static final blacklist KP_OCSP_SIGNING_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final blacklist MAX_CLOCK_SKEW:I

.field private static final blacklist NAME_TAG:I = 0x1

.field private static final blacklist OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist debug:Lsun/security/util/Debug;

.field private static final blacklist dump:Z

.field private static blacklist rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private static blacklist values:[Ljava/security/cert/CRLReason;


# instance fields
.field private blacklist certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist responderKeyId:Lsun/security/x509/KeyIdentifier;

.field private blacklist responderName:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist responseNonce:[B

.field private final blacklist responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private final blacklist sigAlgId:Lsun/security/x509/AlgorithmId;

.field private final blacklist signature:[B

.field private blacklist signerCert:Lsun/security/x509/X509CertImpl;

.field private final blacklist singleResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/provider/certpath/CertId;",
            "Lsun/security/provider/certpath/OCSPResponse$SingleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist tbsResponseData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetvalues()[Ljava/security/cert/CRLReason;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 134
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    .line 135
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1c

    const-string v0, "ocsp"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    sput-boolean v0, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    .line 136
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    .line 137
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    .line 157
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->initializeClockSkew()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    .line 176
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-void

    nop

    :array_3a
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

.method constructor blacklist <init>([B)V
    .registers 26
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 186
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    .line 187
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 193
    sget-boolean v3, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    if-eqz v3, :cond_39

    .line 194
    new-instance v3, Lsun/misc/HexDumpEncoder;

    invoke-direct {v3}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 195
    .local v3, "hexEnc":Lsun/misc/HexDumpEncoder;
    sget-object v4, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OCSPResponse bytes...\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 196
    invoke-virtual {v3, v2}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 198
    .end local v3    # "hexEnc":Lsun/misc/HexDumpEncoder;
    :cond_39
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 199
    .local v3, "der":Lsun/security/util/DerValue;
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-ne v4, v5, :cond_3cb

    .line 203
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v4

    .line 206
    .local v4, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v6

    .line 207
    .local v6, "status":I
    if-ltz v6, :cond_3b2

    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    array-length v7, v7

    if-ge v6, v7, :cond_3b2

    .line 208
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aget-object v7, v7, v6

    iput-object v7, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 213
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_77

    .line 214
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OCSP response status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_77
    iget-object v7, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v8, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    if-eq v7, v8, :cond_93

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    .line 219
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 220
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 221
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    .line 222
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    .line 223
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    .line 224
    return-void

    .line 228
    :cond_93
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 229
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_3aa

    .line 233
    iget-object v8, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v8

    .line 234
    .local v8, "tmp":Lsun/security/util/DerValue;
    iget-byte v9, v8, Lsun/security/util/DerValue;->tag:B

    if-ne v9, v5, :cond_3a2

    .line 240
    iget-object v4, v8, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 241
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    .line 242
    .local v9, "responseType":Lsun/security/util/ObjectIdentifier;
    sget-object v10, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v9, v10}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_369

    .line 243
    sget-object v10, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_c1

    .line 244
    sget-object v10, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v11, "OCSP response type: basic"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 255
    :cond_c1
    new-instance v10, Lsun/security/util/DerInputStream;

    .line 256
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 258
    .local v10, "basicOCSPResponse":Lsun/security/util/DerInputStream;
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v12

    .line 259
    .local v12, "seqTmp":[Lsun/security/util/DerValue;
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_361

    .line 263
    aget-object v13, v12, v7

    .line 266
    .local v13, "responseData":Lsun/security/util/DerValue;
    aget-object v15, v12, v7

    invoke-virtual {v15}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v15

    iput-object v15, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    .line 269
    iget-byte v15, v13, Lsun/security/util/DerValue;->tag:B

    if-ne v15, v5, :cond_359

    .line 273
    iget-object v5, v13, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 274
    .local v5, "seqDerIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v15

    .line 277
    .local v15, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v15, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v16

    if-eqz v16, :cond_119

    .line 279
    invoke-virtual {v15}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v16

    if-eqz v16, :cond_119

    invoke-virtual {v15}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v16

    if-eqz v16, :cond_119

    .line 281
    iget-object v7, v15, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 282
    .end local v15    # "seq":Lsun/security/util/DerValue;
    .local v7, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v7}, Lsun/security/util/DerValue;->getInteger()I

    move-result v15

    .line 283
    .local v15, "version":I
    iget-object v14, v7, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v14}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-nez v14, :cond_111

    .line 287
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    move-object v15, v7

    goto :goto_119

    .line 284
    :cond_111
    new-instance v0, Ljava/io/IOException;

    const-string v11, "Bad encoding in version  element of OCSP response: bad format"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    .end local v7    # "seq":Lsun/security/util/DerValue;
    .local v15, "seq":Lsun/security/util/DerValue;
    :cond_119
    :goto_119
    iget-byte v7, v15, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v7, v7, 0x1f

    int-to-byte v7, v7

    int-to-short v7, v7

    .line 293
    .local v7, "tag":S
    const/4 v14, 0x1

    if-ne v7, v14, :cond_150

    .line 294
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v15}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v0, v14}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    .line 295
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_188

    .line 296
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Responder\'s name: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_188

    .line 298
    :cond_150
    const/4 v0, 0x2

    if-ne v7, v0, :cond_351

    .line 299
    new-instance v0, Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v15}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v11

    invoke-direct {v0, v11}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 300
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_188

    .line 301
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Responder\'s key ID: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 302
    invoke-virtual {v14}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v14

    invoke-static {v14}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 301
    invoke-virtual {v0, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 310
    :cond_188
    :goto_188
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 311
    .end local v15    # "seq":Lsun/security/util/DerValue;
    .local v0, "seq":Lsun/security/util/DerValue;
    sget-object v11, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_1af

    .line 312
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v11

    .line 313
    .local v11, "producedAtDate":Ljava/util/Date;
    sget-object v14, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "seq":Lsun/security/util/DerValue;
    .local v21, "seq":Lsun/security/util/DerValue;
    const-string v0, "OCSP response produced at: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_1b1

    .line 311
    .end local v11    # "producedAtDate":Ljava/util/Date;
    .end local v21    # "seq":Lsun/security/util/DerValue;
    .restart local v0    # "seq":Lsun/security/util/DerValue;
    :cond_1af
    move-object/from16 v21, v0

    .line 317
    .end local v0    # "seq":Lsun/security/util/DerValue;
    .restart local v21    # "seq":Lsun/security/util/DerValue;
    :goto_1b1
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v11

    .line 318
    .local v11, "singleResponseDer":[Lsun/security/util/DerValue;
    new-instance v0, Ljava/util/HashMap;

    array-length v14, v11

    invoke-direct {v0, v14}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    .line 319
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1db

    .line 320
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OCSP number of SingleResponses: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 323
    :cond_1db
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1dc
    array-length v14, v11

    if-ge v0, v14, :cond_1f5

    .line 324
    new-instance v14, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    aget-object v15, v11, v0

    move/from16 v22, v0

    const/4 v0, 0x0

    .end local v0    # "i":I
    .local v22, "i":I
    invoke-direct {v14, v15, v0}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse-IA;)V

    .line 326
    .local v14, "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    iget-object v15, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-static {v14}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$mgetCertId(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;

    move-result-object v0

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v14    # "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    add-int/lit8 v0, v22, 0x1

    .end local v22    # "i":I
    .restart local v0    # "i":I
    goto :goto_1dc

    :cond_1f5
    move/from16 v22, v0

    .line 330
    .end local v0    # "i":I
    const/4 v0, 0x0

    .line 331
    .local v0, "nonce":[B
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-lez v14, :cond_293

    .line 332
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v14

    .line 333
    .end local v21    # "seq":Lsun/security/util/DerValue;
    .local v14, "seq":Lsun/security/util/DerValue;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v18

    if-eqz v18, :cond_28a

    .line 334
    iget-object v15, v14, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v18, v0

    const/4 v0, 0x3

    .end local v0    # "nonce":[B
    .local v18, "nonce":[B
    invoke-virtual {v15, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v15

    .line 335
    .local v15, "responseExtDer":[Lsun/security/util/DerValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_213
    array-length v2, v15

    if-ge v0, v2, :cond_281

    .line 336
    new-instance v2, Lsun/security/x509/Extension;

    move/from16 v21, v0

    .end local v0    # "i":I
    .local v21, "i":I
    aget-object v0, v15, v21

    invoke-direct {v2, v0}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 337
    .local v2, "ext":Lsun/security/x509/Extension;
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_240

    .line 338
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    move-object/from16 v22, v3

    .end local v3    # "der":Lsun/security/util/DerValue;
    .local v22, "der":Lsun/security/util/DerValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .local v23, "derIn":Lsun/security/util/DerInputStream;
    const-string v4, "OCSP extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_244

    .line 337
    .end local v22    # "der":Lsun/security/util/DerValue;
    .end local v23    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_240
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .line 341
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v22    # "der":Lsun/security/util/DerValue;
    .restart local v23    # "derIn":Lsun/security/util/DerInputStream;
    :goto_244
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 344
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v18

    goto :goto_25b

    .line 345
    :cond_255
    invoke-virtual {v2}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v0

    if-nez v0, :cond_264

    .line 335
    .end local v2    # "ext":Lsun/security/x509/Extension;
    :goto_25b
    add-int/lit8 v0, v21, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    .end local v21    # "i":I
    .restart local v0    # "i":I
    goto :goto_213

    .line 346
    .end local v0    # "i":I
    .restart local v2    # "ext":Lsun/security/x509/Extension;
    .restart local v21    # "i":I
    :cond_264
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported OCSP critical extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    .end local v2    # "ext":Lsun/security/x509/Extension;
    .end local v21    # "i":I
    .end local v22    # "der":Lsun/security/util/DerValue;
    .end local v23    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v0    # "i":I
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_281
    move/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .end local v0    # "i":I
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v21    # "i":I
    .restart local v22    # "der":Lsun/security/util/DerValue;
    .restart local v23    # "derIn":Lsun/security/util/DerInputStream;
    move-object/from16 v2, v18

    goto :goto_29d

    .line 333
    .end local v15    # "responseExtDer":[Lsun/security/util/DerValue;
    .end local v18    # "nonce":[B
    .end local v21    # "i":I
    .end local v22    # "der":Lsun/security/util/DerValue;
    .end local v23    # "derIn":Lsun/security/util/DerInputStream;
    .local v0, "nonce":[B
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_28a
    move-object/from16 v18, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .end local v0    # "nonce":[B
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v18    # "nonce":[B
    .restart local v22    # "der":Lsun/security/util/DerValue;
    .restart local v23    # "derIn":Lsun/security/util/DerInputStream;
    move-object/from16 v2, v18

    goto :goto_29d

    .line 331
    .end local v14    # "seq":Lsun/security/util/DerValue;
    .end local v18    # "nonce":[B
    .end local v22    # "der":Lsun/security/util/DerValue;
    .end local v23    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v0    # "nonce":[B
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    .local v21, "seq":Lsun/security/util/DerValue;
    :cond_293
    move-object/from16 v18, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .end local v0    # "nonce":[B
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v18    # "nonce":[B
    .restart local v22    # "der":Lsun/security/util/DerValue;
    .restart local v23    # "derIn":Lsun/security/util/DerInputStream;
    move-object/from16 v2, v18

    move-object/from16 v14, v21

    .line 353
    .end local v18    # "nonce":[B
    .end local v21    # "seq":Lsun/security/util/DerValue;
    .local v2, "nonce":[B
    .restart local v14    # "seq":Lsun/security/util/DerValue;
    :goto_29d
    iput-object v2, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    .line 356
    const/16 v20, 0x1

    aget-object v0, v12, v20

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 359
    const/16 v19, 0x2

    aget-object v0, v12, v19

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    .line 362
    array-length v0, v12

    const/4 v3, 0x3

    if-le v0, v3, :cond_347

    .line 364
    aget-object v4, v12, v3

    .line 365
    .local v4, "seqCert":Lsun/security/util/DerValue;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_33d

    .line 369
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 370
    .local v3, "derCerts":[Lsun/security/util/DerValue;
    new-instance v0, Ljava/util/ArrayList;

    array-length v15, v3

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d1
    :try_start_2d1
    array-length v15, v3

    if-ge v0, v15, :cond_328

    .line 373
    new-instance v15, Lsun/security/x509/X509CertImpl;

    aget-object v16, v3, v0

    .line 374
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    invoke-virtual/range {v16 .. v16}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    invoke-direct {v15, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 375
    .local v15, "cert":Lsun/security/x509/X509CertImpl;
    iget-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_31d

    .line 378
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;
    :try_end_2ec
    .catch Ljava/security/cert/CertificateException; {:try_start_2d1 .. :try_end_2ec} :catch_330

    move-object/from16 v16, v2

    .end local v2    # "nonce":[B
    .local v16, "nonce":[B
    :try_start_2ee
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2f3
    .catch Ljava/security/cert/CertificateException; {:try_start_2ee .. :try_end_2f3} :catch_319

    move-object/from16 v18, v3

    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .local v18, "derCerts":[Lsun/security/util/DerValue;
    :try_start_2f5
    const-string v3, "OCSP response cert #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v17, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    invoke-virtual {v15}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_316
    .catch Ljava/security/cert/CertificateException; {:try_start_2f5 .. :try_end_316} :catch_317

    goto :goto_321

    .line 382
    .end local v15    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v17    # "i":I
    :catch_317
    move-exception v0

    goto :goto_335

    .end local v18    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    :catch_319
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v18    # "derCerts":[Lsun/security/util/DerValue;
    goto :goto_335

    .line 377
    .end local v16    # "nonce":[B
    .end local v18    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v2    # "nonce":[B
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v15    # "cert":Lsun/security/x509/X509CertImpl;
    .restart local v17    # "i":I
    :cond_31d
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 372
    .end local v2    # "nonce":[B
    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .end local v15    # "cert":Lsun/security/x509/X509CertImpl;
    .restart local v16    # "nonce":[B
    .restart local v18    # "derCerts":[Lsun/security/util/DerValue;
    :goto_321
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_2d1

    .end local v16    # "nonce":[B
    .end local v18    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v2    # "nonce":[B
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    :cond_328
    move/from16 v17, v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 384
    .end local v0    # "i":I
    .end local v2    # "nonce":[B
    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v16    # "nonce":[B
    .restart local v18    # "derCerts":[Lsun/security/util/DerValue;
    nop

    .line 385
    .end local v4    # "seqCert":Lsun/security/util/DerValue;
    .end local v18    # "derCerts":[Lsun/security/util/DerValue;
    goto :goto_350

    .line 382
    .end local v16    # "nonce":[B
    .restart local v2    # "nonce":[B
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v4    # "seqCert":Lsun/security/util/DerValue;
    :catch_330
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 383
    .end local v2    # "nonce":[B
    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .local v0, "ce":Ljava/security/cert/CertificateException;
    .restart local v16    # "nonce":[B
    .restart local v18    # "derCerts":[Lsun/security/util/DerValue;
    :goto_335
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad encoding in X509 Certificate"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .end local v16    # "nonce":[B
    .end local v18    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v2    # "nonce":[B
    :cond_33d
    move-object/from16 v16, v2

    .end local v2    # "nonce":[B
    .restart local v16    # "nonce":[B
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in certs element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    .end local v4    # "seqCert":Lsun/security/util/DerValue;
    .end local v16    # "nonce":[B
    .restart local v2    # "nonce":[B
    :cond_347
    move-object/from16 v16, v2

    .end local v2    # "nonce":[B
    .restart local v16    # "nonce":[B
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 388
    :goto_350
    return-void

    .line 305
    .end local v11    # "singleResponseDer":[Lsun/security/util/DerValue;
    .end local v14    # "seq":Lsun/security/util/DerValue;
    .end local v16    # "nonce":[B
    .end local v22    # "der":Lsun/security/util/DerValue;
    .end local v23    # "derIn":Lsun/security/util/DerInputStream;
    .local v3, "der":Lsun/security/util/DerValue;
    .local v4, "derIn":Lsun/security/util/DerInputStream;
    .local v15, "seq":Lsun/security/util/DerValue;
    :cond_351
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in responderID element of OCSP response: expected ASN.1 context specific tag 0 or 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    .end local v5    # "seqDerIn":Lsun/security/util/DerInputStream;
    .end local v7    # "tag":S
    .end local v15    # "seq":Lsun/security/util/DerValue;
    :cond_359
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in tbsResponseData element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    .end local v13    # "responseData":Lsun/security/util/DerValue;
    :cond_361
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected BasicOCSPResponse value"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    .end local v10    # "basicOCSPResponse":Lsun/security/util/DerInputStream;
    .end local v12    # "seqTmp":[Lsun/security/util/DerValue;
    :cond_369
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v22    # "der":Lsun/security/util/DerValue;
    .restart local v23    # "derIn":Lsun/security/util/DerInputStream;
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_389

    .line 248
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OCSP response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 250
    :cond_389
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported OCSP response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    .end local v9    # "responseType":Lsun/security/util/ObjectIdentifier;
    .end local v22    # "der":Lsun/security/util/DerValue;
    .end local v23    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_3a2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    .end local v8    # "tmp":Lsun/security/util/DerValue;
    :cond_3aa
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3b2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown OCSPResponse status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .end local v6    # "status":I
    :cond_3cb
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist initializeClockSkew()I
    .registers 2

    .line 165
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "com.sun.security.ocsp.clockSkew"

    invoke-direct {v0, v1}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_16

    goto :goto_1d

    .line 172
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 168
    :cond_1d
    :goto_1d
    const v1, 0xdbba0

    return v1
.end method

.method private blacklist verifySignature(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 640
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 641
    .local v0, "respSignature":Ljava/security/Signature;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 642
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 644
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 645
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_29

    .line 646
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v2, "Verified signature of OCSP Response"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 648
    :cond_29
    const/4 v1, 0x1

    return v1

    .line 651
    :cond_2b
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_36

    .line 652
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v2, "Error verifying signature of OCSP Response"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_36} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_36} :catch_38
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_36} :catch_38

    .line 655
    :cond_36
    const/4 v1, 0x0

    return v1

    .line 657
    .end local v0    # "respSignature":Ljava/security/Signature;
    :catch_38
    move-exception v0

    .line 660
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method blacklist getResponseStatus()Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 2

    .line 630
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method blacklist getSignerCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 676
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    return-object v0
.end method

.method blacklist getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .registers 3
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;

    .line 669
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    return-object v0
.end method

.method blacklist verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    .registers 16
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 394
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    const-string v1, "Responder\'s certificate not valid for signing OCSP responses"

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v0}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v0

    const-string v2, "OCSP response error: "

    packed-switch v0, :pswitch_data_2f6

    .line 404
    :pswitch_d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :pswitch_26
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3

    .line 396
    :pswitch_44
    nop

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/CertId;

    .line 411
    .local v2, "certId":Lsun/security/provider/certpath/CertId;
    invoke-virtual {p0, v2}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v3

    .line 412
    .local v3, "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    if-nez v3, :cond_7f

    .line 413
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_77

    .line 414
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response found for CertId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 416
    :cond_77
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "OCSP response does not include a response for a certificate supplied in the OCSP request"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_7f
    sget-object v4, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_ad

    .line 421
    sget-object v4, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status of certificate (with serial number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    invoke-virtual {v2}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 424
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v3    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_ad
    goto :goto_49

    .line 427
    :cond_ae
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-nez v0, :cond_137

    .line 431
    :try_start_b2
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static {p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    if-eqz p3, :cond_c6

    .line 433
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static {p3}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c6
    .catch Ljava/security/cert/CertificateException; {:try_start_b2 .. :try_end_c6} :catch_12e

    .line 438
    :cond_c6
    nop

    .line 440
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_ee

    .line 441
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X509CertImpl;

    .line 442
    .local v2, "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v4, p0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 443
    iput-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 444
    goto :goto_ed

    .line 446
    .end local v2    # "cert":Lsun/security/x509/X509CertImpl;
    :cond_ec
    goto :goto_d1

    :cond_ed
    :goto_ed
    goto :goto_137

    .line 447
    :cond_ee
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    if-eqz v0, :cond_137

    .line 448
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lsun/security/x509/X509CertImpl;

    .line 452
    .local v3, "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getSubjectKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v4

    .line 453
    .local v4, "certKeyId":Lsun/security/x509/KeyIdentifier;
    if-eqz v4, :cond_116

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v0, v4}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 454
    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 455
    goto :goto_137

    .line 463
    :cond_116
    :try_start_116
    new-instance v0, Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v0, v5}, Lsun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11f} :catch_121

    move-object v4, v0

    .line 466
    goto :goto_122

    .line 464
    :catch_121
    move-exception v0

    .line 467
    :goto_122
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v0, v4}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 468
    iput-object v3, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 469
    goto :goto_137

    .line 472
    .end local v3    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v4    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :cond_12d
    goto :goto_f8

    .line 435
    :catch_12e
    move-exception v0

    .line 436
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Invalid issuer or trusted responder certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 477
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :cond_137
    :goto_137
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_1f9

    .line 479
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0, p2}, Lsun/security/x509/X509CertImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 480
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1f9

    .line 481
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v1, "OCSP response is signed by the target\'s Issuing CA"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_1f9

    .line 487
    :cond_150
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0, p3}, Lsun/security/x509/X509CertImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 488
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1f9

    .line 489
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v1, "OCSP response is signed by a Trusted Responder"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_1f9

    .line 495
    :cond_165
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 496
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 495
    invoke-virtual {v0, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 500
    :try_start_175
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v0

    .line 501
    .local v0, "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1e4

    const-string v2, "1.3.6.1.5.5.7.3.9"

    .line 502
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_183
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_175 .. :try_end_183} :catch_1ea

    if-eqz v2, :cond_1e4

    .line 512
    .end local v0    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 516
    new-instance v0, Lsun/security/provider/certpath/AlgorithmChecker;

    new-instance v1, Ljava/security/cert/TrustAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    move-object v1, v0

    .line 518
    .local v1, "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    .line 519
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 523
    if-nez p4, :cond_1a7

    .line 524
    :try_start_1a1
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->checkValidity()V

    goto :goto_1ac

    .line 526
    :cond_1a7
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0, p4}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V
    :try_end_1ac
    .catch Ljava/security/cert/CertificateException; {:try_start_1a1 .. :try_end_1ac} :catch_1db

    .line 532
    :goto_1ac
    nop

    .line 541
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    sget-object v3, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 542
    invoke-virtual {v0, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v3

    .line 543
    .local v3, "noCheck":Lsun/security/x509/Extension;
    if-eqz v3, :cond_1c2

    .line 544
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1c2

    .line 545
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v4, "Responder\'s certificate includes the extension id-pkix-ocsp-nocheck."

    invoke-virtual {v0, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 555
    :cond_1c2
    :try_start_1c2
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 556
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1d6

    .line 557
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v4, "OCSP response is signed by an Authorized Responder"

    invoke-virtual {v0, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1d6
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c2 .. :try_end_1d6} :catch_1d7

    .line 564
    :cond_1d6
    goto :goto_1da

    .line 562
    :catch_1d7
    move-exception v0

    .line 563
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 565
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v1    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v3    # "noCheck":Lsun/security/x509/Extension;
    :goto_1da
    goto :goto_1f9

    .line 528
    .restart local v1    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    :catch_1db
    move-exception v0

    .line 529
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Responder\'s certificate not within the validity period"

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 503
    .end local v1    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .local v0, "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e4
    :try_start_1e4
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/provider/certpath/OCSPResponse;
    .end local p1    # "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .end local p2    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "date":Ljava/util/Date;
    .end local p5    # "nonce":[B
    throw v2
    :try_end_1ea
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1e4 .. :try_end_1ea} :catch_1ea

    .line 507
    .end local v0    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lsun/security/provider/certpath/OCSPResponse;
    .restart local p1    # "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .restart local p2    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "date":Ljava/util/Date;
    .restart local p5    # "nonce":[B
    :catch_1ea
    move-exception v0

    .line 509
    .local v0, "cpe":Ljava/security/cert/CertificateParsingException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 566
    .end local v0    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_1f1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Responder\'s certificate is not authorized to sign OCSP responses"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1f9
    :goto_1f9
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_2ed

    .line 577
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-static {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    .line 579
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/OCSPResponse;->verifySignature(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 589
    if-eqz p5, :cond_227

    .line 590
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    if-eqz v0, :cond_227

    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    invoke-static {p5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21f

    goto :goto_227

    .line 591
    :cond_21f
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Nonces don\'t match"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_227
    :goto_227
    if-nez p4, :cond_22e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_232

    :cond_22e
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 598
    .local v0, "now":J
    :goto_232
    new-instance v2, Ljava/util/Date;

    sget v3, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 599
    .local v2, "nowPlusSkew":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    sget v4, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 600
    .local v3, "nowMinusSkew":Ljava/util/Date;
    iget-object v4, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .line 601
    .local v5, "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    sget-object v6, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_2bb

    .line 602
    const-string v6, ""

    .line 603
    .local v6, "until":Ljava/lang/String;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetnextUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_27e

    .line 604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " until "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetnextUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 606
    :cond_27e
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OCSP response validity interval is from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetthisUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 608
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking validity of OCSP response on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 615
    .end local v6    # "until":Ljava/lang/String;
    :cond_2bb
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetthisUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_2dc

    .line 617
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetnextUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_2d0

    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetnextUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    goto :goto_2d4

    :cond_2d0
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-$$Nest$fgetthisUpdate(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    .line 616
    :goto_2d4
    invoke-virtual {v3, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_2dc

    .line 623
    .end local v5    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    goto/16 :goto_24f

    .line 619
    .restart local v5    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_2dc
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "Response is unreliable: its validity interval is out-of-date"

    invoke-direct {v4, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    .end local v5    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_2e4
    return-void

    .line 580
    .end local v0    # "now":J
    .end local v2    # "nowPlusSkew":Ljava/util/Date;
    .end local v3    # "nowMinusSkew":Ljava/util/Date;
    :cond_2e5
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Error verifying OCSP Response\'s signature"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_2ed
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Unable to verify OCSP Response\'s signature"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2f6
    .packed-switch 0x0
        :pswitch_44
        :pswitch_d
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method
