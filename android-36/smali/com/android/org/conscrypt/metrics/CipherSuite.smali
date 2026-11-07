.class public final enum Lcom/android/org/conscrypt/metrics/CipherSuite;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/metrics/CipherSuite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_CIPHER_FAILED:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

.field public static final enum blacklist UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;


# instance fields
.field final blacklist id:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 26

    .line 30
    sget-object v1, Lcom/android/org/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v2, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v3, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v4, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v5, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v6, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v7, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v8, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v9, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v10, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v11, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v12, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v13, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v14, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v15, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v16, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v17, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v18, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v19, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v20, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v21, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v22, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v23, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v24, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    sget-object v25, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_CIPHER_FAILED:Lcom/android/org/conscrypt/metrics/CipherSuite;

    filled-new-array/range {v1 .. v25}, [Lcom/android/org/conscrypt/metrics/CipherSuite;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v1, "UNKNOWN_CIPHER_SUITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 35
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x1

    const v2, 0xc00a

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 36
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x2

    const v2, 0xc014

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 37
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x3

    const/16 v2, 0x35

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 38
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x4

    const v2, 0xc009

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 39
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x5

    const v2, 0xc013

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 40
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/4 v1, 0x6

    const/16 v2, 0x2f

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 41
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v1, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 44
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x8

    const/16 v2, 0x9c

    const-string v4, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 45
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x9

    const/16 v2, 0x9d

    const-string v4, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 46
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v2, 0xc02f

    invoke-direct {v0, v1, v3, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 47
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xb

    const v2, 0xc030

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 48
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xc

    const v2, 0xc02b

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 49
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xd

    const v2, 0xc02c

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 50
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xe

    const v2, 0xcca9

    const-string v3, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 51
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0xf

    const v2, 0xcca8

    const-string v3, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 54
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x10

    const/16 v2, 0x8c

    const-string v3, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 55
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x11

    const/16 v2, 0x8d

    const-string v3, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 56
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x12

    const v2, 0xc035

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 57
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x13

    const v2, 0xc036

    const-string v3, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 58
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x14

    const v2, 0xccac

    const-string v3, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 61
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x15

    const/16 v2, 0x1301

    const-string v3, "TLS_AES_128_GCM_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_AES_128_GCM_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 62
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x16

    const/16 v2, 0x1302

    const-string v3, "TLS_AES_256_GCM_SHA384"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_AES_256_GCM_SHA384:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 63
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x17

    const/16 v2, 0x1303

    const-string v3, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 65
    new-instance v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    const/16 v1, 0x18

    const v2, 0xffff

    const-string v3, "TLS_CIPHER_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/conscrypt/metrics/CipherSuite;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_CIPHER_FAILED:Lcom/android/org/conscrypt/metrics/CipherSuite;

    .line 30
    invoke-static {}, Lcom/android/org/conscrypt/metrics/CipherSuite;->$values()[Lcom/android/org/conscrypt/metrics/CipherSuite;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->$VALUES:[Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/android/org/conscrypt/metrics/CipherSuite;->id:I

    .line 88
    return-void
.end method

.method public static blacklist forName(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 77
    sget-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v0

    .line 80
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/android/org/conscrypt/metrics/CipherSuite;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    .line 81
    :catch_10
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/org/conscrypt/metrics/CipherSuite;->UNKNOWN_CIPHER_SUITE:Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    const-class v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/metrics/CipherSuite;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/org/conscrypt/metrics/CipherSuite;->$VALUES:[Lcom/android/org/conscrypt/metrics/CipherSuite;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/metrics/CipherSuite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/metrics/CipherSuite;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/org/conscrypt/metrics/CipherSuite;->id:I

    return v0
.end method
