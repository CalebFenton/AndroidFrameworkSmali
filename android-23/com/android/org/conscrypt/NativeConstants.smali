.class public final Lcom/android/org/conscrypt/NativeConstants;
.super Ljava/lang/Object;
.source "NativeConstants.java"


# static fields
.field public static final EVP_PKEY_EC:I = 0x198

.field public static final EVP_PKEY_HMAC:I = 0x357

.field public static final EVP_PKEY_RSA:I = 0x6

.field public static final EXFLAG_CA:I = 0x10

.field public static final EXFLAG_CRITICAL:I = 0x200

.field public static final IS_BORINGSSL:Z = true

.field public static final OPENSSL_EC_NAMED_CURVE:I = 0x0

.field public static final POINT_CONVERSION_COMPRESSED:I = 0x2

.field public static final POINT_CONVERSION_UNCOMPRESSED:I = 0x4

.field public static final RSA_NO_PADDING:I = 0x3

.field public static final RSA_PKCS1_OAEP_PADDING:I = 0x4

.field public static final RSA_PKCS1_PADDING:I = 0x1

.field public static final SSL3_RT_MAX_PACKET_SIZE:I = 0x4145

.field public static final SSL_CB_ACCEPT_EXIT:I = 0x2002

.field public static final SSL_CB_ACCEPT_LOOP:I = 0x2001

.field public static final SSL_CB_ALERT:I = 0x4000

.field public static final SSL_CB_CONNECT_EXIT:I = 0x1002

.field public static final SSL_CB_CONNECT_LOOP:I = 0x1001

.field public static final SSL_CB_EXIT:I = 0x2

.field public static final SSL_CB_HANDSHAKE_DONE:I = 0x20

.field public static final SSL_CB_HANDSHAKE_START:I = 0x10

.field public static final SSL_CB_LOOP:I = 0x1

.field public static final SSL_CB_READ:I = 0x4

.field public static final SSL_CB_READ_ALERT:I = 0x4004

.field public static final SSL_CB_WRITE:I = 0x8

.field public static final SSL_CB_WRITE_ALERT:I = 0x4008

.field public static final SSL_MODE_CBC_RECORD_SPLITTING:I = 0x100

.field public static final SSL_MODE_HANDSHAKE_CUTTHROUGH:I = 0x80

.field public static final SSL_MODE_SEND_FALLBACK_SCSV:I = 0x400

.field public static final SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION:I = 0x0

.field public static final SSL_OP_NO_SSLv3:I = 0x2000000

.field public static final SSL_OP_NO_TICKET:I = 0x4000

.field public static final SSL_OP_NO_TLSv1:I = 0x4000000

.field public static final SSL_OP_NO_TLSv1_1:I = 0x10000000

.field public static final SSL_OP_NO_TLSv1_2:I = 0x8000000

.field public static final SSL_RECEIVED_SHUTDOWN:I = 0x2

.field public static final SSL_SENT_SHUTDOWN:I = 0x1

.field public static final SSL_ST_ACCEPT:I = 0x2000

.field public static final SSL_ST_CONNECT:I = 0x1000

.field public static final SSL_ST_INIT:I = 0x3000

.field public static final SSL_ST_MASK:I = 0xfff

.field public static final SSL_ST_OK:I = 0x3

.field public static final SSL_ST_RENEGOTIATE:I = 0x3004

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final TLS_CT_ECDSA_FIXED_ECDH:I = 0x42

.field public static final TLS_CT_ECDSA_SIGN:I = 0x40

.field public static final TLS_CT_RSA_FIXED_DH:I = 0x3

.field public static final TLS_CT_RSA_FIXED_ECDH:I = 0x41

.field public static final TLS_CT_RSA_SIGN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
