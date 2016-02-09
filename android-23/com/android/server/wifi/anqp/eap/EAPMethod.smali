.class public Lcom/android/server/wifi/anqp/eap/EAPMethod;
.super Ljava/lang/Object;
.source "EAPMethod.java"


# static fields
.field private static synthetic -com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

.field private static synthetic -com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I


# instance fields
.field private final mAuthParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;


# direct methods
.method private static synthetic -getcom_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->values()[Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->CredentialType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@10
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@22
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@34
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@3d
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@46
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/16 v2, 0xd

    #@4c
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4e
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@50
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@53
    move-result v1

    #@54
    const/4 v2, 0x7

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method private static synthetic -getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

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
    const/16 v2, 0xd

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
    const/16 v2, 0xe

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
    const/16 v2, 0xf

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
    const/16 v2, 0x10

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
    const/16 v2, 0x11

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
    const/16 v2, 0x12

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
    const/16 v2, 0x13

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
    const/16 v2, 0x14

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
    const/16 v2, 0x15

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
    const/16 v2, 0x16

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
    const/16 v2, 0x17

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
    const/16 v2, 0x18

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
    const/16 v2, 0x19

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
    const/16 v2, 0x1a

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
    const/16 v2, 0x1b

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
    const/16 v2, 0x1c

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
    const/16 v2, 0x1d

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
    const/16 v2, 0x1e

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
    const/16 v2, 0x1f

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
    const/16 v2, 0x20

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
    const/16 v2, 0x21

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
    const/16 v2, 0x22

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
    const/16 v2, 0x23

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
    const/16 v2, 0x24

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
    const/16 v2, 0x25

    #@133
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    #@135
    :goto_1d
    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

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

.method public constructor <init>(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;Lcom/android/server/wifi/anqp/eap/AuthParam;)V
    .locals 3
    .param p1, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .param p2, "authParam"    # Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    iput-object p1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@5
    .line 88
    new-instance v1, Ljava/util/HashMap;

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    #@b
    iput-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@d
    .line 89
    if-eqz p2, :cond_0

    #@f
    .line 90
    new-instance v0, Ljava/util/HashSet;

    #@11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@14
    .line 91
    .local v0, "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 92
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@19
    invoke-interface {p2}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 86
    .end local v0    # "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v8

    #@7
    const/4 v9, 0x3

    #@8
    if-ge v8, v9, :cond_0

    #@a
    .line 27
    new-instance v8, Ljava/net/ProtocolException;

    #@c
    new-instance v9, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v10, "Runt EAP Method: "

    #@14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v10

    #@1c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@27
    throw v8

    #@28
    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@2b
    move-result v8

    #@2c
    and-int/lit16 v4, v8, 0xff

    #@2e
    .line 31
    .local v4, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@31
    move-result v8

    #@32
    and-int/lit16 v5, v8, 0xff

    #@34
    .line 32
    .local v5, "methodID":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    #@37
    move-result v8

    #@38
    and-int/lit16 v1, v8, 0xff

    #@3a
    .line 34
    .local v1, "count":I
    invoke-static {v5}, Lcom/android/server/wifi/anqp/eap/EAP;->mapEAPMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@3d
    move-result-object v8

    #@3e
    iput-object v8, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@40
    .line 35
    new-instance v8, Ljava/util/EnumMap;

    #@42
    const-class v9, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@44
    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@47
    iput-object v8, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@49
    .line 37
    const/4 v7, 0x0

    #@4a
    .line 39
    .local v7, "realCount":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@4d
    move-result-object v8

    #@4e
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@50
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@53
    move-result-object v6

    #@54
    .line 40
    .local v6, "paramPayload":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@57
    move-result v8

    #@58
    add-int/2addr v8, v4

    #@59
    add-int/lit8 v8, v8, -0x2

    #@5b
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@5e
    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@61
    move-result v8

    #@62
    add-int/2addr v8, v4

    #@63
    add-int/lit8 v8, v8, -0x2

    #@65
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@68
    .line 42
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@6b
    move-result v8

    #@6c
    if-eqz v8, :cond_4

    #@6e
    .line 43
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    #@71
    move-result v8

    #@72
    and-int/lit16 v2, v8, 0xff

    #@74
    .line 45
    .local v2, "id":I
    invoke-static {v2}, Lcom/android/server/wifi/anqp/eap/EAP;->mapAuthMethod(I)Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@77
    move-result-object v0

    #@78
    .line 46
    .local v0, "authInfoID":Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    if-nez v0, :cond_1

    #@7a
    .line 47
    new-instance v8, Ljava/net/ProtocolException;

    #@7c
    new-instance v9, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string/jumbo v10, "Unknown auth parameter ID: "

    #@84
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v9

    #@90
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@93
    throw v8

    #@94
    .line 50
    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    #@97
    move-result v8

    #@98
    and-int/lit16 v3, v8, 0xff

    #@9a
    .line 51
    .local v3, "len":I
    if-eqz v3, :cond_2

    #@9c
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    #@9f
    move-result v8

    #@a0
    if-le v3, v8, :cond_3

    #@a2
    .line 52
    :cond_2
    new-instance v8, Ljava/net/ProtocolException;

    #@a4
    new-instance v9, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v10, "Bad auth method length: "

    #@ac
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v9

    #@b0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v9

    #@b8
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v8

    #@bc
    .line 55
    :cond_3
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-getcom_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues()[I

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@c3
    move-result v9

    #@c4
    aget v8, v8, v9

    #@c6
    packed-switch v8, :pswitch_data_0

    #@c9
    .line 79
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@cb
    goto :goto_0

    #@cc
    .line 57
    :pswitch_0
    new-instance v8, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@ce
    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    #@d1
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@d4
    goto :goto_1

    #@d5
    .line 60
    :pswitch_1
    new-instance v8, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;

    #@d7
    invoke-direct {v8, v3, v6}, Lcom/android/server/wifi/anqp/eap/NonEAPInnerAuth;-><init>(ILjava/nio/ByteBuffer;)V

    #@da
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@dd
    goto :goto_1

    #@de
    .line 63
    :pswitch_2
    new-instance v8, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;

    #@e0
    invoke-direct {v8, v3, v6}, Lcom/android/server/wifi/anqp/eap/InnerAuthEAP;-><init>(ILjava/nio/ByteBuffer;)V

    #@e3
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@e6
    goto :goto_1

    #@e7
    .line 66
    :pswitch_3
    new-instance v8, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;

    #@e9
    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/ExpandedEAPMethod;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    #@ec
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@ef
    goto :goto_1

    #@f0
    .line 69
    :pswitch_4
    new-instance v8, Lcom/android/server/wifi/anqp/eap/Credential;

    #@f2
    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/Credential;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    #@f5
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@f8
    goto :goto_1

    #@f9
    .line 72
    :pswitch_5
    new-instance v8, Lcom/android/server/wifi/anqp/eap/Credential;

    #@fb
    invoke-direct {v8, v0, v3, v6}, Lcom/android/server/wifi/anqp/eap/Credential;-><init>(Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;ILjava/nio/ByteBuffer;)V

    #@fe
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@101
    goto :goto_1

    #@102
    .line 75
    :pswitch_6
    new-instance v8, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;

    #@104
    invoke-direct {v8, v3, v6}, Lcom/android/server/wifi/anqp/eap/VendorSpecificAuth;-><init>(ILjava/nio/ByteBuffer;)V

    #@107
    invoke-direct {p0, v8}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V

    #@10a
    goto :goto_1

    #@10b
    .line 81
    .end local v0    # "authInfoID":Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;
    .end local v2    # "id":I
    .end local v3    # "len":I
    :cond_4
    if-eq v7, v1, :cond_5

    #@10d
    .line 82
    new-instance v8, Ljava/net/ProtocolException;

    #@10f
    new-instance v9, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v10, "Invalid parameter count: "

    #@117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v9

    #@11b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v9

    #@11f
    .line 83
    const-string/jumbo v10, ", expected "

    #@122
    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v9

    #@126
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@129
    move-result-object v9

    #@12a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v9

    #@12e
    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@131
    throw v8

    #@132
    .line 25
    :cond_5
    return-void

    #@133
    .line 55
    nop

    #@134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private addAuthParam(Lcom/android/server/wifi/anqp/eap/AuthParam;)V
    .locals 3
    .param p1, "param"    # Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@2
    invoke-interface {p1}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Set;

    #@c
    .line 98
    .local v0, "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    if-nez v0, :cond_0

    #@e
    .line 99
    new-instance v0, Ljava/util/HashSet;

    #@10
    .end local v0    # "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    .line 100
    .restart local v0    # "authParams":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@15
    invoke-interface {p1}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 102
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 163
    if-ne p0, p1, :cond_0

    #@3
    .line 164
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 166
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 167
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 170
    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@15
    .line 171
    .local v0, "that":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    iget-object v2, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@17
    iget-object v3, v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@19
    if-ne v2, v3, :cond_3

    #@1b
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@1d
    iget-object v2, v0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@1f
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    :cond_3
    return v1
.end method

.method public getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 151
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 152
    return-object v2

    #@a
    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@c
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Set;

    #@1a
    .line 155
    .local v0, "params":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 156
    return-object v2

    #@21
    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@2b
    return-object v1
.end method

.method public getAuthParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/eap/AuthParam;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 177
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget-object v2, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@a
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    #@d
    move-result v2

    #@e
    add-int v0, v1, v2

    #@10
    .line 178
    return v0
.end method

.method public match(Lcom/android/server/wifi/hotspot2/pps/Credential;)I
    .locals 10
    .param p1, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v7, 0x2

    #@3
    .line 115
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@6
    move-result-object v0

    #@7
    .line 116
    .local v0, "credMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@9
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@c
    move-result-object v8

    #@d
    if-eq v5, v8, :cond_0

    #@f
    .line 117
    return v6

    #@10
    .line 120
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->-getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I

    #@13
    move-result-object v5

    #@14
    iget-object v8, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@16
    invoke-virtual {v8}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->ordinal()I

    #@19
    move-result v8

    #@1a
    aget v5, v5, v8

    #@1c
    packed-switch v5, :pswitch_data_0

    #@1f
    .line 146
    return v7

    #@20
    .line 122
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@22
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_1

    #@28
    .line 123
    return v7

    #@29
    .line 125
    :cond_1
    const/4 v3, 0x0

    #@2a
    .line 127
    .local v3, "paramCount":I
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParams()Ljava/util/Map;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@31
    move-result-object v5

    #@32
    .line 126
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v2

    #@36
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_4

    #@3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Ljava/util/Map$Entry;

    #@42
    .line 128
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;>;"
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@47
    move-result-object v8

    #@48
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v4

    #@4c
    check-cast v4, Ljava/util/Set;

    #@4e
    .line 129
    .local v4, "params":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    if-eqz v4, :cond_2

    #@50
    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    check-cast v5, Ljava/util/Collection;

    #@56
    invoke-static {v4, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@59
    move-result v5

    #@5a
    if-nez v5, :cond_3

    #@5c
    .line 134
    return v9

    #@5d
    .line 136
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@60
    move-result v5

    #@61
    add-int/2addr v3, v5

    #@62
    goto :goto_0

    #@63
    .line 138
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;>;"
    .end local v4    # "params":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    :cond_4
    if-lez v3, :cond_5

    #@65
    move v5, v6

    #@66
    :goto_1
    return v5

    #@67
    :cond_5
    move v5, v7

    #@68
    goto :goto_1

    #@69
    .line 140
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "paramCount":I
    :pswitch_1
    return v9

    #@6a
    .line 144
    :pswitch_2
    return v7

    #@6b
    .line 120
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 184
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "EAP Method "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    iget-object v6, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mEAPMethodID:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v5

    #@12
    const/16 v6, 0xa

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 185
    iget-object v5, p0, Lcom/android/server/wifi/anqp/eap/EAPMethod;->mAuthParams:Ljava/util/Map;

    #@19
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@1c
    move-result-object v5

    #@1d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v3

    #@21
    .local v3, "paramSet$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/util/Set;

    #@2d
    .line 186
    .local v2, "paramSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v1

    #@31
    .local v1, "param$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_0

    #@37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@3d
    .line 187
    .local v0, "param":Lcom/android/server/wifi/anqp/eap/AuthParam;
    const-string/jumbo v5, "      "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_0

    #@4c
    .line 190
    .end local v0    # "param":Lcom/android/server/wifi/anqp/eap/AuthParam;
    .end local v1    # "param$iterator":Ljava/util/Iterator;
    .end local v2    # "paramSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/eap/AuthParam;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    return-object v5
.end method
