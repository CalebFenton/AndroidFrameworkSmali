.class final Lcom/android/org/conscrypt/NativeConstants;
.super Ljava/lang/Object;
.source "NativeConstants.java"


# static fields
.field static final blacklist EVP_PKEY_EC:I = 0x198

.field static final blacklist EVP_PKEY_ED25519:I = 0x3b5

.field static final blacklist EVP_PKEY_RSA:I = 0x6

.field static final blacklist EXFLAG_CA:I = 0x10

.field static final blacklist EXFLAG_CRITICAL:I = 0x200

.field static final blacklist RSA_NO_PADDING:I = 0x3

.field static final blacklist RSA_PKCS1_OAEP_PADDING:I = 0x4

.field static final blacklist RSA_PKCS1_PADDING:I = 0x1

.field static final blacklist RSA_PKCS1_PSS_PADDING:I = 0x6

.field static final blacklist SSL3_RT_ALERT:I = 0x15

.field static final blacklist SSL3_RT_APPLICATION_DATA:I = 0x17

.field static final blacklist SSL3_RT_CHANGE_CIPHER_SPEC:I = 0x14

.field static final blacklist SSL3_RT_HANDSHAKE:I = 0x16

.field static final blacklist SSL3_RT_HEADER_LENGTH:I = 0x5

.field static final blacklist SSL3_RT_MAX_PACKET_SIZE:I = 0x4145

.field static final blacklist SSL3_RT_MAX_PLAIN_LENGTH:I = 0x4000

.field static final blacklist SSL_CB_HANDSHAKE_DONE:I = 0x20

.field static final blacklist SSL_CB_HANDSHAKE_START:I = 0x10

.field static final blacklist SSL_ERROR_NONE:I = 0x0

.field static final blacklist SSL_ERROR_WANT_READ:I = 0x2

.field static final blacklist SSL_ERROR_WANT_WRITE:I = 0x3

.field static final blacklist SSL_ERROR_ZERO_RETURN:I = 0x6

.field static final blacklist SSL_MODE_CBC_RECORD_SPLITTING:I = 0x100

.field static final blacklist SSL_MODE_ENABLE_FALSE_START:I = 0x80

.field static final blacklist SSL_MODE_SEND_FALLBACK_SCSV:I = 0x400

.field static final blacklist SSL_OP_CIPHER_SERVER_PREFERENCE:I = 0x400000

.field static final blacklist SSL_OP_NO_TICKET:I = 0x4000

.field static final blacklist SSL_RECEIVED_SHUTDOWN:I = 0x2

.field static final blacklist SSL_SENT_SHUTDOWN:I = 0x1

.field static final blacklist SSL_SIGN_ECDSA_SECP256R1_SHA256:I = 0x403

.field static final blacklist SSL_SIGN_ECDSA_SECP384R1_SHA384:I = 0x503

.field static final blacklist SSL_SIGN_ECDSA_SECP521R1_SHA512:I = 0x603

.field static final blacklist SSL_SIGN_ECDSA_SHA1:I = 0x203

.field static final blacklist SSL_SIGN_ED25519:I = 0x807

.field static final blacklist SSL_SIGN_RSA_PKCS1_SHA1:I = 0x201

.field static final blacklist SSL_SIGN_RSA_PKCS1_SHA256:I = 0x401

.field static final blacklist SSL_SIGN_RSA_PKCS1_SHA384:I = 0x501

.field static final blacklist SSL_SIGN_RSA_PKCS1_SHA512:I = 0x601

.field static final blacklist SSL_SIGN_RSA_PSS_RSAE_SHA256:I = 0x804

.field static final blacklist SSL_SIGN_RSA_PSS_RSAE_SHA384:I = 0x805

.field static final blacklist SSL_SIGN_RSA_PSS_RSAE_SHA512:I = 0x806

.field static final blacklist SSL_TLSEXT_ERR_NOACK:I = 0x3

.field static final blacklist SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field static final blacklist SSL_VERIFY_NONE:I = 0x0

.field static final blacklist SSL_VERIFY_PEER:I = 0x1

.field static final blacklist TLS1_1_VERSION:I = 0x302

.field static final blacklist TLS1_2_VERSION:I = 0x303

.field static final blacklist TLS1_3_VERSION:I = 0x304

.field static final blacklist TLS1_VERSION:I = 0x301

.field static final blacklist TLS_CT_ECDSA_SIGN:I = 0x40

.field static final blacklist TLS_CT_RSA_SIGN:I = 0x1


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
