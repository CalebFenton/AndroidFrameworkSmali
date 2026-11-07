.class public Landroid/telephony/gba/TlsParams;
.super Ljava/lang/Object;
.source "TlsParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gba/TlsParams$TlsCipherSuite;
    }
.end annotation


# static fields
.field private static final blacklist CS_EXPECTED:[I

.field public static final whitelist GROUP_SECP256R1:I = 0x17

.field public static final whitelist GROUP_SECP384R1:I = 0x18

.field public static final whitelist GROUP_X25519:I = 0x1d

.field public static final whitelist GROUP_X448:I = 0x1e

.field public static final whitelist PROTOCOL_VERSION_TLS_1_2:I = 0x303

.field public static final whitelist PROTOCOL_VERSION_TLS_1_3:I = 0x304

.field public static final whitelist SIG_ECDSA_BRAINPOOLP256R1TLS13_SHA256:I = 0x81a

.field public static final whitelist SIG_ECDSA_BRAINPOOLP384R1TLS13_SHA384:I = 0x81b

.field public static final whitelist SIG_ECDSA_BRAINPOOLP512R1TLS13_SHA512:I = 0x81c

.field public static final whitelist SIG_ECDSA_SECP256R1_SHA256:I = 0x403

.field public static final whitelist SIG_ECDSA_SECP384R1_SHA384:I = 0x503

.field public static final whitelist SIG_ECDSA_SECP521R1_SHA512:I = 0x603

.field public static final whitelist SIG_ECDSA_SHA1:I = 0x203

.field public static final whitelist SIG_RSA_PKCS1_SHA1:I = 0x201

.field public static final whitelist SIG_RSA_PKCS1_SHA256:I = 0x401

.field public static final whitelist SIG_RSA_PKCS1_SHA256_LEGACY:I = 0x420

.field public static final whitelist SIG_RSA_PKCS1_SHA384:I = 0x501

.field public static final whitelist SIG_RSA_PKCS1_SHA384_LEGACY:I = 0x520

.field public static final whitelist SIG_RSA_PKCS1_SHA512:I = 0x601

.field public static final whitelist SIG_RSA_PKCS1_SHA512_LEGACY:I = 0x620

.field public static final whitelist SIG_RSA_PSS_RSAE_SHA256:I = 0x804

.field public static final whitelist SIG_RSA_PSS_RSAE_SHA384:I = 0x805

.field public static final whitelist SIG_RSA_PSS_RSAE_SHA512:I = 0x806

.field public static final whitelist TLS_AES_128_CCM_SHA256:I = 0x1304

.field public static final whitelist TLS_AES_128_GCM_SHA256:I = 0x1301

.field public static final whitelist TLS_AES_256_GCM_SHA384:I = 0x1302

.field public static final whitelist TLS_CHACHA20_POLY1305_SHA256:I = 0x1303

.field public static final whitelist TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA:I = 0x13

.field public static final whitelist TLS_DHE_DSS_WITH_AES_128_CBC_SHA:I = 0x32

.field public static final whitelist TLS_DHE_DSS_WITH_AES_128_CBC_SHA256:I = 0x40

.field public static final whitelist TLS_DHE_DSS_WITH_AES_256_CBC_SHA:I = 0x38

.field public static final whitelist TLS_DHE_DSS_WITH_AES_256_CBC_SHA256:I = 0x6a

.field public static final whitelist TLS_DHE_PSK_WITH_AES_128_CCM:I = 0xc0a6

.field public static final whitelist TLS_DHE_PSK_WITH_AES_128_GCM_SHA256:I = 0xaa

.field public static final whitelist TLS_DHE_PSK_WITH_AES_256_CCM:I = 0xc0a7

.field public static final whitelist TLS_DHE_PSK_WITH_AES_256_GCM_SHA384:I = 0xab

.field public static final whitelist TLS_DHE_PSK_WITH_CHACHA20_POLY1305_SHA256:I = 0xccad

.field public static final whitelist TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA:I = 0x16

.field public static final whitelist TLS_DHE_RSA_WITH_AES_128_CBC_SHA:I = 0x33

.field public static final whitelist TLS_DHE_RSA_WITH_AES_128_CBC_SHA256:I = 0x67

.field public static final whitelist TLS_DHE_RSA_WITH_AES_128_CCM:I = 0xc09e

.field public static final whitelist TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:I = 0x9e

.field public static final whitelist TLS_DHE_RSA_WITH_AES_256_CBC_SHA:I = 0x39

.field public static final whitelist TLS_DHE_RSA_WITH_AES_256_CBC_SHA256:I = 0x6b

.field public static final whitelist TLS_DHE_RSA_WITH_AES_256_CCM:I = 0xc09f

.field public static final whitelist TLS_DHE_RSA_WITH_AES_256_GCM_SHA384:I = 0x9f

.field public static final whitelist TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256:I = 0xccaa

.field public static final whitelist TLS_DH_ANON_WITH_3DES_EDE_CBC_SHA:I = 0x1b

.field public static final whitelist TLS_DH_ANON_WITH_AES_128_CBC_SHA:I = 0x34

.field public static final whitelist TLS_DH_ANON_WITH_AES_128_CBC_SHA256:I = 0x6c

.field public static final whitelist TLS_DH_ANON_WITH_AES_256_CBC_SHA:I = 0x3a

.field public static final whitelist TLS_DH_ANON_WITH_AES_256_CBC_SHA256:I = 0x6d

.field public static final whitelist TLS_DH_ANON_WITH_RC4_128_MD5:I = 0x18

.field public static final whitelist TLS_DH_DSS_WITH_3DES_EDE_CBC_SHA:I = 0xd

.field public static final whitelist TLS_DH_DSS_WITH_AES_128_CBC_SHA:I = 0x30

.field public static final whitelist TLS_DH_DSS_WITH_AES_128_CBC_SHA256:I = 0x3e

.field public static final whitelist TLS_DH_DSS_WITH_AES_256_CBC_SHA:I = 0x36

.field public static final whitelist TLS_DH_DSS_WITH_AES_256_CBC_SHA256:I = 0x68

.field public static final whitelist TLS_DH_RSA_WITH_3DES_EDE_CBC_SHA:I = 0x10

.field public static final whitelist TLS_DH_RSA_WITH_AES_128_CBC_SHA:I = 0x31

.field public static final whitelist TLS_DH_RSA_WITH_AES_128_CBC_SHA256:I = 0x3f

.field public static final whitelist TLS_DH_RSA_WITH_AES_256_CBC_SHA:I = 0x37

.field public static final whitelist TLS_DH_RSA_WITH_AES_256_CBC_SHA256:I = 0x69

.field public static final whitelist TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:I = 0xc02b

.field public static final whitelist TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:I = 0xc02c

.field public static final whitelist TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:I = 0xcca9

.field public static final whitelist TLS_ECDHE_PSK_WITH_AES_128_CCM_SHA256:I = 0xd005

.field public static final whitelist TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256:I = 0xd001

.field public static final whitelist TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA384:I = 0xd002

.field public static final whitelist TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256:I = 0xccac

.field public static final whitelist TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:I = 0xc02f

.field public static final whitelist TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:I = 0xc030

.field public static final whitelist TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:I = 0xcca8

.field public static final whitelist TLS_NULL_WITH_NULL_NULL:I = 0x0

.field public static final whitelist TLS_RSA_WITH_3DES_EDE_CBC_SHA:I = 0xa

.field public static final whitelist TLS_RSA_WITH_AES_128_CBC_SHA:I = 0x2f

.field public static final whitelist TLS_RSA_WITH_AES_128_CBC_SHA256:I = 0x3c

.field public static final whitelist TLS_RSA_WITH_AES_256_CBC_SHA:I = 0x35

.field public static final whitelist TLS_RSA_WITH_AES_256_CBC_SHA256:I = 0x3d

.field public static final whitelist TLS_RSA_WITH_NULL_MD5:I = 0x1

.field public static final whitelist TLS_RSA_WITH_NULL_SHA:I = 0x2

.field public static final whitelist TLS_RSA_WITH_NULL_SHA256:I = 0x3b

.field public static final whitelist TLS_RSA_WITH_RC4_128_MD5:I = 0x4

.field public static final whitelist TLS_RSA_WITH_RC4_128_SHA:I = 0x5


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 182
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/telephony/gba/TlsParams;->CS_EXPECTED:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0xa
        0xd
        0x10
        0x13
        0x16
        0x18
        0x1b
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x9e
        0x9f
        0xaa
        0xab
        0x1301
        0x1302
        0x1303
        0x1304
        0xc02b
        0xc02c
        0xc02f
        0xc030
        0xc09e
        0xc09f
        0xc0a6
        0xc0a7
        0xcca8
        0xcca9
        0xccaa
        0xccac
        0xccad
        0xd001
        0xd002
        0xd005
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isTlsCipherSuiteSupported(I)Z
    .registers 2
    .param p0, "csId"    # I

    .line 279
    sget-object v0, Landroid/telephony/gba/TlsParams;->CS_EXPECTED:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
