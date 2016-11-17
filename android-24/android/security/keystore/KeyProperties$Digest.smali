.class public abstract Landroid/security/keystore/KeyProperties$Digest;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Digest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allFromKeymaster(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 619
    .local p0, "digests":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 620
    sget-object v4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    #@8
    return-object v4

    #@9
    .line 622
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@c
    move-result v4

    #@d
    new-array v3, v4, [Ljava/lang/String;

    #@f
    .line 623
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    #@10
    .line 624
    .local v2, "offset":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "digest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Ljava/lang/Integer;

    #@20
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@23
    move-result v0

    #@24
    .line 625
    .local v0, "digest":I
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v3, v2

    #@2a
    .line 626
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 628
    .end local v0    # "digest":I
    :cond_1
    return-object v3
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .locals 6
    .param p0, "digests"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 633
    if-eqz p0, :cond_0

    #@3
    array-length v4, p0

    #@4
    if-nez v4, :cond_1

    #@6
    .line 634
    :cond_0
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    #@8
    return-object v3

    #@9
    .line 636
    :cond_1
    array-length v4, p0

    #@a
    new-array v2, v4, [I

    #@c
    .line 637
    .local v2, "result":[I
    const/4 v1, 0x0

    #@d
    .line 638
    .local v1, "offset":I
    array-length v4, p0

    #@e
    :goto_0
    if-ge v3, v4, :cond_2

    #@10
    aget-object v0, p0, v3

    #@12
    .line 639
    .local v0, "digest":Ljava/lang/String;
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    #@15
    move-result v5

    #@16
    aput v5, v2, v1

    #@18
    .line 640
    add-int/lit8 v1, v1, 0x1

    #@1a
    .line 638
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 642
    .end local v0    # "digest":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .locals 3
    .param p0, "digest"    # I

    #@0
    .prologue
    .line 575
    packed-switch p0, :pswitch_data_0

    #@3
    .line 591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported digest algorithm: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 577
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@20
    return-object v0

    #@21
    .line 579
    :pswitch_1
    const-string/jumbo v0, "MD5"

    #@24
    return-object v0

    #@25
    .line 581
    :pswitch_2
    const-string/jumbo v0, "SHA-1"

    #@28
    return-object v0

    #@29
    .line 583
    :pswitch_3
    const-string/jumbo v0, "SHA-224"

    #@2c
    return-object v0

    #@2d
    .line 585
    :pswitch_4
    const-string/jumbo v0, "SHA-256"

    #@30
    return-object v0

    #@31
    .line 587
    :pswitch_5
    const-string/jumbo v0, "SHA-384"

    #@34
    return-object v0

    #@35
    .line 589
    :pswitch_6
    const-string/jumbo v0, "SHA-512"

    #@38
    return-object v0

    #@39
    .line 575
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;
    .locals 3
    .param p0, "digest"    # I

    #@0
    .prologue
    .line 597
    packed-switch p0, :pswitch_data_0

    #@3
    .line 613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported digest algorithm: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 599
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@20
    return-object v0

    #@21
    .line 601
    :pswitch_1
    const-string/jumbo v0, "MD5"

    #@24
    return-object v0

    #@25
    .line 603
    :pswitch_2
    const-string/jumbo v0, "SHA1"

    #@28
    return-object v0

    #@29
    .line 605
    :pswitch_3
    const-string/jumbo v0, "SHA224"

    #@2c
    return-object v0

    #@2d
    .line 607
    :pswitch_4
    const-string/jumbo v0, "SHA256"

    #@30
    return-object v0

    #@31
    .line 609
    :pswitch_5
    const-string/jumbo v0, "SHA384"

    #@34
    return-object v0

    #@35
    .line 611
    :pswitch_6
    const-string/jumbo v0, "SHA512"

    #@38
    return-object v0

    #@39
    .line 597
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .locals 3
    .param p0, "digest"    # Ljava/lang/String;

    #@0
    .prologue
    .line 553
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "SHA-1"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 555
    const/4 v0, 0x2

    #@10
    return v0

    #@11
    .line 553
    :cond_0
    const-string/jumbo v1, "SHA-224"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 557
    const/4 v0, 0x3

    #@1b
    return v0

    #@1c
    .line 553
    :cond_1
    const-string/jumbo v1, "SHA-256"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 559
    const/4 v0, 0x4

    #@26
    return v0

    #@27
    .line 553
    :cond_2
    const-string/jumbo v1, "SHA-384"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 561
    const/4 v0, 0x5

    #@31
    return v0

    #@32
    .line 553
    :cond_3
    const-string/jumbo v1, "SHA-512"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 563
    const/4 v0, 0x6

    #@3c
    return v0

    #@3d
    .line 553
    :cond_4
    const-string/jumbo v1, "NONE"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_5

    #@46
    .line 565
    const/4 v0, 0x0

    #@47
    return v0

    #@48
    .line 553
    :cond_5
    const-string/jumbo v1, "MD5"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_6

    #@51
    .line 567
    const/4 v0, 0x1

    #@52
    return v0

    #@53
    .line 569
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@55
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v2, "Unsupported digest algorithm: "

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v0
.end method
