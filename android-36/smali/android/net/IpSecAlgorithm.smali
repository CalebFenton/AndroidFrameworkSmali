.class public final Landroid/net/IpSecAlgorithm;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecAlgorithm$AlgorithmName;
    }
.end annotation


# static fields
.field public static final blacklist ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist AUTH_AES_CMAC:Ljava/lang/String; = "cmac(aes)"

.field public static final whitelist AUTH_AES_XCBC:Ljava/lang/String; = "xcbc(aes)"

.field public static final whitelist AUTH_CRYPT_AES_GCM:Ljava/lang/String; = "rfc4106(gcm(aes))"

.field public static final whitelist AUTH_CRYPT_CHACHA20_POLY1305:Ljava/lang/String; = "rfc7539esp(chacha20,poly1305)"

.field public static final whitelist AUTH_HMAC_MD5:Ljava/lang/String; = "hmac(md5)"

.field public static final whitelist AUTH_HMAC_SHA1:Ljava/lang/String; = "hmac(sha1)"

.field public static final whitelist AUTH_HMAC_SHA256:Ljava/lang/String; = "hmac(sha256)"

.field public static final whitelist AUTH_HMAC_SHA384:Ljava/lang/String; = "hmac(sha384)"

.field public static final whitelist AUTH_HMAC_SHA512:Ljava/lang/String; = "hmac(sha512)"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CRYPT_AES_CBC:Ljava/lang/String; = "cbc(aes)"

.field public static final whitelist CRYPT_AES_CTR:Ljava/lang/String; = "rfc3686(ctr(aes))"

.field public static final greylist-max-o CRYPT_NULL:Ljava/lang/String; = "ecb(cipher_null)"

.field private static final blacklist ENABLED_ALGOS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SDK_VERSION_ZERO:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IpSecAlgorithm"


