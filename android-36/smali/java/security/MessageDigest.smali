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
.field private static final greylist-max-o INITIAL:I = 0x0

.field private static final greylist-max-o IN_PROGRESS:I = 0x1


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o state:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetalgorithm(Ljava/security/MessageDigest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetprovider(Ljava/security/MessageDigest;)Ljava/security/Provider;
    .registers 1

    iget-object p0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstate(Ljava/security/MessageDigest;)I
    .registers 1

    iget p0, p0, Ljava/security/MessageDigest;->state:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputprovider(Ljava/security/MessageDigest;Ljava/security/Provider;)V
    .registers 2

    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputstate(Ljava/security/MessageDigest;I)V
    .registers 2

    iput p1, p0, Ljava/security/MessageDigest;->state:I

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 165
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 208
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    :try_start_5
    const-string v0, "MessageDigest"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/security/MessageDigest;

    if-eqz v2, :cond_1b

    .line 214
    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigest;

    .local v1, "md":Ljava/security/MessageDigest;
    goto :goto_25

    .line 216
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_1b
    new-instance v2, Ljava/security/MessageDigest$Delegate;

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v2, v1, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    move-object v1, v2

    .line 218
    .restart local v1    # "md":Ljava/security/MessageDigest;
    :goto_25
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    :try_end_2c
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_2c} :catch_2d

    .line 228
    return-object v1

    .line 230
    .end local v0    # "objs":[Ljava/lang/Object;
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_2d
    move-exception v0

    .line 231
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 275
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 279
    const-string v0, "MessageDigest"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/security/MessageDigest;

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    .line 282
    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 283
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v2, v0, v3

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 284
    return-object v1

    .line 286
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_29
    new-instance v2, Ljava/security/MessageDigest$Delegate;

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v2, v1, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 288
    .local v2, "delegate":Ljava/security/MessageDigest;
    aget-object v1, v0, v3

    check-cast v1, Ljava/security/Provider;

    iput-object v1, v2, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 289
    return-object v2

    .line 277
    .end local v0    # "objs":[Ljava/lang/Object;
    .end local v2    # "delegate":Ljava/security/MessageDigest;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 330
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    if-eqz p1, :cond_33

    .line 334
    const-string v0, "MessageDigest"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/security/MessageDigest;

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    .line 337
    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 338
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v2, v0, v3

    check-cast v2, Ljava/security/Provider;

    iput-object v2, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 339
    return-object v1

    .line 341
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_23
    new-instance v2, Ljava/security/MessageDigest$Delegate;

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/MessageDigestSpi;

    invoke-direct {v2, v1, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 343
    .local v2, "delegate":Ljava/security/MessageDigest;
    aget-object v1, v0, v3

    check-cast v1, Ljava/security/Provider;

    iput-object v1, v2, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 344
    return-object v2

    .line 332
    .end local v0    # "objs":[Ljava/lang/Object;
    .end local v2    # "delegate":Ljava/security/MessageDigest;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getProviderName()Ljava/lang/String;
    .registers 2

    .line 475
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    if-nez v0, :cond_7

    const-string v0, "(no provider)"

    goto :goto_d

    :cond_7
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static whitelist test-api isEqual([B[B)Z
    .registers 11
    .param p0, "digesta"    # [B
    .param p1, "digestb"    # [B

    .line 519
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 520
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_2d

    if-nez p1, :cond_a

    goto :goto_2d

    .line 524
    :cond_a
    array-length v2, p0

    .line 525
    .local v2, "lenA":I
    array-length v3, p1

    .line 527
    .local v3, "lenB":I
    if-nez v3, :cond_13

    .line 528
    if-nez v2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0

    .line 531
    :cond_13
    const/4 v4, 0x0

    .line 532
    .local v4, "result":I
    sub-int v5, v2, v3

    or-int/2addr v4, v5

    .line 535
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v2, :cond_28

    .line 537
    sub-int v6, v5, v3

    ushr-int/lit8 v6, v6, 0x1f

    mul-int/2addr v6, v5

    .line 538
    .local v6, "indexB":I
    aget-byte v7, p0, v5

    aget-byte v8, p1, v6

    xor-int/2addr v7, v8

    or-int/2addr v4, v7

    .line 535
    .end local v6    # "indexB":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 540
    .end local v5    # "i":I
    :cond_28
    if-nez v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    .line 521
    .end local v2    # "lenA":I
    .end local v3    # "lenB":I
    .end local v4    # "result":I
    :cond_2d
    :goto_2d
    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 598
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 599
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 601
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api digest([BII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 445
    if-eqz p1, :cond_16

    .line 448
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_e

    .line 452
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    .line 453
    .local v0, "numBytes":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 454
    return v0

    .line 449
    .end local v0    # "numBytes":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api digest()[B
    .registers 3

    .line 425
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    .line 426
    .local v0, "result":[B
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 427
    return-object v0
.end method

.method public whitelist test-api digest([B)[B
    .registers 3
    .param p1, "input"    # [B

    .line 470
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 471
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 563
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getDigestLength()I
    .registers 5

    .line 576
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v0

    .line 577
    .local v0, "digestLen":I
    if-nez v0, :cond_14

    .line 579
    :try_start_6
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    .line 580
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 581
    .local v2, "digest":[B
    array-length v3, v2
    :try_end_11
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_11} :catch_12

    return v3

    .line 582
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "digest":[B
    :catch_12
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return v0

    .line 586
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_14
    return v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 354
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public whitelist test-api reset()V
    .registers 2

    .line 547
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 549
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, " Message Digest from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {p0}, Ljava/security/MessageDigest;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget v1, p0, Ljava/security/MessageDigest;->state:I

    packed-switch v1, :pswitch_data_32

    goto :goto_2d

    .line 494
    :pswitch_21
    const-string v1, "<in progress>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 491
    :pswitch_27
    const-string v1, "<initialized>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    nop

    .line 498
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api update(B)V
    .registers 3
    .param p1, "input"    # B

    .line 363
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    .line 364
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 365
    return-void
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 410
    if-eqz p1, :cond_9

    .line 413
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 415
    return-void

    .line 411
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api update([B)V
    .registers 4
    .param p1, "input"    # [B

    .line 395
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 397
    return-void
.end method

.method public whitelist test-api update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 379
    if-eqz p1, :cond_15

    .line 382
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_d

    .line 385
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 386
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 387
    return-void

    .line 383
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
