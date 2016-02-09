.class public final Landroid/security/keymaster/KeymasterDefs;
.super Ljava/lang/Object;
.source "KeymasterDefs.java"


# static fields
.field public static final HW_AUTH_FINGERPRINT:I = 0x2

.field public static final HW_AUTH_PASSWORD:I = 0x1

.field public static final KM_ALGORITHM_AES:I = 0x20

.field public static final KM_ALGORITHM_EC:I = 0x3

.field public static final KM_ALGORITHM_HMAC:I = 0x80

.field public static final KM_ALGORITHM_RSA:I = 0x1

.field public static final KM_BIGNUM:I = -0x80000000

.field public static final KM_BLOB_REQUIRES_FILE_SYSTEM:I = 0x1

.field public static final KM_BLOB_STANDALONE:I = 0x0

.field public static final KM_BOOL:I = 0x70000000

.field public static final KM_BYTES:I = -0x70000000

.field public static final KM_DATE:I = 0x60000000

.field public static final KM_DIGEST_MD5:I = 0x1

.field public static final KM_DIGEST_NONE:I = 0x0

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA_2_224:I = 0x3

.field public static final KM_DIGEST_SHA_2_256:I = 0x4

.field public static final KM_DIGEST_SHA_2_384:I = 0x5

.field public static final KM_DIGEST_SHA_2_512:I = 0x6

.field public static final KM_ENUM:I = 0x10000000

.field public static final KM_ENUM_REP:I = 0x20000000

.field public static final KM_ERROR_CALLER_NONCE_PROHIBITED:I = -0x37

.field public static final KM_ERROR_CONCURRENT_ACCESS_CONFLICT:I = -0x2f

.field public static final KM_ERROR_DELEGATION_NOT_ALLOWED:I = -0x17

.field public static final KM_ERROR_IMPORTED_KEY_DECRYPTION_FAILED:I = -0x23

.field public static final KM_ERROR_IMPORTED_KEY_NOT_ENCRYPTED:I = -0x22

.field public static final KM_ERROR_IMPORTED_KEY_NOT_SIGNED:I = -0x24

.field public static final KM_ERROR_IMPORTED_KEY_VERIFICATION_FAILED:I = -0x25

.field public static final KM_ERROR_IMPORT_PARAMETER_MISMATCH:I = -0x2c

.field public static final KM_ERROR_INCOMPATIBLE_ALGORITHM:I = -0x5

.field public static final KM_ERROR_INCOMPATIBLE_BLOCK_MODE:I = -0x8

.field public static final KM_ERROR_INCOMPATIBLE_DIGEST:I = -0xd

.field public static final KM_ERROR_INCOMPATIBLE_KEY_FORMAT:I = -0x12

.field public static final KM_ERROR_INCOMPATIBLE_PADDING_MODE:I = -0xb

.field public static final KM_ERROR_INCOMPATIBLE_PURPOSE:I = -0x3

.field public static final KM_ERROR_INSUFFICIENT_BUFFER_SPACE:I = -0x1d

.field public static final KM_ERROR_INVALID_ARGUMENT:I = -0x26

.field public static final KM_ERROR_INVALID_AUTHORIZATION_TIMEOUT:I = -0x10

.field public static final KM_ERROR_INVALID_EXPIRATION_TIME:I = -0xe

.field public static final KM_ERROR_INVALID_INPUT_LENGTH:I = -0x15

.field public static final KM_ERROR_INVALID_KEY_BLOB:I = -0x21

.field public static final KM_ERROR_INVALID_MAC_LENGTH:I = -0x39

.field public static final KM_ERROR_INVALID_NONCE:I = -0x34

.field public static final KM_ERROR_INVALID_OPERATION_HANDLE:I = -0x1c

.field public static final KM_ERROR_INVALID_RESCOPING:I = -0x2a

.field public static final KM_ERROR_INVALID_TAG:I = -0x28

.field public static final KM_ERROR_INVALID_USER_ID:I = -0xf

.field public static final KM_ERROR_KEY_EXPIRED:I = -0x19

.field public static final KM_ERROR_KEY_EXPORT_OPTIONS_INVALID:I = -0x16

.field public static final KM_ERROR_KEY_MAX_OPS_EXCEEDED:I = -0x38

.field public static final KM_ERROR_KEY_NOT_YET_VALID:I = -0x18

.field public static final KM_ERROR_KEY_RATE_LIMIT_EXCEEDED:I = -0x36

.field public static final KM_ERROR_KEY_USER_NOT_AUTHENTICATED:I = -0x1a

