.class public abstract Landroid/icu/impl/UResource$Value;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getAliasString()Ljava/lang/String;
.end method

.method public abstract blacklist getArray()Landroid/icu/impl/UResource$Array;
.end method

.method public abstract blacklist getBinary()Ljava/nio/ByteBuffer;
.end method

.method public abstract blacklist getInt()I
.end method

.method public abstract blacklist getIntVector()[I
.end method

.method public abstract blacklist getString()Ljava/lang/String;
.end method

.method public abstract blacklist getStringArray()[Ljava/lang/String;
.end method

.method public abstract blacklist getStringArrayOrStringAsArray()[Ljava/lang/String;
.end method

.method public abstract blacklist getStringOrFirstOfArray()Ljava/lang/String;
.end method

.method public abstract blacklist getTable()Landroid/icu/impl/UResource$Table;
.end method

.method public abstract blacklist getType()I
.end method

.method public abstract blacklist getUInt()I
.end method

.method public abstract blacklist isNoInheritanceMarker()Z
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 432
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    .line 455
    const-string v0, "???"

    return-object v0

    .line 438
    :sswitch_a
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v0

    .line 439
    .local v0, "iv":[I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    array-length v2, v0

    if-eqz v2, :cond_3a

    .line 442
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_3a

    .line 444
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 447
    .end local v2    # "i":I
    :cond_3a
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 451
    .end local v0    # "iv":[I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :sswitch_45
    const-string v0, "(array)"

    return-object v0

    .line 436
    :sswitch_48
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :sswitch_51
    const-string v0, "(table)"

    return-object v0

    .line 449
    :sswitch_54
    const-string v0, "(binary blob)"

    return-object v0

    .line 434
    :sswitch_57
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_57
        0x1 -> :sswitch_54
        0x2 -> :sswitch_51
        0x7 -> :sswitch_48
        0x8 -> :sswitch_45
        0xe -> :sswitch_a
    .end sparse-switch
.end method
