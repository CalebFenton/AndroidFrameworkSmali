.class public Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
.super Ljava/lang/Object;
.source "CertBlacklist.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field public final pubkeyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation
.end field

.field public final serialBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const-class v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    #@c
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-string/jumbo v4, "ANDROID_DATA"

    #@6
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 45
    .local v0, "androidData":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    const-string/jumbo v5, "/misc/keychain/"

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 46
    .local v1, "blacklistRoot":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    const-string/jumbo v5, "pubkey_blacklist.txt"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 47
    .local v2, "defaultPubkeyBlacklistPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    const-string/jumbo v5, "serial_blacklist.txt"

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 49
    .local v3, "defaultSerialBlacklistPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    #@49
    move-result-object v4

    #@4a
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    #@4c
    .line 50
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    #@4f
    move-result-object v4

    #@50
    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    #@52
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pubkeyBlacklistPath"    # Ljava/lang/String;
    .param p2, "serialBlacklistPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    #@9
    .line 56
    invoke-static {p2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    #@f
    .line 54
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    #@0
    .prologue
    .line 113
    if-eqz p0, :cond_0

    #@2
    .line 115
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 112
    :cond_0
    :goto_0
    return-void

    #@6
    .line 118
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0

    #@8
    .line 116
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@9
    .line 117
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private static isHex(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    #@2
    const/16 v2, 0x10

    #@4
    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 62
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 63
    :catch_0
    move-exception v0

    #@a
    .line 64
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    #@c
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Could not parse hex value "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    .line 65
    const/4 v1, 0x0

    #@26
    return v1
.end method

.method private static isPubkeyHash(Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x28

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    #@a
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Invalid pubkey hash length: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@27
    .line 72
    const/4 v0, 0x0

    #@28
    return v0

    #@29
    .line 74
    :cond_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isHex(Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    return v0
.end method

.method private static readBlacklist(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v2

    #@4
    return-object v2

    #@5
    .line 81
    :catch_0
    move-exception v0

    #@6
    .line 82
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    #@8
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@a
    const-string/jumbo v4, "Could not read blacklist"

    #@d
    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const-string/jumbo v2, ""

    #@13
    return-object v2

    #@14
    .line 80
    :catch_1
    move-exception v1

    #@15
    .local v1, "ignored":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method private static readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    const/4 v3, 0x0

    #@1
    .line 96
    .local v3, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    #@3
    const-string/jumbo v5, "r"

    #@6
    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9
    .line 97
    .local v4, "f":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@b
    .end local v3    # "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    #@e
    move-result-wide v6

    #@f
    long-to-int v5, v6

    #@10
    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@13
    .line 98
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    #@15
    new-array v0, v5, [B

    #@17
    .line 100
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result v1

    #@1b
    .line 101
    .local v1, "byteCount":I
    const/4 v5, -0x1

    #@1c
    if-ne v1, v5, :cond_0

    #@1e
    .line 107
    invoke-static {v4}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    #@21
    .line 102
    return-object v2

    #@22
    .line 104
    :cond_0
    const/4 v5, 0x0

    #@23
    :try_start_2
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@26
    goto :goto_0

    #@27
    .line 106
    .end local v0    # "buffer":[B
    .end local v1    # "byteCount":I
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    #@28
    move-object v3, v4

    #@29
    .line 107
    .end local v4    # "f":Ljava/io/RandomAccessFile;
    :goto_1
    invoke-static {v3}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->closeQuietly(Ljava/io/Closeable;)V

    #@2c
    .line 106
    throw v5

    #@2d
    .restart local v3    # "f":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    #@2e
    goto :goto_1
.end method

.method private static readFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readFileAsBytes(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "UTF-8"

    #@7
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static final readPublicKeyBlackList(Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 168
    new-instance v0, Ljava/util/HashSet;

    #@3
    const/16 v4, 0x9

    #@5
    new-array v4, v4, [[B

    #@7
    .line 171
    const-string/jumbo v5, "410f36363258f30b347d12ce4863e433437806a8"

    #@a
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@d
    move-result-object v5

    #@e
    aput-object v5, v4, v3

    #@10
    .line 174
    const-string/jumbo v5, "ba3e7bd38cd7e1e6b9cd4c219962e59d7a2f4e37"

    #@13
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@16
    move-result-object v5

    #@17
    const/4 v6, 0x1

    #@18
    aput-object v5, v4, v6

    #@1a
    .line 177
    const-string/jumbo v5, "e23b8d105f87710a68d9248050ebefc627be4ca6"

    #@1d
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@20
    move-result-object v5

    #@21
    const/4 v6, 0x2

    #@22
    aput-object v5, v4, v6

    #@24
    .line 180
    const-string/jumbo v5, "7b2e16bc39bcd72b456e9f055d1de615b74945db"

    #@27
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@2a
    move-result-object v5

    #@2b
    const/4 v6, 0x3

    #@2c
    aput-object v5, v4, v6

    #@2e
    .line 183
    const-string/jumbo v5, "e8f91200c65cee16e039b9f883841661635f81c5"

    #@31
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@34
    move-result-object v5

    #@35
    const/4 v6, 0x4

    #@36
    aput-object v5, v4, v6

    #@38
    .line 187
    const-string/jumbo v5, "0129bcd5b448ae8d2496d1c3e19723919088e152"

    #@3b
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@3e
    move-result-object v5

    #@3f
    const/4 v6, 0x5

    #@40
    aput-object v5, v4, v6

    #@42
    .line 190
    const-string/jumbo v5, "5f3ab33d55007054bc5e3e5553cd8d8465d77c61"

    #@45
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@48
    move-result-object v5

    #@49
    const/4 v6, 0x6

    #@4a
    aput-object v5, v4, v6

    #@4c
    .line 193
    const-string/jumbo v5, "783333c9687df63377efceddd82efa9101913e8e"

    #@4f
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@52
    move-result-object v5

    #@53
    const/4 v6, 0x7

    #@54
    aput-object v5, v4, v6

    #@56
    .line 196
    const-string/jumbo v5, "3ecf4bbbe46096d514bb539bb913d77aa4ef31bf"

    #@59
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    #@5c
    move-result-object v5

    #@5d
    const/16 v6, 0x8

    #@5f
    aput-object v5, v4, v6

    #@61
    .line 168
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@64
    move-result-object v4

    #@65
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@68
    .line 200
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    .line 201
    .local v1, "pubkeyBlacklist":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@6f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v4

    #@73
    if-nez v4, :cond_1

    #@75
    .line 202
    const-string/jumbo v4, ","

    #@78
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7b
    move-result-object v4

    #@7c
    array-length v5, v4

    #@7d
    :goto_0
    if-ge v3, v5, :cond_1

    #@7f
    aget-object v2, v4, v3

    #@81
    .line 203
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    .line 204
    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->isPubkeyHash(Ljava/lang/String;)Z

    #@88
    move-result v6

    #@89
    if-eqz v6, :cond_0

    #@8b
    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@8e
    move-result-object v6

    #@8f
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@92
    .line 202
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@94
    goto :goto_0

    #@95
    .line 207
    :cond_0
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    #@97
    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@99
    new-instance v8, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v9, "Tried to blacklist invalid pubkey "

    #@a1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v8

    #@ad
    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    #@b0
    goto :goto_1

    #@b1
    .line 212
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static final readSerialBlackList(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v8, 0x10

    #@3
    .line 134
    new-instance v0, Ljava/util/HashSet;

    #@5
    const/16 v5, 0xa

    #@7
    new-array v5, v5, [Ljava/math/BigInteger;

    #@9
    .line 137
    new-instance v6, Ljava/math/BigInteger;

    #@b
    const-string/jumbo v7, "077a59bcd53459601ca6907267a6dd1c"

    #@e
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@11
    aput-object v6, v5, v4

    #@13
    .line 138
    new-instance v6, Ljava/math/BigInteger;

    #@15
    const-string/jumbo v7, "047ecbe9fca55f7bd09eae36e10cae1e"

    #@18
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1b
    const/4 v7, 0x1

    #@1c
    aput-object v6, v5, v7

    #@1e
    .line 139
    new-instance v6, Ljava/math/BigInteger;

    #@20
    const-string/jumbo v7, "d8f35f4eb7872b2dab0692e315382fb0"

    #@23
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@26
    const/4 v7, 0x2

    #@27
    aput-object v6, v5, v7

    #@29
    .line 140
    new-instance v6, Ljava/math/BigInteger;

    #@2b
    const-string/jumbo v7, "b0b7133ed096f9b56fae91c874bd3ac0"

    #@2e
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@31
    const/4 v7, 0x3

    #@32
    aput-object v6, v5, v7

    #@34
    .line 141
    new-instance v6, Ljava/math/BigInteger;

    #@36
    const-string/jumbo v7, "9239d5348f40d1695a745470e1f23f43"

    #@39
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@3c
    const/4 v7, 0x4

    #@3d
    aput-object v6, v5, v7

    #@3f
    .line 142
    new-instance v6, Ljava/math/BigInteger;

    #@41
    const-string/jumbo v7, "e9028b9578e415dc1a710a2b88154447"

    #@44
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@47
    const/4 v7, 0x5

    #@48
    aput-object v6, v5, v7

    #@4a
    .line 143
    new-instance v6, Ljava/math/BigInteger;

    #@4c
    const-string/jumbo v7, "d7558fdaf5f1105bb213282b707729a3"

    #@4f
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@52
    const/4 v7, 0x6

    #@53
    aput-object v6, v5, v7

    #@55
    .line 144
    new-instance v6, Ljava/math/BigInteger;

    #@57
    const-string/jumbo v7, "f5c86af36162f13a64f54f6dc9587c06"

    #@5a
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@5d
    const/4 v7, 0x7

    #@5e
    aput-object v6, v5, v7

    #@60
    .line 145
    new-instance v6, Ljava/math/BigInteger;

    #@62
    const-string/jumbo v7, "392a434f0e07df1f8aa305de34e0c229"

    #@65
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@68
    const/16 v7, 0x8

    #@6a
    aput-object v6, v5, v7

    #@6c
    .line 146
    new-instance v6, Ljava/math/BigInteger;

    #@6e
    const-string/jumbo v7, "3e75ced46b693021218830ae86a82a71"

    #@71
    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@74
    const/16 v7, 0x9

    #@76
    aput-object v6, v5, v7

    #@78
    .line 134
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@7b
    move-result-object v5

    #@7c
    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@7f
    .line 150
    .local v0, "bl":Ljava/util/Set;, "Ljava/util/Set<Ljava/math/BigInteger;>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->readBlacklist(Ljava/lang/String;)Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    .line 151
    .local v2, "serialBlacklist":Ljava/lang/String;
    const-string/jumbo v5, ""

    #@86
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v5

    #@8a
    if-nez v5, :cond_0

    #@8c
    .line 152
    const-string/jumbo v5, ","

    #@8f
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    array-length v6, v5

    #@94
    :goto_0
    if-ge v4, v6, :cond_0

    #@96
    aget-object v3, v5, v4

    #@98
    .line 154
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/math/BigInteger;

    #@9a
    const/16 v8, 0x10

    #@9c
    invoke-direct {v7, v3, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@9f
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a2
    .line 152
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@a4
    goto :goto_0

    #@a5
    .line 155
    :catch_0
    move-exception v1

    #@a6
    .line 156
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->logger:Ljava/util/logging/Logger;

    #@a8
    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@aa
    new-instance v9, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v10, "Tried to blacklist invalid serial number "

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v9

    #@b6
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v9

    #@ba
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v9

    #@be
    invoke-virtual {v7, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c1
    goto :goto_1

    #@c2
    .line 162
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@c5
    move-result-object v4

    #@c6
    return-object v4
.end method


# virtual methods
.method public isPublicKeyBlackListed(Ljava/security/PublicKey;)Z
    .locals 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 216
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    #@4
    move-result-object v3

    #@5
    .line 217
    .local v3, "encoded":[B
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@8
    move-result-object v2

    #@9
    .line 218
    .local v2, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    array-length v5, v3

    #@a
    invoke-interface {v2, v3, v6, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@d
    .line 219
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@10
    move-result v5

    #@11
    new-array v4, v5, [B

    #@13
    .line 220
    .local v4, "out":[B
    invoke-interface {v2, v4, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@16
    .line 221
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->pubkeyBlacklist:Ljava/util/Set;

    #@18
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "blacklisted$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, [B

    #@28
    .line 222
    .local v0, "blacklisted":[B
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_0

    #@32
    .line 223
    const/4 v5, 0x1

    #@33
    return v5

    #@34
    .line 226
    .end local v0    # "blacklisted":[B
    :cond_1
    return v6
.end method

.method public isSerialNumberBlackListed(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "serial"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;->serialBlacklist:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