.field public static final KM_ERROR_MEMORY_ALLOCATION_FAILED:I = -0x29

.field public static final KM_ERROR_MISSING_MAC_LENGTH:I = -0x35

.field public static final KM_ERROR_MISSING_MIN_MAC_LENGTH:I = -0x3a

.field public static final KM_ERROR_MISSING_NONCE:I = -0x33

.field public static final KM_ERROR_OK:I = 0x0

.field public static final KM_ERROR_OPERATION_CANCELLED:I = -0x2e

.field public static final KM_ERROR_OUTPUT_PARAMETER_NULL:I = -0x1b

.field public static final KM_ERROR_ROOT_OF_TRUST_ALREADY_SET:I = -0x1

.field public static final KM_ERROR_SECURE_HW_ACCESS_DENIED:I = -0x2d

.field public static final KM_ERROR_SECURE_HW_BUSY:I = -0x30

.field public static final KM_ERROR_SECURE_HW_COMMUNICATION_FAILED:I = -0x31

.field public static final KM_ERROR_TOO_MANY_OPERATIONS:I = -0x1f

.field public static final KM_ERROR_UNEXPECTED_NULL_POINTER:I = -0x20

.field public static final KM_ERROR_UNIMPLEMENTED:I = -0x64

.field public static final KM_ERROR_UNKNOWN_ERROR:I = -0x3e8

.field public static final KM_ERROR_UNSUPPORTED_ALGORITHM:I = -0x4

.field public static final KM_ERROR_UNSUPPORTED_BLOCK_MODE:I = -0x7

.field public static final KM_ERROR_UNSUPPORTED_DIGEST:I = -0xc

.field public static final KM_ERROR_UNSUPPORTED_EC_FIELD:I = -0x32

.field public static final KM_ERROR_UNSUPPORTED_KEY_ENCRYPTION_ALGORITHM:I = -0x13

.field public static final KM_ERROR_UNSUPPORTED_KEY_FORMAT:I = -0x11

.field public static final KM_ERROR_UNSUPPORTED_KEY_SIZE:I = -0x6

.field public static final KM_ERROR_UNSUPPORTED_KEY_VERIFICATION_ALGORITHM:I = -0x14

.field public static final KM_ERROR_UNSUPPORTED_MAC_LENGTH:I = -0x9

.field public static final KM_ERROR_UNSUPPORTED_MIN_MAC_LENGTH:I = -0x3b

.field public static final KM_ERROR_UNSUPPORTED_PADDING_MODE:I = -0xa

.field public static final KM_ERROR_UNSUPPORTED_PURPOSE:I = -0x2

.field public static final KM_ERROR_UNSUPPORTED_TAG:I = -0x27

.field public static final KM_ERROR_VERIFICATION_FAILED:I = -0x1e

.field public static final KM_ERROR_VERSION_MISMATCH:I = -0x65

.field public static final KM_INVALID:I = 0x0

.field public static final KM_KEY_FORMAT_PKCS8:I = 0x1

.field public static final KM_KEY_FORMAT_RAW:I = 0x3

.field public static final KM_KEY_FORMAT_X509:I = 0x0

.field public static final KM_MODE_CBC:I = 0x2

.field public static final KM_MODE_CTR:I = 0x3

.field public static final KM_MODE_ECB:I = 0x1

.field public static final KM_MODE_GCM:I = 0x20

.field public static final KM_ORIGIN_GENERATED:I = 0x0

.field public static final KM_ORIGIN_IMPORTED:I = 0x2

.field public static final KM_ORIGIN_UNKNOWN:I = 0x3

.field public static final KM_PAD_NONE:I = 0x1

.field public static final KM_PAD_PKCS7:I = 0x40

.field public static final KM_PAD_RSA_OAEP:I = 0x2

.field public static final KM_PAD_RSA_PKCS1_1_5_ENCRYPT:I = 0x4

.field public static final KM_PAD_RSA_PKCS1_1_5_SIGN:I = 0x5

.field public static final KM_PAD_RSA_PSS:I = 0x3

.field public static final KM_PURPOSE_DECRYPT:I = 0x1

.field public static final KM_PURPOSE_ENCRYPT:I = 0x0

.field public static final KM_PURPOSE_SIGN:I = 0x2

.field public static final KM_PURPOSE_VERIFY:I = 0x3

.field public static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field public static final KM_TAG_ALGORITHM:I = 0x10000002

.field public static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field public static final KM_TAG_ALL_USERS:I = 0x700001f4

.field public static final KM_TAG_APPLICATION_DATA:I = -0x6ffffd44

