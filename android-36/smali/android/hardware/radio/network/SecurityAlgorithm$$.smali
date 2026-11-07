.class public interface abstract Landroid/hardware/radio/network/SecurityAlgorithm$$;
.super Ljava/lang/Object;
.source "SecurityAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/SecurityAlgorithm;
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

    invoke-static {v4}, Landroid/hardware/radio/network/SecurityAlgorithm$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-static {v6}, Landroid/hardware/radio/network/SecurityAlgorithm$$;->toString(I)Ljava/lang/String;

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

    .line 82
    if-nez p0, :cond_5

    const-string v0, "A50"

    return-object v0

    .line 83
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string v0, "A51"

    return-object v0

    .line 84
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string v0, "A52"

    return-object v0

    .line 85
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string v0, "A53"

    return-object v0

    .line 86
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    const-string v0, "A54"

    return-object v0

    .line 87
    :cond_1d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_24

    const-string v0, "GEA0"

    return-object v0

    .line 88
    :cond_24
    const/16 v0, 0xf

    if-ne p0, v0, :cond_2b

    const-string v0, "GEA1"

    return-object v0

    .line 89
    :cond_2b
    const/16 v0, 0x10

    if-ne p0, v0, :cond_32

    const-string v0, "GEA2"

    return-object v0

    .line 90
    :cond_32
    const/16 v0, 0x11

    if-ne p0, v0, :cond_39

    const-string v0, "GEA3"

    return-object v0

    .line 91
    :cond_39
    const/16 v0, 0x12

    if-ne p0, v0, :cond_40

    const-string v0, "GEA4"

    return-object v0

    .line 92
    :cond_40
    const/16 v0, 0x13

    if-ne p0, v0, :cond_47

    const-string v0, "GEA5"

    return-object v0

    .line 93
    :cond_47
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_4e

    const-string v0, "UEA0"

    return-object v0

    .line 94
    :cond_4e
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_55

    const-string v0, "UEA1"

    return-object v0

    .line 95
    :cond_55
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_5c

    const-string v0, "UEA2"

    return-object v0

    .line 96
    :cond_5c
    const/16 v0, 0x29

    if-ne p0, v0, :cond_63

    const-string v0, "EEA0"

    return-object v0

    .line 97
    :cond_63
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_6a

    const-string v0, "EEA1"

    return-object v0

    .line 98
    :cond_6a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_71

    const-string v0, "EEA2"

    return-object v0

    .line 99
    :cond_71
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_78

    const-string v0, "EEA3"

    return-object v0

    .line 100
    :cond_78
    const/16 v0, 0x37

    if-ne p0, v0, :cond_7f

    const-string v0, "NEA0"

    return-object v0

    .line 101
    :cond_7f
    const/16 v0, 0x38

    if-ne p0, v0, :cond_86

    const-string v0, "NEA1"

    return-object v0

    .line 102
    :cond_86
    const/16 v0, 0x39

    if-ne p0, v0, :cond_8d

    const-string v0, "NEA2"

    return-object v0

    .line 103
    :cond_8d
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_94

    const-string v0, "NEA3"

    return-object v0

    .line 104
    :cond_94
    const/16 v0, 0x42

    if-ne p0, v0, :cond_9b

    const-string v0, "SIP_NO_IPSEC_CONFIG"

    return-object v0

    .line 105
    :cond_9b
    const/16 v0, 0x43

    if-ne p0, v0, :cond_a2

    const-string v0, "IMS_NULL"

    return-object v0

    .line 106
    :cond_a2
    const/16 v0, 0x44

    if-ne p0, v0, :cond_a9

    const-string v0, "SIP_NULL"

    return-object v0

    .line 107
    :cond_a9
    const/16 v0, 0x45

    if-ne p0, v0, :cond_b0

    const-string v0, "AES_GCM"

    return-object v0

    .line 108
    :cond_b0
    const/16 v0, 0x46

    if-ne p0, v0, :cond_b7

    const-string v0, "AES_GMAC"

    return-object v0

    .line 109
    :cond_b7
    const/16 v0, 0x47

    if-ne p0, v0, :cond_be

    const-string v0, "AES_CBC"

    return-object v0

    .line 110
    :cond_be
    const/16 v0, 0x48

    if-ne p0, v0, :cond_c5

    const-string v0, "DES_EDE3_CBC"

    return-object v0

    .line 111
    :cond_c5
    const/16 v0, 0x49

    if-ne p0, v0, :cond_cc

    const-string v0, "AES_EDE3_CBC"

    return-object v0

    .line 112
    :cond_cc
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_d3

    const-string v0, "HMAC_SHA1_96"

    return-object v0

    .line 113
    :cond_d3
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_da

    const-string v0, "HMAC_MD5_96"

    return-object v0

    .line 114
    :cond_da
    const/16 v0, 0x55

    if-ne p0, v0, :cond_e1

    const-string v0, "RTP"

    return-object v0

    .line 115
    :cond_e1
    const/16 v0, 0x56

    if-ne p0, v0, :cond_e8

    const-string v0, "SRTP_NULL"

    return-object v0

    .line 116
    :cond_e8
    const/16 v0, 0x57

    if-ne p0, v0, :cond_ef

    const-string v0, "SRTP_AES_COUNTER"

    return-object v0

    .line 117
    :cond_ef
    const/16 v0, 0x58

    if-ne p0, v0, :cond_f6

    const-string v0, "SRTP_AES_F8"

    return-object v0

    .line 118
    :cond_f6
    const/16 v0, 0x59

    if-ne p0, v0, :cond_fd

    const-string v0, "SRTP_HMAC_SHA1"

    return-object v0

    .line 119
    :cond_fd
    const/16 v0, 0x63

    if-ne p0, v0, :cond_104

    const-string v0, "ENCR_AES_GCM_16"

    return-object v0

    .line 120
    :cond_104
    const/16 v0, 0x64

    if-ne p0, v0, :cond_10b

    const-string v0, "ENCR_AES_CBC"

    return-object v0

    .line 121
    :cond_10b
    const/16 v0, 0x65

    if-ne p0, v0, :cond_112

    const-string v0, "AUTH_HMAC_SHA2_256_128"

    return-object v0

    .line 122
    :cond_112
    const/16 v0, 0x71

    if-ne p0, v0, :cond_119

    const-string v0, "UNKNOWN"

    return-object v0

    .line 123
    :cond_119
    const/16 v0, 0x72

    if-ne p0, v0, :cond_120

    const-string v0, "OTHER"

    return-object v0

    .line 124
    :cond_120
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_127

    const-string v0, "ORYX"

    return-object v0

    .line 125
    :cond_127
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
