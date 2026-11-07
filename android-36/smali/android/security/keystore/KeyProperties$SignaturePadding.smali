.class public abstract Landroid/security/keystore/KeyProperties$SignaturePadding;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SignaturePadding"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o allToKeymaster([Ljava/lang/String;)[I
    .registers 4
    .param p0, "paddings"    # [Ljava/lang/String;

    .line 575
    if-eqz p0, :cond_19

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 578
    :cond_6
    array-length v0, p0

    new-array v0, v0, [I

    .line 579
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 580
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$SignaturePadding;->toKeymaster(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 582
    .end local v1    # "i":I
    :cond_18
    return-object v0

    .line 576
    .end local v0    # "result":[I
    :cond_19
    :goto_19
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method public static greylist-max-o fromKeymaster(I)Ljava/lang/String;
    .registers 4
    .param p0, "padding"    # I

    .line 563
    packed-switch p0, :pswitch_data_22

    .line 569
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_1c
    const-string v0, "PKCS1"

    return-object v0

    .line 567
    :pswitch_1f
    const-string v0, "PSS"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static greylist-max-o toKeymaster(Ljava/lang/String;)I
    .registers 4
    .param p0, "padding"    # Ljava/lang/String;

    .line 550
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    :cond_d
    goto :goto_22

    :sswitch_e
    const-string v1, "PKCS1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_23

    :sswitch_18
    const-string v1, "PSS"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_23

    :goto_22
    const/4 v0, -0x1

    :goto_23
    packed-switch v0, :pswitch_data_4e

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported signature padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :pswitch_3f
    const/4 v0, 0x3

    return v0

    .line 552
    :pswitch_41
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_44
    .sparse-switch
        0x136b0 -> :sswitch_18
        0x48a75e6 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3f
    .end packed-switch
.end method
