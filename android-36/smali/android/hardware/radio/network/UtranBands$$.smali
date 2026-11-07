.class public interface abstract Landroid/hardware/radio/network/UtranBands$$;
.super Ljava/lang/Object;
.source "UtranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/UtranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 73
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 74
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 78
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 79
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 80
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/UtranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 83
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 84
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 85
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/network/UtranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 84
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 88
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    :cond_56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    .end local v1    # "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "_aidl_sj":Ljava/util/StringJoiner;
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "_aidl_v"    # I

    .line 44
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_1"

    return-object v0

    .line 45
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_2"

    return-object v0

    .line 46
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_3"

    return-object v0

    .line 47
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_4"

    return-object v0

    .line 48
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_5"

    return-object v0

    .line 49
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_6"

    return-object v0

    .line 50
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_7"

    return-object v0

    .line 51
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_8"

    return-object v0

    .line 52
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string v0, "BAND_9"

    return-object v0

    .line 53
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string v0, "BAND_10"

    return-object v0

    .line 54
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string v0, "BAND_11"

    return-object v0

    .line 55
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string v0, "BAND_12"

    return-object v0

    .line 56
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string v0, "BAND_13"

    return-object v0

    .line 57
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string v0, "BAND_14"

    return-object v0

    .line 58
    :cond_5b
    const/16 v0, 0x13

    if-ne p0, v0, :cond_62

    const-string v0, "BAND_19"

    return-object v0

    .line 59
    :cond_62
    const/16 v0, 0x14

    if-ne p0, v0, :cond_69

    const-string v0, "BAND_20"

    return-object v0

    .line 60
    :cond_69
    const/16 v0, 0x15

    if-ne p0, v0, :cond_70

    const-string v0, "BAND_21"

    return-object v0

    .line 61
    :cond_70
    const/16 v0, 0x16

    if-ne p0, v0, :cond_77

    const-string v0, "BAND_22"

    return-object v0

    .line 62
    :cond_77
    const/16 v0, 0x19

    if-ne p0, v0, :cond_7e

    const-string v0, "BAND_25"

    return-object v0

    .line 63
    :cond_7e
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_85

    const-string v0, "BAND_26"

    return-object v0

    .line 64
    :cond_85
    const/16 v0, 0x65

    if-ne p0, v0, :cond_8c

    const-string v0, "BAND_A"

    return-object v0

    .line 65
    :cond_8c
    const/16 v0, 0x66

    if-ne p0, v0, :cond_93

    const-string v0, "BAND_B"

    return-object v0

    .line 66
    :cond_93
    const/16 v0, 0x67

    if-ne p0, v0, :cond_9a

    const-string v0, "BAND_C"

    return-object v0

    .line 67
    :cond_9a
    const/16 v0, 0x68

    if-ne p0, v0, :cond_a1

    const-string v0, "BAND_D"

    return-object v0

    .line 68
    :cond_a1
    const/16 v0, 0x69

    if-ne p0, v0, :cond_a8

    const-string v0, "BAND_E"

    return-object v0

    .line 69
    :cond_a8
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_af

    const-string v0, "BAND_F"

    return-object v0

    .line 70
    :cond_af
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
