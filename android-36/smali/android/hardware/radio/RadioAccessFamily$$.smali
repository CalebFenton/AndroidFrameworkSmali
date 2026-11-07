.class public interface abstract Landroid/hardware/radio/RadioAccessFamily$$;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAccessFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 76
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 77
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 80
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 81
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 82
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 83
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/RadioAccessFamily$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 86
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 87
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 88
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/RadioAccessFamily$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 91
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 86
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

    .line 78
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

    .line 52
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "UNKNOWN"

    return-object v0

    .line 53
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "GPRS"

    return-object v0

    .line 54
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    const-string v0, "EDGE"

    return-object v0

    .line 55
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    const-string v0, "UMTS"

    return-object v0

    .line 56
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    const-string v0, "IS95A"

    return-object v0

    .line 57
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    const-string v0, "IS95B"

    return-object v0

    .line 58
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    const-string v0, "ONE_X_RTT"

    return-object v0

    .line 59
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    const-string v0, "EVDO_0"

    return-object v0

    .line 60
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    const-string v0, "EVDO_A"

    return-object v0

    .line 61
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    const-string v0, "HSDPA"

    return-object v0

    .line 62
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    const-string v0, "HSUPA"

    return-object v0

    .line 63
    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    const-string v0, "HSPA"

    return-object v0

    .line 64
    :cond_51
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_58

    const-string v0, "EVDO_B"

    return-object v0

    .line 65
    :cond_58
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5f

    const-string v0, "EHRPD"

    return-object v0

    .line 66
    :cond_5f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_66

    const-string v0, "LTE"

    return-object v0

    .line 67
    :cond_66
    const v0, 0x8000

    if-ne p0, v0, :cond_6e

    const-string v0, "HSPAP"

    return-object v0

    .line 68
    :cond_6e
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_75

    const-string v0, "GSM"

    return-object v0

    .line 69
    :cond_75
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_7c

    const-string v0, "TD_SCDMA"

    return-object v0

    .line 70
    :cond_7c
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_83

    const-string v0, "IWLAN"

    return-object v0

    .line 71
    :cond_83
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_8a

    const-string v0, "LTE_CA"

    return-object v0

    .line 72
    :cond_8a
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_91

    const-string v0, "NR"

    return-object v0

    .line 73
    :cond_91
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
