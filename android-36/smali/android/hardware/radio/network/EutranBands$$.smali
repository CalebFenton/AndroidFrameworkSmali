.class public interface abstract Landroid/hardware/radio/network/EutranBands$$;
.super Ljava/lang/Object;
.source "EutranBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/EutranBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 140
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 141
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 142
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 144
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 145
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 146
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 147
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/network/EutranBands$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 146
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 150
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 151
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 152
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/network/EutranBands$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 155
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 150
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

    .line 142
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

    .line 77
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "BAND_1"

    return-object v0

    .line 78
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "BAND_2"

    return-object v0

    .line 79
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    const-string v0, "BAND_3"

    return-object v0

    .line 80
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    const-string v0, "BAND_4"

    return-object v0

    .line 81
    :cond_18
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1e

    const-string v0, "BAND_5"

    return-object v0

    .line 82
    :cond_1e
    const/4 v0, 0x6

    if-ne p0, v0, :cond_24

    const-string v0, "BAND_6"

    return-object v0

    .line 83
    :cond_24
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2a

    const-string v0, "BAND_7"

    return-object v0

    .line 84
    :cond_2a
    const/16 v0, 0x8

    if-ne p0, v0, :cond_31

    const-string v0, "BAND_8"

    return-object v0

    .line 85
    :cond_31
    const/16 v0, 0x9

    if-ne p0, v0, :cond_38

    const-string v0, "BAND_9"

    return-object v0

    .line 86
    :cond_38
    const/16 v0, 0xa

    if-ne p0, v0, :cond_3f

    const-string v0, "BAND_10"

    return-object v0

    .line 87
    :cond_3f
    const/16 v0, 0xb

    if-ne p0, v0, :cond_46

    const-string v0, "BAND_11"

    return-object v0

    .line 88
    :cond_46
    const/16 v0, 0xc

    if-ne p0, v0, :cond_4d

    const-string v0, "BAND_12"

    return-object v0

    .line 89
    :cond_4d
    const/16 v0, 0xd

    if-ne p0, v0, :cond_54

    const-string v0, "BAND_13"

    return-object v0

    .line 90
    :cond_54
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5b

    const-string v0, "BAND_14"

    return-object v0

    .line 91
    :cond_5b
    const/16 v0, 0x11

    if-ne p0, v0, :cond_62

    const-string v0, "BAND_17"

    return-object v0

    .line 92
    :cond_62
    const/16 v0, 0x12

    if-ne p0, v0, :cond_69

    const-string v0, "BAND_18"

    return-object v0

    .line 93
    :cond_69
    const/16 v0, 0x13

    if-ne p0, v0, :cond_70

    const-string v0, "BAND_19"

    return-object v0

    .line 94
    :cond_70
    const/16 v0, 0x14

    if-ne p0, v0, :cond_77

    const-string v0, "BAND_20"

    return-object v0

    .line 95
    :cond_77
    const/16 v0, 0x15

    if-ne p0, v0, :cond_7e

    const-string v0, "BAND_21"

    return-object v0

    .line 96
    :cond_7e
    const/16 v0, 0x16

    if-ne p0, v0, :cond_85

    const-string v0, "BAND_22"

    return-object v0

    .line 97
    :cond_85
    const/16 v0, 0x17

    if-ne p0, v0, :cond_8c

    const-string v0, "BAND_23"

    return-object v0

    .line 98
    :cond_8c
    const/16 v0, 0x18

    if-ne p0, v0, :cond_93

    const-string v0, "BAND_24"

    return-object v0

    .line 99
    :cond_93
    const/16 v0, 0x19

    if-ne p0, v0, :cond_9a

    const-string v0, "BAND_25"

    return-object v0

    .line 100
    :cond_9a
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_a1

    const-string v0, "BAND_26"

    return-object v0

    .line 101
    :cond_a1
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_a8

    const-string v0, "BAND_27"

    return-object v0

    .line 102
    :cond_a8
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_af

    const-string v0, "BAND_28"

    return-object v0

    .line 103
    :cond_af
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_b6

    const-string v0, "BAND_30"

    return-object v0

    .line 104
    :cond_b6
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_bd

    const-string v0, "BAND_31"

    return-object v0

    .line 105
    :cond_bd
    const/16 v0, 0x21

    if-ne p0, v0, :cond_c4

    const-string v0, "BAND_33"

    return-object v0

    .line 106
    :cond_c4
    const/16 v0, 0x22

    if-ne p0, v0, :cond_cb

    const-string v0, "BAND_34"

    return-object v0

    .line 107
    :cond_cb
    const/16 v0, 0x23

    if-ne p0, v0, :cond_d2

    const-string v0, "BAND_35"

    return-object v0

    .line 108
    :cond_d2
    const/16 v0, 0x24

    if-ne p0, v0, :cond_d9

    const-string v0, "BAND_36"

    return-object v0

    .line 109
    :cond_d9
    const/16 v0, 0x25

    if-ne p0, v0, :cond_e0

    const-string v0, "BAND_37"

    return-object v0

    .line 110
    :cond_e0
    const/16 v0, 0x26

    if-ne p0, v0, :cond_e7

    const-string v0, "BAND_38"

    return-object v0

    .line 111
    :cond_e7
    const/16 v0, 0x27

    if-ne p0, v0, :cond_ee

    const-string v0, "BAND_39"

    return-object v0

    .line 112
    :cond_ee
    const/16 v0, 0x28

    if-ne p0, v0, :cond_f5

    const-string v0, "BAND_40"

    return-object v0

    .line 113
    :cond_f5
    const/16 v0, 0x29

    if-ne p0, v0, :cond_fc

    const-string v0, "BAND_41"

    return-object v0

    .line 114
    :cond_fc
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_103

    const-string v0, "BAND_42"

    return-object v0

    .line 115
    :cond_103
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_10a

    const-string v0, "BAND_43"

    return-object v0

    .line 116
    :cond_10a
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_111

    const-string v0, "BAND_44"

    return-object v0

    .line 117
    :cond_111
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_118

    const-string v0, "BAND_45"

    return-object v0

    .line 118
    :cond_118
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_11f

    const-string v0, "BAND_46"

    return-object v0

    .line 119
    :cond_11f
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_126

    const-string v0, "BAND_47"

    return-object v0

    .line 120
    :cond_126
    const/16 v0, 0x30

    if-ne p0, v0, :cond_12d

    const-string v0, "BAND_48"

    return-object v0

    .line 121
    :cond_12d
    const/16 v0, 0x41

    if-ne p0, v0, :cond_134

    const-string v0, "BAND_65"

    return-object v0

    .line 122
    :cond_134
    const/16 v0, 0x42

    if-ne p0, v0, :cond_13b

    const-string v0, "BAND_66"

    return-object v0

    .line 123
    :cond_13b
    const/16 v0, 0x44

    if-ne p0, v0, :cond_142

    const-string v0, "BAND_68"

    return-object v0

    .line 124
    :cond_142
    const/16 v0, 0x46

    if-ne p0, v0, :cond_149

    const-string v0, "BAND_70"

    return-object v0

    .line 125
    :cond_149
    const/16 v0, 0x31

    if-ne p0, v0, :cond_150

    const-string v0, "BAND_49"

    return-object v0

    .line 126
    :cond_150
    const/16 v0, 0x32

    if-ne p0, v0, :cond_157

    const-string v0, "BAND_50"

    return-object v0

    .line 127
    :cond_157
    const/16 v0, 0x33

    if-ne p0, v0, :cond_15e

    const-string v0, "BAND_51"

    return-object v0

    .line 128
    :cond_15e
    const/16 v0, 0x34

    if-ne p0, v0, :cond_165

    const-string v0, "BAND_52"

    return-object v0

    .line 129
    :cond_165
    const/16 v0, 0x35

    if-ne p0, v0, :cond_16c

    const-string v0, "BAND_53"

    return-object v0

    .line 130
    :cond_16c
    const/16 v0, 0x47

    if-ne p0, v0, :cond_173

    const-string v0, "BAND_71"

    return-object v0

    .line 131
    :cond_173
    const/16 v0, 0x48

    if-ne p0, v0, :cond_17a

    const-string v0, "BAND_72"

    return-object v0

    .line 132
    :cond_17a
    const/16 v0, 0x49

    if-ne p0, v0, :cond_181

    const-string v0, "BAND_73"

    return-object v0

    .line 133
    :cond_181
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_188

    const-string v0, "BAND_74"

    return-object v0

    .line 134
    :cond_188
    const/16 v0, 0x55

    if-ne p0, v0, :cond_18f

    const-string v0, "BAND_85"

    return-object v0

    .line 135
    :cond_18f
    const/16 v0, 0x57

    if-ne p0, v0, :cond_196

    const-string v0, "BAND_87"

    return-object v0

    .line 136
    :cond_196
    const/16 v0, 0x58

    if-ne p0, v0, :cond_19d

    const-string v0, "BAND_88"

    return-object v0

    .line 137
    :cond_19d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
