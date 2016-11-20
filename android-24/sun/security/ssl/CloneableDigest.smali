.class final Lsun/security/ssl/CloneableDigest;
.super Ljava/security/MessageDigest;
.source "HandshakeHash.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final digests:[Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;ILjava/lang/String;)V
    .locals 3
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "n"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 356
    invoke-direct {p0, p3}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    #@3
    .line 357
    new-array v1, p2, [Ljava/security/MessageDigest;

    #@5
    iput-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@7
    .line 358
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object p1, v1, v2

    #@c
    .line 359
    const/4 v0, 0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@f
    .line 360
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@11
    invoke-static {p3}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@14
    move-result-object v2

    #@15
    aput-object v2, v1, v0

    #@17
    .line 359
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 355
    :cond_0
    return-void
.end method

.method private checkState()V
    .locals 0

    #@0
    .prologue
    .line 387
    return-void
.end method

.method private digestReset()V
    .locals 2

    #@0
    .prologue
    .line 434
    const/4 v0, 0x1

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@8
    aget-object v1, v1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 435
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@e
    aget-object v1, v1, v0

    #@10
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    #@13
    .line 434
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 433
    :cond_0
    return-void
.end method

.method static getDigest(Ljava/lang/String;I)Ljava/security/MessageDigest;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 372
    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3
    move-result-object v0

    #@4
    .line 374
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 376
    return-object v0

    #@8
    .line 377
    :catch_0
    move-exception v1

    #@9
    .line 378
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lsun/security/ssl/CloneableDigest;

    #@b
    invoke-direct {v2, v0, p1, p0}, Lsun/security/ssl/CloneableDigest;-><init>(Ljava/security/MessageDigest;ILjava/lang/String;)V

    #@e
    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 447
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@4
    .line 448
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@6
    array-length v2, v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 449
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@d
    aget-object v2, v2, v1

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 450
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@13
    aget-object v0, v2, v1

    #@15
    .line 451
    .local v0, "digest":Ljava/security/MessageDigest;
    iget-object v2, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@17
    aput-object v3, v2, v1

    #@19
    .line 452
    return-object v0

    #@1a
    .line 448
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 456
    :cond_1
    new-instance v2, Ljava/lang/InternalError;

    #@1f
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@22
    throw v2
.end method

.method protected engineDigest([BII)I
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
    .line 422
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@3
    .line 423
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@5
    const/4 v2, 0x0

    #@6
    aget-object v1, v1, v2

    #@8
    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    #@b
    move-result v0

    #@c
    .line 424
    .local v0, "n":I
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->digestReset()V

    #@f
    .line 425
    return v0
.end method

.method protected engineDigest()[B
    .locals 3

    #@0
    .prologue
    .line 414
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@3
    .line 415
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@5
    const/4 v2, 0x0

    #@6
    aget-object v1, v1, v2

    #@8
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@b
    move-result-object v0

    #@c
    .line 416
    .local v0, "digest":[B
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->digestReset()V

    #@f
    .line 417
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 2

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@3
    .line 396
    iget-object v0, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@5
    const/4 v1, 0x0

    #@6
    aget-object v0, v0, v1

    #@8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected engineReset()V
    .locals 2

    #@0
    .prologue
    .line 440
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@3
    .line 441
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@b
    aget-object v1, v1, v0

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 442
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    #@16
    .line 441
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 439
    :cond_0
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 2
    .param p1, "b"    # B

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@3
    .line 401
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@b
    aget-object v1, v1, v0

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 402
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update(B)V

    #@16
    .line 401
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 399
    :cond_0
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 407
    invoke-direct {p0}, Lsun/security/ssl/CloneableDigest;->checkState()V

    #@3
    .line 408
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@6
    array-length v1, v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@b
    aget-object v1, v1, v0

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 409
    iget-object v1, p0, Lsun/security/ssl/CloneableDigest;->digests:[Ljava/security/MessageDigest;

    #@11
    aget-object v1, v1, v0

    #@13
    invoke-virtual {v1, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@16
    .line 408
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 406
    :cond_0
    return-void
.end method
