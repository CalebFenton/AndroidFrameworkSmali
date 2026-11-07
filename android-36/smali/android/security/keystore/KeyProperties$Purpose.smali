.class public abstract Landroid/security/keystore/KeyProperties$Purpose;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Purpose"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o allFromKeymaster(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 181
    .local p0, "purposes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 182
    .local v0, "result":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 183
    .local v2, "keymasterPurpose":I
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 184
    .end local v2    # "keymasterPurpose":I
    goto :goto_5

    .line 185
    :cond_1b
    return v0
.end method

.method public static greylist-max-o allToKeymaster(I)[I
    .registers 4
    .param p0, "purposes"    # I

    .line 173
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->-$$Nest$smgetSetFlags(I)[I

    move-result-object v0

    .line 174
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 175
    aget v2, v0, v1

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v2

    aput v2, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 177
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method public static greylist-max-o fromKeymaster(I)I
    .registers 4
    .param p0, "purpose"    # I

    .line 151
    packed-switch p0, :pswitch_data_2e

    .line 167
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_1c
    const/16 v0, 0x80

    return v0

    .line 163
    :pswitch_1f
    const/16 v0, 0x40

    return v0

    .line 161
    :pswitch_22
    const/16 v0, 0x20

    return v0

    .line 159
    :pswitch_25
    const/16 v0, 0x8

    return v0

    .line 157
    :pswitch_28
    const/4 v0, 0x4

    return v0

    .line 155
    :pswitch_2a
    const/4 v0, 0x2

    return v0

    .line 153
    :pswitch_2c
    const/4 v0, 0x1

    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_25
        :pswitch_3
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static greylist-max-o toKeymaster(I)I
    .registers 4
    .param p0, "purpose"    # I

    .line 130
    sparse-switch p0, :sswitch_data_2a

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :sswitch_1c
    const/4 v0, 0x7

    return v0

    .line 142
    :sswitch_1e
    const/4 v0, 0x6

    return v0

    .line 140
    :sswitch_20
    const/4 v0, 0x5

    return v0

    .line 138
    :sswitch_22
    const/4 v0, 0x3

    return v0

    .line 136
    :sswitch_24
    const/4 v0, 0x2

    return v0

    .line 134
    :sswitch_26
    const/4 v0, 0x1

    return v0

    .line 132
    :sswitch_28
    const/4 v0, 0x0

    return v0

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_26
        0x4 -> :sswitch_24
        0x8 -> :sswitch_22
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_1c
    .end sparse-switch
.end method
