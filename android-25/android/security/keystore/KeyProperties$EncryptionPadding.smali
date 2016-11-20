.class public abstract Landroid/security/keystore/KeyProperties$EncryptionPadding;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncryptionPadding"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allToKeymaster([Ljava/lang/String;)[I
    .locals 3
    .param p0, "paddings"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 425
    if-eqz p0, :cond_0

    #@2
    array-length v2, p0

    #@3
    if-nez v2, :cond_1

    #@5
    .line 426
    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    #@7
    return-object v2

    #@8
    .line 428
    :cond_1
    array-length v2, p0

    #@9
    new-array v1, v2, [I

    #@b
    .line 429
    .local v1, "result":[I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 430
    aget-object v2, p0, v0

    #@11
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    aput v2, v1, v0

    #@17
    .line 429
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 432
    :cond_2
    return-object v1
.end method

.method public static fromKeymaster(I)Ljava/lang/String;
    .locals 3
    .param p0, "padding"    # I

    #@0
    .prologue
    .line 408
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported encryption padding: "

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
    .line 418
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 410
    :sswitch_0
    const-string/jumbo v0, "NoPadding"

    #@20
    return-object v0

    #@21
    .line 412
    :sswitch_1
    const-string/jumbo v0, "PKCS7Padding"

    #@24
    return-object v0

    #@25
    .line 414
    :sswitch_2
    const-string/jumbo v0, "PKCS1Padding"

    #@28
    return-object v0

    #@29
    .line 416
    :sswitch_3
    const-string/jumbo v0, "OAEPPadding"

    #@2c
    return-object v0

    #@2d
    .line 408
    nop

    #@2e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public static toKeymaster(Ljava/lang/String;)I
    .locals 3
    .param p0, "padding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    const-string/jumbo v0, "NoPadding"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 393
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 394
    :cond_0
    const-string/jumbo v0, "PKCS7Padding"

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 395
    const/16 v0, 0x40

    #@16
    return v0

    #@17
    .line 396
    :cond_1
    const-string/jumbo v0, "PKCS1Padding"

    #@1a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 397
    const/4 v0, 0x4

    #@21
    return v0

    #@22
    .line 398
    :cond_2
    const-string/jumbo v0, "OAEPPadding"

    #@25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 399
    const/4 v0, 0x2

    #@2c
    return v0

    #@2d
    .line 401
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "Unsupported encryption padding scheme: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 401
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0
.end method
