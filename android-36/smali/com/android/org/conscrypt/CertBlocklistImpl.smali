.class public final Lcom/android/org/conscrypt/CertBlocklistImpl;
.super Ljava/lang/Object;
.source "CertBlocklistImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/CertBlocklist;


# static fields
.field private static final blacklist CACHE_SIZE:I = 0x40

.field private static final blacklist HEX_TABLE:[B

.field static final blacklist SHA1_BUILTINS:[[B

.field static final blacklist SHA256_BUILTINS:[[B

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist serialBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sha1PubkeyBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sha256PubkeyBlocklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 47
    const-class v0, Lcom/android/org/conscrypt/CertBlocklistImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    .line 184
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 188
    const-string v1, "bae78e6bed65a2bf60ddedde7fd91e825865e93d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 192
    const-string v1, "410f36363258f30b347d12ce4863e433437806a8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 195
    const-string v1, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 198
    const-string v1, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 201
    const-string v1, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 204
    const-string v1, "e8f91200c65cee16e039b9f883841661635f81c5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 208
    const-string v1, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 211
    const-string v1, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 214
    const-string v1, "783333c9687df63377efceddd82efa9101913e8e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 217
    const-string v1, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertBlocklistImpl;->SHA1_BUILTINS:[[B

    .line 220
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 224
    const-string v1, "809964b15e9bd312993d9984045551f503f2cf8e68f39188921ba30fe623f9fd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    filled-new-array {v0}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/CertBlocklistImpl;->SHA256_BUILTINS:[[B

    .line 312
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/android/org/conscrypt/CertBlocklistImpl;->HEX_TABLE:[B

    return-void

    :array_7a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "serialBlocklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    .local p2, "sha1PubkeyBlocklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/CertBlocklistImpl;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "serialBlocklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    .local p2, "sha1PubkeyBlocklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    .local p3, "sha256PubkeyBlocklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/org/conscrypt/CertBlocklistImpl$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/CertBlocklistImpl$1;-><init>(Lcom/android/org/conscrypt/CertBlocklistImpl;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->cache:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->serialBlocklist:Ljava/util/Set;

    .line 77
    iput-object p2, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->sha1PubkeyBlocklist:Ljava/util/Set;

    .line 78
    iput-object p3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->sha256PubkeyBlocklist:Ljava/util/Set;

    .line 79
    return-void
.end method

.method private static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 151
    if-eqz p0, :cond_a

    .line 153
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 158
    goto :goto_a

    .line 156
    :catch_6
    move-exception v0

    goto :goto_a

    .line 154
    :catch_8
    move-exception v0

    .line 155
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 160
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method public static blacklist getDefault()Lcom/android/org/conscrypt/CertBlocklist;
    .registers 9

    .line 82
    const-string v0, "ANDROID_DATA"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "androidData":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/misc/keychain/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "blocklistRoot":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pubkey_blacklist.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "defaultPubkeyBlocklistPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "serial_blacklist.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "defaultSerialBlocklistPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pubkey_sha256_blocklist.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "defaultPubkeySha256BlocklistPath":Ljava/lang/String;
    nop

    .line 89
    const-string v5, "SHA-1"

    invoke-static {v2, v5}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readPublicKeyBlockList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 90
    .local v5, "sha1PubkeyBlocklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    nop

    .line 91
    const-string v6, "SHA-256"

    invoke-static {v4, v6}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readPublicKeyBlockList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 92
    .local v6, "sha256PubkeyBlocklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readSerialBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 93
    .local v7, "serialBlocklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    new-instance v8, Lcom/android/org/conscrypt/CertBlocklistImpl;

    invoke-direct {v8, v7, v5, v6}, Lcom/android/org/conscrypt/CertBlocklistImpl;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v8
.end method

.method private static blacklist isHex(Ljava/lang/String;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 98
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    .line 99
    const/4 v0, 0x1

    return v0

    .line 100
    :catch_9
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse hex value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isPubkeyHash(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "expectedHashLength"    # I

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p1, :cond_26

    .line 108
    sget-object v0, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pubkey hash length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_26
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->isHex(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isPublicKeyBlockListed([BLjava/util/Set;Ljava/lang/String;)Z
    .registers 9
    .param p0, "encodedPublicKey"    # [B
    .param p2, "hashType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 273
    .local p1, "blocklist":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_5} :catch_1c

    .line 277
    .local v1, "md":Ljava/security/MessageDigest;
    nop

    .line 278
    new-instance v2, Lcom/android/org/conscrypt/ByteArray;

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlocklistImpl;->toHex([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 279
    .local v2, "out":Lcom/android/org/conscrypt/ByteArray;
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 280
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_1b
    return v0

    .line 274
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "out":Lcom/android/org/conscrypt/ByteArray;
    :catch_1c
    move-exception v1

    .line 275
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MessageDigest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return v0
.end method

.method private static blacklist readBlocklist(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .line 116
    :try_start_0
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 119
    :catch_5
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not read blocklist"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 117
    .end local v0    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v0

    .line 121
    nop

    .line 122
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 135
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 136
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 138
    .local v2, "buffer":[B
    :goto_17
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_28

    .line 139
    .local v3, "byteCount":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_23

    .line 140
    nop

    .line 145
    invoke-static {v0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    return-object v1

    .line 142
    :cond_23
    const/4 v4, 0x0

    :try_start_24
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    .line 143
    .end local v3    # "byteCount":I
    goto :goto_17

    .line 145
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    :catchall_28
    move-exception v1

    invoke-static {v0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    throw v1
.end method

.method private static blacklist readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readPublicKeyBlockList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 14
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "hashType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_d4

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "SHA-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :sswitch_14
    const-string v0, "SHA-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1f

    :goto_1e
    move v0, v2

    :goto_1f
    packed-switch v0, :pswitch_data_de

    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hashType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expected SHA-1 or SHA-256"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :pswitch_41
    new-instance v0, Ljava/util/HashSet;

    sget-object v3, Lcom/android/org/conscrypt/CertBlocklistImpl;->SHA256_BUILTINS:[[B

    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlocklistImpl;->toByteArrays([[B)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    goto :goto_59

    .line 232
    .end local v0    # "bl":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    :pswitch_4d
    new-instance v0, Ljava/util/HashSet;

    sget-object v3, Lcom/android/org/conscrypt/CertBlocklistImpl;->SHA1_BUILTINS:[[B

    invoke-static {v3}, Lcom/android/org/conscrypt/CertBlocklistImpl;->toByteArrays([[B)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 233
    .restart local v0    # "bl":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ByteArray;>;"
    nop

    .line 244
    :goto_59
    :try_start_59
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_5d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_59 .. :try_end_5d} :catch_b2

    .line 248
    .local v3, "md":Ljava/security/MessageDigest;
    nop

    .line 251
    invoke-virtual {v3}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 254
    .local v4, "hashLength":I
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readBlocklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "pubkeyBlocklist":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 256
    const-string v6, ","

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    :goto_77
    if-ge v1, v6, :cond_b1

    aget-object v7, v2, v1

    .line 257
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-static {v7, v4}, Lcom/android/org/conscrypt/CertBlocklistImpl;->isPubkeyHash(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 259
    new-instance v8, Lcom/android/org/conscrypt/ByteArray;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 261
    :cond_94
    sget-object v8, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tried to blocklist invalid pubkey "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 256
    .end local v7    # "value":Ljava/lang/String;
    :goto_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 266
    :cond_b1
    return-object v0

    .line 245
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "hashLength":I
    .end local v5    # "pubkeyBlocklist":Ljava/lang/String;
    :catch_b2
    move-exception v1

    .line 246
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v2, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MessageDigest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    return-object v0

    :sswitch_data_d4
    .sparse-switch
        -0x5ad4ae6e -> :sswitch_14
        0x4b35330 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_41
    .end packed-switch
.end method

.method private static blacklist readSerialBlockList(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/conscrypt/CertBlocklistImpl;->readBlocklist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "serialBlocklist":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 171
    const-string v2, ","

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v3, :cond_47

    aget-object v5, v2, v4

    .line 173
    .local v5, "value":Ljava/lang/String;
    :try_start_1e
    new-instance v6, Ljava/math/BigInteger;

    const/16 v7, 0x10

    invoke-direct {v6, v5, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_28} :catch_29

    .line 176
    goto :goto_44

    .line 174
    :catch_29
    move-exception v6

    .line 175
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/org/conscrypt/CertBlocklistImpl;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tried to blacklist invalid serial number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 181
    :cond_47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static varargs blacklist toByteArrays([[B)Ljava/util/List;
    .registers 6
    .param p0, "allBytes"    # [[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ByteArray;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v0, "byteArrays":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ByteArray;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    .line 335
    .local v3, "bytes":[B
    new-instance v4, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v4, v3}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3    # "bytes":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 337
    :cond_19
    return-object v0
.end method

.method private static blacklist toHex([B)[B
    .registers 8
    .param p0, "in"    # [B

    .line 317
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 318
    .local v0, "out":[B
    const/4 v1, 0x0

    .line 319
    .local v1, "outIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_25

    .line 320
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 321
    .local v3, "value":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "outIndex":I
    .local v4, "outIndex":I
    sget-object v5, Lcom/android/org/conscrypt/CertBlocklistImpl;->HEX_TABLE:[B

    shr-int/lit8 v6, v3, 0x4

    aget-byte v5, v5, v6

    aput-byte v5, v0, v1

    .line 322
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "outIndex":I
    .restart local v1    # "outIndex":I
    sget-object v5, Lcom/android/org/conscrypt/CertBlocklistImpl;->HEX_TABLE:[B

    and-int/lit8 v6, v3, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 319
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 324
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method


# virtual methods
.method public blacklist isPublicKeyBlockListed(Ljava/security/PublicKey;)Z
    .registers 8
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .line 287
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 291
    .local v0, "encodedPublicKey":[B
    new-instance v1, Lcom/android/org/conscrypt/ByteArray;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ByteArray;-><init>([B)V

    .line 292
    .local v1, "cacheKey":Lcom/android/org/conscrypt/ByteArray;
    iget-object v2, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->cache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 293
    .local v2, "cachedResult":Ljava/lang/Boolean;
    if-eqz v2, :cond_18

    .line 294
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 296
    :cond_18
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->sha1PubkeyBlocklist:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    .line 297
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->sha1PubkeyBlocklist:Ljava/util/Set;

    const-string v5, "SHA-1"

    invoke-static {v0, v3, v5}, Lcom/android/org/conscrypt/CertBlocklistImpl;->isPublicKeyBlockListed([BLjava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 298
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->cache:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return v4

    .line 302
    :cond_35
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->sha256PubkeyBlocklist:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    .line 303
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->sha256PubkeyBlocklist:Ljava/util/Set;

    const-string v5, "SHA-256"

    invoke-static {v0, v3, v5}, Lcom/android/org/conscrypt/CertBlocklistImpl;->isPublicKeyBlockListed([BLjava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 304
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->cache:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return v4

    .line 308
    :cond_51
    iget-object v3, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->cache:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return v4
.end method

.method public blacklist isSerialNumberBlockListed(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "serial"    # Ljava/math/BigInteger;

    .line 329
    iget-object v0, p0, Lcom/android/org/conscrypt/CertBlocklistImpl;->serialBlocklist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