.field public static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field public static final KM_TAG_ASSOCIATED_DATA:I = -0x6ffffc18

.field public static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field public static final KM_TAG_AUTH_TOKEN:I = -0x6ffffc16

.field public static final KM_TAG_BLOB_USAGE_REQUIREMENTS:I = 0x100002c1

.field public static final KM_TAG_BLOCK_MODE:I = 0x20000004

.field public static final KM_TAG_CALLER_NONCE:I = 0x70000007

.field public static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field public static final KM_TAG_DIGEST:I = 0x20000005

.field public static final KM_TAG_INVALID:I = 0x0

.field public static final KM_TAG_KEY_SIZE:I = 0x30000003

.field public static final KM_TAG_MAC_LENGTH:I = 0x300003eb

.field public static final KM_TAG_MAX_USES_PER_BOOT:I = 0x30000194

.field public static final KM_TAG_MIN_MAC_LENGTH:I = 0x30000008

.field public static final KM_TAG_MIN_SECONDS_BETWEEN_OPS:I = 0x30000193

.field public static final KM_TAG_NONCE:I = -0x6ffffc17

.field public static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field public static final KM_TAG_ORIGIN:I = 0x100002be

.field public static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field public static final KM_TAG_PADDING:I = 0x20000006

.field public static final KM_TAG_PURPOSE:I = 0x20000001

.field public static final KM_TAG_RESCOPING_ADD:I = 0x20000065

.field public static final KM_TAG_RESCOPING_DEL:I = 0x20000066

.field public static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field public static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field public static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field public static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field public static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field public static final KM_TAG_USER_ID:I = 0x300001f5

.field public static final KM_TAG_USER_SECURE_ID:I = -0x5ffffe0a

.field public static final KM_UINT:I = 0x30000000

.field public static final KM_UINT_REP:I = 0x40000000

.field public static final KM_ULONG:I = 0x50000000

.field public static final KM_ULONG_REP:I = -0x60000000