# instance fields
.field private final greylist-max-o mKey:[B

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final greylist-max-o mTruncLenBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    .line 227
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cbc(aes)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "hmac(md5)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "hmac(sha1)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "hmac(sha256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "hmac(sha384)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "hmac(sha512)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "rfc4106(gcm(aes))"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rfc3686(ctr(aes))"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "xcbc(aes)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "cmac(aes)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    const-string v2, "rfc7539esp(chacha20,poly1305)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IpSecAlgorithm;->loadAlgos(Landroid/content/res/Resources;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/net/IpSecAlgorithm;->ENABLED_ALGOS:Ljava/util/Set;

    .line 313
    new-instance v0, Landroid/net/IpSecAlgorithm$1;

    invoke-direct {v0}, Landroid/net/IpSecAlgorithm$1;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    .line 261
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[BI)V
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "truncLenBits"    # I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 278
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 279
    iput p3, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 280
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-static {v0, v1, v2}, Landroid/net/IpSecAlgorithm;->checkValidOrThrow(Ljava/lang/String;II)V

    .line 281
    return-void
.end method

.method private static greylist-max-o checkValidOrThrow(Ljava/lang/String;II)V
    .registers 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "keyLen"    # I
    .param p2, "truncLen"    # I

    .line 371
    invoke-static {}, Landroid/net/IpSecAlgorithm;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_192

    :cond_13
    goto/16 :goto_87

    :sswitch_15
    const-string v0, "hmac(sha1)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    goto/16 :goto_88

    :sswitch_20
    const-string v0, "rfc3686(ctr(aes))"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_88

    :sswitch_2a
    const-string v0, "cmac(aes)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x8

    goto :goto_88

    :sswitch_35
    const-string v0, "hmac(md5)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    goto :goto_88

    :sswitch_3f
    const-string v0, "hmac(sha512)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x6

    goto :goto_88

    :sswitch_49
    const-string v0, "hmac(sha384)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x5

    goto :goto_88

    :sswitch_53
    const-string v0, "hmac(sha256)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    goto :goto_88

    :sswitch_5d
    const-string v0, "cbc(aes)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_88

    :sswitch_67
    const-string v0, "rfc7539esp(chacha20,poly1305)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xa

    goto :goto_88

    :sswitch_72
    const-string v0, "rfc4106(gcm(aes))"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x9

    goto :goto_88

    :sswitch_7d
    const-string v0, "xcbc(aes)"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x7

    goto :goto_88

    :goto_87
    const/4 v0, -0x1

    :goto_88
    const/16 v3, 0xe0

    const/16 v4, 0xc0

    const/16 v5, 0x120

    const/16 v6, 0x100

    const/16 v7, 0xa0

    const/16 v8, 0x60

    const/16 v9, 0x80

    packed-switch v0, :pswitch_data_1c0

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find an algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_b2
    if-ne p1, v5, :cond_b6

    move v0, v1

    goto :goto_b7

    :cond_b6
    move v0, v2

    .line 421
    .local v0, "isValidLen":Z
    :goto_b7
    if-ne p2, v9, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v2

    .line 422
    .local v1, "isValidTruncLen":Z
    :goto_bb
    goto/16 :goto_142

    .line 415
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_bd
    if-eq p1, v7, :cond_c6

    if-eq p1, v3, :cond_c6

    if-ne p1, v5, :cond_c4

    goto :goto_c6

    :cond_c4
    move v0, v2

    goto :goto_c7

    :cond_c6
    :goto_c6
    move v0, v1

    .line 416
    .restart local v0    # "isValidLen":Z
    :goto_c7
    const/16 v3, 0x40

    if-eq p2, v3, :cond_d1

    if-eq p2, v8, :cond_d1

    if-ne p2, v9, :cond_d0

    goto :goto_d1

    :cond_d0
    move v1, v2

    .line 417
    .restart local v1    # "isValidTruncLen":Z
    :cond_d1
    :goto_d1
    goto/16 :goto_142

    .line 410
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_d3
    if-ne p1, v9, :cond_d7

    move v0, v1

    goto :goto_d8

    :cond_d7
    move v0, v2

    .line 411
    .restart local v0    # "isValidLen":Z
    :goto_d8
    if-ne p2, v8, :cond_db

    goto :goto_dc

    :cond_db
    move v1, v2

    .line 412
    .restart local v1    # "isValidTruncLen":Z
    :goto_dc
    goto/16 :goto_142

    .line 406
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_de
    if-ne p1, v9, :cond_e2

    move v0, v1

    goto :goto_e3

    :cond_e2
    move v0, v2

    .line 407
    .restart local v0    # "isValidLen":Z
    :goto_e3
    if-ne p2, v8, :cond_e6

    goto :goto_e7

    :cond_e6
    move v1, v2

    .line 408
    .restart local v1    # "isValidTruncLen":Z
    :goto_e7
    goto/16 :goto_142

    .line 402
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_e9
    const/16 v0, 0x200

    if-ne p1, v0, :cond_ef

    move v3, v1

    goto :goto_f0

    :cond_ef
    move v3, v2

    .line 403
    .local v3, "isValidLen":Z
    :goto_f0
    if-lt p2, v6, :cond_f5

    if-gt p2, v0, :cond_f5

    goto :goto_f6

    :cond_f5
    move v1, v2

    .line 404
    .restart local v1    # "isValidTruncLen":Z
    :goto_f6
    move v0, v3

    goto/16 :goto_142

    .line 398
    .end local v1    # "isValidTruncLen":Z
    .end local v3    # "isValidLen":Z
    :pswitch_f9
    const/16 v0, 0x180

    if-ne p1, v0, :cond_ff

    move v3, v1

    goto :goto_100

    :cond_ff
    move v3, v2

    .line 399
    .restart local v3    # "isValidLen":Z
    :goto_100
    if-lt p2, v4, :cond_105

    if-gt p2, v0, :cond_105

    goto :goto_106

    :cond_105
    move v1, v2

    .line 400
    .restart local v1    # "isValidTruncLen":Z
    :goto_106
    move v0, v3

    goto :goto_142

    .line 394
    .end local v1    # "isValidTruncLen":Z
    .end local v3    # "isValidLen":Z
    :pswitch_108
    if-ne p1, v6, :cond_10c

    move v0, v1

    goto :goto_10d

    :cond_10c
    move v0, v2

    .line 395
    .restart local v0    # "isValidLen":Z
    :goto_10d
    if-lt p2, v8, :cond_112

    if-gt p2, v6, :cond_112

    goto :goto_113

    :cond_112
    move v1, v2

    .line 396
    .restart local v1    # "isValidTruncLen":Z
    :goto_113
    goto :goto_142

    .line 390
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_114
    if-ne p1, v7, :cond_118

    move v0, v1

    goto :goto_119

    :cond_118
    move v0, v2

    .line 391
    .restart local v0    # "isValidLen":Z
    :goto_119
    if-lt p2, v8, :cond_11e

    if-gt p2, v7, :cond_11e

    goto :goto_11f

    :cond_11e
    move v1, v2

    .line 392
    .restart local v1    # "isValidTruncLen":Z
    :goto_11f
    goto :goto_142

    .line 386
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_120
    if-ne p1, v9, :cond_124

    move v0, v1

    goto :goto_125

    :cond_124
    move v0, v2

    .line 387
    .restart local v0    # "isValidLen":Z
    :goto_125
    if-lt p2, v8, :cond_12a

    if-gt p2, v9, :cond_12a

    goto :goto_12b

    :cond_12a
    move v1, v2

    .line 388
    .restart local v1    # "isValidTruncLen":Z
    :goto_12b
    goto :goto_142

    .line 382
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_12c
    if-eq p1, v7, :cond_134

    if-eq p1, v3, :cond_134

    if-ne p1, v5, :cond_133

    goto :goto_134

    :cond_133
    move v1, v2

    :cond_134
    :goto_134
    move v0, v1

    .line 383
    .restart local v0    # "isValidLen":Z
    const/4 v1, 0x1

    .line 384
    .restart local v1    # "isValidTruncLen":Z
    goto :goto_142

    .line 377
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :pswitch_137
    if-eq p1, v9, :cond_13f

    if-eq p1, v4, :cond_13f

    if-ne p1, v6, :cond_13e

    goto :goto_13f

    :cond_13e
    move v1, v2

    :cond_13f
    :goto_13f
    move v0, v1

    .line 378
    .restart local v0    # "isValidLen":Z
    const/4 v1, 0x1

    .line 379
    .restart local v1    # "isValidTruncLen":Z
    nop

    .line 428
    :goto_142
    if-eqz v0, :cond_160

    .line 431
    if-eqz v1, :cond_147

    .line 434
    return-void

    .line 432
    :cond_147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid truncation keyLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key material keyLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    .end local v0    # "isValidLen":Z
    .end local v1    # "isValidTruncLen":Z
    :cond_179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_192
    .sparse-switch
        -0x6863db8a -> :sswitch_7d
        -0x43ce71de -> :sswitch_72
        -0x34613a3f -> :sswitch_67
        0x17881bfe -> :sswitch_5d
        0x215826a1 -> :sswitch_53
        0x2158a605 -> :sswitch_49
        0x2159743e -> :sswitch_3f
        0x2d40230c -> :sswitch_35
        0x47e48ed6 -> :sswitch_2a
        0x5dd17710 -> :sswitch_20
        0x7b1b4343 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_137
        :pswitch_12c
        :pswitch_120
        :pswitch_114
        :pswitch_108
        :pswitch_f9
        :pswitch_e9
        :pswitch_de
        :pswitch_d3
        :pswitch_bd
        :pswitch_b2
    .end packed-switch
.end method

.method public static greylist-max-o equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z
    .registers 6
    .param p0, "lhs"    # Landroid/net/IpSecAlgorithm;
    .param p1, "rhs"    # Landroid/net/IpSecAlgorithm;

    .line 490
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_7

    goto :goto_24

    .line 491
    :cond_7
    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 492
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    iget v3, p1, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    if-ne v2, v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    .line 491
    :goto_23
    return v0

    .line 490
    :cond_24
    :goto_24
    if-ne p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0
.end method

.method public static whitelist getSupportedAlgorithms()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    sget-object v0, Landroid/net/IpSecAlgorithm;->ENABLED_ALGOS:Ljava/util/Set;

    return-object v0
.end method

.method public static blacklist loadAlgos(Landroid/content/res/Resources;)Ljava/util/Set;
    .registers 7
    .param p0, "systemResources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 346
    .local v0, "enabledAlgos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const v1, 0x1070006

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "resourceAlgos":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_3c

    aget-object v4, v1, v3

    .line 349
    .local v4, "str":Ljava/lang/String;
    sget-object v5, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 348
    .end local v4    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 351
    .restart local v4    # "str":Ljava/lang/String;
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or repeated algorithm "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    .end local v4    # "str":Ljava/lang/String;
    :cond_3c
    const-string v2, "ro.vendor.api_level"

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 358
    .local v2, "vendorApiLevel":I
    sget-object v3, Landroid/net/IpSecAlgorithm;->ALGO_TO_REQUIRED_FIRST_SDK:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 359
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v2, v5, :cond_6f

    .line 360
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6f
    goto :goto_4e

    .line 364
    :cond_70
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKey()[B
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTruncationLengthBits()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return v0
.end method

.method public greylist-max-o isAead()Z
    .registers 5

    .line 466
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_28

    :cond_d
    goto :goto_22

    :sswitch_e
    const-string v1, "rfc7539esp(chacha20,poly1305)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_23

    :sswitch_18
    const-string v1, "rfc4106(gcm(aes))"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_32

    .line 471
    return v2

    .line 469
    :pswitch_27
    return v3

    :sswitch_data_28
    .sparse-switch
        -0x43ce71de -> :sswitch_18
        -0x34613a3f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public greylist-max-o isAuthentication()Z
    .registers 5

    .line 438
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_5a

    :cond_d
    goto :goto_54

    :sswitch_e
    const-string v1, "hmac(sha1)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_55

    :sswitch_18
    const-string v1, "cmac(aes)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    goto :goto_55

    :sswitch_22
    const-string v1, "hmac(md5)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_55

    :sswitch_2c
    const-string v1, "hmac(sha512)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_55

    :sswitch_36
    const-string v1, "hmac(sha384)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_55

    :sswitch_40
    const-string v1, "hmac(sha256)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_55

    :sswitch_4a
    const-string v1, "xcbc(aes)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_55

    :goto_54
    const/4 v0, -0x1

    :goto_55
    packed-switch v0, :pswitch_data_78

    .line 449
    return v2

    .line 447
    :pswitch_59
    return v3

    :sswitch_data_5a
    .sparse-switch
        -0x6863db8a -> :sswitch_4a
        0x215826a1 -> :sswitch_40
        0x2158a605 -> :sswitch_36
        0x2159743e -> :sswitch_2c
        0x2d40230c -> :sswitch_22
        0x47e48ed6 -> :sswitch_18
        0x7b1b4343 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public greylist-max-o isEncryption()Z
    .registers 5

    .line 455
    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_28

    :cond_d
    goto :goto_22

    :sswitch_e
    const-string v1, "rfc3686(ctr(aes))"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_23

    :sswitch_18
    const-string v1, "cbc(aes)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_32

    .line 460
    return v2

    .line 458
    :pswitch_27
    return v3

    :sswitch_data_28
    .sparse-switch
        0x17881bfe -> :sswitch_18
        0x5dd17710 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    const-string v1, "{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 481
    const-string v1, ", mTruncLenBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 307
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 309
    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    return-void
.end method
