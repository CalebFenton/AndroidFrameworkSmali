.class public interface abstract Landroid/hardware/radio/data/DataCallFailCause$$;
.super Ljava/lang/Object;
.source "DataCallFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/DataCallFailCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "$"
.end annotation


# direct methods
.method public static blacklist arrayToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .param p0, "_aidl_v"    # Ljava/lang/Object;

    .line 1274
    if-nez p0, :cond_5

    const-string v0, "null"

    return-object v0

    .line 1275
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1276
    .local v0, "_aidl_cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1277
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1278
    .local v1, "comp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "["

    const-string v4, "]"

    const-string v5, ", "

    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1279
    .local v2, "_aidl_sj":Ljava/util/StringJoiner;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1280
    const/4 v3, 0x0

    .local v3, "_aidl_i":I
    :goto_25
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 1281
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/radio/data/DataCallFailCause$$;->arrayToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1280
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .end local v3    # "_aidl_i":I
    :cond_39
    goto :goto_51

    .line 1284
    :cond_3a
    const-class v3, [I

    if-ne v0, v3, :cond_56

    .line 1285
    move-object v3, p0

    check-cast v3, [I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_43
    if-ge v5, v4, :cond_51

    aget v6, v3, v5

    .line 1286
    .local v6, "e":I
    invoke-static {v6}, Landroid/hardware/radio/data/DataCallFailCause$$;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1285
    .end local v6    # "e":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 1289
    :cond_51
    :goto_51
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1284
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

    .line 1276
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

    .line 930
    if-nez p0, :cond_5

    const-string v0, "NONE"

    return-object v0

    .line 931
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    const-string v0, "OPERATOR_BARRED"

    return-object v0

    .line 932
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_13

    const-string v0, "NAS_SIGNALLING"

    return-object v0

    .line 933
    :cond_13
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string v0, "INSUFFICIENT_RESOURCES"

    return-object v0

    .line 934
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_21

    const-string v0, "MISSING_UNKNOWN_APN"

    return-object v0

    .line 935
    :cond_21
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_28

    const-string v0, "UNKNOWN_PDP_ADDRESS_TYPE"

    return-object v0

    .line 936
    :cond_28
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_2f

    const-string v0, "USER_AUTHENTICATION"

    return-object v0

    .line 937
    :cond_2f
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_36

    const-string v0, "ACTIVATION_REJECT_GGSN"

    return-object v0

    .line 938
    :cond_36
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_3d

    const-string v0, "ACTIVATION_REJECT_UNSPECIFIED"

    return-object v0

    .line 939
    :cond_3d
    const/16 v0, 0x20

    if-ne p0, v0, :cond_44

    const-string v0, "SERVICE_OPTION_NOT_SUPPORTED"

    return-object v0

    .line 940
    :cond_44
    const/16 v0, 0x21

    if-ne p0, v0, :cond_4b

    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    return-object v0

    .line 941
    :cond_4b
    const/16 v0, 0x22

    if-ne p0, v0, :cond_52

    const-string v0, "SERVICE_OPTION_OUT_OF_ORDER"

    return-object v0

    .line 942
    :cond_52
    const/16 v0, 0x23

    if-ne p0, v0, :cond_59

    const-string v0, "NSAPI_IN_USE"

    return-object v0

    .line 943
    :cond_59
    const/16 v0, 0x24

    if-ne p0, v0, :cond_60

    const-string v0, "REGULAR_DEACTIVATION"

    return-object v0

    .line 944
    :cond_60
    const/16 v0, 0x25

    if-ne p0, v0, :cond_67

    const-string v0, "QOS_NOT_ACCEPTED"

    return-object v0

    .line 945
    :cond_67
    const/16 v0, 0x26

    if-ne p0, v0, :cond_6e

    const-string v0, "NETWORK_FAILURE"

    return-object v0

    .line 946
    :cond_6e
    const/16 v0, 0x27

    if-ne p0, v0, :cond_75

    const-string v0, "UMTS_REACTIVATION_REQ"

    return-object v0

    .line 947
    :cond_75
    const/16 v0, 0x28

    if-ne p0, v0, :cond_7c

    const-string v0, "FEATURE_NOT_SUPP"

    return-object v0

    .line 948
    :cond_7c
    const/16 v0, 0x29

    if-ne p0, v0, :cond_83

    const-string v0, "TFT_SEMANTIC_ERROR"

    return-object v0

    .line 949
    :cond_83
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_8a

    const-string v0, "TFT_SYTAX_ERROR"

    return-object v0

    .line 950
    :cond_8a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_91

    const-string v0, "UNKNOWN_PDP_CONTEXT"

    return-object v0

    .line 951
    :cond_91
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_98

    const-string v0, "FILTER_SEMANTIC_ERROR"

    return-object v0

    .line 952
    :cond_98
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_9f

    const-string v0, "FILTER_SYTAX_ERROR"

    return-object v0

    .line 953
    :cond_9f
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_a6

    const-string v0, "PDP_WITHOUT_ACTIVE_TFT"

    return-object v0

    .line 954
    :cond_a6
    const/16 v0, 0x32

    if-ne p0, v0, :cond_ad

    const-string v0, "ONLY_IPV4_ALLOWED"

    return-object v0

    .line 955
    :cond_ad
    const/16 v0, 0x33

    if-ne p0, v0, :cond_b4

    const-string v0, "ONLY_IPV6_ALLOWED"

    return-object v0

    .line 956
    :cond_b4
    const/16 v0, 0x34

    if-ne p0, v0, :cond_bb

    const-string v0, "ONLY_SINGLE_BEARER_ALLOWED"

    return-object v0

    .line 957
    :cond_bb
    const/16 v0, 0x35

    if-ne p0, v0, :cond_c2

    const-string v0, "ESM_INFO_NOT_RECEIVED"

    return-object v0

    .line 958
    :cond_c2
    const/16 v0, 0x36

    if-ne p0, v0, :cond_c9

    const-string v0, "PDN_CONN_DOES_NOT_EXIST"

    return-object v0

    .line 959
    :cond_c9
    const/16 v0, 0x37

    if-ne p0, v0, :cond_d0

    const-string v0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    return-object v0

    .line 960
    :cond_d0
    const/16 v0, 0x41

    if-ne p0, v0, :cond_d7

    const-string v0, "MAX_ACTIVE_PDP_CONTEXT_REACHED"

    return-object v0

    .line 961
    :cond_d7
    const/16 v0, 0x42

    if-ne p0, v0, :cond_de

    const-string v0, "UNSUPPORTED_APN_IN_CURRENT_PLMN"

    return-object v0

    .line 962
    :cond_de
    const/16 v0, 0x51

    if-ne p0, v0, :cond_e5

    const-string v0, "INVALID_TRANSACTION_ID"

    return-object v0

    .line 963
    :cond_e5
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_ec

    const-string v0, "MESSAGE_INCORRECT_SEMANTIC"

    return-object v0

    .line 964
    :cond_ec
    const/16 v0, 0x60

    if-ne p0, v0, :cond_f3

    const-string v0, "INVALID_MANDATORY_INFO"

    return-object v0

    .line 965
    :cond_f3
    const/16 v0, 0x61

    if-ne p0, v0, :cond_fa

    const-string v0, "MESSAGE_TYPE_UNSUPPORTED"

    return-object v0

    .line 966
    :cond_fa
    const/16 v0, 0x62

    if-ne p0, v0, :cond_101

    const-string v0, "MSG_TYPE_NONCOMPATIBLE_STATE"

    return-object v0

    .line 967
    :cond_101
    const/16 v0, 0x63

    if-ne p0, v0, :cond_108

    const-string v0, "UNKNOWN_INFO_ELEMENT"

    return-object v0

    .line 968
    :cond_108
    const/16 v0, 0x64

    if-ne p0, v0, :cond_10f

    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    .line 969
    :cond_10f
    const/16 v0, 0x65

    if-ne p0, v0, :cond_116

    const-string v0, "MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE"

    return-object v0

    .line 970
    :cond_116
    const/16 v0, 0x6f

    if-ne p0, v0, :cond_11d

    const-string v0, "PROTOCOL_ERRORS"

    return-object v0

    .line 971
    :cond_11d
    const/16 v0, 0x70

    if-ne p0, v0, :cond_124

    const-string v0, "APN_TYPE_CONFLICT"

    return-object v0

    .line 972
    :cond_124
    const/16 v0, 0x71

    if-ne p0, v0, :cond_12b

    const-string v0, "INVALID_PCSCF_ADDR"

    return-object v0

    .line 973
    :cond_12b
    const/16 v0, 0x72

    if-ne p0, v0, :cond_132

    const-string v0, "INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN"

    return-object v0

    .line 974
    :cond_132
    const/16 v0, 0x73

    if-ne p0, v0, :cond_139

    const-string v0, "EMM_ACCESS_BARRED"

    return-object v0

    .line 975
    :cond_139
    const/16 v0, 0x74

    if-ne p0, v0, :cond_140

    const-string v0, "EMERGENCY_IFACE_ONLY"

    return-object v0

    .line 976
    :cond_140
    const/16 v0, 0x75

    if-ne p0, v0, :cond_147

    const-string v0, "IFACE_MISMATCH"

    return-object v0

    .line 977
    :cond_147
    const/16 v0, 0x76

    if-ne p0, v0, :cond_14e

    const-string v0, "COMPANION_IFACE_IN_USE"

    return-object v0

    .line 978
    :cond_14e
    const/16 v0, 0x77

    if-ne p0, v0, :cond_155

    const-string v0, "IP_ADDRESS_MISMATCH"

    return-object v0

    .line 979
    :cond_155
    const/16 v0, 0x78

    if-ne p0, v0, :cond_15c

    const-string v0, "IFACE_AND_POL_FAMILY_MISMATCH"

    return-object v0

    .line 980
    :cond_15c
    const/16 v0, 0x79

    if-ne p0, v0, :cond_163

    const-string v0, "EMM_ACCESS_BARRED_INFINITE_RETRY"

    return-object v0

    .line 981
    :cond_163
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_16a

    const-string v0, "AUTH_FAILURE_ON_EMERGENCY_CALL"

    return-object v0

    .line 982
    :cond_16a
    const/16 v0, 0x1001

    if-ne p0, v0, :cond_171

    const-string v0, "OEM_DCFAILCAUSE_1"

    return-object v0

    .line 983
    :cond_171
    const/16 v0, 0x1002

    if-ne p0, v0, :cond_178

    const-string v0, "OEM_DCFAILCAUSE_2"

    return-object v0

    .line 984
    :cond_178
    const/16 v0, 0x1003

    if-ne p0, v0, :cond_17f

    const-string v0, "OEM_DCFAILCAUSE_3"

    return-object v0

    .line 985
    :cond_17f
    const/16 v0, 0x1004

    if-ne p0, v0, :cond_186

    const-string v0, "OEM_DCFAILCAUSE_4"

    return-object v0

    .line 986
    :cond_186
    const/16 v0, 0x1005

    if-ne p0, v0, :cond_18d

    const-string v0, "OEM_DCFAILCAUSE_5"

    return-object v0

    .line 987
    :cond_18d
    const/16 v0, 0x1006

    if-ne p0, v0, :cond_194

    const-string v0, "OEM_DCFAILCAUSE_6"

    return-object v0

    .line 988
    :cond_194
    const/16 v0, 0x1007

    if-ne p0, v0, :cond_19b

    const-string v0, "OEM_DCFAILCAUSE_7"

    return-object v0

    .line 989
    :cond_19b
    const/16 v0, 0x1008

    if-ne p0, v0, :cond_1a2

    const-string v0, "OEM_DCFAILCAUSE_8"

    return-object v0

    .line 990
    :cond_1a2
    const/16 v0, 0x1009

    if-ne p0, v0, :cond_1a9

    const-string v0, "OEM_DCFAILCAUSE_9"

    return-object v0

    .line 991
    :cond_1a9
    const/16 v0, 0x100a

    if-ne p0, v0, :cond_1b0

    const-string v0, "OEM_DCFAILCAUSE_10"

    return-object v0

    .line 992
    :cond_1b0
    const/16 v0, 0x100b

    if-ne p0, v0, :cond_1b7

    const-string v0, "OEM_DCFAILCAUSE_11"

    return-object v0

    .line 993
    :cond_1b7
    const/16 v0, 0x100c

    if-ne p0, v0, :cond_1be

    const-string v0, "OEM_DCFAILCAUSE_12"

    return-object v0

    .line 994
    :cond_1be
    const/16 v0, 0x100d

    if-ne p0, v0, :cond_1c5

    const-string v0, "OEM_DCFAILCAUSE_13"

    return-object v0

    .line 995
    :cond_1c5
    const/16 v0, 0x100e

    if-ne p0, v0, :cond_1cc

    const-string v0, "OEM_DCFAILCAUSE_14"

    return-object v0

    .line 996
    :cond_1cc
    const/16 v0, 0x100f

    if-ne p0, v0, :cond_1d3

    const-string v0, "OEM_DCFAILCAUSE_15"

    return-object v0

    .line 997
    :cond_1d3
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1d9

    const-string v0, "VOICE_REGISTRATION_FAIL"

    return-object v0

    .line 998
    :cond_1d9
    const/4 v0, -0x2

    if-ne p0, v0, :cond_1df

    const-string v0, "DATA_REGISTRATION_FAIL"

    return-object v0

    .line 999
    :cond_1df
    const/4 v0, -0x3

    if-ne p0, v0, :cond_1e5

    const-string v0, "SIGNAL_LOST"

    return-object v0

    .line 1000
    :cond_1e5
    const/4 v0, -0x4

    if-ne p0, v0, :cond_1eb

    const-string v0, "PREF_RADIO_TECH_CHANGED"

    return-object v0

    .line 1001
    :cond_1eb
    const/4 v0, -0x5

    if-ne p0, v0, :cond_1f1

    const-string v0, "RADIO_POWER_OFF"

    return-object v0

    .line 1002
    :cond_1f1
    const/4 v0, -0x6

    if-ne p0, v0, :cond_1f7

    const-string v0, "TETHERED_CALL_ACTIVE"

    return-object v0

    .line 1003
    :cond_1f7
    const v0, 0xffff

    if-ne p0, v0, :cond_1ff

    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 1004
    :cond_1ff
    const/16 v0, 0x19

    if-ne p0, v0, :cond_206

    const-string v0, "LLC_SNDCP"

    return-object v0

    .line 1005
    :cond_206
    const/16 v0, 0x30

    if-ne p0, v0, :cond_20d

    const-string v0, "ACTIVATION_REJECTED_BCM_VIOLATION"

    return-object v0

    .line 1006
    :cond_20d
    const/16 v0, 0x38

    if-ne p0, v0, :cond_214

    const-string v0, "COLLISION_WITH_NETWORK_INITIATED_REQUEST"

    return-object v0

    .line 1007
    :cond_214
    const/16 v0, 0x39

    if-ne p0, v0, :cond_21b

    const-string v0, "ONLY_IPV4V6_ALLOWED"

    return-object v0

    .line 1008
    :cond_21b
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_222

    const-string v0, "ONLY_NON_IP_ALLOWED"

    return-object v0

    .line 1009
    :cond_222
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_229

    const-string v0, "UNSUPPORTED_QCI_VALUE"

    return-object v0

    .line 1010
    :cond_229
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_230

    const-string v0, "BEARER_HANDLING_NOT_SUPPORTED"

    return-object v0

    .line 1011
    :cond_230
    const/16 v0, 0x7b

    if-ne p0, v0, :cond_237

    const-string v0, "INVALID_DNS_ADDR"

    return-object v0

    .line 1012
    :cond_237
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_23e

    const-string v0, "INVALID_PCSCF_OR_DNS_ADDRESS"

    return-object v0

    .line 1013
    :cond_23e
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_245

    const-string v0, "CALL_PREEMPT_BY_EMERGENCY_APN"

    return-object v0

    .line 1014
    :cond_245
    const/16 v0, 0x80

    if-ne p0, v0, :cond_24c

    const-string v0, "UE_INITIATED_DETACH_OR_DISCONNECT"

    return-object v0

    .line 1015
    :cond_24c
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_253

    const-string v0, "MIP_FA_REASON_UNSPECIFIED"

    return-object v0

    .line 1016
    :cond_253
    const/16 v0, 0x7d1

    if-ne p0, v0, :cond_25a

    const-string v0, "MIP_FA_ADMIN_PROHIBITED"

    return-object v0

    .line 1017
    :cond_25a
    const/16 v0, 0x7d2

    if-ne p0, v0, :cond_261

    const-string v0, "MIP_FA_INSUFFICIENT_RESOURCES"

    return-object v0

    .line 1018
    :cond_261
    const/16 v0, 0x7d3

    if-ne p0, v0, :cond_268

    const-string v0, "MIP_FA_MOBILE_NODE_AUTHENTICATION_FAILURE"

    return-object v0

    .line 1019
    :cond_268
    const/16 v0, 0x7d4

    if-ne p0, v0, :cond_26f

    const-string v0, "MIP_FA_HOME_AGENT_AUTHENTICATION_FAILURE"

    return-object v0

    .line 1020
    :cond_26f
    const/16 v0, 0x7d5

    if-ne p0, v0, :cond_276

    const-string v0, "MIP_FA_REQUESTED_LIFETIME_TOO_LONG"

    return-object v0

    .line 1021
    :cond_276
    const/16 v0, 0x7d6

    if-ne p0, v0, :cond_27d

    const-string v0, "MIP_FA_MALFORMED_REQUEST"

    return-object v0

    .line 1022
    :cond_27d
    const/16 v0, 0x7d7

    if-ne p0, v0, :cond_284

    const-string v0, "MIP_FA_MALFORMED_REPLY"

    return-object v0

    .line 1023
    :cond_284
    const/16 v0, 0x7d8

    if-ne p0, v0, :cond_28b

    const-string v0, "MIP_FA_ENCAPSULATION_UNAVAILABLE"

    return-object v0

    .line 1024
    :cond_28b
    const/16 v0, 0x7d9

    if-ne p0, v0, :cond_292

    const-string v0, "MIP_FA_VJ_HEADER_COMPRESSION_UNAVAILABLE"

    return-object v0

    .line 1025
    :cond_292
    const/16 v0, 0x7da

    if-ne p0, v0, :cond_299

    const-string v0, "MIP_FA_REVERSE_TUNNEL_UNAVAILABLE"

    return-object v0

    .line 1026
    :cond_299
    const/16 v0, 0x7db

    if-ne p0, v0, :cond_2a0

    const-string v0, "MIP_FA_REVERSE_TUNNEL_IS_MANDATORY"

    return-object v0

    .line 1027
    :cond_2a0
    const/16 v0, 0x7dc

    if-ne p0, v0, :cond_2a7

    const-string v0, "MIP_FA_DELIVERY_STYLE_NOT_SUPPORTED"

    return-object v0

    .line 1028
    :cond_2a7
    const/16 v0, 0x7dd

    if-ne p0, v0, :cond_2ae

    const-string v0, "MIP_FA_MISSING_NAI"

    return-object v0

    .line 1029
    :cond_2ae
    const/16 v0, 0x7de

    if-ne p0, v0, :cond_2b5

    const-string v0, "MIP_FA_MISSING_HOME_AGENT"

    return-object v0

    .line 1030
    :cond_2b5
    const/16 v0, 0x7df

    if-ne p0, v0, :cond_2bc

    const-string v0, "MIP_FA_MISSING_HOME_ADDRESS"

    return-object v0

    .line 1031
    :cond_2bc
    const/16 v0, 0x7e0

    if-ne p0, v0, :cond_2c3

    const-string v0, "MIP_FA_UNKNOWN_CHALLENGE"

    return-object v0

    .line 1032
    :cond_2c3
    const/16 v0, 0x7e1

    if-ne p0, v0, :cond_2ca

    const-string v0, "MIP_FA_MISSING_CHALLENGE"

    return-object v0

    .line 1033
    :cond_2ca
    const/16 v0, 0x7e2

    if-ne p0, v0, :cond_2d1

    const-string v0, "MIP_FA_STALE_CHALLENGE"

    return-object v0

    .line 1034
    :cond_2d1
    const/16 v0, 0x7e3

    if-ne p0, v0, :cond_2d8

    const-string v0, "MIP_HA_REASON_UNSPECIFIED"

    return-object v0

    .line 1035
    :cond_2d8
    const/16 v0, 0x7e4

    if-ne p0, v0, :cond_2df

    const-string v0, "MIP_HA_ADMIN_PROHIBITED"

    return-object v0

    .line 1036
    :cond_2df
    const/16 v0, 0x7e5

    if-ne p0, v0, :cond_2e6

    const-string v0, "MIP_HA_INSUFFICIENT_RESOURCES"

    return-object v0

    .line 1037
    :cond_2e6
    const/16 v0, 0x7e6

    if-ne p0, v0, :cond_2ed

    const-string v0, "MIP_HA_MOBILE_NODE_AUTHENTICATION_FAILURE"

    return-object v0

    .line 1038
    :cond_2ed
    const/16 v0, 0x7e7

    if-ne p0, v0, :cond_2f4

    const-string v0, "MIP_HA_FOREIGN_AGENT_AUTHENTICATION_FAILURE"

    return-object v0

    .line 1039
    :cond_2f4
    const/16 v0, 0x7e8

    if-ne p0, v0, :cond_2fb

    const-string v0, "MIP_HA_REGISTRATION_ID_MISMATCH"

    return-object v0

    .line 1040
    :cond_2fb
    const/16 v0, 0x7e9

    if-ne p0, v0, :cond_302

    const-string v0, "MIP_HA_MALFORMED_REQUEST"

    return-object v0

    .line 1041
    :cond_302
    const/16 v0, 0x7ea

    if-ne p0, v0, :cond_309

    const-string v0, "MIP_HA_UNKNOWN_HOME_AGENT_ADDRESS"

    return-object v0

    .line 1042
    :cond_309
    const/16 v0, 0x7eb

    if-ne p0, v0, :cond_310

    const-string v0, "MIP_HA_REVERSE_TUNNEL_UNAVAILABLE"

    return-object v0

    .line 1043
    :cond_310
    const/16 v0, 0x7ec

    if-ne p0, v0, :cond_317

    const-string v0, "MIP_HA_REVERSE_TUNNEL_IS_MANDATORY"

    return-object v0

    .line 1044
    :cond_317
    const/16 v0, 0x7ed

    if-ne p0, v0, :cond_31e

    const-string v0, "MIP_HA_ENCAPSULATION_UNAVAILABLE"

    return-object v0

    .line 1045
    :cond_31e
    const/16 v0, 0x7ee

    if-ne p0, v0, :cond_325

    const-string v0, "CLOSE_IN_PROGRESS"

    return-object v0

    .line 1046
    :cond_325
    const/16 v0, 0x7ef

    if-ne p0, v0, :cond_32c

    const-string v0, "NETWORK_INITIATED_TERMINATION"

    return-object v0

    .line 1047
    :cond_32c
    const/16 v0, 0x7f0

    if-ne p0, v0, :cond_333

    const-string v0, "MODEM_APP_PREEMPTED"

    return-object v0

    .line 1048
    :cond_333
    const/16 v0, 0x7f1

    if-ne p0, v0, :cond_33a

    const-string v0, "PDN_IPV4_CALL_DISALLOWED"

    return-object v0

    .line 1049
    :cond_33a
    const/16 v0, 0x7f2

    if-ne p0, v0, :cond_341

    const-string v0, "PDN_IPV4_CALL_THROTTLED"

    return-object v0

    .line 1050
    :cond_341
    const/16 v0, 0x7f3

    if-ne p0, v0, :cond_348

    const-string v0, "PDN_IPV6_CALL_DISALLOWED"

    return-object v0

    .line 1051
    :cond_348
    const/16 v0, 0x7f4

    if-ne p0, v0, :cond_34f

    const-string v0, "PDN_IPV6_CALL_THROTTLED"

    return-object v0

    .line 1052
    :cond_34f
    const/16 v0, 0x7f5

    if-ne p0, v0, :cond_356

    const-string v0, "MODEM_RESTART"

    return-object v0

    .line 1053
    :cond_356
    const/16 v0, 0x7f6

    if-ne p0, v0, :cond_35d

    const-string v0, "PDP_PPP_NOT_SUPPORTED"

    return-object v0

    .line 1054
    :cond_35d
    const/16 v0, 0x7f7

    if-ne p0, v0, :cond_364

    const-string v0, "UNPREFERRED_RAT"

    return-object v0

    .line 1055
    :cond_364
    const/16 v0, 0x7f8

    if-ne p0, v0, :cond_36b

    const-string v0, "PHYSICAL_LINK_CLOSE_IN_PROGRESS"

    return-object v0

    .line 1056
    :cond_36b
    const/16 v0, 0x7f9

    if-ne p0, v0, :cond_372

    const-string v0, "APN_PENDING_HANDOVER"

    return-object v0

    .line 1057
    :cond_372
    const/16 v0, 0x7fa

    if-ne p0, v0, :cond_379

    const-string v0, "PROFILE_BEARER_INCOMPATIBLE"

    return-object v0

    .line 1058
    :cond_379
    const/16 v0, 0x7fb

    if-ne p0, v0, :cond_380

    const-string v0, "SIM_CARD_CHANGED"

    return-object v0

    .line 1059
    :cond_380
    const/16 v0, 0x7fc

    if-ne p0, v0, :cond_387

    const-string v0, "LOW_POWER_MODE_OR_POWERING_DOWN"

    return-object v0

    .line 1060
    :cond_387
    const/16 v0, 0x7fd

    if-ne p0, v0, :cond_38e

    const-string v0, "APN_DISABLED"

    return-object v0

    .line 1061
    :cond_38e
    const/16 v0, 0x7fe

    if-ne p0, v0, :cond_395

    const-string v0, "MAX_PPP_INACTIVITY_TIMER_EXPIRED"

    return-object v0

    .line 1062
    :cond_395
    const/16 v0, 0x7ff

    if-ne p0, v0, :cond_39c

    const-string v0, "IPV6_ADDRESS_TRANSFER_FAILED"

    return-object v0

    .line 1063
    :cond_39c
    const/16 v0, 0x800

    if-ne p0, v0, :cond_3a3

    const-string v0, "TRAT_SWAP_FAILED"

    return-object v0

    .line 1064
    :cond_3a3
    const/16 v0, 0x801

    if-ne p0, v0, :cond_3aa

    const-string v0, "EHRPD_TO_HRPD_FALLBACK"

    return-object v0

    .line 1065
    :cond_3aa
    const/16 v0, 0x802

    if-ne p0, v0, :cond_3b1

    const-string v0, "MIP_CONFIG_FAILURE"

    return-object v0

    .line 1066
    :cond_3b1
    const/16 v0, 0x803

    if-ne p0, v0, :cond_3b8

    const-string v0, "PDN_INACTIVITY_TIMER_EXPIRED"

    return-object v0

    .line 1067
    :cond_3b8
    const/16 v0, 0x804

    if-ne p0, v0, :cond_3bf

    const-string v0, "MAX_IPV4_CONNECTIONS"

    return-object v0

    .line 1068
    :cond_3bf
    const/16 v0, 0x805

    if-ne p0, v0, :cond_3c6

    const-string v0, "MAX_IPV6_CONNECTIONS"

    return-object v0

    .line 1069
    :cond_3c6
    const/16 v0, 0x806

    if-ne p0, v0, :cond_3cd

    const-string v0, "APN_MISMATCH"

    return-object v0

    .line 1070
    :cond_3cd
    const/16 v0, 0x807

    if-ne p0, v0, :cond_3d4

    const-string v0, "IP_VERSION_MISMATCH"

    return-object v0

    .line 1071
    :cond_3d4
    const/16 v0, 0x808

    if-ne p0, v0, :cond_3db

    const-string v0, "DUN_CALL_DISALLOWED"

    return-object v0

    .line 1072
    :cond_3db
    const/16 v0, 0x809

    if-ne p0, v0, :cond_3e2

    const-string v0, "INTERNAL_EPC_NONEPC_TRANSITION"

    return-object v0

    .line 1073
    :cond_3e2
    const/16 v0, 0x80a

    if-ne p0, v0, :cond_3e9

    const-string v0, "INTERFACE_IN_USE"

    return-object v0

    .line 1074
    :cond_3e9
    const/16 v0, 0x80b

    if-ne p0, v0, :cond_3f0

    const-string v0, "APN_DISALLOWED_ON_ROAMING"

    return-object v0

    .line 1075
    :cond_3f0
    const/16 v0, 0x80c

    if-ne p0, v0, :cond_3f7

    const-string v0, "APN_PARAMETERS_CHANGED"

    return-object v0

    .line 1076
    :cond_3f7
    const/16 v0, 0x80d

    if-ne p0, v0, :cond_3fe

    const-string v0, "NULL_APN_DISALLOWED"

    return-object v0

    .line 1077
    :cond_3fe
    const/16 v0, 0x80e

    if-ne p0, v0, :cond_405

    const-string v0, "THERMAL_MITIGATION"

    return-object v0

    .line 1078
    :cond_405
    const/16 v0, 0x80f

    if-ne p0, v0, :cond_40c

    const-string v0, "DATA_SETTINGS_DISABLED"

    return-object v0

    .line 1079
    :cond_40c
    const/16 v0, 0x810

    if-ne p0, v0, :cond_413

    const-string v0, "DATA_ROAMING_SETTINGS_DISABLED"

    return-object v0

    .line 1080
    :cond_413
    const/16 v0, 0x811

    if-ne p0, v0, :cond_41a

    const-string v0, "DDS_SWITCHED"

    return-object v0

    .line 1081
    :cond_41a
    const/16 v0, 0x812

    if-ne p0, v0, :cond_421

    const-string v0, "FORBIDDEN_APN_NAME"

    return-object v0

    .line 1082
    :cond_421
    const/16 v0, 0x813

    if-ne p0, v0, :cond_428

    const-string v0, "DDS_SWITCH_IN_PROGRESS"

    return-object v0

    .line 1083
    :cond_428
    const/16 v0, 0x814

    if-ne p0, v0, :cond_42f

    const-string v0, "CALL_DISALLOWED_IN_ROAMING"

    return-object v0

    .line 1084
    :cond_42f
    const/16 v0, 0x815

    if-ne p0, v0, :cond_436

    const-string v0, "NON_IP_NOT_SUPPORTED"

    return-object v0

    .line 1085
    :cond_436
    const/16 v0, 0x816

    if-ne p0, v0, :cond_43d

    const-string v0, "PDN_NON_IP_CALL_THROTTLED"

    return-object v0

    .line 1086
    :cond_43d
    const/16 v0, 0x817

    if-ne p0, v0, :cond_444

    const-string v0, "PDN_NON_IP_CALL_DISALLOWED"

    return-object v0

    .line 1087
    :cond_444
    const/16 v0, 0x818

    if-ne p0, v0, :cond_44b

    const-string v0, "CDMA_LOCK"

    return-object v0

    .line 1088
    :cond_44b
    const/16 v0, 0x819

    if-ne p0, v0, :cond_452

    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 1089
    :cond_452
    const/16 v0, 0x81a

    if-ne p0, v0, :cond_459

    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 1090
    :cond_459
    const/16 v0, 0x81b

    if-ne p0, v0, :cond_460

    const-string v0, "CDMA_RELEASE_DUE_TO_SO_REJECTION"

    return-object v0

    .line 1091
    :cond_460
    const/16 v0, 0x81c

    if-ne p0, v0, :cond_467

    const-string v0, "CDMA_INCOMING_CALL"

    return-object v0

    .line 1092
    :cond_467
    const/16 v0, 0x81d

    if-ne p0, v0, :cond_46e

    const-string v0, "CDMA_ALERT_STOP"

    return-object v0

    .line 1093
    :cond_46e
    const/16 v0, 0x81e

    if-ne p0, v0, :cond_475

    const-string v0, "CHANNEL_ACQUISITION_FAILURE"

    return-object v0

    .line 1094
    :cond_475
    const/16 v0, 0x81f

    if-ne p0, v0, :cond_47c

    const-string v0, "MAX_ACCESS_PROBE"

    return-object v0

    .line 1095
    :cond_47c
    const/16 v0, 0x820

    if-ne p0, v0, :cond_483

    const-string v0, "CONCURRENT_SERVICE_NOT_SUPPORTED_BY_BASE_STATION"

    return-object v0

    .line 1096
    :cond_483
    const/16 v0, 0x821

    if-ne p0, v0, :cond_48a

    const-string v0, "NO_RESPONSE_FROM_BASE_STATION"

    return-object v0

    .line 1097
    :cond_48a
    const/16 v0, 0x822

    if-ne p0, v0, :cond_491

    const-string v0, "REJECTED_BY_BASE_STATION"

    return-object v0

    .line 1098
    :cond_491
    const/16 v0, 0x823

    if-ne p0, v0, :cond_498

    const-string v0, "CONCURRENT_SERVICES_INCOMPATIBLE"

    return-object v0

    .line 1099
    :cond_498
    const/16 v0, 0x824

    if-ne p0, v0, :cond_49f

    const-string v0, "NO_CDMA_SERVICE"

    return-object v0

    .line 1100
    :cond_49f
    const/16 v0, 0x825

    if-ne p0, v0, :cond_4a6

    const-string v0, "RUIM_NOT_PRESENT"

    return-object v0

    .line 1101
    :cond_4a6
    const/16 v0, 0x826

    if-ne p0, v0, :cond_4ad

    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 1102
    :cond_4ad
    const/16 v0, 0x827

    if-ne p0, v0, :cond_4b4

    const-string v0, "ACCESS_BLOCK"

    return-object v0

    .line 1103
    :cond_4b4
    const/16 v0, 0x828

    if-ne p0, v0, :cond_4bb

    const-string v0, "ACCESS_BLOCK_ALL"

    return-object v0

    .line 1104
    :cond_4bb
    const/16 v0, 0x829

    if-ne p0, v0, :cond_4c2

    const-string v0, "IS707B_MAX_ACCESS_PROBES"

    return-object v0

    .line 1105
    :cond_4c2
    const/16 v0, 0x82a

    if-ne p0, v0, :cond_4c9

    const-string v0, "THERMAL_EMERGENCY"

    return-object v0

    .line 1106
    :cond_4c9
    const/16 v0, 0x82b

    if-ne p0, v0, :cond_4d0

    const-string v0, "CONCURRENT_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 1107
    :cond_4d0
    const/16 v0, 0x82c

    if-ne p0, v0, :cond_4d7

    const-string v0, "INCOMING_CALL_REJECTED"

    return-object v0

    .line 1108
    :cond_4d7
    const/16 v0, 0x82d

    if-ne p0, v0, :cond_4de

    const-string v0, "NO_SERVICE_ON_GATEWAY"

    return-object v0

    .line 1109
    :cond_4de
    const/16 v0, 0x82e

    if-ne p0, v0, :cond_4e5

    const-string v0, "NO_GPRS_CONTEXT"

    return-object v0

    .line 1110
    :cond_4e5
    const/16 v0, 0x82f

    if-ne p0, v0, :cond_4ec

    const-string v0, "ILLEGAL_MS"

    return-object v0

    .line 1111
    :cond_4ec
    const/16 v0, 0x830

    if-ne p0, v0, :cond_4f3

    const-string v0, "ILLEGAL_ME"

    return-object v0

    .line 1112
    :cond_4f3
    const/16 v0, 0x831

    if-ne p0, v0, :cond_4fa

    const-string v0, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 1113
    :cond_4fa
    const/16 v0, 0x832

    if-ne p0, v0, :cond_501

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 1114
    :cond_501
    const/16 v0, 0x833

    if-ne p0, v0, :cond_508

    const-string v0, "MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK"

    return-object v0

    .line 1115
    :cond_508
    const/16 v0, 0x834

    if-ne p0, v0, :cond_50f

    const-string v0, "IMPLICITLY_DETACHED"

    return-object v0

    .line 1116
    :cond_50f
    const/16 v0, 0x835

    if-ne p0, v0, :cond_516

    const-string v0, "PLMN_NOT_ALLOWED"

    return-object v0

    .line 1117
    :cond_516
    const/16 v0, 0x836

    if-ne p0, v0, :cond_51d

    const-string v0, "LOCATION_AREA_NOT_ALLOWED"

    return-object v0

    .line 1118
    :cond_51d
    const/16 v0, 0x837

    if-ne p0, v0, :cond_524

    const-string v0, "GPRS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN"

    return-object v0

    .line 1119
    :cond_524
    const/16 v0, 0x838

    if-ne p0, v0, :cond_52b

    const-string v0, "PDP_DUPLICATE"

    return-object v0

    .line 1120
    :cond_52b
    const/16 v0, 0x839

    if-ne p0, v0, :cond_532

    const-string v0, "UE_RAT_CHANGE"

    return-object v0

    .line 1121
    :cond_532
    const/16 v0, 0x83a

    if-ne p0, v0, :cond_539

    const-string v0, "CONGESTION"

    return-object v0

    .line 1122
    :cond_539
    const/16 v0, 0x83b

    if-ne p0, v0, :cond_540

    const-string v0, "NO_PDP_CONTEXT_ACTIVATED"

    return-object v0

    .line 1123
    :cond_540
    const/16 v0, 0x83c

    if-ne p0, v0, :cond_547

    const-string v0, "ACCESS_CLASS_DSAC_REJECTION"

    return-object v0

    .line 1124
    :cond_547
    const/16 v0, 0x83d

    if-ne p0, v0, :cond_54e

    const-string v0, "PDP_ACTIVATE_MAX_RETRY_FAILED"

    return-object v0

    .line 1125
    :cond_54e
    const/16 v0, 0x83e

    if-ne p0, v0, :cond_555

    const-string v0, "RADIO_ACCESS_BEARER_FAILURE"

    return-object v0

    .line 1126
    :cond_555
    const/16 v0, 0x83f

    if-ne p0, v0, :cond_55c

    const-string v0, "ESM_UNKNOWN_EPS_BEARER_CONTEXT"

    return-object v0

    .line 1127
    :cond_55c
    const/16 v0, 0x840

    if-ne p0, v0, :cond_563

    const-string v0, "DRB_RELEASED_BY_RRC"

    return-object v0

    .line 1128
    :cond_563
    const/16 v0, 0x841

    if-ne p0, v0, :cond_56a

    const-string v0, "CONNECTION_RELEASED"

    return-object v0

    .line 1129
    :cond_56a
    const/16 v0, 0x842

    if-ne p0, v0, :cond_571

    const-string v0, "EMM_DETACHED"

    return-object v0

    .line 1130
    :cond_571
    const/16 v0, 0x843

    if-ne p0, v0, :cond_578

    const-string v0, "EMM_ATTACH_FAILED"

    return-object v0

    .line 1131
    :cond_578
    const/16 v0, 0x844

    if-ne p0, v0, :cond_57f

    const-string v0, "EMM_ATTACH_STARTED"

    return-object v0

    .line 1132
    :cond_57f
    const/16 v0, 0x845

    if-ne p0, v0, :cond_586

    const-string v0, "LTE_NAS_SERVICE_REQUEST_FAILED"

    return-object v0

    .line 1133
    :cond_586
    const/16 v0, 0x846

    if-ne p0, v0, :cond_58d

    const-string v0, "DUPLICATE_BEARER_ID"

    return-object v0

    .line 1134
    :cond_58d
    const/16 v0, 0x847

    if-ne p0, v0, :cond_594

    const-string v0, "ESM_COLLISION_SCENARIOS"

    return-object v0

    .line 1135
    :cond_594
    const/16 v0, 0x848

    if-ne p0, v0, :cond_59b

    const-string v0, "ESM_BEARER_DEACTIVATED_TO_SYNC_WITH_NETWORK"

    return-object v0

    .line 1136
    :cond_59b
    const/16 v0, 0x849

    if-ne p0, v0, :cond_5a2

    const-string v0, "ESM_NW_ACTIVATED_DED_BEARER_WITH_ID_OF_DEF_BEARER"

    return-object v0

    .line 1137
    :cond_5a2
    const/16 v0, 0x84a

    if-ne p0, v0, :cond_5a9

    const-string v0, "ESM_BAD_OTA_MESSAGE"

    return-object v0

    .line 1138
    :cond_5a9
    const/16 v0, 0x84b

    if-ne p0, v0, :cond_5b0

    const-string v0, "ESM_DOWNLOAD_SERVER_REJECTED_THE_CALL"

    return-object v0

    .line 1139
    :cond_5b0
    const/16 v0, 0x84c

    if-ne p0, v0, :cond_5b7

    const-string v0, "ESM_CONTEXT_TRANSFERRED_DUE_TO_IRAT"

    return-object v0

    .line 1140
    :cond_5b7
    const/16 v0, 0x84d

    if-ne p0, v0, :cond_5be

    const-string v0, "DS_EXPLICIT_DEACTIVATION"

    return-object v0

    .line 1141
    :cond_5be
    const/16 v0, 0x84e

    if-ne p0, v0, :cond_5c5

    const-string v0, "ESM_LOCAL_CAUSE_NONE"

    return-object v0

    .line 1142
    :cond_5c5
    const/16 v0, 0x84f

    if-ne p0, v0, :cond_5cc

    const-string v0, "LTE_THROTTLING_NOT_REQUIRED"

    return-object v0

    .line 1143
    :cond_5cc
    const/16 v0, 0x850

    if-ne p0, v0, :cond_5d3

    const-string v0, "ACCESS_CONTROL_LIST_CHECK_FAILURE"

    return-object v0

    .line 1144
    :cond_5d3
    const/16 v0, 0x851

    if-ne p0, v0, :cond_5da

    const-string v0, "SERVICE_NOT_ALLOWED_ON_PLMN"

    return-object v0

    .line 1145
    :cond_5da
    const/16 v0, 0x852

    if-ne p0, v0, :cond_5e1

    const-string v0, "EMM_T3417_EXPIRED"

    return-object v0

    .line 1146
    :cond_5e1
    const/16 v0, 0x853

    if-ne p0, v0, :cond_5e8

    const-string v0, "EMM_T3417_EXT_EXPIRED"

    return-object v0

    .line 1147
    :cond_5e8
    const/16 v0, 0x854

    if-ne p0, v0, :cond_5ef

    const-string v0, "RRC_UPLINK_DATA_TRANSMISSION_FAILURE"

    return-object v0

    .line 1148
    :cond_5ef
    const/16 v0, 0x855

    if-ne p0, v0, :cond_5f6

    const-string v0, "RRC_UPLINK_DELIVERY_FAILED_DUE_TO_HANDOVER"

    return-object v0

    .line 1149
    :cond_5f6
    const/16 v0, 0x856

    if-ne p0, v0, :cond_5fd

    const-string v0, "RRC_UPLINK_CONNECTION_RELEASE"

    return-object v0

    .line 1150
    :cond_5fd
    const/16 v0, 0x857

    if-ne p0, v0, :cond_604

    const-string v0, "RRC_UPLINK_RADIO_LINK_FAILURE"

    return-object v0

    .line 1151
    :cond_604
    const/16 v0, 0x858

    if-ne p0, v0, :cond_60b

    const-string v0, "RRC_UPLINK_ERROR_REQUEST_FROM_NAS"

    return-object v0

    .line 1152
    :cond_60b
    const/16 v0, 0x859

    if-ne p0, v0, :cond_612

    const-string v0, "RRC_CONNECTION_ACCESS_STRATUM_FAILURE"

    return-object v0

    .line 1153
    :cond_612
    const/16 v0, 0x85a

    if-ne p0, v0, :cond_619

    const-string v0, "RRC_CONNECTION_ANOTHER_PROCEDURE_IN_PROGRESS"

    return-object v0

    .line 1154
    :cond_619
    const/16 v0, 0x85b

    if-ne p0, v0, :cond_620

    const-string v0, "RRC_CONNECTION_ACCESS_BARRED"

    return-object v0

    .line 1155
    :cond_620
    const/16 v0, 0x85c

    if-ne p0, v0, :cond_627

    const-string v0, "RRC_CONNECTION_CELL_RESELECTION"

    return-object v0

    .line 1156
    :cond_627
    const/16 v0, 0x85d    # 3.0E-42f

    if-ne p0, v0, :cond_62e

    const-string v0, "RRC_CONNECTION_CONFIG_FAILURE"

    return-object v0

    .line 1157
    :cond_62e
    const/16 v0, 0x85e

    if-ne p0, v0, :cond_635

    const-string v0, "RRC_CONNECTION_TIMER_EXPIRED"

    return-object v0

    .line 1158
    :cond_635
    const/16 v0, 0x85f

    if-ne p0, v0, :cond_63c

    const-string v0, "RRC_CONNECTION_LINK_FAILURE"

    return-object v0

    .line 1159
    :cond_63c
    const/16 v0, 0x860

    if-ne p0, v0, :cond_643

    const-string v0, "RRC_CONNECTION_CELL_NOT_CAMPED"

    return-object v0

    .line 1160
    :cond_643
    const/16 v0, 0x861

    if-ne p0, v0, :cond_64a

    const-string v0, "RRC_CONNECTION_SYSTEM_INTERVAL_FAILURE"

    return-object v0

    .line 1161
    :cond_64a
    const/16 v0, 0x862

    if-ne p0, v0, :cond_651

    const-string v0, "RRC_CONNECTION_REJECT_BY_NETWORK"

    return-object v0

    .line 1162
    :cond_651
    const/16 v0, 0x863

    if-ne p0, v0, :cond_658

    const-string v0, "RRC_CONNECTION_NORMAL_RELEASE"

    return-object v0

    .line 1163
    :cond_658
    const/16 v0, 0x864

    if-ne p0, v0, :cond_65f

    const-string v0, "RRC_CONNECTION_RADIO_LINK_FAILURE"

    return-object v0

    .line 1164
    :cond_65f
    const/16 v0, 0x865

    if-ne p0, v0, :cond_666

    const-string v0, "RRC_CONNECTION_REESTABLISHMENT_FAILURE"

    return-object v0

    .line 1165
    :cond_666
    const/16 v0, 0x866

    if-ne p0, v0, :cond_66d

    const-string v0, "RRC_CONNECTION_OUT_OF_SERVICE_DURING_CELL_REGISTER"

    return-object v0

    .line 1166
    :cond_66d
    const/16 v0, 0x867

    if-ne p0, v0, :cond_674

    const-string v0, "RRC_CONNECTION_ABORT_REQUEST"

    return-object v0

    .line 1167
    :cond_674
    const/16 v0, 0x868

    if-ne p0, v0, :cond_67b

    const-string v0, "RRC_CONNECTION_SYSTEM_INFORMATION_BLOCK_READ_ERROR"

    return-object v0

    .line 1168
    :cond_67b
    const/16 v0, 0x869

    if-ne p0, v0, :cond_682

    const-string v0, "NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH"

    return-object v0

    .line 1169
    :cond_682
    const/16 v0, 0x86a

    if-ne p0, v0, :cond_689

    const-string v0, "NETWORK_INITIATED_DETACH_NO_AUTO_REATTACH"

    return-object v0

    .line 1170
    :cond_689
    const/16 v0, 0x86b

    if-ne p0, v0, :cond_690

    const-string v0, "ESM_PROCEDURE_TIME_OUT"

    return-object v0

    .line 1171
    :cond_690
    const/16 v0, 0x86c

    if-ne p0, v0, :cond_697

    const-string v0, "INVALID_CONNECTION_ID"

    return-object v0

    .line 1172
    :cond_697
    const/16 v0, 0x86d

    if-ne p0, v0, :cond_69e

    const-string v0, "MAXIMIUM_NSAPIS_EXCEEDED"

    return-object v0

    .line 1173
    :cond_69e
    const/16 v0, 0x86e

    if-ne p0, v0, :cond_6a5

    const-string v0, "INVALID_PRIMARY_NSAPI"

    return-object v0

    .line 1174
    :cond_6a5
    const/16 v0, 0x86f

    if-ne p0, v0, :cond_6ac

    const-string v0, "CANNOT_ENCODE_OTA_MESSAGE"

    return-object v0

    .line 1175
    :cond_6ac
    const/16 v0, 0x870

    if-ne p0, v0, :cond_6b3

    const-string v0, "RADIO_ACCESS_BEARER_SETUP_FAILURE"

    return-object v0

    .line 1176
    :cond_6b3
    const/16 v0, 0x871

    if-ne p0, v0, :cond_6ba

    const-string v0, "PDP_ESTABLISH_TIMEOUT_EXPIRED"

    return-object v0

    .line 1177
    :cond_6ba
    const/16 v0, 0x872

    if-ne p0, v0, :cond_6c1

    const-string v0, "PDP_MODIFY_TIMEOUT_EXPIRED"

    return-object v0

    .line 1178
    :cond_6c1
    const/16 v0, 0x873

    if-ne p0, v0, :cond_6c8

    const-string v0, "PDP_INACTIVE_TIMEOUT_EXPIRED"

    return-object v0

    .line 1179
    :cond_6c8
    const/16 v0, 0x874

    if-ne p0, v0, :cond_6cf

    const-string v0, "PDP_LOWERLAYER_ERROR"

    return-object v0

    .line 1180
    :cond_6cf
    const/16 v0, 0x875

    if-ne p0, v0, :cond_6d6

    const-string v0, "PDP_MODIFY_COLLISION"

    return-object v0

    .line 1181
    :cond_6d6
    const/16 v0, 0x876

    if-ne p0, v0, :cond_6dd

    const-string v0, "MAXINUM_SIZE_OF_L2_MESSAGE_EXCEEDED"

    return-object v0

    .line 1182
    :cond_6dd
    if-ne p0, v0, :cond_6e2

    const-string v0, "MAXIMUM_SIZE_OF_L2_MESSAGE_EXCEEDED"

    return-object v0

    .line 1183
    :cond_6e2
    const/16 v0, 0x877

    if-ne p0, v0, :cond_6e9

    const-string v0, "NAS_REQUEST_REJECTED_BY_NETWORK"

    return-object v0

    .line 1184
    :cond_6e9
    const/16 v0, 0x878

    if-ne p0, v0, :cond_6f0

    const-string v0, "RRC_CONNECTION_INVALID_REQUEST"

    return-object v0

    .line 1185
    :cond_6f0
    const/16 v0, 0x879

    if-ne p0, v0, :cond_6f7

    const-string v0, "RRC_CONNECTION_TRACKING_AREA_ID_CHANGED"

    return-object v0

    .line 1186
    :cond_6f7
    const/16 v0, 0x87a

    if-ne p0, v0, :cond_6fe

    const-string v0, "RRC_CONNECTION_RF_UNAVAILABLE"

    return-object v0

    .line 1187
    :cond_6fe
    const/16 v0, 0x87b

    if-ne p0, v0, :cond_705

    const-string v0, "RRC_CONNECTION_ABORTED_DUE_TO_IRAT_CHANGE"

    return-object v0

    .line 1188
    :cond_705
    const/16 v0, 0x87c

    if-ne p0, v0, :cond_70c

    const-string v0, "RRC_CONNECTION_RELEASED_SECURITY_NOT_ACTIVE"

    return-object v0

    .line 1189
    :cond_70c
    const/16 v0, 0x87d

    if-ne p0, v0, :cond_713

    const-string v0, "RRC_CONNECTION_ABORTED_AFTER_HANDOVER"

    return-object v0

    .line 1190
    :cond_713
    const/16 v0, 0x87e

    if-ne p0, v0, :cond_71a

    const-string v0, "RRC_CONNECTION_ABORTED_AFTER_IRAT_CELL_CHANGE"

    return-object v0

    .line 1191
    :cond_71a
    const/16 v0, 0x87f

    if-ne p0, v0, :cond_721

    const-string v0, "RRC_CONNECTION_ABORTED_DURING_IRAT_CELL_CHANGE"

    return-object v0

    .line 1192
    :cond_721
    const/16 v0, 0x880

    if-ne p0, v0, :cond_728

    const-string v0, "IMSI_UNKNOWN_IN_HOME_SUBSCRIBER_SERVER"

    return-object v0

    .line 1193
    :cond_728
    const/16 v0, 0x881

    if-ne p0, v0, :cond_72f

    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 1194
    :cond_72f
    const/16 v0, 0x882

    if-ne p0, v0, :cond_736

    const-string v0, "EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED"

    return-object v0

    .line 1195
    :cond_736
    const/16 v0, 0x883

    if-ne p0, v0, :cond_73d

    const-string v0, "EPS_SERVICES_NOT_ALLOWED_IN_PLMN"

    return-object v0

    .line 1196
    :cond_73d
    const/16 v0, 0x884

    if-ne p0, v0, :cond_744

    const-string v0, "MSC_TEMPORARILY_NOT_REACHABLE"

    return-object v0

    .line 1197
    :cond_744
    const/16 v0, 0x885

    if-ne p0, v0, :cond_74b

    const-string v0, "CS_DOMAIN_NOT_AVAILABLE"

    return-object v0

    .line 1198
    :cond_74b
    const/16 v0, 0x886

    if-ne p0, v0, :cond_752

    const-string v0, "ESM_FAILURE"

    return-object v0

    .line 1199
    :cond_752
    const/16 v0, 0x887

    if-ne p0, v0, :cond_759

    const-string v0, "MAC_FAILURE"

    return-object v0

    .line 1200
    :cond_759
    const/16 v0, 0x888

    if-ne p0, v0, :cond_760

    const-string v0, "SYNCHRONIZATION_FAILURE"

    return-object v0

    .line 1201
    :cond_760
    const/16 v0, 0x889

    if-ne p0, v0, :cond_767

    const-string v0, "UE_SECURITY_CAPABILITIES_MISMATCH"

    return-object v0

    .line 1202
    :cond_767
    const/16 v0, 0x88a

    if-ne p0, v0, :cond_76e

    const-string v0, "SECURITY_MODE_REJECTED"

    return-object v0

    .line 1203
    :cond_76e
    const/16 v0, 0x88b

    if-ne p0, v0, :cond_775

    const-string v0, "UNACCEPTABLE_NON_EPS_AUTHENTICATION"

    return-object v0

    .line 1204
    :cond_775
    const/16 v0, 0x88c

    if-ne p0, v0, :cond_77c

    const-string v0, "CS_FALLBACK_CALL_ESTABLISHMENT_NOT_ALLOWED"

    return-object v0

    .line 1205
    :cond_77c
    const/16 v0, 0x88d

    if-ne p0, v0, :cond_783

    const-string v0, "NO_EPS_BEARER_CONTEXT_ACTIVATED"

    return-object v0

    .line 1206
    :cond_783
    const/16 v0, 0x88e

    if-ne p0, v0, :cond_78a

    const-string v0, "INVALID_EMM_STATE"

    return-object v0

    .line 1207
    :cond_78a
    const/16 v0, 0x88f

    if-ne p0, v0, :cond_791

    const-string v0, "NAS_LAYER_FAILURE"

    return-object v0

    .line 1208
    :cond_791
    const/16 v0, 0x890

    if-ne p0, v0, :cond_798

    const-string v0, "MULTIPLE_PDP_CALL_NOT_ALLOWED"

    return-object v0

    .line 1209
    :cond_798
    const/16 v0, 0x891

    if-ne p0, v0, :cond_79f

    const-string v0, "EMBMS_NOT_ENABLED"

    return-object v0

    .line 1210
    :cond_79f
    const/16 v0, 0x892

    if-ne p0, v0, :cond_7a6

    const-string v0, "IRAT_HANDOVER_FAILED"

    return-object v0

    .line 1211
    :cond_7a6
    const/16 v0, 0x893

    if-ne p0, v0, :cond_7ad

    const-string v0, "EMBMS_REGULAR_DEACTIVATION"

    return-object v0

    .line 1212
    :cond_7ad
    const/16 v0, 0x894

    if-ne p0, v0, :cond_7b4

    const-string v0, "TEST_LOOPBACK_REGULAR_DEACTIVATION"

    return-object v0

    .line 1213
    :cond_7b4
    const/16 v0, 0x895

    if-ne p0, v0, :cond_7bb

    const-string v0, "LOWER_LAYER_REGISTRATION_FAILURE"

    return-object v0

    .line 1214
    :cond_7bb
    const/16 v0, 0x896

    if-ne p0, v0, :cond_7c2

    const-string v0, "DATA_PLAN_EXPIRED"

    return-object v0

    .line 1215
    :cond_7c2
    const/16 v0, 0x897

    if-ne p0, v0, :cond_7c9

    const-string v0, "UMTS_HANDOVER_TO_IWLAN"

    return-object v0

    .line 1216
    :cond_7c9
    const/16 v0, 0x898

    if-ne p0, v0, :cond_7d0

    const-string v0, "EVDO_CONNECTION_DENY_BY_GENERAL_OR_NETWORK_BUSY"

    return-object v0

    .line 1217
    :cond_7d0
    const/16 v0, 0x899

    if-ne p0, v0, :cond_7d7

    const-string v0, "EVDO_CONNECTION_DENY_BY_BILLING_OR_AUTHENTICATION_FAILURE"

    return-object v0

    .line 1218
    :cond_7d7
    const/16 v0, 0x89a

    if-ne p0, v0, :cond_7de

    const-string v0, "EVDO_HDR_CHANGED"

    return-object v0

    .line 1219
    :cond_7de
    const/16 v0, 0x89b

    if-ne p0, v0, :cond_7e5

    const-string v0, "EVDO_HDR_EXITED"

    return-object v0

    .line 1220
    :cond_7e5
    const/16 v0, 0x89c

    if-ne p0, v0, :cond_7ec

    const-string v0, "EVDO_HDR_NO_SESSION"

    return-object v0

    .line 1221
    :cond_7ec
    const/16 v0, 0x89d

    if-ne p0, v0, :cond_7f3

    const-string v0, "EVDO_USING_GPS_FIX_INSTEAD_OF_HDR_CALL"

    return-object v0

    .line 1222
    :cond_7f3
    const/16 v0, 0x89e

    if-ne p0, v0, :cond_7fa

    const-string v0, "EVDO_HDR_CONNECTION_SETUP_TIMEOUT"

    return-object v0

    .line 1223
    :cond_7fa
    const/16 v0, 0x89f

    if-ne p0, v0, :cond_801

    const-string v0, "FAILED_TO_ACQUIRE_COLOCATED_HDR"

    return-object v0

    .line 1224
    :cond_801
    const/16 v0, 0x8a0

    if-ne p0, v0, :cond_808

    const-string v0, "OTASP_COMMIT_IN_PROGRESS"

    return-object v0

    .line 1225
    :cond_808
    const/16 v0, 0x8a1

    if-ne p0, v0, :cond_80f

    const-string v0, "NO_HYBRID_HDR_SERVICE"

    return-object v0

    .line 1226
    :cond_80f
    const/16 v0, 0x8a2

    if-ne p0, v0, :cond_816

    const-string v0, "HDR_NO_LOCK_GRANTED"

    return-object v0

    .line 1227
    :cond_816
    const/16 v0, 0x8a3

    if-ne p0, v0, :cond_81d

    const-string v0, "DBM_OR_SMS_IN_PROGRESS"

    return-object v0

    .line 1228
    :cond_81d
    const/16 v0, 0x8a4

    if-ne p0, v0, :cond_824

    const-string v0, "HDR_FADE"

    return-object v0

    .line 1229
    :cond_824
    const/16 v0, 0x8a5

    if-ne p0, v0, :cond_82b

    const-string v0, "HDR_ACCESS_FAILURE"

    return-object v0

    .line 1230
    :cond_82b
    const/16 v0, 0x8a6

    if-ne p0, v0, :cond_832

    const-string v0, "UNSUPPORTED_1X_PREV"

    return-object v0

    .line 1231
    :cond_832
    const/16 v0, 0x8a7

    if-ne p0, v0, :cond_839

    const-string v0, "LOCAL_END"

    return-object v0

    .line 1232
    :cond_839
    const/16 v0, 0x8a8

    if-ne p0, v0, :cond_840

    const-string v0, "NO_SERVICE"

    return-object v0

    .line 1233
    :cond_840
    const/16 v0, 0x8a9

    if-ne p0, v0, :cond_847

    const-string v0, "FADE"

    return-object v0

    .line 1234
    :cond_847
    const/16 v0, 0x8aa

    if-ne p0, v0, :cond_84e

    const-string v0, "NORMAL_RELEASE"

    return-object v0

    .line 1235
    :cond_84e
    const/16 v0, 0x8ab

    if-ne p0, v0, :cond_855

    const-string v0, "ACCESS_ATTEMPT_ALREADY_IN_PROGRESS"

    return-object v0

    .line 1236
    :cond_855
    const/16 v0, 0x8ac

    if-ne p0, v0, :cond_85c

    const-string v0, "REDIRECTION_OR_HANDOFF_IN_PROGRESS"

    return-object v0

    .line 1237
    :cond_85c
    const/16 v0, 0x8ad

    if-ne p0, v0, :cond_863

    const-string v0, "EMERGENCY_MODE"

    return-object v0

    .line 1238
    :cond_863
    const/16 v0, 0x8ae

    if-ne p0, v0, :cond_86a

    const-string v0, "PHONE_IN_USE"

    return-object v0

    .line 1239
    :cond_86a
    const/16 v0, 0x8af

    if-ne p0, v0, :cond_871

    const-string v0, "INVALID_MODE"

    return-object v0

    .line 1240
    :cond_871
    const/16 v0, 0x8b0

    if-ne p0, v0, :cond_878

    const-string v0, "INVALID_SIM_STATE"

    return-object v0

    .line 1241
    :cond_878
    const/16 v0, 0x8b1

    if-ne p0, v0, :cond_87f

    const-string v0, "NO_COLLOCATED_HDR"

    return-object v0

    .line 1242
    :cond_87f
    const/16 v0, 0x8b2

    if-ne p0, v0, :cond_886

    const-string v0, "UE_IS_ENTERING_POWERSAVE_MODE"

    return-object v0

    .line 1243
    :cond_886
    const/16 v0, 0x8b3

    if-ne p0, v0, :cond_88d

    const-string v0, "DUAL_SWITCH"

    return-object v0

    .line 1244
    :cond_88d
    const/16 v0, 0x8b4

    if-ne p0, v0, :cond_894

    const-string v0, "PPP_TIMEOUT"

    return-object v0

    .line 1245
    :cond_894
    const/16 v0, 0x8b5

    if-ne p0, v0, :cond_89b

    const-string v0, "PPP_AUTH_FAILURE"

    return-object v0

    .line 1246
    :cond_89b
    const/16 v0, 0x8b6

    if-ne p0, v0, :cond_8a2

    const-string v0, "PPP_OPTION_MISMATCH"

    return-object v0

    .line 1247
    :cond_8a2
    const/16 v0, 0x8b7

    if-ne p0, v0, :cond_8a9

    const-string v0, "PPP_PAP_FAILURE"

    return-object v0

    .line 1248
    :cond_8a9
    const/16 v0, 0x8b8

    if-ne p0, v0, :cond_8b0

    const-string v0, "PPP_CHAP_FAILURE"

    return-object v0

    .line 1249
    :cond_8b0
    const/16 v0, 0x8b9

    if-ne p0, v0, :cond_8b7

    const-string v0, "PPP_CLOSE_IN_PROGRESS"

    return-object v0

    .line 1250
    :cond_8b7
    const/16 v0, 0x8ba

    if-ne p0, v0, :cond_8be

    const-string v0, "LIMITED_TO_IPV4"

    return-object v0

    .line 1251
    :cond_8be
    const/16 v0, 0x8bb

    if-ne p0, v0, :cond_8c5

    const-string v0, "LIMITED_TO_IPV6"

    return-object v0

    .line 1252
    :cond_8c5
    const/16 v0, 0x8bc

    if-ne p0, v0, :cond_8cc

    const-string v0, "VSNCP_TIMEOUT"

    return-object v0

    .line 1253
    :cond_8cc
    const/16 v0, 0x8bd

    if-ne p0, v0, :cond_8d3

    const-string v0, "VSNCP_GEN_ERROR"

    return-object v0

    .line 1254
    :cond_8d3
    const/16 v0, 0x8be

    if-ne p0, v0, :cond_8da

    const-string v0, "VSNCP_APN_UNAUTHORIZED"

    return-object v0

    .line 1255
    :cond_8da
    const/16 v0, 0x8bf

    if-ne p0, v0, :cond_8e1

    const-string v0, "VSNCP_PDN_LIMIT_EXCEEDED"

    return-object v0

    .line 1256
    :cond_8e1
    const/16 v0, 0x8c0

    if-ne p0, v0, :cond_8e8

    const-string v0, "VSNCP_NO_PDN_GATEWAY_ADDRESS"

    return-object v0

    .line 1257
    :cond_8e8
    const/16 v0, 0x8c1

    if-ne p0, v0, :cond_8ef

    const-string v0, "VSNCP_PDN_GATEWAY_UNREACHABLE"

    return-object v0

    .line 1258
    :cond_8ef
    const/16 v0, 0x8c2

    if-ne p0, v0, :cond_8f6

    const-string v0, "VSNCP_PDN_GATEWAY_REJECT"

    return-object v0

    .line 1259
    :cond_8f6
    const/16 v0, 0x8c3

    if-ne p0, v0, :cond_8fd

    const-string v0, "VSNCP_INSUFFICIENT_PARAMETERS"

    return-object v0

    .line 1260
    :cond_8fd
    const/16 v0, 0x8c4

    if-ne p0, v0, :cond_904

    const-string v0, "VSNCP_RESOURCE_UNAVAILABLE"

    return-object v0

    .line 1261
    :cond_904
    const/16 v0, 0x8c5

    if-ne p0, v0, :cond_90b

    const-string v0, "VSNCP_ADMINISTRATIVELY_PROHIBITED"

    return-object v0

    .line 1262
    :cond_90b
    const/16 v0, 0x8c6

    if-ne p0, v0, :cond_912

    const-string v0, "VSNCP_PDN_ID_IN_USE"

    return-object v0

    .line 1263
    :cond_912
    const/16 v0, 0x8c7

    if-ne p0, v0, :cond_919

    const-string v0, "VSNCP_SUBSCRIBER_LIMITATION"

    return-object v0

    .line 1264
    :cond_919
    const/16 v0, 0x8c8

    if-ne p0, v0, :cond_920

    const-string v0, "VSNCP_PDN_EXISTS_FOR_THIS_APN"

    return-object v0

    .line 1265
    :cond_920
    const/16 v0, 0x8c9

    if-ne p0, v0, :cond_927

    const-string v0, "VSNCP_RECONNECT_NOT_ALLOWED"

    return-object v0

    .line 1266
    :cond_927
    const/16 v0, 0x8ca

    if-ne p0, v0, :cond_92e

    const-string v0, "IPV6_PREFIX_UNAVAILABLE"

    return-object v0

    .line 1267
    :cond_92e
    const/16 v0, 0x8cb

    if-ne p0, v0, :cond_935

    const-string v0, "HANDOFF_PREFERENCE_CHANGED"

    return-object v0

    .line 1268
    :cond_935
    const/16 v0, 0x8cc

    if-ne p0, v0, :cond_93c

    const-string v0, "SLICE_REJECTED"

    return-object v0

    .line 1269
    :cond_93c
    const/16 v0, 0x8cd

    if-ne p0, v0, :cond_943

    const-string v0, "MATCH_ALL_RULE_NOT_ALLOWED"

    return-object v0

    .line 1270
    :cond_943
    const/16 v0, 0x8ce

    if-ne p0, v0, :cond_94a

    const-string v0, "ALL_MATCHING_RULES_FAILED"

    return-object v0

    .line 1271
    :cond_94a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
