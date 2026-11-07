.class public final Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkePayload;
.source "IkeKePayload.java"


# static fields
.field private static final blacklist CURVE_25519_X509_PUB_KEY_HEADER:[B

.field private static final blacklist DH_GROUP_1024_BIT_MODP_PUBLIC_KEY_LEN:I = 0x80

.field private static final blacklist DH_GROUP_1536_BIT_MODP_PUBLIC_KEY_LEN:I = 0xc0

.field private static final blacklist DH_GROUP_2048_BIT_MODP_PUBLIC_KEY_LEN:I = 0x100

.field private static final blacklist DH_GROUP_3072_BIT_MODP_PUBLIC_KEY_LEN:I = 0x180

.field private static final blacklist DH_GROUP_4096_BIT_MODP_PUBLIC_KEY_LEN:I = 0x200

.field private static final blacklist DH_GROUP_CURVE_25519_PUBLIC_KEY_LEN:I = 0x20

.field private static final blacklist KEY_EXCHANGE_ALGORITHM_CURVE:Ljava/lang/String; = "XDH"

.field private static final blacklist KEY_EXCHANGE_ALGORITHM_MODP:Ljava/lang/String; = "DH"

.field private static final blacklist KEY_EXCHANGE_CURVE_PROVIDER:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final blacklist KE_HEADER_LEN:I = 0x4

.field private static final blacklist KE_HEADER_RESERVED:I

.field private static final blacklist MODP_PRIME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist dhGroup:I

.field public final blacklist isOutbound:Z

.field public final blacklist keyExchangeData:[B

.field public final blacklist localPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    .line 86
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0xf

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0x1f

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    .line 97
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    .line 99
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE65381FFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedHexStringToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    .line 102
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA237327FFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedHexStringToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    .line 105
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AACAA68FFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedHexStringToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    .line 108
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedHexStringToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    .line 111
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A92108011A723C12A787E6D788719A10BDBA5B2699C327186AF4E23C1A946834B6150BDA2583E9CA2AD44CE8DBBBC2DB04DE8EF92E8EFC141FBECAA6287C59474E6BC05D99B2964FA090C3A2233BA186515BE7ED1F612970CEE2D7AFB81BDD762170481CD0069127D5B05AA993B4EA988D8FDDC186FFB7DC90A6C08F4DF435C934063199FFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedHexStringToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->CURVE_25519_X509_PUB_KEY_HEADER:[B

    return-void

    nop

    :array_9c
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x6et
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method private constructor blacklist <init>(I[BLjava/security/PrivateKey;)V
    .registers 6
    .param p1, "dhGroup"    # I
    .param p2, "keyExchangeData"    # [B
    .param p3, "localPrivateKey"    # Ljava/security/PrivateKey;

    .line 191
    const/16 v0, 0x22

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 192
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->isOutbound:Z

    .line 194
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    .line 195
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->localPrivateKey:Ljava/security/PrivateKey;

    .line 196
    return-void
.end method

.method public constructor blacklist <init>(Z[B)V
    .registers 9
    .param p1, "critical"    # Z
    .param p2, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 162
    const/16 v0, 0x22

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;-><init>(IZ)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->isOutbound:Z

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->localPrivateKey:Ljava/security/PrivateKey;

    .line 167
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 174
    array-length v1, p2

    add-int/lit8 v1, v1, -0x4

    .line 177
    .local v1, "dataSize":I
    sget-object v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object v2, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3a

    goto :goto_65

    .line 178
    :cond_3a
    new-instance v2, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting data size to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    .line 180
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_65
    :goto_65
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    .line 186
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 187
    return-void
.end method

.method private static blacklist createOutboundCurveKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .registers 9
    .param p0, "dh"    # I
    .param p1, "randomnessFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 263
    :try_start_0
    const-string v0, "XDH"

    const-string v1, "AndroidOpenSSL"

    .line 264
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 266
    .local v0, "dhKeyPairGen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 268
    .local v1, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    .line 269
    .local v2, "privateKey":Ljava/security/PrivateKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    .line 270
    .local v3, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    .line 271
    .local v4, "x509EncodedPubKeyBytes":[B
    sget-object v5, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->CURVE_25519_X509_PUB_KEY_HEADER:[B

    array-length v5, v5

    array-length v6, v4

    .line 272
    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 277
    .local v5, "keyExchangeData":[B
    new-instance v6, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    invoke-direct {v6, p0, v5, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;-><init>(I[BLjava/security/PrivateKey;)V
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v6

    .line 278
    .end local v0    # "dhKeyPairGen":Ljava/security/KeyPairGenerator;
    .end local v1    # "keyPair":Ljava/security/KeyPair;
    .end local v2    # "privateKey":Ljava/security/PrivateKey;
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .end local v4    # "x509EncodedPubKeyBytes":[B
    .end local v5    # "keyExchangeData":[B
    :catch_26
    move-exception v0

    .line 279
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain XDH"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist createOutboundKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .registers 5
    .param p0, "dh"    # I
    .param p1, "randomnessFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 213
    sparse-switch p0, :sswitch_data_26

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported DH group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :sswitch_1c
    invoke-static {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->createOutboundCurveKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    move-result-object v0

    return-object v0

    .line 219
    :sswitch_21
    invoke-static {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->createOutboundModpKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    move-result-object v0

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x2 -> :sswitch_21
        0x5 -> :sswitch_21
        0xe -> :sswitch_21
        0xf -> :sswitch_21
        0x10 -> :sswitch_21
        0x1f -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist createOutboundModpKePayload(ILcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;)Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;
    .registers 13
    .param p0, "dh"    # I
    .param p1, "randomnessFactory"    # Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;

    .line 229
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 230
    .local v0, "prime":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->PUBLIC_KEY_LEN_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 233
    .local v1, "keySize":I
    const-wide/16 v2, 0x2

    :try_start_16
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 234
    .local v2, "baseGen":Ljava/math/BigInteger;
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-direct {v3, v0, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 236
    .local v3, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    const-string v4, "DH"

    .line 237
    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    .line 239
    .local v4, "dhKeyPairGen":Ljava/security/KeyPairGenerator;
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/utils/RandomnessFactory;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    .line 240
    .local v5, "random":Ljava/security/SecureRandom;
    if-nez v5, :cond_31

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_32

    :cond_31
    move-object v6, v5

    .line 241
    .end local v5    # "random":Ljava/security/SecureRandom;
    .local v6, "random":Ljava/security/SecureRandom;
    :goto_32
    invoke-virtual {v4, v3, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 243
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v5

    .line 245
    .local v5, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    check-cast v7, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 246
    .local v7, "localPrivateKey":Ljava/security/PrivateKey;
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v8

    check-cast v8, Ljavax/crypto/interfaces/DHPublicKey;

    .line 249
    .local v8, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    nop

    .line 250
    invoke-interface {v8}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/android/internal/net/utils/BigIntegerUtils;->bigIntegerToUnsignedByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v9

    .line 252
    .local v9, "keyExchangeData":[B
    new-instance v10, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    invoke-direct {v10, p0, v9, v7}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;-><init>(I[BLjava/security/PrivateKey;)V
    :try_end_53
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_53} :catch_5d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_53} :catch_54

    return-object v10

    .line 255
    .end local v2    # "baseGen":Ljava/math/BigInteger;
    .end local v3    # "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    .end local v4    # "dhKeyPairGen":Ljava/security/KeyPairGenerator;
    .end local v5    # "keyPair":Ljava/security/KeyPair;
    .end local v6    # "random":Ljava/security/SecureRandom;
    .end local v7    # "localPrivateKey":Ljava/security/PrivateKey;
    .end local v8    # "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    .end local v9    # "keyExchangeData":[B
    :catch_54
    move-exception v2

    .line 256
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to initialize key generator"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 253
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_5d
    move-exception v2

    .line 254
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Failed to obtain DH"

    invoke-direct {v3, v4, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static blacklist getCurveSharedKey(Ljava/security/PrivateKey;[BI)[B
    .registers 10
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "remotePublicKey"    # [B
    .param p2, "dhGroup"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 368
    const-string v0, "AndroidOpenSSL"

    const-string v1, "XDH"

    .line 369
    :try_start_4
    invoke-static {v1, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    .line 371
    .local v2, "keyAgreement":Ljavax/crypto/KeyAgreement;
    nop

    .line 372
    invoke-static {v1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 376
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_10} :catch_3a
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_10} :catch_3a

    .line 379
    nop

    .line 381
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->CURVE_25519_X509_PUB_KEY_HEADER:[B

    array-length v1, v1

    const/16 v3, 0x20

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 385
    .local v1, "x509EncodedPubKeyBytes":[B
    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->CURVE_25519_X509_PUB_KEY_HEADER:[B

    sget-object v5, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->CURVE_25519_X509_PUB_KEY_HEADER:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->CURVE_25519_X509_PUB_KEY_HEADER:[B

    array-length v4, v4

    invoke-static {p1, v6, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 399
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 400
    .local v3, "publicKey":Ljava/security/PublicKey;
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 401
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v4

    return-object v4

    .line 377
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "x509EncodedPubKeyBytes":[B
    .end local v2    # "keyAgreement":Ljavax/crypto/KeyAgreement;
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_3a
    move-exception v0

    .line 378
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to construct or initialize KeyAgreement"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getModpSharedKey(Ljava/security/PrivateKey;[BI)[B
    .registers 11
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "remotePublicKey"    # [B
    .param p2, "dhGroup"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 338
    const-string v0, "DH"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    .line 339
    .local v1, "dhKeyAgreement":Ljavax/crypto/KeyAgreement;
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 342
    .local v0, "dhKeyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_d} :catch_34
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_d} :catch_34

    .line 345
    nop

    .line 348
    invoke-static {p1}, Lcom/android/internal/net/utils/BigIntegerUtils;->unsignedByteArrayToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 349
    .local v2, "publicKeyValue":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->MODP_PRIME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 350
    .local v3, "primeValue":Ljava/math/BigInteger;
    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 351
    .local v4, "baseGenValue":Ljava/math/BigInteger;
    new-instance v5, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-direct {v5, v2, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 356
    .local v5, "publicKeySpec":Ljavax/crypto/spec/DHPublicKeySpec;
    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljavax/crypto/interfaces/DHPublicKey;

    .line 358
    .local v6, "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 359
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v7

    return-object v7

    .line 343
    .end local v0    # "dhKeyFactory":Ljava/security/KeyFactory;
    .end local v1    # "dhKeyAgreement":Ljavax/crypto/KeyAgreement;
    .end local v2    # "publicKeyValue":Ljava/math/BigInteger;
    .end local v3    # "primeValue":Ljava/math/BigInteger;
    .end local v4    # "baseGenValue":Ljava/math/BigInteger;
    .end local v5    # "publicKeySpec":Ljavax/crypto/spec/DHPublicKeySpec;
    .end local v6    # "publicKey":Ljavax/crypto/interfaces/DHPublicKey;
    :catch_34
    move-exception v0

    .line 344
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to construct or initialize KeyAgreement"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getSharedKey(Ljava/security/PrivateKey;[BI)[B
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "remotePublicKey"    # [B
    .param p2, "dhGroup"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 318
    sparse-switch p2, :sswitch_data_26

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DH group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :sswitch_1c
    invoke-static {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->getCurveSharedKey(Ljava/security/PrivateKey;[BI)[B

    move-result-object v0

    return-object v0

    .line 324
    :sswitch_21
    invoke-static {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->getModpSharedKey(Ljava/security/PrivateKey;[BI)[B

    move-result-object v0

    return-object v0

    :sswitch_data_26
    .sparse-switch
        0x2 -> :sswitch_21
        0x5 -> :sswitch_21
        0xe -> :sswitch_21
        0xf -> :sswitch_21
        0x10 -> :sswitch_21
        0x1f -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nextPayload"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->getPayloadLength()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->encodePayloadHeaderToByteBuffer(IILjava/nio/ByteBuffer;)V

    .line 292
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->dhGroup:I

    int-to-short v0, v0

    .line 293
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    .line 295
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    return-void
.end method

.method protected blacklist getPayloadLength()I
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;->keyExchangeData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 2

    .line 411
    const-string v0, "KE"

    return-object v0
.end method
