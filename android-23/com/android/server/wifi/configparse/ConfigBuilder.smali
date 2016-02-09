.class public Lcom/android/server/wifi/configparse/ConfigBuilder;
.super Ljava/lang/Object;
.source "ConfigBuilder.java"


# static fields
.field private static synthetic -com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I = null

.field private static synthetic -com_android_server_wifi_anqp_eap_NonEAPInnerAuth$NonEAPTypeSwitchesValues:[I = null

.field private static final CATag:Ljava/lang/String; = "application/x-x509-ca-cert"

.field private static final KeyTag:Ljava/lang/String; = "application/x-pkcs12"

.field private static final ProfileTag:Ljava/lang/String; = "application/x-passpoint-profile"

.field private static final TAG:Ljava/lang/String; = "WCFG"

.field public static final WifiConfigType:Ljava/lang/String; = "application/x-wifi-config"

.field private static final X509:Ljava/lang/String; = "X.509"


# direct methods
.method private static synthetic -getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->values()[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@10
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0xa

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@1a
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    #@21
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@23
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x2

    #@28
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    #@2a
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2c
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/16 v2, 0xb

    #@32
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    #@34
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@36
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@39
    move-result v1

    #@3a
    const/16 v2, 0xc

    #@3c
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    #@3e
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@40
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@43
    move-result v1

    #@44
    const/16 v2, 0xd

    #@46
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    #@48
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@4a
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@4d
    move-result v1

    #@4e
    const/16 v2, 0xe

    #@50
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    #@52
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@54
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@57
    move-result v1

    #@58
    const/16 v2, 0xf

    #@5a
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    #@5c
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@5e
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@61
    move-result v1

    #@62
    const/16 v2, 0x10

    #@64
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    #@66
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@68
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@6b
    move-result v1

    #@6c
    const/16 v2, 0x11

    #@6e
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    #@70
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@72
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@75
    move-result v1

    #@76
    const/16 v2, 0x12

    #@78
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    #@7a
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@7c
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@7f
    move-result v1

    #@80
    const/16 v2, 0x13

    #@82
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    #@84
    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@86
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@89
    move-result v1

    #@8a
    const/16 v2, 0x14

    #@8c
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    #@8e
    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@90
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@93
    move-result v1

    #@94
    const/16 v2, 0x15

    #@96
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    #@98
    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@9a
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@9d
    move-result v1

    #@9e
    const/16 v2, 0x16

    #@a0
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    #@a2
    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@a4
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@a7
    move-result v1

    #@a8
    const/16 v2, 0x17

    #@aa
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    #@ac
    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ae
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@b1
    move-result v1

    #@b2
    const/16 v2, 0x18

    #@b4
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    #@b6
    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@b8
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@bb
    move-result v1

    #@bc
    const/16 v2, 0x19

    #@be
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    #@c0
    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@c2
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@c5
    move-result v1

    #@c6
    const/16 v2, 0x1a

    #@c8
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    #@ca
    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@cc
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@cf
    move-result v1

    #@d0
    const/16 v2, 0x1b

    #@d2
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    #@d4
    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@d6
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@d9
    move-result v1

    #@da
    const/16 v2, 0x1c

    #@dc
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    #@de
    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@e0
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@e3
    move-result v1

    #@e4
    const/16 v2, 0x1d

    #@e6
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    #@e8
    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@ea
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@ed
    move-result v1

    #@ee
    const/16 v2, 0x1e

    #@f0
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    #@f2
    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@f4
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@f7
    move-result v1

    #@f8
    const/16 v2, 0x1f

    #@fa
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    #@fc
    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@fe
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@101
    move-result v1

    #@102
    const/4 v2, 0x3

    #@103
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    #@105
    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@107
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@10a
    move-result v1

    #@10b
    const/16 v2, 0x20

    #@10d
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    #@10f
    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@111
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@114
    move-result v1

    #@115
    const/16 v2, 0x21

    #@117
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    #@119
    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@11b
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@11e
    move-result v1

    #@11f
    const/4 v2, 0x4

    #@120
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    #@122
    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@124
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@127
    move-result v1

    #@128
    const/4 v2, 0x5

    #@129
    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    #@12b
    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@12d
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@130
    move-result v1

    #@131
    const/16 v2, 0x22

    #@133
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    #@135
    :goto_1d
    sput-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

    #@137
    return-object v0

    #@138
    :catch_0
    move-exception v1

    #@139
    goto :goto_1d

    #@13a
    :catch_1
    move-exception v1

    #@13b
    goto :goto_1c

    #@13c
    :catch_2
    move-exception v1

    #@13d
    goto :goto_1b

    #@13e
    :catch_3
    move-exception v1

    #@13f
    goto :goto_1a

    #@140
    :catch_4
    move-exception v1

    #@141
    goto :goto_19

    #@142
    :catch_5
    move-exception v1

    #@143
    goto :goto_18

    #@144
    :catch_6
    move-exception v1

    #@145
    goto :goto_17

    #@146
    :catch_7
    move-exception v1

    #@147
    goto :goto_16

    #@148
    :catch_8
    move-exception v1

    #@149
    goto :goto_15

    #@14a
    :catch_9
    move-exception v1

    #@14b
    goto :goto_14

    #@14c
    :catch_a
    move-exception v1

    #@14d
    goto :goto_13

    #@14e
    :catch_b
    move-exception v1

    #@14f
    goto/16 :goto_12

    #@151
    :catch_c
    move-exception v1

    #@152
    goto/16 :goto_11

    #@154
    :catch_d
    move-exception v1

    #@155
    goto/16 :goto_10

    #@157
    :catch_e
    move-exception v1

    #@158
    goto/16 :goto_f

    #@15a
    :catch_f
    move-exception v1

    #@15b
    goto/16 :goto_e

    #@15d
    :catch_10
    move-exception v1

    #@15e
    goto/16 :goto_d

    #@160
    :catch_11
    move-exception v1

    #@161
    goto/16 :goto_c

    #@163
    :catch_12
    move-exception v1

    #@164
    goto/16 :goto_b

    #@166
    :catch_13
    move-exception v1

    #@167
    goto/16 :goto_a

    #@169
    :catch_14
    move-exception v1

    #@16a
    goto/16 :goto_9

    #@16c
    :catch_15
    move-exception v1

    #@16d
    goto/16 :goto_8

    #@16f
    :catch_16
    move-exception v1

    #@170
    goto/16 :goto_7

    #@172
    :catch_17
    move-exception v1

    #@173
    goto/16 :goto_6

    #@175
    :catch_18
    move-exception v1

    #@176
    goto/16 :goto_5

    #@178
    :catch_19
    move-exception v1

    #@179
    goto/16 :goto_4

    #@17b
    :catch_1a
    move-exception v1

    #@17c
    goto/16 :goto_3

    #@17e
    :catch_1b
    move-exception v1

    #@17f
    goto/16 :goto_2

    #@181
    :catch_1c
    move-exception v1

    #@182
    goto/16 :goto_1

    #@184
    :catch_1d
    move-exception v1

    #@185
    goto/16 :goto_0
.end method

.method private static synthetic -getcom_android_server_wifi_anqp_eap_NonEAPInnerAuth$NonEAPTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder;->-com_android_server_wifi_anqp_eap_NonEAPInnerAuth$NonEAPTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder;->-com_android_server_wifi_anqp_eap_NonEAPInnerAuth$NonEAPTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->values()[Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->CHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@10
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->MSCHAPv2:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@22
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->PAP:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->Reserved:Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@34
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/16 v2, 0xa

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3c
    :goto_4
    sput-object v0, Lcom/android/server/wifi/configparse/ConfigBuilder;->-com_android_server_wifi_anqp_eap_NonEAPInnerAuth$NonEAPTypeSwitchesValues:[I

    #@3e
    return-object v0

    #@3f
    :catch_0
    move-exception v1

    #@40
    goto :goto_4

    #@41
    :catch_1
    move-exception v1

    #@42
    goto :goto_3

    #@43
    :catch_2
    move-exception v1

    #@44
    goto :goto_2

    #@45
    :catch_3
    move-exception v1

    #@46
    goto :goto_1

    #@47
    :catch_4
    move-exception v1

    #@48
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@7
    move-result-object v8

    #@8
    invoke-virtual {v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@b
    move-result-object v1

    #@c
    .line 335
    .local v1, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@e
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@11
    .line 337
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@14
    move-result-object v8

    #@15
    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@17
    .line 339
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    #@1a
    move-result-object v7

    #@1b
    .line 340
    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    #@1e
    move-result v8

    #@1f
    new-array v8, v8, [J

    #@21
    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@23
    .line 341
    const/4 v3, 0x0

    #@24
    .line 342
    .local v3, "i":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v6

    #@28
    .local v6, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v8

    #@2c
    if-eqz v8, :cond_0

    #@2e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v8

    #@32
    check-cast v8, Ljava/lang/Long;

    #@34
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@37
    move-result-wide v4

    #@38
    .line 343
    .local v4, "id":J
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@3a
    aput-wide v4, v8, v3

    #@3c
    .line 344
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 346
    .end local v4    # "id":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    iput-object v8, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@45
    .line 348
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@47
    const/4 v9, 0x2

    #@48
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    #@4b
    .line 349
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@4d
    const/4 v9, 0x3

    #@4e
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    #@51
    .line 351
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    #@53
    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    #@56
    .line 352
    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v1}, Lcom/android/server/wifi/configparse/ConfigBuilder;->remapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)I

    #@59
    move-result v8

    #@5a
    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    #@5d
    .line 353
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v2, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    #@68
    .line 354
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@6a
    .line 356
    return-object v0
.end method

.method private static buildConfig(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "caCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "key"    # Ljava/security/PrivateKey;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            "Landroid/content/Context;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    .local p2, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/MOManager;->buildSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@3
    move-result-object v4

    #@4
    .line 173
    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@7
    move-result-object v1

    #@8
    .line 177
    .local v1, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@f
    move-result-object v2

    #@10
    .line 178
    .local v2, "eapMethodID":Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    invoke-static {}, Lcom/android/server/wifi/configparse/ConfigBuilder;->-getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@17
    move-result v6

    #@18
    aget v5, v5, v6

    #@1a
    packed-switch v5, :pswitch_data_0

    #@1d
    .line 198
    new-instance v5, Ljava/io/IOException;

    #@1f
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "Unsupported EAP Method: "

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v6

    #@2f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@36
    throw v5

    #@37
    .line 180
    :pswitch_0
    if-nez p3, :cond_0

    #@39
    if-eqz p2, :cond_1

    #@3b
    .line 181
    :cond_0
    const-string/jumbo v5, "WCFG"

    #@3e
    const-string/jumbo v6, "Client cert and/or key included with EAP-TTLS profile"

    #@41
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 183
    :cond_1
    invoke-static {v4}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildTTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    #@47
    move-result-object v0

    #@48
    .line 201
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4a
    .line 203
    .local v3, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    #@4d
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v6, "anonymous@"

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    #@68
    .line 205
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    #@6f
    .line 206
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    #@76
    .line 208
    return-object v0

    #@77
    .line 186
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :pswitch_1
    invoke-static {v4, p2, p3}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/wifi/WifiConfiguration;

    #@7a
    move-result-object v0

    #@7b
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@7c
    .line 191
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    if-nez p3, :cond_2

    #@7e
    if-eqz p2, :cond_4

    #@80
    .line 192
    :cond_2
    :goto_1
    const-string/jumbo v5, "WCFG"

    #@83
    new-instance v6, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v7, "Client/CA cert and/or key included with "

    #@8b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    .line 193
    const-string/jumbo v7, " profile"

    #@96
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 195
    :cond_3
    invoke-static {v4, p4}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildSIMConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    #@a4
    move-result-object v0

    #@a5
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@a6
    .line 191
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    if-eqz p1, :cond_3

    #@a8
    goto :goto_1

    #@a9
    .line 178
    nop

    #@aa
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static buildConfig(Ljava/lang/String;[BLandroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 53
    const-string/jumbo v5, "WCFG"

    #@5
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "Content: "

    #@d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v6

    #@11
    if-eqz p1, :cond_0

    #@13
    array-length v4, p1

    #@14
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 55
    new-instance v4, Ljava/lang/String;

    #@21
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@23
    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@26
    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@29
    move-result-object v0

    #@2a
    .line 56
    .local v0, "b64":[B
    const-string/jumbo v4, "WCFG"

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Decoded: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    array-length v6, v0

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    const-string/jumbo v6, " bytes."

    #@41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 58
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v4, p2}, Lcom/android/server/wifi/configparse/ConfigBuilder;->dropFile(Landroid/net/Uri;Landroid/content/Context;)V

    #@53
    .line 60
    new-instance v2, Lcom/android/server/wifi/configparse/MIMEContainer;

    #@55
    .line 61
    new-instance v4, Ljava/io/LineNumberReader;

    #@57
    .line 62
    new-instance v5, Ljava/io/InputStreamReader;

    #@59
    new-instance v6, Ljava/io/ByteArrayInputStream;

    #@5b
    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5e
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@60
    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@63
    .line 61
    invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    #@66
    .line 60
    invoke-direct {v2, v4, v8}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    #@69
    .line 64
    .local v2, "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_1

    #@6f
    .line 65
    new-instance v4, Ljava/io/IOException;

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Encoding for "

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    .line 66
    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    .line 66
    const-string/jumbo v6, " is not base64"

    #@88
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v5

    #@8c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@93
    throw v4

    #@94
    .line 53
    .end local v0    # "b64":[B
    .end local v2    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_0
    const/4 v4, -0x1

    #@95
    goto/16 :goto_0

    #@97
    .line 69
    .restart local v0    # "b64":[B
    .restart local v2    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    const-string/jumbo v5, "application/x-wifi-config"

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v4

    #@a2
    if-eqz v4, :cond_2

    #@a4
    .line 70
    invoke-virtual {v2}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    #@a7
    move-result-object v4

    #@a8
    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@ab
    move-result-object v3

    #@ac
    .line 71
    .local v3, "wrappedContent":[B
    const-string/jumbo v4, "WCFG"

    #@af
    new-instance v5, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v6, "Building container from \'"

    #@b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    .line 72
    new-instance v6, Ljava/lang/String;

    #@bd
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@bf
    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@c2
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    .line 72
    const-string/jumbo v6, "\'"

    #@c9
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d4
    .line 73
    new-instance v1, Lcom/android/server/wifi/configparse/MIMEContainer;

    #@d6
    new-instance v4, Ljava/io/LineNumberReader;

    #@d8
    .line 74
    new-instance v5, Ljava/io/InputStreamReader;

    #@da
    new-instance v6, Ljava/io/ByteArrayInputStream;

    #@dc
    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@df
    .line 75
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@e1
    .line 74
    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@e4
    .line 73
    invoke-direct {v4, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    #@e7
    invoke-direct {v1, v4, v8}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    #@ea
    .line 80
    .end local v3    # "wrappedContent":[B
    .local v1, "inner":Lcom/android/server/wifi/configparse/MIMEContainer;
    :goto_1
    invoke-static {v1, p2}, Lcom/android/server/wifi/configparse/ConfigBuilder;->parse(Lcom/android/server/wifi/configparse/MIMEContainer;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    #@ed
    move-result-object v4

    #@ee
    return-object v4

    #@ef
    .line 78
    .end local v1    # "inner":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_2
    move-object v1, v2

    #@f0
    .restart local v1    # "inner":Lcom/android/server/wifi/configparse/MIMEContainer;
    goto :goto_1
.end method

.method private static buildSIMConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@3
    move-result-object v2

    #@4
    .line 306
    .local v2, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    #@7
    move-result-object v1

    #@8
    .line 327
    .local v1, "credImsi":Lcom/android/server/wifi/IMSIParameter;
    invoke-static {p0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    #@b
    move-result-object v0

    #@c
    .line 328
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@e
    invoke-virtual {v1}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    #@15
    .line 329
    return-object v0
.end method

.method private static buildTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/wifi/WifiConfiguration;
    .locals 13
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .param p2, "clientKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PrivateKey;",
            ")",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    .local p1, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@3
    move-result-object v5

    #@4
    .line 268
    .local v5, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    const/4 v3, 0x0

    #@5
    .line 270
    .local v3, "clientCertificate":Ljava/security/cert/X509Certificate;
    if-eqz p2, :cond_0

    #@7
    if-nez p1, :cond_1

    #@9
    .line 271
    :cond_0
    new-instance v10, Ljava/io/IOException;

    #@b
    const-string/jumbo v11, "No key and/or cert passed for EAP-TLS"

    #@e
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v10

    #@12
    .line 273
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@15
    move-result-object v10

    #@16
    sget-object v11, Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;->x509v3:Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@18
    if-eq v10, v11, :cond_2

    #@1a
    .line 274
    new-instance v10, Ljava/io/IOException;

    #@1c
    new-instance v11, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v12, "Invalid certificate type for TLS: "

    #@24
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v11

    #@28
    .line 275
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getCertType()Lcom/android/server/wifi/hotspot2/pps/Credential$CertType;

    #@2b
    move-result-object v12

    #@2c
    .line 274
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v11

    #@30
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v11

    #@34
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v10

    #@38
    .line 278
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getFingerPrint()[B

    #@3b
    move-result-object v9

    #@3c
    .line 279
    .local v9, "reference":[B
    const-string/jumbo v10, "SHA-256"

    #@3f
    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@42
    move-result-object v6

    #@43
    .line 280
    .local v6, "digester":Ljava/security/MessageDigest;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v2

    #@47
    .local v2, "certificate$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v10

    #@4b
    if-eqz v10, :cond_4

    #@4d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@53
    .line 281
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    #@56
    .line 282
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    #@59
    move-result-object v10

    #@5a
    invoke-virtual {v6, v10}, Ljava/security/MessageDigest;->digest([B)[B

    #@5d
    move-result-object v8

    #@5e
    .line 283
    .local v8, "fingerprint":[B
    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    #@61
    move-result v10

    #@62
    if-eqz v10, :cond_3

    #@64
    .line 284
    move-object v3, v1

    #@65
    .line 288
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v3    # "clientCertificate":Ljava/security/cert/X509Certificate;
    .end local v8    # "fingerprint":[B
    :cond_4
    if-nez v3, :cond_5

    #@67
    .line 289
    new-instance v10, Ljava/io/IOException;

    #@69
    const-string/jumbo v11, "No certificate in chain matches supplied fingerprint"

    #@6c
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v10

    #@70
    .line 292
    :cond_5
    const/4 v10, 0x0

    #@71
    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    .line 294
    .local v0, "alias":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    #@78
    move-result-object v4

    #@79
    .line 295
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@7b
    .line 296
    .local v7, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    #@7e
    .line 297
    invoke-virtual {v7, p2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    #@81
    .line 299
    return-object v4
.end method

.method private static buildTTLSConfig(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p0, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@3
    move-result-object v2

    #@4
    .line 239
    .local v2, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    #@7
    move-result-object v6

    #@8
    if-eqz v6, :cond_0

    #@a
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    if-nez v6, :cond_1

    #@10
    .line 240
    :cond_0
    new-instance v6, Ljava/io/IOException;

    #@12
    const-string/jumbo v7, "EAP-TTLS provisioned without user name or password"

    #@15
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v6

    #@19
    .line 243
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@1c
    move-result-object v3

    #@1d
    .line 245
    .local v3, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@20
    move-result-object v0

    #@21
    .line 246
    .local v0, "authParam":Lcom/android/server/wifi/anqp/eap/AuthParam;
    if-eqz v0, :cond_2

    #@23
    .line 247
    invoke-interface {v0}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@26
    move-result-object v6

    #@27
    sget-object v7, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@29
    if-eq v6, v7, :cond_3

    #@2b
    .line 248
    :cond_2
    new-instance v6, Ljava/io/IOException;

    #@2d
    new-instance v7, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v8, "Bad auth parameter for EAP-TTLS: "

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v6

    #@45
    .line 251
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildBaseConfiguration(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    #@48
    move-result-object v1

    #@49
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    move-object v5, v0

    #@4a
    .line 252
    check-cast v5, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@4c
    .line 253
    .local v5, "ttlsParam":Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@4e
    .line 254
    .local v4, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v5}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;->getType()Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;

    #@51
    move-result-object v6

    #@52
    invoke-static {v6}, Lcom/android/server/wifi/configparse/ConfigBuilder;->remapInnerMethod(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)I

    #@55
    move-result v6

    #@56
    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    #@59
    .line 255
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    #@60
    .line 256
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    #@67
    .line 258
    return-object v1
.end method

.method private static dropFile(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@8
    .line 83
    return-void
.end method

.method private static parse(Lcom/android/server/wifi/configparse/MIMEContainer;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 20
    .param p0, "root"    # Lcom/android/server/wifi/configparse/MIMEContainer;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/configparse/MIMEContainer;->getMimeContainers()Ljava/util/List;

    #@3
    move-result-object v15

    #@4
    if-nez v15, :cond_0

    #@6
    .line 91
    new-instance v15, Ljava/io/IOException;

    #@8
    const-string/jumbo v16, "Malformed MIME content: not multipart"

    #@b
    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v15

    #@f
    .line 94
    :cond_0
    const/4 v11, 0x0

    #@10
    .line 95
    .local v11, "moText":Ljava/lang/String;
    const/4 v3, 0x0

    #@11
    .line 96
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    const/4 v7, 0x0

    #@12
    .line 97
    .local v7, "clientKey":Ljava/security/PrivateKey;
    const/4 v6, 0x0

    #@13
    .line 99
    .local v6, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/configparse/MIMEContainer;->getMimeContainers()Ljava/util/List;

    #@16
    move-result-object v15

    #@17
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v14

    #@1b
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "clientKey":Ljava/security/PrivateKey;
    .end local v11    # "moText":Ljava/lang/String;
    .local v14, "subContainer$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v15

    #@1f
    if-eqz v15, :cond_b

    #@21
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v13

    #@25
    check-cast v13, Lcom/android/server/wifi/configparse/MIMEContainer;

    #@27
    .line 100
    .local v13, "subContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    const-string/jumbo v15, "WCFG"

    #@2a
    new-instance v16, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v17, " + Content Type: "

    #@32
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v16

    #@36
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    #@39
    move-result-object v17

    #@3a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v16

    #@3e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v16

    #@42
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 101
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->getContentType()Ljava/lang/String;

    #@48
    move-result-object v15

    #@49
    const-string/jumbo v16, "application/x-passpoint-profile"

    #@4c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v16

    #@50
    if-eqz v16, :cond_2

    #@52
    .line 103
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    #@55
    move-result v15

    #@56
    if-eqz v15, :cond_4

    #@58
    .line 104
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    #@5b
    move-result-object v15

    #@5c
    const/16 v16, 0x0

    #@5e
    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@61
    move-result-object v12

    #@62
    .line 105
    .local v12, "octets":[B
    new-instance v11, Ljava/lang/String;

    #@64
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@66
    invoke-direct {v11, v12, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@69
    .line 109
    .end local v12    # "octets":[B
    .local v11, "moText":Ljava/lang/String;
    :goto_1
    const-string/jumbo v15, "WCFG"

    #@6c
    new-instance v16, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v17, "OMA: "

    #@74
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v16

    #@78
    move-object/from16 v0, v16

    #@7a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v16

    #@7e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v16

    #@82
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    goto :goto_0

    #@86
    .line 101
    .end local v11    # "moText":Ljava/lang/String;
    :cond_2
    const-string/jumbo v16, "application/x-x509-ca-cert"

    #@89
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v16

    #@8d
    if-eqz v16, :cond_3

    #@8f
    .line 112
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    #@92
    move-result v15

    #@93
    if-nez v15, :cond_5

    #@95
    .line 113
    new-instance v15, Ljava/io/IOException;

    #@97
    const-string/jumbo v16, "Can\'t read non base64 encoded cert"

    #@9a
    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v15

    #@9e
    .line 101
    :cond_3
    const-string/jumbo v16, "application/x-pkcs12"

    #@a1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v15

    #@a5
    if-eqz v15, :cond_1

    #@a7
    .line 125
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->isBase64()Z

    #@aa
    move-result v15

    #@ab
    if-nez v15, :cond_6

    #@ad
    .line 126
    new-instance v15, Ljava/io/IOException;

    #@af
    const-string/jumbo v16, "Can\'t read non base64 encoded key"

    #@b2
    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v15

    #@b6
    .line 107
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    #@b9
    move-result-object v11

    #@ba
    .restart local v11    # "moText":Ljava/lang/String;
    goto :goto_1

    #@bb
    .line 116
    .end local v11    # "moText":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    #@be
    move-result-object v15

    #@bf
    const/16 v16, 0x0

    #@c1
    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@c4
    move-result-object v12

    #@c5
    .line 117
    .restart local v12    # "octets":[B
    const-string/jumbo v15, "X.509"

    #@c8
    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@cb
    move-result-object v8

    #@cc
    .line 119
    .local v8, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v15, Ljava/io/ByteArrayInputStream;

    #@ce
    invoke-direct {v15, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@d1
    .line 118
    invoke-virtual {v8, v15}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@d4
    move-result-object v3

    #@d5
    check-cast v3, Ljava/security/cert/X509Certificate;

    #@d7
    .line 120
    .local v3, "caCert":Ljava/security/cert/X509Certificate;
    const-string/jumbo v15, "WCFG"

    #@da
    new-instance v16, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    const-string/jumbo v17, "Cert subject "

    #@e2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v16

    #@e6
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@e9
    move-result-object v17

    #@ea
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v16

    #@ee
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v16

    #@f2
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    .line 121
    const-string/jumbo v15, "WCFG"

    #@f8
    new-instance v16, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    const-string/jumbo v17, "Full Cert: "

    #@100
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v16

    #@104
    move-object/from16 v0, v16

    #@106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v16

    #@10a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v16

    #@10e
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@111
    goto/16 :goto_0

    #@113
    .line 129
    .end local v3    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v12    # "octets":[B
    :cond_6
    invoke-virtual {v13}, Lcom/android/server/wifi/configparse/MIMEContainer;->getText()Ljava/lang/String;

    #@116
    move-result-object v15

    #@117
    const/16 v16, 0x0

    #@119
    invoke-static/range {v15 .. v16}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@11c
    move-result-object v12

    #@11d
    .line 131
    .restart local v12    # "octets":[B
    const-string/jumbo v15, "PKCS12"

    #@120
    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@123
    move-result-object v10

    #@124
    .line 132
    .local v10, "ks":Ljava/security/KeyStore;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    #@126
    invoke-direct {v9, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@129
    .line 133
    .local v9, "in":Ljava/io/ByteArrayInputStream;
    const/4 v15, 0x0

    #@12a
    new-array v15, v15, [C

    #@12c
    invoke-virtual {v10, v9, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@12f
    .line 134
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    #@132
    .line 135
    const-string/jumbo v15, "WCFG"

    #@135
    new-instance v16, Ljava/lang/StringBuilder;

    #@137
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v17, "---- Start PKCS12 info "

    #@13d
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v16

    #@141
    array-length v0, v12

    #@142
    move/from16 v17, v0

    #@144
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@147
    move-result-object v16

    #@148
    const-string/jumbo v17, ", size "

    #@14b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v16

    #@14f
    invoke-virtual {v10}, Ljava/security/KeyStore;->size()I

    #@152
    move-result v17

    #@153
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@156
    move-result-object v16

    #@157
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v16

    #@15b
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15e
    .line 136
    invoke-virtual {v10}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    #@161
    move-result-object v2

    #@162
    .line 137
    .local v2, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@165
    move-result v15

    #@166
    if-eqz v15, :cond_a

    #@168
    .line 138
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@16b
    move-result-object v1

    #@16c
    check-cast v1, Ljava/lang/String;

    #@16e
    .line 139
    .local v1, "alias":Ljava/lang/String;
    const/4 v15, 0x0

    #@16f
    invoke-virtual {v10, v1, v15}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    #@172
    move-result-object v7

    #@173
    check-cast v7, Ljava/security/PrivateKey;

    #@175
    .line 140
    .local v7, "clientKey":Ljava/security/PrivateKey;
    const-string/jumbo v15, "WCFG"

    #@178
    new-instance v16, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    const-string/jumbo v17, "Key: "

    #@180
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v16

    #@184
    invoke-interface {v7}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    #@187
    move-result-object v17

    #@188
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v16

    #@18c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v16

    #@190
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@193
    .line 141
    invoke-virtual {v10, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    #@196
    move-result-object v5

    #@197
    .line 142
    .local v5, "chain":[Ljava/security/cert/Certificate;
    if-eqz v5, :cond_7

    #@199
    .line 143
    new-instance v6, Ljava/util/ArrayList;

    #@19b
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@19e
    .line 144
    .local v6, "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v15, 0x0

    #@19f
    array-length v0, v5

    #@1a0
    move/from16 v16, v0

    #@1a2
    :goto_3
    move/from16 v0, v16

    #@1a4
    if-ge v15, v0, :cond_9

    #@1a6
    aget-object v4, v5, v15

    #@1a8
    .line 145
    .local v4, "certificate":Ljava/security/cert/Certificate;
    instance-of v0, v4, Ljava/security/cert/X509Certificate;

    #@1aa
    move/from16 v17, v0

    #@1ac
    if-nez v17, :cond_8

    #@1ae
    .line 146
    const-string/jumbo v17, "WCFG"

    #@1b1
    new-instance v18, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    const-string/jumbo v19, "Element in cert chain is not an X509Certificate: "

    #@1b9
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v18

    #@1bd
    .line 147
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getClass()Ljava/lang/Class;

    #@1c0
    move-result-object v19

    #@1c1
    .line 146
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v18

    #@1c5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v18

    #@1c9
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1cc
    .line 149
    :cond_8
    check-cast v4, Ljava/security/cert/X509Certificate;

    #@1ce
    .end local v4    # "certificate":Ljava/security/cert/Certificate;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d1
    .line 144
    add-int/lit8 v15, v15, 0x1

    #@1d3
    goto :goto_3

    #@1d4
    .line 151
    :cond_9
    const-string/jumbo v15, "WCFG"

    #@1d7
    new-instance v16, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    const-string/jumbo v17, "Chain: "

    #@1df
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v16

    #@1e3
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@1e6
    move-result v17

    #@1e7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v16

    #@1eb
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v16

    #@1ef
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f2
    goto/16 :goto_2

    #@1f4
    .line 154
    .end local v1    # "alias":Ljava/lang/String;
    .end local v5    # "chain":[Ljava/security/cert/Certificate;
    .end local v6    # "clientChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "clientKey":Ljava/security/PrivateKey;
    :cond_a
    const-string/jumbo v15, "WCFG"

    #@1f7
    const-string/jumbo v16, "---- End PKCS12 info."

    #@1fa
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 160
    .end local v2    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "in":Ljava/io/ByteArrayInputStream;
    .end local v10    # "ks":Ljava/security/KeyStore;
    .end local v12    # "octets":[B
    .end local v13    # "subContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    :cond_b
    if-nez v11, :cond_c

    #@201
    .line 161
    new-instance v15, Ljava/io/IOException;

    #@203
    const-string/jumbo v16, "Missing profile"

    #@206
    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@209
    throw v15

    #@20a
    .line 164
    :cond_c
    move-object/from16 v0, p1

    #@20c
    invoke-static {v11, v3, v6, v7, v0}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildConfig(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    #@20f
    move-result-object v15

    #@210
    return-object v15
.end method

.method private static remapEAPMethod(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)I
    .locals 3
    .param p0, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 360
    invoke-static {}, Lcom/android/server/wifi/configparse/ConfigBuilder;->-getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 372
    new-instance v0, Ljava/io/IOException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Bad EAP method: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 362
    :pswitch_0
    const/4 v0, 0x2

    #@28
    return v0

    #@29
    .line 364
    :pswitch_1
    const/4 v0, 0x1

    #@2a
    return v0

    #@2b
    .line 366
    :pswitch_2
    const/4 v0, 0x4

    #@2c
    return v0

    #@2d
    .line 368
    :pswitch_3
    const/4 v0, 0x5

    #@2e
    return v0

    #@2f
    .line 370
    :pswitch_4
    const/4 v0, 0x6

    #@30
    return v0

    #@31
    .line 360
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static remapInnerMethod(Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;)I
    .locals 3
    .param p0, "type"    # Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-static {}, Lcom/android/server/wifi/configparse/ConfigBuilder;->-getcom_android_server_wifi_anqp_eap_NonEAPInnerAuth$NonEAPTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth$NonEAPType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 386
    new-instance v0, Ljava/io/IOException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Inner method "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " not supported"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 379
    :pswitch_0
    const/4 v0, 0x1

    #@2f
    return v0

    #@30
    .line 381
    :pswitch_1
    const/4 v0, 0x2

    #@31
    return v0

    #@32
    .line 383
    :pswitch_2
    const/4 v0, 0x3

    #@33
    return v0

    #@34
    .line 377
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
