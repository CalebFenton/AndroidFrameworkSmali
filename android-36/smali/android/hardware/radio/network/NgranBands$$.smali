.class public interface abstract Landroid/hardware/radio/network/NgranBands$$;
.super Ljava/lang/Object;
.source "NgranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/NgranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 128
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 129
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 130
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 132
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 133
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 134
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 135
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/NgranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 138
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 139
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 140
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/network/NgranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 139
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 143
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 138
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

    .line 130
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

    .line 72
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_1"

    return-object v0

    .line 73
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_2"

    return-object v0

    .line 74
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_3"

    return-object v0

    .line 75
    :cond_12
    const/4 v0, 0x5

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_5"

    return-object v0

    .line 76
    :cond_18
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_7"

    return-object v0

    .line 77
    :cond_1e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_25

    const-string v0, "BAND_8"

    return-object v0

    .line 78
    :cond_25
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2c

    const-string v0, "BAND_12"

    return-object v0

    .line 79
    :cond_2c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_33

    const-string v0, "BAND_14"

    return-object v0

    .line 80
    :cond_33
    const/16 v0, 0x12

    if-ne p0, v0, :cond_3a

    const-string v0, "BAND_18"

    return-object v0

    .line 81
    :cond_3a
    const/16 v0, 0x14

    if-ne p0, v0, :cond_41

    const-string v0, "BAND_20"

    return-object v0

    .line 82
    :cond_41
    const/16 v0, 0x19

    if-ne p0, v0, :cond_48

    const-string v0, "BAND_25"

    return-object v0

    .line 83
    :cond_48
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_4f

    const-string v0, "BAND_26"

    return-object v0

    .line 84
    :cond_4f
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_56

    const-string v0, "BAND_28"

    return-object v0

    .line 85
    :cond_56
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_5d

    const-string v0, "BAND_29"

    return-object v0

    .line 86
    :cond_5d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_64

    const-string v0, "BAND_30"

    return-object v0

    .line 87
    :cond_64
    const/16 v0, 0x22

    if-ne p0, v0, :cond_6b

    const-string v0, "BAND_34"

    return-object v0

    .line 88
    :cond_6b
    const/16 v0, 0x26

    if-ne p0, v0, :cond_72

    const-string v0, "BAND_38"

    return-object v0

    .line 89
    :cond_72
    const/16 v0, 0x27

    if-ne p0, v0, :cond_79

    const-string v0, "BAND_39"

    return-object v0

    .line 90
    :cond_79
    const/16 v0, 0x28

    if-ne p0, v0, :cond_80

    const-string v0, "BAND_40"

    return-object v0

    .line 91
    :cond_80
    const/16 v0, 0x29

    if-ne p0, v0, :cond_87

    const-string v0, "BAND_41"

    return-object v0

    .line 92
    :cond_87
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_8e

    const-string v0, "BAND_46"

    return-object v0

    .line 93
    :cond_8e
    const/16 v0, 0x30

    if-ne p0, v0, :cond_95

    const-string v0, "BAND_48"

    return-object v0

    .line 94
    :cond_95
    const/16 v0, 0x32

    if-ne p0, v0, :cond_9c

    const-string v0, "BAND_50"

    return-object v0

    .line 95
    :cond_9c
    const/16 v0, 0x33

    if-ne p0, v0, :cond_a3

    const-string v0, "BAND_51"

    return-object v0

    .line 96
    :cond_a3
    const/16 v0, 0x35

    if-ne p0, v0, :cond_aa

    const-string v0, "BAND_53"

    return-object v0

    .line 97
    :cond_aa
    const/16 v0, 0x41

    if-ne p0, v0, :cond_b1

    const-string v0, "BAND_65"

    return-object v0

    .line 98
    :cond_b1
    const/16 v0, 0x42

    if-ne p0, v0, :cond_b8

    const-string v0, "BAND_66"

    return-object v0

    .line 99
    :cond_b8
    const/16 v0, 0x46

    if-ne p0, v0, :cond_bf

    const-string v0, "BAND_70"

    return-object v0

    .line 100
    :cond_bf
    const/16 v0, 0x47

    if-ne p0, v0, :cond_c6

    const-string v0, "BAND_71"

    return-object v0

    .line 101
    :cond_c6
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_cd

    const-string v0, "BAND_74"

    return-object v0

    .line 102
    :cond_cd
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_d4

    const-string v0, "BAND_75"

    return-object v0

    .line 103
    :cond_d4
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_db

    const-string v0, "BAND_76"

    return-object v0

    .line 104
    :cond_db
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_e2

    const-string v0, "BAND_77"

    return-object v0

    .line 105
    :cond_e2
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_e9

    const-string v0, "BAND_78"

    return-object v0

    .line 106
    :cond_e9
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_f0

    const-string v0, "BAND_79"

    return-object v0

    .line 107
    :cond_f0
    const/16 v0, 0x50

    if-ne p0, v0, :cond_f7

    const-string v0, "BAND_80"

    return-object v0

    .line 108
    :cond_f7
    const/16 v0, 0x51

    if-ne p0, v0, :cond_fe

    const-string v0, "BAND_81"

    return-object v0

    .line 109
    :cond_fe
    const/16 v0, 0x52

    if-ne p0, v0, :cond_105

    const-string v0, "BAND_82"

    return-object v0

    .line 110
    :cond_105
    const/16 v0, 0x53

    if-ne p0, v0, :cond_10c

    const-string v0, "BAND_83"

    return-object v0

    .line 111
    :cond_10c
    const/16 v0, 0x54

    if-ne p0, v0, :cond_113

    const-string v0, "BAND_84"

    return-object v0

    .line 112
    :cond_113
    const/16 v0, 0x56

    if-ne p0, v0, :cond_11a

    const-string v0, "BAND_86"

    return-object v0

    .line 113
    :cond_11a
    const/16 v0, 0x59

    if-ne p0, v0, :cond_121

    const-string v0, "BAND_89"

    return-object v0

    .line 114
    :cond_121
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_128

    const-string v0, "BAND_90"

    return-object v0

    .line 115
    :cond_128
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_12f

    const-string v0, "BAND_91"

    return-object v0

    .line 116
    :cond_12f
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_136

    const-string v0, "BAND_92"

    return-object v0

    .line 117
    :cond_136
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_13d

    const-string v0, "BAND_93"

    return-object v0

    .line 118
    :cond_13d
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_144

    const-string v0, "BAND_94"

    return-object v0

    .line 119
    :cond_144
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_14b

    const-string v0, "BAND_95"

    return-object v0

    .line 120
    :cond_14b
    const/16 v0, 0x60

    if-ne p0, v0, :cond_152

    const-string v0, "BAND_96"

    return-object v0

    .line 121
    :cond_152
    const/16 v0, 0x101

    if-ne p0, v0, :cond_159

    const-string v0, "BAND_257"

    return-object v0

    .line 122
    :cond_159
    const/16 v0, 0x102

    if-ne p0, v0, :cond_160

    const-string v0, "BAND_258"

    return-object v0

    .line 123
    :cond_160
    const/16 v0, 0x104

    if-ne p0, v0, :cond_167

    const-string v0, "BAND_260"

    return-object v0

    .line 124
    :cond_167
    const/16 v0, 0x105

    if-ne p0, v0, :cond_16e

    const-string v0, "BAND_261"

    return-object v0

    .line 125
    :cond_16e
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
