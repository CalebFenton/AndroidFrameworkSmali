.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$MessageDigestImpl;
    }
.end annotation


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static synthetic -set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    #@2
    const-string/jumbo v1, "MessageDigest"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@a
    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@5
    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 8
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 88
    if-nez p0, :cond_0

    #@3
    .line 89
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "algorithm == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 91
    :cond_0
    sget-object v4, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@e
    invoke-virtual {v4, p0, v7}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    #@11
    move-result-object v2

    #@12
    .line 92
    .local v2, "sap":Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;
    iget-object v3, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@14
    .line 93
    .local v3, "spi":Ljava/lang/Object;
    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@16
    .line 94
    .local v0, "provider":Ljava/security/Provider;
    instance-of v4, v3, Ljava/security/MessageDigest;

    #@18
    if-eqz v4, :cond_1

    #@1a
    move-object v1, v3

    #@1b
    .line 95
    check-cast v1, Ljava/security/MessageDigest;

    #@1d
    .line 96
    .local v1, "result":Ljava/security/MessageDigest;
    iput-object p0, v1, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@1f
    .line 97
    iput-object v0, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@21
    .line 98
    return-object v1

    #@22
    .line 100
    .end local v1    # "result":Ljava/security/MessageDigest;
    :cond_1
    new-instance v5, Ljava/security/MessageDigest$MessageDigestImpl;

    #@24
    iget-object v4, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    #@26
    check-cast v4, Ljava/security/MessageDigestSpi;

    #@28
    iget-object v6, v2, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    #@2a
    invoke-direct {v5, v4, v6, p0, v7}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$MessageDigestImpl;)V

    #@2d
    return-object v5
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 124
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v1

    #@e
    .line 126
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@11
    move-result-object v0

    #@12
    .line 127
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    #@14
    .line 128
    new-instance v1, Ljava/security/NoSuchProviderException;

    #@16
    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 130
    :cond_2
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 152
    if-nez p1, :cond_0

    #@3
    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "provider == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 155
    :cond_0
    if-nez p0, :cond_1

    #@e
    .line 156
    new-instance v2, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v3, "algorithm == null"

    #@13
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 158
    :cond_1
    sget-object v2, Ljava/security/MessageDigest;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    #@19
    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    .line 159
    .local v1, "spi":Ljava/lang/Object;
    instance-of v2, v1, Ljava/security/MessageDigest;

    #@1f
    if-eqz v2, :cond_2

    #@21
    move-object v0, v1

    #@22
    .line 160
    check-cast v0, Ljava/security/MessageDigest;

    #@24
    .line 161
    .local v0, "result":Ljava/security/MessageDigest;
    iput-object p0, v0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@26
    .line 162
    iput-object p1, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@28
    .line 163
    return-object v0

    #@29
    .line 165
    .end local v0    # "result":Ljava/security/MessageDigest;
    :cond_2
    new-instance v2, Ljava/security/MessageDigest$MessageDigestImpl;

    #@2b
    check-cast v1, Ljava/security/MessageDigestSpi;

    #@2d
    .end local v1    # "spi":Ljava/lang/Object;
    invoke-direct {v2, v1, p1, p0, v3}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$MessageDigestImpl;)V

    #@30
    return-object v2
.end method

.method public static isEqual([B[B)Z
    .locals 5
    .param p0, "digesta"    # [B
    .param p1, "digestb"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 303
    array-length v3, p0

    #@2
    array-length v4, p1

    #@3
    if-eq v3, v4, :cond_0

    #@5
    .line 304
    return v2

    #@6
    .line 307
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 308
    .local v1, "v":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@9
    if-ge v0, v3, :cond_1

    #@b
    .line 309
    aget-byte v3, p0, v0

    #@d
    aget-byte v4, p1, v0

    #@f
    xor-int/2addr v3, v4

    #@10
    or-int/2addr v1, v3

    #@11
    .line 308
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 311
    :cond_1
    if-nez v1, :cond_2

    #@16
    const/4 v2, 0x1

    #@17
    :cond_2
    return v2
.end method


# virtual methods
.method public digest([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    if-eqz p1, :cond_0

    #@2
    .line 260
    int-to-long v0, p2

    #@3
    int-to-long v2, p3

    #@4
    add-long/2addr v0, v2

    #@5
    array-length v2, p1

    #@6
    int-to-long v2, v2

    #@7
    cmp-long v0, v0, v2

    #@9
    if-lez v0, :cond_1

    #@b
    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v0

    #@11
    .line 263
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public digest()[B
    .locals 1

    #@0
    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public digest([B)[B
    .locals 1
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 277
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    #@3
    .line 278
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getDigestLength()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 340
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    #@4
    move-result v1

    #@5
    .line 341
    .local v1, "l":I
    if-eqz v1, :cond_0

    #@7
    .line 342
    return v1

    #@8
    .line 344
    :cond_0
    instance-of v3, p0, Ljava/lang/Cloneable;

    #@a
    if-nez v3, :cond_1

    #@c
    .line 345
    return v4

    #@d
    .line 348
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/security/MessageDigest;

    #@13
    .line 349
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    #@16
    move-result-object v3

    #@17
    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    return v3

    #@19
    .line 350
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    #@1a
    .line 351
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    return v4
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    #@3
    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MESSAGE DIGEST "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public update(B)V
    .locals 0
    .param p1, "arg0"    # B

    #@0
    .prologue
    .line 184
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    #@3
    .line 183
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 362
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@3
    .line 361
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 220
    if-nez p1, :cond_0

    #@2
    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "input == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 223
    :cond_0
    array-length v0, p1

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    #@10
    .line 219
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 201
    if-eqz p1, :cond_0

    #@2
    .line 205
    int-to-long v0, p2

    #@3
    int-to-long v2, p3

    #@4
    add-long/2addr v0, v2

    #@5
    array-length v2, p1

    #@6
    int-to-long v2, v2

    #@7
    cmp-long v0, v0, v2

    #@9
    if-lez v0, :cond_1

    #@b
    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v0

    #@11
    .line 208
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    #@14
    .line 200
    return-void
.end method