.field public static final sErrorCodeToString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@7
    .line 207
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "OK"

    #@11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 208
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@16
    const/4 v1, -0x2

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "Unsupported purpose"

    #@1e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 209
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@23
    const/4 v1, -0x3

    #@24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "Incompatible purpose"

    #@2b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 210
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@30
    const/4 v1, -0x4

    #@31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, "Unsupported algorithm"

    #@38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 211
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@3d
    const/4 v1, -0x5

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, "Incompatible algorithm"

    #@45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 212
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@4a
    const/4 v1, -0x6

    #@4b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, "Unsupported key size"

    #@52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 213
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@57
    const/4 v1, -0x7

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    const-string/jumbo v2, "Unsupported block mode"

    #@5f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 214
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@64
    const/4 v1, -0x8

    #@65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v1

    #@69
    const-string/jumbo v2, "Incompatible block mode"

    #@6c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 215
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@71
    const/16 v1, -0x9

    #@73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@76
    move-result-object v1

    #@77
    .line 216
    const-string/jumbo v2, "Unsupported MAC or authentication tag length"

    #@7a
    .line 215
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 217
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@7f
    const/16 v1, -0xa

    #@81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@84
    move-result-object v1

    #@85
    const-string/jumbo v2, "Unsupported padding mode"

    #@88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 218
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@8d
    const/16 v1, -0xb

    #@8f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v1

    #@93
    const-string/jumbo v2, "Incompatible padding mode"

    #@96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 219
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@9b
    const/16 v1, -0xc

    #@9d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a0
    move-result-object v1

    #@a1
    const-string/jumbo v2, "Unsupported digest"

    #@a4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    .line 220
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@a9
    const/16 v1, -0xd

    #@ab
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ae
    move-result-object v1

    #@af
    const-string/jumbo v2, "Incompatible digest"

    #@b2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    .line 221
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@b7
    const/16 v1, -0xe

    #@b9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v1

    #@bd
    const-string/jumbo v2, "Invalid expiration time"

    #@c0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c3
    .line 222
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@c5
    const/16 v1, -0xf

    #@c7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ca
    move-result-object v1

    #@cb
    const-string/jumbo v2, "Invalid user ID"

    #@ce
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 223
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@d3
    const/16 v1, -0x10

    #@d5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d8
    move-result-object v1

    #@d9
    .line 224
    const-string/jumbo v2, "Invalid user authorization timeout"

    #@dc
    .line 223
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@df
    .line 225
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@e1
    const/16 v1, -0x11

    #@e3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e6
    move-result-object v1

    #@e7
    const-string/jumbo v2, "Unsupported key format"

    #@ea
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ed
    .line 226
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@ef
    const/16 v1, -0x12

    #@f1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f4
    move-result-object v1

    #@f5
    const-string/jumbo v2, "Incompatible key format"

    #@f8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 227
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@fd
    const/16 v1, -0x15

    #@ff
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@102
    move-result-object v1

    #@103
    const-string/jumbo v2, "Invalid input length"

    #@106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    .line 228
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@10b
    const/16 v1, -0x18

    #@10d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@110
    move-result-object v1

    #@111
    const-string/jumbo v2, "Key not yet valid"

    #@114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@117
    .line 229
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@119
    const/16 v1, -0x19

    #@11b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11e
    move-result-object v1

    #@11f
    const-string/jumbo v2, "Key expired"

    #@122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    .line 230
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@127
    const/16 v1, -0x1a

    #@129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12c
    move-result-object v1

    #@12d
    const-string/jumbo v2, "Key user not authenticated"

    #@130
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@133
    .line 231
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@135
    const/16 v1, -0x1c

    #@137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13a
    move-result-object v1

    #@13b
    const-string/jumbo v2, "Invalid operation handle"

    #@13e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@141
    .line 232
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@143
    const/16 v1, -0x1e

    #@145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@148
    move-result-object v1

    #@149
    const-string/jumbo v2, "Signature/MAC verification failed"

    #@14c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14f
    .line 233
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@151
    const/16 v1, -0x1f

    #@153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@156
    move-result-object v1

    #@157
    const-string/jumbo v2, "Too many operations"

    #@15a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15d
    .line 234
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@15f
    const/16 v1, -0x21

    #@161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@164
    move-result-object v1

    #@165
    const-string/jumbo v2, "Invalid key blob"

    #@168
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16b
    .line 235
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@16d
    const/16 v1, -0x26

    #@16f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@172
    move-result-object v1

    #@173
    const-string/jumbo v2, "Invalid argument"

    #@176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@179
    .line 236
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@17b
    const/16 v1, -0x27

    #@17d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@180
    move-result-object v1

    #@181
    const-string/jumbo v2, "Unsupported tag"

    #@184
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@187
    .line 237
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@189
    const/16 v1, -0x28

    #@18b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18e
    move-result-object v1

    #@18f
    const-string/jumbo v2, "Invalid tag"

    #@192
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@195
    .line 238
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@197
    const/16 v1, -0x29

    #@199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19c
    move-result-object v1

    #@19d
    const-string/jumbo v2, "Memory allocation failed"

    #@1a0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a3
    .line 239
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1a5
    const/16 v1, -0x32

    #@1a7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1aa
    move-result-object v1

    #@1ab
    const-string/jumbo v2, "Unsupported EC field"

    #@1ae
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b1
    .line 240
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1b3
    const/16 v1, -0x33

    #@1b5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b8
    move-result-object v1

    #@1b9
    const-string/jumbo v2, "Required IV missing"

    #@1bc
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bf
    .line 241
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1c1
    const/16 v1, -0x34

    #@1c3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c6
    move-result-object v1

    #@1c7
    const-string/jumbo v2, "Invalid IV"

    #@1ca
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    .line 242
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1cf
    const/16 v1, -0x37

    #@1d1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d4
    move-result-object v1

    #@1d5
    .line 243
    const-string/jumbo v2, "Caller-provided IV not permitted"

    #@1d8
    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1db
    .line 244
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1dd
    const/16 v1, -0x39

    #@1df
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e2
    move-result-object v1

    #@1e3
    .line 245
    const-string/jumbo v2, "Invalid MAC or authentication tag length"

    #@1e6
    .line 244
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e9
    .line 246
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1eb
    const/16 v1, -0x64

    #@1ed
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f0
    move-result-object v1

    #@1f1
    const-string/jumbo v2, "Not implemented"

    #@1f4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f7
    .line 247
    sget-object v0, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@1f9
    const/16 v1, -0x3e8

    #@1fb
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1fe
    move-result-object v1

    #@1ff
    const-string/jumbo v2, "Unknown error"

    #@202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@205
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    #@0
    .prologue
    .line 255
    sget-object v1, Landroid/security/keymaster/KeymasterDefs;->sErrorCodeToString:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 256
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 257
    return-object v0

    #@f
    .line 259
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static getTagType(I)I
    .locals 1
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 251
    const/high16 v0, -0x10000000

    #@2
    and-int/2addr v0, p0

    #@3
    return v0
.end method
