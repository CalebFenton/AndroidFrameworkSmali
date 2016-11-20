.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$Delegate;
    }
.end annotation


# static fields
.field private static final INITIAL:I = 0x0

.field private static final IN_PROGRESS:I = 0x1


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private state:I


# direct methods
.method static synthetic -get0(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/security/MessageDigest;)Ljava/security/Provider;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/security/MessageDigest;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/security/MessageDigest;->state:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Ljava/security/MessageDigest;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/security/MessageDigest;->state:I

    #@2
    return p1
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    #@3
    .line 138
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/security/MessageDigest;->state:I

    #@6
    .line 153
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@8
    .line 152
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    :try_start_0
    const-string/jumbo v5, "MessageDigest"

    #@3
    .line 187
    const/4 v4, 0x0

    #@4
    check-cast v4, Ljava/lang/String;

    #@6
    .line 186
    invoke-static {p0, v5, v4}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    .line 188
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    #@b
    aget-object v4, v3, v4

    #@d
    instance-of v4, v4, Ljava/security/MessageDigest;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 189
    const/4 v4, 0x0

    #@12
    aget-object v2, v3, v4

    #@14
    check-cast v2, Ljava/security/MessageDigest;

    #@16
    .line 190
    .local v2, "md":Ljava/security/MessageDigest;
    const/4 v4, 0x1

    #@17
    aget-object v4, v3, v4

    #@19
    check-cast v4, Ljava/security/Provider;

    #@1b
    iput-object v4, v2, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@1d
    .line 191
    return-object v2

    #@1e
    .line 194
    .end local v2    # "md":Ljava/security/MessageDigest;
    :cond_0
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    #@20
    const/4 v4, 0x0

    #@21
    aget-object v4, v3, v4

    #@23
    check-cast v4, Ljava/security/MessageDigestSpi;

    #@25
    invoke-direct {v0, v4, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    #@28
    .line 195
    .local v0, "delegate":Ljava/security/MessageDigest;
    const/4 v4, 0x1

    #@29
    aget-object v4, v3, v4

    #@2b
    check-cast v4, Ljava/security/Provider;

    #@2d
    iput-object v4, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 196
    return-object v0

    #@30
    .line 198
    .end local v0    # "delegate":Ljava/security/MessageDigest;
    .end local v3    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@31
    .line 199
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    #@33
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    const-string/jumbo v6, " not found"

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v4
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 6
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
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 240
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_1

    #@a
    .line 241
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v4, "missing provider"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 242
    :cond_1
    const-string/jumbo v3, "MessageDigest"

    #@16
    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    .line 243
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    #@1c
    instance-of v3, v3, Ljava/security/MessageDigest;

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 244
    aget-object v1, v2, v4

    #@22
    check-cast v1, Ljava/security/MessageDigest;

    #@24
    .line 245
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    #@26
    check-cast v3, Ljava/security/Provider;

    #@28
    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@2a
    .line 246
    return-object v1

    #@2b
    .line 249
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_2
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    #@2d
    aget-object v3, v2, v4

    #@2f
    check-cast v3, Ljava/security/MessageDigestSpi;

    #@31
    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    #@34
    .line 250
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    #@36
    check-cast v3, Ljava/security/Provider;

    #@38
    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@3a
    .line 251
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 288
    if-nez p1, :cond_0

    #@4
    .line 289
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v4, "missing provider"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 290
    :cond_0
    const-string/jumbo v3, "MessageDigest"

    #@10
    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    .line 291
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    #@16
    instance-of v3, v3, Ljava/security/MessageDigest;

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 292
    aget-object v1, v2, v4

    #@1c
    check-cast v1, Ljava/security/MessageDigest;

    #@1e
    .line 293
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    #@20
    check-cast v3, Ljava/security/Provider;

    #@22
    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@24
    .line 294
    return-object v1

    #@25
    .line 297
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_1
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    #@27
    aget-object v3, v2, v4

    #@29
    check-cast v3, Ljava/security/MessageDigestSpi;

    #@2b
    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    #@2e
    .line 298
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    #@30
    check-cast v3, Ljava/security/Provider;

    #@32
    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@34
    .line 299
    return-object v0
.end method

.method public static isEqual([B[B)Z
    .locals 5
    .param p0, "digesta"    # [B
    .param p1, "digestb"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 461
    array-length v3, p0

    #@2
    array-length v4, p1

    #@3
    if-eq v3, v4, :cond_0

    #@5
    .line 462
    return v2

    #@6
    .line 465
    :cond_0
    const/4 v1, 0x0

    #@7
    .line 467
    .local v1, "result":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@9
    if-ge v0, v3, :cond_1

    #@b
    .line 468
    aget-byte v3, p0, v0

    #@d
    aget-byte v4, p1, v0

    #@f
    xor-int/2addr v3, v4

    #@10
    or-int/2addr v1, v3

    #@11
    .line 467
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 470
    :cond_1
    if-nez v1, :cond_2

    #@16
    const/4 v2, 0x1

    #@17
    :cond_2
    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 528
    instance-of v0, p0, Ljava/lang/Cloneable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 529
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 531
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@b
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    #@e
    throw v0
.end method

.method public digest([BII)I
    .locals 3
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
    .line 400
    if-nez p1, :cond_0

    #@2
    .line 401
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "No output buffer given"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 403
    :cond_0
    array-length v1, p1

    #@c
    sub-int/2addr v1, p2

    #@d
    if-ge v1, p3, :cond_1

    #@f
    .line 404
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    .line 405
    const-string/jumbo v2, "Output buffer too small for specified offset and length"

    #@14
    .line 404
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 407
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    #@1b
    move-result v0

    #@1c
    .line 408
    .local v0, "numBytes":I
    const/4 v1, 0x0

    #@1d
    iput v1, p0, Ljava/security/MessageDigest;->state:I

    #@1f
    .line 409
    return v0
.end method

.method public digest()[B
    .locals 2

    #@0
    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    #@3
    move-result-object v0

    #@4
    .line 381
    .local v0, "result":[B
    const/4 v1, 0x0

    #@5
    iput v1, p0, Ljava/security/MessageDigest;->state:I

    #@7
    .line 382
    return-object v0
.end method

.method public digest([B)[B
    .locals 1
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 425
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    #@3
    .line 426
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
    .line 493
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getDigestLength()I
    .locals 5

    #@0
    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    #@3
    move-result v1

    #@4
    .line 507
    .local v1, "digestLen":I
    if-nez v1, :cond_0

    #@6
    .line 509
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, Ljava/security/MessageDigest;

    #@c
    .line 510
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    #@f
    move-result-object v0

    #@10
    .line 511
    .local v0, "digest":[B
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    return v4

    #@12
    .line 512
    .end local v0    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    #@13
    .line 513
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    return v1

    #@14
    .line 516
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    return v1
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    #@3
    .line 478
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/security/MessageDigest;->state:I

    #@6
    .line 476
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 434
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 435
    const-string/jumbo v1, " Message Digest from "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 436
    iget-object v1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    #@12
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 437
    const-string/jumbo v1, ", "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 439
    iget v1, p0, Ljava/security/MessageDigest;->state:I

    #@21
    packed-switch v1, :pswitch_data_0

    #@24
    .line 448
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 441
    :pswitch_0
    const-string/jumbo v1, "<initialized>"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_0

    #@30
    .line 444
    :pswitch_1
    const-string/jumbo v1, "<in progress>"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    goto :goto_0

    #@37
    .line 439
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    #@0
    .prologue
    .line 318
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    #@3
    .line 319
    const/4 v0, 0x1

    #@4
    iput v0, p0, Ljava/security/MessageDigest;->state:I

    #@6
    .line 317
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 365
    if-nez p1, :cond_0

    #@2
    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    #@b
    .line 369
    const/4 v0, 0x1

    #@c
    iput v0, p0, Ljava/security/MessageDigest;->state:I

    #@e
    .line 364
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 350
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    #@5
    .line 351
    const/4 v0, 0x1

    #@6
    iput v0, p0, Ljava/security/MessageDigest;->state:I

    #@8
    .line 349
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 334
    if-nez p1, :cond_0

    #@2
    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "No input buffer given"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 337
    :cond_0
    array-length v0, p1

    #@c
    sub-int/2addr v0, p2

    #@d
    if-ge v0, p3, :cond_1

    #@f
    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Input buffer too short"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 340
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    #@1b
    .line 341
    const/4 v0, 0x1

    #@1c
    iput v0, p0, Ljava/security/MessageDigest;->state:I

    #@1e
    .line 333
    return-void
.end method
