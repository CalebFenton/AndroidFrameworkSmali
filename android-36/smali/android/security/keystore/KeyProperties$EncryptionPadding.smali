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
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o allToKeymaster([Ljava/lang/String;)[I
    .registers 4
    .param p0, "paddings"    # [Ljava/lang/String;

    .line 509
    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 512
    :cond_6
    array-length v0, p0

    new-array v0, v0, [I

    .line 513
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 514
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 516
    .end local v1    # "i":I
    :cond_18
    return-object v0

    .line 510
    .end local v0    # "result":[I
    :cond_19
    :goto_19
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method public static greylist-max-o fromKeymaster(I)Ljava/lang/String;
    .registers 4
    .param p0, "padding"    # I

    .line 492
    sparse-switch p0, :sswitch_data_28

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encryption padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :sswitch_1c
    const-string v0, "PKCS7Padding"

    return-object v0

    .line 498
    :sswitch_1f
    const-string v0, "PKCS1Padding"

    return-object v0

    .line 500
    :sswitch_22
    const-string v0, "OAEPPadding"

    return-object v0

    .line 494
    :sswitch_25
    const-string v0, "NoPadding"

    return-object v0

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_22
        0x4 -> :sswitch_1f
        0x40 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static greylist-max-o toKeymaster(Ljava/lang/String;)I
    .registers 4
    .param p0, "padding"    # Ljava/lang/String;

    .line 476
    const-string v0, "NoPadding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 477
    const/4 v0, 0x1

    return v0

    .line 478
    :cond_a
    const-string v0, "PKCS7Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 479
    const/16 v0, 0x40

    return v0

    .line 480
    :cond_15
    const-string v0, "PKCS1Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 481
    const/4 v0, 0x4

    return v0

    .line 482
    :cond_1f
    const-string v0, "OAEPPadding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 483
    const/4 v0, 0x2

    return v0

    .line 485
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
