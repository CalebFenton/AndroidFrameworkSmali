.class public final Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
.source "IkeAuthPskPayload.java"


# static fields
.field private static final blacklist IKE_KEY_PAD_STRING_ASCII_HEX_BYTES:[B


# instance fields
.field public final blacklist signature:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->IKE_KEY_PAD_STRING_ASCII_HEX_BYTES:[B

    return-void

    :array_a
    .array-data 1
        0x4bt
        0x65t
        0x79t
        0x20t
        0x50t
        0x61t
        0x64t
        0x20t
        0x66t
        0x6ft
        0x72t
        0x20t
        0x49t
        0x4bt
        0x45t
        0x76t
        0x32t
    .end array-data
.end method

.method protected constructor blacklist <init>(Z[B)V
    .registers 4
    .param p1, "critical"    # Z
    .param p2, "authData"    # [B

    .line 49
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;-><init>(ZI)V

    .line 50
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->signature:[B

    .line 51
    return-void
.end method

.method public constructor blacklist <init>([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V
    .registers 9
    .param p1, "psk"    # [B
    .param p2, "ikeInitBytes"    # [B
    .param p3, "nonce"    # [B
    .param p4, "idPayloadBodyBytes"    # [B
    .param p5, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p6, "prfKeyBytes"    # [B

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;-><init>(ZI)V

    .line 76
    nop

    .line 77
    invoke-static/range {p1 .. p6}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->calculatePskSignature([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->signature:[B

    .line 79
    return-void
.end method

.method private static blacklist calculatePskSignature([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B
    .registers 9
    .param p0, "psk"    # [B
    .param p1, "ikeInitBytes"    # [B
    .param p2, "nonce"    # [B
    .param p3, "idPayloadBodyBytes"    # [B
    .param p4, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p5, "prfKeyBytes"    # [B

    .line 88
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->IKE_KEY_PAD_STRING_ASCII_HEX_BYTES:[B

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v0

    .line 89
    .local v0, "signingKeyBytes":[B
    nop

    .line 90
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->getSignedOctets([B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B

    move-result-object v1

    .line 92
    .local v1, "dataToSignBytes":[B
    invoke-virtual {p4, v0, v1}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;->signBytes([B[B)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected blacklist encodeAuthDataToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->signature:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    return-void
.end method

.method protected blacklist getAuthDataLength()I
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->signature:[B

    array-length v0, v0

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 140
    const-string v0, "Auth(PSK)"

    return-object v0
.end method

.method public blacklist verifyInboundSignature([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V
    .registers 10
    .param p1, "psk"    # [B
    .param p2, "ikeInitBytes"    # [B
    .param p3, "nonce"    # [B
    .param p4, "idPayloadBodyBytes"    # [B
    .param p5, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p6, "prfKeyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 120
    nop

    .line 121
    invoke-static/range {p1 .. p6}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->calculatePskSignature([B[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B

    move-result-object v0

    .line 123
    .local v0, "calculatedSignature":[B
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPskPayload;->signature:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 126
    return-void

    .line 124
    :cond_e
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "Signature verification failed."

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
