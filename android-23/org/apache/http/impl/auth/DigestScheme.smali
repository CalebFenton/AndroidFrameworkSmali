.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final NC:Ljava/lang/String; = "00000001"

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I


# instance fields
.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    #@9
    .line 87
    return-void

    #@a
    .line 95
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 116
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    #@4
    .line 109
    iput v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@6
    .line 117
    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    #@8
    .line 115
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 482
    const-string/jumbo v2, "MD5"

    #@3
    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v1

    #@7
    .line 484
    .local v1, "md5Helper":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v2

    #@b
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 485
    .local v0, "cnonce":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    #@16
    move-result-object v2

    #@17
    invoke-static {v2}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 487
    return-object v0
.end method

.method private createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;
    .locals 26
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    const-string/jumbo v23, "uri"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, v23

    #@7
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v22

    #@b
    .line 268
    .local v22, "uri":Ljava/lang/String;
    const-string/jumbo v23, "realm"

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, v23

    #@12
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v14

    #@16
    .line 269
    .local v14, "realm":Ljava/lang/String;
    const-string/jumbo v23, "nonce"

    #@19
    move-object/from16 v0, p0

    #@1b
    move-object/from16 v1, v23

    #@1d
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v11

    #@21
    .line 270
    .local v11, "nonce":Ljava/lang/String;
    const-string/jumbo v23, "methodname"

    #@24
    move-object/from16 v0, p0

    #@26
    move-object/from16 v1, v23

    #@28
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v10

    #@2c
    .line 271
    .local v10, "method":Ljava/lang/String;
    const-string/jumbo v23, "algorithm"

    #@2f
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v23

    #@33
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 272
    .local v4, "algorithm":Ljava/lang/String;
    if-nez v22, :cond_0

    #@39
    .line 273
    new-instance v23, Ljava/lang/IllegalStateException;

    #@3b
    const-string/jumbo v24, "URI may not be null"

    #@3e
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v23

    #@42
    .line 275
    :cond_0
    if-nez v14, :cond_1

    #@44
    .line 276
    new-instance v23, Ljava/lang/IllegalStateException;

    #@46
    const-string/jumbo v24, "Realm may not be null"

    #@49
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v23

    #@4d
    .line 278
    :cond_1
    if-nez v11, :cond_2

    #@4f
    .line 279
    new-instance v23, Ljava/lang/IllegalStateException;

    #@51
    const-string/jumbo v24, "Nonce may not be null"

    #@54
    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw v23

    #@58
    .line 282
    :cond_2
    if-nez v4, :cond_3

    #@5a
    .line 283
    const-string/jumbo v4, "MD5"

    #@5d
    .line 286
    :cond_3
    const-string/jumbo v23, "charset"

    #@60
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, v23

    #@64
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    .line 287
    .local v5, "charset":Ljava/lang/String;
    if-nez v5, :cond_4

    #@6a
    .line 288
    const-string/jumbo v5, "ISO-8859-1"

    #@6d
    .line 291
    :cond_4
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@71
    move/from16 v23, v0

    #@73
    const/16 v24, 0x1

    #@75
    move/from16 v0, v23

    #@77
    move/from16 v1, v24

    #@79
    if-ne v0, v1, :cond_5

    #@7b
    .line 292
    new-instance v23, Lorg/apache/http/auth/AuthenticationException;

    #@7d
    .line 293
    const-string/jumbo v24, "Unsupported qop in HTTP Digest authentication"

    #@80
    .line 292
    invoke-direct/range {v23 .. v24}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    #@83
    throw v23

    #@84
    .line 296
    :cond_5
    const-string/jumbo v23, "MD5"

    #@87
    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@8a
    move-result-object v7

    #@8b
    .line 298
    .local v7, "md5Helper":Ljava/security/MessageDigest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    #@8e
    move-result-object v23

    #@8f
    invoke-interface/range {v23 .. v23}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@92
    move-result-object v21

    #@93
    .line 299
    .local v21, "uname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    #@96
    move-result-object v12

    #@97
    .line 302
    .local v12, "pwd":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@99
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    #@9c
    move-result v23

    #@9d
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@a0
    move-result v24

    #@a1
    add-int v23, v23, v24

    #@a3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@a6
    move-result v24

    #@a7
    add-int v23, v23, v24

    #@a9
    add-int/lit8 v23, v23, 0x2

    #@ab
    move-object/from16 v0, v17

    #@ad
    move/from16 v1, v23

    #@af
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b2
    .line 303
    .local v17, "tmp":Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    #@b4
    move-object/from16 v1, v21

    #@b6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 304
    const/16 v23, 0x3a

    #@bb
    move-object/from16 v0, v17

    #@bd
    move/from16 v1, v23

    #@bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c2
    .line 305
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 306
    const/16 v23, 0x3a

    #@c9
    move-object/from16 v0, v17

    #@cb
    move/from16 v1, v23

    #@cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d0
    .line 307
    move-object/from16 v0, v17

    #@d2
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    .line 309
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v2

    #@d9
    .line 312
    .local v2, "a1":Ljava/lang/String;
    const-string/jumbo v23, "MD5-sess"

    #@dc
    move-object/from16 v0, v23

    #@de
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@e1
    move-result v23

    #@e2
    if-eqz v23, :cond_7

    #@e4
    .line 317
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    #@e7
    move-result-object v6

    #@e8
    .line 319
    .local v6, "cnonce":Ljava/lang/String;
    invoke-static {v2, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    #@eb
    move-result-object v23

    #@ec
    move-object/from16 v0, v23

    #@ee
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    #@f1
    move-result-object v23

    #@f2
    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    #@f5
    move-result-object v18

    #@f6
    .line 320
    .local v18, "tmp2":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    #@f8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@fb
    move-result v23

    #@fc
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@ff
    move-result v24

    #@100
    add-int v23, v23, v24

    #@102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@105
    move-result v24

    #@106
    add-int v23, v23, v24

    #@108
    add-int/lit8 v23, v23, 0x2

    #@10a
    move-object/from16 v0, v20

    #@10c
    move/from16 v1, v23

    #@10e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@111
    .line 321
    .local v20, "tmp3":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    #@113
    move-object/from16 v1, v18

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    .line 322
    const/16 v23, 0x3a

    #@11a
    move-object/from16 v0, v20

    #@11c
    move/from16 v1, v23

    #@11e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@121
    .line 323
    move-object/from16 v0, v20

    #@123
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    .line 324
    const/16 v23, 0x3a

    #@128
    move-object/from16 v0, v20

    #@12a
    move/from16 v1, v23

    #@12c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12f
    .line 325
    move-object/from16 v0, v20

    #@131
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    .line 326
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v2

    #@138
    .line 330
    .end local v6    # "cnonce":Ljava/lang/String;
    .end local v18    # "tmp2":Ljava/lang/String;
    .end local v20    # "tmp3":Ljava/lang/StringBuilder;
    :cond_6
    invoke-static {v2, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    #@13b
    move-result-object v23

    #@13c
    move-object/from16 v0, v23

    #@13e
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    #@141
    move-result-object v23

    #@142
    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    #@145
    move-result-object v8

    #@146
    .line 332
    .local v8, "md5a1":Ljava/lang/String;
    const/4 v3, 0x0

    #@147
    .line 333
    .local v3, "a2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@149
    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@14b
    move/from16 v23, v0

    #@14d
    const/16 v24, 0x1

    #@14f
    move/from16 v0, v23

    #@151
    move/from16 v1, v24

    #@153
    if-ne v0, v1, :cond_8

    #@155
    .line 340
    .end local v3    # "a2":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@158
    move-result-object v23

    #@159
    move-object/from16 v0, v23

    #@15b
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    #@15e
    move-result-object v23

    #@15f
    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    #@162
    move-result-object v9

    #@163
    .line 344
    .local v9, "md5a2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@165
    iget v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@167
    move/from16 v23, v0

    #@169
    if-nez v23, :cond_9

    #@16b
    .line 345
    new-instance v19, Ljava/lang/StringBuilder;

    #@16d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@170
    move-result v23

    #@171
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@174
    move-result v24

    #@175
    add-int v23, v23, v24

    #@177
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@17a
    move-result v24

    #@17b
    add-int v23, v23, v24

    #@17d
    move-object/from16 v0, v19

    #@17f
    move/from16 v1, v23

    #@181
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@184
    .line 346
    .local v19, "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    #@186
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    .line 347
    const/16 v23, 0x3a

    #@18b
    move-object/from16 v0, v19

    #@18d
    move/from16 v1, v23

    #@18f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@192
    .line 348
    move-object/from16 v0, v19

    #@194
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    .line 349
    const/16 v23, 0x3a

    #@199
    move-object/from16 v0, v19

    #@19b
    move/from16 v1, v23

    #@19d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a0
    .line 350
    move-object/from16 v0, v19

    #@1a2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    .line 351
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v16

    #@1a9
    .line 373
    .local v16, "serverDigestValue":Ljava/lang/String;
    :goto_1
    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@1ac
    move-result-object v23

    #@1ad
    move-object/from16 v0, v23

    #@1af
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    #@1b2
    move-result-object v23

    #@1b3
    invoke-static/range {v23 .. v23}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    #@1b6
    move-result-object v15

    #@1b7
    .line 375
    .local v15, "serverDigest":Ljava/lang/String;
    return-object v15

    #@1b8
    .line 327
    .end local v8    # "md5a1":Ljava/lang/String;
    .end local v9    # "md5a2":Ljava/lang/String;
    .end local v15    # "serverDigest":Ljava/lang/String;
    .end local v16    # "serverDigestValue":Ljava/lang/String;
    .end local v19    # "tmp2":Ljava/lang/StringBuilder;
    :cond_7
    const-string/jumbo v23, "MD5"

    #@1bb
    move-object/from16 v0, v23

    #@1bd
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c0
    move-result v23

    #@1c1
    if-nez v23, :cond_6

    #@1c3
    .line 328
    new-instance v23, Lorg/apache/http/auth/AuthenticationException;

    #@1c5
    new-instance v24, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v25, "Unhandled algorithm "

    #@1cd
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v24

    #@1d1
    move-object/from16 v0, v24

    #@1d3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v24

    #@1d7
    const-string/jumbo v25, " requested"

    #@1da
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v24

    #@1de
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e1
    move-result-object v24

    #@1e2
    invoke-direct/range {v23 .. v24}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    #@1e5
    throw v23

    #@1e6
    .line 338
    .restart local v3    # "a2":Ljava/lang/String;
    .restart local v8    # "md5a1":Ljava/lang/String;
    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    move-object/from16 v0, v23

    #@1ed
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v23

    #@1f1
    const/16 v24, 0x3a

    #@1f3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v23

    #@1f7
    move-object/from16 v0, v23

    #@1f9
    move-object/from16 v1, v22

    #@1fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v23

    #@1ff
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@202
    move-result-object v3

    #@203
    .local v3, "a2":Ljava/lang/String;
    goto/16 :goto_0

    #@205
    .line 353
    .end local v3    # "a2":Ljava/lang/String;
    .restart local v9    # "md5a2":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    #@208
    move-result-object v13

    #@209
    .line 354
    .local v13, "qopOption":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    #@20c
    move-result-object v6

    #@20d
    .line 356
    .restart local v6    # "cnonce":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    #@20f
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@212
    move-result v23

    #@213
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@216
    move-result v24

    #@217
    add-int v23, v23, v24

    #@219
    .line 357
    const-string/jumbo v24, "00000001"

    #@21c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    #@21f
    move-result v24

    #@220
    .line 356
    add-int v23, v23, v24

    #@222
    .line 357
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@225
    move-result v24

    #@226
    .line 356
    add-int v23, v23, v24

    #@228
    .line 357
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@22b
    move-result v24

    #@22c
    .line 356
    add-int v23, v23, v24

    #@22e
    .line 357
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@231
    move-result v24

    #@232
    .line 356
    add-int v23, v23, v24

    #@234
    add-int/lit8 v23, v23, 0x5

    #@236
    move-object/from16 v0, v19

    #@238
    move/from16 v1, v23

    #@23a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@23d
    .line 358
    .restart local v19    # "tmp2":Ljava/lang/StringBuilder;
    move-object/from16 v0, v19

    #@23f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    .line 359
    const/16 v23, 0x3a

    #@244
    move-object/from16 v0, v19

    #@246
    move/from16 v1, v23

    #@248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24b
    .line 360
    move-object/from16 v0, v19

    #@24d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    .line 361
    const/16 v23, 0x3a

    #@252
    move-object/from16 v0, v19

    #@254
    move/from16 v1, v23

    #@256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@259
    .line 362
    const-string/jumbo v23, "00000001"

    #@25c
    move-object/from16 v0, v19

    #@25e
    move-object/from16 v1, v23

    #@260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    .line 363
    const/16 v23, 0x3a

    #@265
    move-object/from16 v0, v19

    #@267
    move/from16 v1, v23

    #@269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26c
    .line 364
    move-object/from16 v0, v19

    #@26e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    .line 365
    const/16 v23, 0x3a

    #@273
    move-object/from16 v0, v19

    #@275
    move/from16 v1, v23

    #@277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27a
    .line 366
    move-object/from16 v0, v19

    #@27c
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    .line 367
    const/16 v23, 0x3a

    #@281
    move-object/from16 v0, v19

    #@283
    move/from16 v1, v23

    #@285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@288
    .line 368
    move-object/from16 v0, v19

    #@28a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    .line 369
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@290
    move-result-object v16

    #@291
    .restart local v16    # "serverDigestValue":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 15
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    #@2
    const/16 v12, 0x80

    #@4
    invoke-direct {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@7
    .line 391
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    #@a
    move-result v12

    #@b
    if-eqz v12, :cond_4

    #@d
    .line 392
    const-string/jumbo v12, "Proxy-Authorization"

    #@10
    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@13
    .line 396
    :goto_0
    const-string/jumbo v12, ": Digest "

    #@16
    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@19
    .line 398
    const-string/jumbo v12, "uri"

    #@1c
    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v11

    #@20
    .line 399
    .local v11, "uri":Ljava/lang/String;
    const-string/jumbo v12, "realm"

    #@23
    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    .line 400
    .local v8, "realm":Ljava/lang/String;
    const-string/jumbo v12, "nonce"

    #@2a
    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 401
    .local v4, "nonce":Ljava/lang/String;
    const-string/jumbo v12, "opaque"

    #@31
    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v5

    #@35
    .line 402
    .local v5, "opaque":Ljava/lang/String;
    move-object/from16 v9, p2

    #@37
    .line 403
    .local v9, "response":Ljava/lang/String;
    const-string/jumbo v12, "algorithm"

    #@3a
    invoke-virtual {p0, v12}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 405
    .local v0, "algorithm":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    #@41
    move-result-object v12

    #@42
    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@45
    move-result-object v10

    #@46
    .line 407
    .local v10, "uname":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    #@48
    const/16 v12, 0x14

    #@4a
    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@4d
    .line 408
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@4f
    const-string/jumbo v13, "username"

    #@52
    invoke-direct {v12, v13, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@58
    .line 409
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@5a
    const-string/jumbo v13, "realm"

    #@5d
    invoke-direct {v12, v13, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@60
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@63
    .line 410
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@65
    const-string/jumbo v13, "nonce"

    #@68
    invoke-direct {v12, v13, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6b
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6e
    .line 411
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@70
    const-string/jumbo v13, "uri"

    #@73
    invoke-direct {v12, v13, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@76
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@79
    .line 412
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@7b
    const-string/jumbo v13, "response"

    #@7e
    invoke-direct {v12, v13, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@81
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@84
    .line 414
    iget v12, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@86
    if-eqz v12, :cond_0

    #@88
    .line 415
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@8a
    const-string/jumbo v13, "qop"

    #@8d
    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getQopVariantString()Ljava/lang/String;

    #@90
    move-result-object v14

    #@91
    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@97
    .line 416
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@99
    const-string/jumbo v13, "nc"

    #@9c
    const-string/jumbo v14, "00000001"

    #@9f
    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a2
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a5
    .line 417
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@a7
    const-string/jumbo v13, "cnonce"

    #@aa
    invoke-direct {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getCnonce()Ljava/lang/String;

    #@ad
    move-result-object v14

    #@ae
    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b1
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b4
    .line 419
    :cond_0
    if-eqz v0, :cond_1

    #@b6
    .line 420
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@b8
    const-string/jumbo v13, "algorithm"

    #@bb
    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@be
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c1
    .line 422
    :cond_1
    if-eqz v5, :cond_2

    #@c3
    .line 423
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    #@c5
    const-string/jumbo v13, "opaque"

    #@c8
    invoke-direct {v12, v13, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ce
    .line 426
    :cond_2
    const/4 v2, 0x0

    #@cf
    .local v2, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@d2
    move-result v12

    #@d3
    if-ge v2, v12, :cond_7

    #@d5
    .line 427
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d8
    move-result-object v6

    #@d9
    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    #@db
    .line 428
    .local v6, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v2, :cond_3

    #@dd
    .line 429
    const-string/jumbo v12, ", "

    #@e0
    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@e3
    .line 431
    :cond_3
    const-string/jumbo v12, "nc"

    #@e6
    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    #@e9
    move-result-object v13

    #@ea
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v12

    #@ee
    if-nez v12, :cond_5

    #@f0
    .line 432
    const-string/jumbo v12, "qop"

    #@f3
    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    #@f6
    move-result-object v13

    #@f7
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result v3

    #@fb
    .line 433
    :goto_2
    sget-object v13, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    #@fd
    .line 434
    if-eqz v3, :cond_6

    #@ff
    const/4 v12, 0x0

    #@100
    .line 433
    :goto_3
    invoke-virtual {v13, v1, v6, v12}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    #@103
    .line 426
    add-int/lit8 v2, v2, 0x1

    #@105
    goto :goto_1

    #@106
    .line 394
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "nonce":Ljava/lang/String;
    .end local v5    # "opaque":Ljava/lang/String;
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v8    # "realm":Ljava/lang/String;
    .end local v9    # "response":Ljava/lang/String;
    .end local v10    # "uname":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_4
    const-string/jumbo v12, "Authorization"

    #@109
    invoke-virtual {v1, v12}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@10c
    goto/16 :goto_0

    #@10e
    .line 431
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "nonce":Ljava/lang/String;
    .restart local v5    # "opaque":Ljava/lang/String;
    .restart local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .restart local v7    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v8    # "realm":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    .restart local v10    # "uname":Ljava/lang/String;
    .restart local v11    # "uri":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    #@10f
    .local v3, "noQuotes":Z
    goto :goto_2

    #@110
    .line 434
    .end local v3    # "noQuotes":Z
    :cond_6
    const/4 v12, 0x1

    #@111
    goto :goto_3

    #@112
    .line 436
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    :cond_7
    new-instance v12, Lorg/apache/http/message/BufferedHeader;

    #@114
    invoke-direct {v12, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    #@117
    return-object v12
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 250
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 251
    :catch_0
    move-exception v0

    #@6
    .line 252
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    #@8
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Unsupported algorithm in HTTP Digest authentication: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 252
    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    #@0
    .prologue
    const/16 v6, 0x10

    #@2
    .line 457
    array-length v4, p0

    #@3
    if-eq v4, v6, :cond_0

    #@5
    .line 458
    const/4 v4, 0x0

    #@6
    return-object v4

    #@7
    .line 461
    :cond_0
    const/16 v4, 0x20

    #@9
    new-array v0, v4, [C

    #@b
    .line 462
    .local v0, "buffer":[C
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    #@e
    .line 463
    aget-byte v4, p0, v2

    #@10
    and-int/lit8 v3, v4, 0xf

    #@12
    .line 464
    .local v3, "low":I
    aget-byte v4, p0, v2

    #@14
    and-int/lit16 v4, v4, 0xf0

    #@16
    shr-int/lit8 v1, v4, 0x4

    #@18
    .line 465
    .local v1, "high":I
    mul-int/lit8 v4, v2, 0x2

    #@1a
    sget-object v5, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    #@1c
    aget-char v5, v5, v1

    #@1e
    aput-char v5, v0, v4

    #@20
    .line 466
    mul-int/lit8 v4, v2, 0x2

    #@22
    add-int/lit8 v4, v4, 0x1

    #@24
    sget-object v5, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    #@26
    aget-char v5, v5, v3

    #@28
    aput-char v5, v0, v4

    #@2a
    .line 462
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 469
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    #@2f
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    #@32
    return-object v4
.end method

.method private getCnonce()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 205
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    #@a
    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method private getQopVariantString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 441
    iget v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    .line 442
    const-string/jumbo v0, "auth-int"

    #@8
    .line 446
    .local v0, "qopOption":Ljava/lang/String;
    :goto_0
    return-object v0

    #@9
    .line 444
    .end local v0    # "qopOption":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "auth"

    #@c
    .restart local v0    # "qopOption":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 5
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    if-nez p1, :cond_0

    #@2
    .line 229
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "Credentials may not be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 231
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v3, "HTTP request may not be null"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 236
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "methodname"

    #@1d
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 237
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, "uri"

    #@2f
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    #@32
    move-result-object v4

    #@33
    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 238
    const-string/jumbo v2, "charset"

    #@3d
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 239
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_2

    #@43
    .line 240
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    #@46
    move-result-object v2

    #@47
    invoke-static {v2}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 241
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    #@4e
    move-result-object v2

    #@4f
    const-string/jumbo v3, "charset"

    #@52
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 243
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigest(Lorg/apache/http/auth/Credentials;)Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 244
    .local v1, "digest":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;Ljava/lang/String;)Lorg/apache/http/Header;

    #@5c
    move-result-object v2

    #@5d
    return-object v2
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 187
    const-string/jumbo v0, "digest"

    #@3
    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    #@0
    .prologue
    .line 173
    const-string/jumbo v1, "stale"

    #@3
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 174
    .local v0, "s":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 175
    const/4 v1, 0x0

    #@11
    return v1

    #@12
    .line 177
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    #@14
    return v1
.end method

.method public isConnectionBased()Z
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 199
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 7
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 131
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    #@5
    .line 133
    const-string/jumbo v4, "realm"

    #@8
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    if-nez v4, :cond_0

    #@e
    .line 134
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    #@10
    const-string/jumbo v5, "missing realm in challange"

    #@13
    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v4

    #@17
    .line 136
    :cond_0
    const-string/jumbo v4, "nonce"

    #@1a
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 137
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    #@22
    const-string/jumbo v5, "missing nonce in challange"

    #@25
    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 140
    :cond_1
    const/4 v2, 0x0

    #@2a
    .line 142
    .local v2, "unsupportedQop":Z
    const-string/jumbo v4, "qop"

    #@2d
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 143
    .local v0, "qop":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@33
    .line 144
    new-instance v1, Ljava/util/StringTokenizer;

    #@35
    const-string/jumbo v4, ","

    #@38
    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 145
    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_2

    #@41
    .line 146
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 147
    .local v3, "variant":Ljava/lang/String;
    const-string/jumbo v4, "auth"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_3

    #@52
    .line 148
    const/4 v4, 0x2

    #@53
    iput v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@55
    .line 158
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    #@57
    iget v4, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@59
    if-nez v4, :cond_5

    #@5b
    .line 159
    new-instance v4, Lorg/apache/http/auth/MalformedChallengeException;

    #@5d
    const-string/jumbo v5, "None of the qop methods is supported"

    #@60
    invoke-direct {v4, v5}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    #@63
    throw v4

    #@64
    .line 150
    .restart local v1    # "tok":Ljava/util/StringTokenizer;
    .restart local v3    # "variant":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "auth-int"

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v4

    #@6b
    if-eqz v4, :cond_4

    #@6d
    .line 151
    iput v6, p0, Lorg/apache/http/impl/auth/DigestScheme;->qopVariant:I

    #@6f
    goto :goto_0

    #@70
    .line 153
    :cond_4
    const/4 v2, 0x1

    #@71
    goto :goto_0

    #@72
    .line 162
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    .end local v3    # "variant":Ljava/lang/String;
    :cond_5
    iput-object v5, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    #@74
    .line 163
    iput-boolean v6, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    #@76
    .line 130
    return-void
.end method
