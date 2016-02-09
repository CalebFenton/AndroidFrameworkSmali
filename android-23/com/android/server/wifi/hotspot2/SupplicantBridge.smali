.class public Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

.field private static synthetic -com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

.field private static final TestStrings:[Ljava/lang/String;

.field private static final sMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWpsNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupplicantHook:Lcom/android/server/wifi/WifiNative;


# direct methods
.method private static synthetic -getcom_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

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
    const/16 v2, 0x8

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@1a
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/16 v2, 0x9

    #@20
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@22
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ExpandedInnerEAPMethod:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@24
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@27
    move-result v1

    #@28
    const/16 v2, 0xa

    #@2a
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@2c
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->InnerAuthEAPMethodType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@2e
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x1

    #@33
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@35
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->NonEAPInnerAuthType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@37
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/4 v2, 0x2

    #@3c
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3e
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->TunneledEAPMethodCredType:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@40
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@43
    move-result v1

    #@44
    const/16 v2, 0xb

    #@46
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@48
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->Undefined:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@4a
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@4d
    move-result v1

    #@4e
    const/16 v2, 0xc

    #@50
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@52
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@54
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@57
    move-result v1

    #@58
    const/16 v2, 0xd

    #@5a
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@5c
    :goto_7
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues:[I

    #@5e
    return-object v0

    #@5f
    :catch_0
    move-exception v1

    #@60
    goto :goto_7

    #@61
    :catch_1
    move-exception v1

    #@62
    goto :goto_6

    #@63
    :catch_2
    move-exception v1

    #@64
    goto :goto_5

    #@65
    :catch_3
    move-exception v1

    #@66
    goto :goto_4

    #@67
    :catch_4
    move-exception v1

    #@68
    goto :goto_3

    #@69
    :catch_5
    move-exception v1

    #@6a
    goto :goto_2

    #@6b
    :catch_6
    move-exception v1

    #@6c
    goto :goto_1

    #@6d
    :catch_7
    move-exception v1

    #@6e
    goto :goto_0
.end method

.method private static synthetic -getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

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
    const/16 v2, 0x8

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
    const/16 v2, 0x9

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
    const/16 v2, 0xa

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
    const/16 v2, 0xb

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
    const/16 v2, 0xc

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
    const/16 v2, 0xd

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
    const/16 v2, 0xe

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
    const/16 v2, 0xf

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
    const/16 v2, 0x10

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
    const/16 v2, 0x11

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
    const/16 v2, 0x12

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
    const/16 v2, 0x13

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
    const/16 v2, 0x14

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
    const/16 v2, 0x15

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
    const/16 v2, 0x16

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
    const/16 v2, 0x17

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
    const/16 v2, 0x18

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
    const/16 v2, 0x19

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
    const/16 v2, 0x1a

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
    const/16 v2, 0x1b

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
    const/16 v2, 0x1c

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
    const/16 v2, 0x1d

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
    const/16 v2, 0x1e

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
    const/16 v2, 0x1f

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
    const/16 v2, 0x20

    #@133
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    #@135
    :goto_1d
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x5c

    #@2
    const/16 v5, 0x22

    #@4
    const/16 v4, 0xa

    #@6
    const/16 v3, 0x9

    #@8
    .line 36
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@f
    .line 39
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@11
    const-string/jumbo v1, "anqp_venue_name"

    #@14
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 40
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@1b
    const-string/jumbo v1, "anqp_network_auth_type"

    #@1e
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    .line 41
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@25
    const-string/jumbo v1, "anqp_roaming_consortium"

    #@28
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 42
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@2f
    const-string/jumbo v1, "anqp_ip_addr_type_availability"

    #@32
    .line 43
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@34
    .line 42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 44
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@39
    const-string/jumbo v1, "anqp_nai_realm"

    #@3c
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@3e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 45
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@43
    const-string/jumbo v1, "anqp_3gpp"

    #@46
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 46
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@4d
    const-string/jumbo v1, "anqp_domain_name"

    #@50
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 47
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@57
    const-string/jumbo v1, "hs20_operator_friendly_name"

    #@5a
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@5c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 48
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@61
    const-string/jumbo v1, "hs20_wan_metrics"

    #@64
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 49
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@6b
    const-string/jumbo v1, "hs20_connection_capability"

    #@6e
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    .line 50
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@75
    const-string/jumbo v1, "hs20_operating_class"

    #@78
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@7a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 51
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@7f
    const-string/jumbo v1, "hs20_osu_providers_list"

    #@82
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 342
    new-instance v0, Ljava/util/HashMap;

    #@89
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8c
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@8e
    .line 345
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@90
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@93
    move-result-object v1

    #@94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@97
    move-result-object v2

    #@98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 346
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@9d
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@a0
    move-result-object v1

    #@a1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a4
    move-result-object v2

    #@a5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a8
    .line 347
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@aa
    const/16 v1, 0x65

    #@ac
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@af
    move-result-object v1

    #@b0
    const/16 v2, 0x1b

    #@b2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b5
    move-result-object v2

    #@b6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b9
    .line 348
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@bb
    const/16 v1, 0x6e

    #@bd
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@c0
    move-result-object v1

    #@c1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c4
    move-result-object v2

    #@c5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    .line 349
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@ca
    const/16 v1, 0x72

    #@cc
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@cf
    move-result-object v1

    #@d0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d3
    move-result-object v2

    #@d4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 350
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@d9
    const/16 v1, 0x74

    #@db
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@de
    move-result-object v1

    #@df
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e2
    move-result-object v2

    #@e3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e6
    .line 440
    new-array v0, v3, [Ljava/lang/String;

    #@e8
    .line 441
    const-string/jumbo v1, "test-ssid"

    #@eb
    const/4 v2, 0x0

    #@ec
    aput-object v1, v0, v2

    #@ee
    .line 442
    const-string/jumbo v1, "test\\nss\\tid"

    #@f1
    const/4 v2, 0x1

    #@f2
    aput-object v1, v0, v2

    #@f4
    .line 443
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid"

    #@f7
    const/4 v2, 0x2

    #@f8
    aput-object v1, v0, v2

    #@fa
    .line 444
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\\\"

    #@fd
    const/4 v2, 0x3

    #@fe
    aput-object v1, v0, v2

    #@100
    .line 445
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\n"

    #@103
    const/4 v2, 0x4

    #@104
    aput-object v1, v0, v2

    #@106
    .line 446
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\x4a"

    #@109
    const/4 v2, 0x5

    #@10a
    aput-object v1, v0, v2

    #@10c
    .line 447
    const-string/jumbo v1, "another\\"

    #@10f
    const/4 v2, 0x6

    #@110
    aput-object v1, v0, v2

    #@112
    .line 448
    const-string/jumbo v1, "an\\other"

    #@115
    const/4 v2, 0x7

    #@116
    aput-object v1, v0, v2

    #@118
    .line 449
    const-string/jumbo v1, "another\\x2"

    #@11b
    const/16 v2, 0x8

    #@11d
    aput-object v1, v0, v2

    #@11f
    .line 440
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    #@121
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 1
    .param p1, "supplicantHook"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "configStore"    # Lcom/android/server/wifi/WifiConfigStore;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@a
    .line 60
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@c
    .line 61
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@e
    .line 59
    return-void
.end method

.method private static buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 300
    const/16 v5, 0x3d

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v4

    #@8
    .line 301
    .local v4, "separator":I
    if-gez v4, :cond_0

    #@a
    .line 302
    return-object v7

    #@b
    .line 305
    :cond_0
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 306
    .local v0, "elementName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@11
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@17
    .line 307
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_1

    #@19
    .line 308
    return-object v7

    #@1a
    .line 313
    :cond_1
    add-int/lit8 v5, v4, 0x1

    #@1c
    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hexToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v3

    #@24
    .line 319
    .local v3, "payload":[B
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@27
    move-result-object v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 320
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@2d
    move-result-object v5

    #@2e
    array-length v6, v3

    #@2f
    invoke-static {v5, v1, v6}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    #@32
    move-result-object v5

    #@33
    .line 319
    :goto_0
    return-object v5

    #@34
    .line 315
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    #@35
    .line 316
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-class v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@37
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, "Failed to parse hex string"

    #@3e
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 317
    return-object v7

    #@42
    .line 322
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v3    # "payload":[B
    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@45
    move-result-object v5

    #@46
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@48
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@4b
    move-result-object v5

    #@4c
    .line 321
    invoke-static {v1, v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@4f
    move-result-object v5

    #@50
    goto :goto_0
.end method

.method private static buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;
    .locals 8
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 222
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "ANQP_GET "

    #@9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    const/16 v5, 0x20

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 224
    const/4 v1, 0x1

    #@1b
    .line 225
    .local v1, "first":Z
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->getBaseANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1e
    move-result-object v5

    #@1f
    array-length v6, v5

    #@20
    move v4, v3

    #@21
    :goto_0
    if-ge v4, v6, :cond_2

    #@23
    aget-object v0, v5, v4

    #@25
    .line 226
    .local v0, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_0

    #@2b
    .line 227
    sget-object v7, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2d
    if-ne v0, v7, :cond_0

    #@2f
    .line 225
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 230
    :cond_0
    if-eqz v1, :cond_1

    #@34
    .line 231
    const/4 v1, 0x0

    #@35
    .line 236
    :goto_2
    invoke-static {v0}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_1

    #@3d
    .line 234
    :cond_1
    const/16 v7, 0x2c

    #@3f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    goto :goto_2

    #@43
    .line 238
    .end local v0    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@46
    move-result-object v4

    #@47
    if-eqz v4, :cond_3

    #@49
    .line 239
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->getHS20ANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4c
    move-result-object v4

    #@4d
    array-length v5, v4

    #@4e
    :goto_3
    if-ge v3, v5, :cond_3

    #@50
    aget-object v0, v4, v3

    #@52
    .line 240
    .restart local v0    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    const-string/jumbo v6, ",hs20:"

    #@55
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-static {v0}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    .line 239
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_3

    #@63
    .line 243
    .end local v0    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    return-object v3
.end method

.method private static escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;
    .locals 2
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->isSSID_UTF8()Z

    #@7
    move-result v1

    #@8
    invoke-static {v0, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static escapeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "utf8"    # Z

    #@0
    .prologue
    const/16 v8, 0x22

    #@2
    const/4 v7, 0x0

    #@3
    .line 197
    const/4 v0, 0x1

    #@4
    .line 198
    .local v0, "asciiOnly":Z
    const/4 v2, 0x0

    #@5
    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v6

    #@9
    if-ge v2, v6, :cond_0

    #@b
    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    .line 200
    .local v1, "ch":C
    const/16 v6, 0x7f

    #@11
    if-le v1, v6, :cond_1

    #@13
    .line 201
    const/4 v0, 0x0

    #@14
    .line 206
    .end local v1    # "ch":C
    :cond_0
    if-eqz v0, :cond_2

    #@16
    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    return-object v6

    #@2c
    .line 198
    .restart local v1    # "ch":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 210
    .end local v1    # "ch":C
    :cond_2
    if-eqz p1, :cond_3

    #@31
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@33
    :goto_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@36
    move-result-object v4

    #@37
    .line 212
    .local v4, "octets":[B
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    .line 213
    .local v5, "sb":Ljava/lang/StringBuilder;
    array-length v8, v4

    #@3d
    move v6, v7

    #@3e
    :goto_2
    if-ge v6, v8, :cond_4

    #@40
    aget-byte v3, v4, v6

    #@42
    .line 214
    .local v3, "octet":B
    const-string/jumbo v9, "%02x"

    #@45
    const/4 v10, 0x1

    #@46
    new-array v10, v10, [Ljava/lang/Object;

    #@48
    and-int/lit16 v11, v3, 0xff

    #@4a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v11

    #@4e
    aput-object v11, v10, v7

    #@50
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 213
    add-int/lit8 v6, v6, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 210
    .end local v3    # "octet":B
    .end local v4    # "octets":[B
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@5c
    goto :goto_1

    #@5d
    .line 216
    .restart local v4    # "octets":[B
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    return-object v6
.end method

.method private static getWPSNetCommands(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/pps/Credential;)Ljava/util/List;
    .locals 10
    .param p0, "netID"    # Ljava/lang/String;
    .param p1, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "credential"    # Lcom/android/server/wifi/hotspot2/pps/Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Lcom/android/server/wifi/hotspot2/pps/Credential;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x1

    #@4
    .line 249
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 251
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@c
    move-result-object v2

    #@d
    .line 252
    .local v2, "eapMethod":Lcom/android/server/wifi/anqp/eap/EAPMethod;
    const-string/jumbo v3, "SET_NETWORK %s key_mgmt WPA-EAP"

    #@10
    new-array v4, v6, [Ljava/lang/Object;

    #@12
    aput-object p0, v4, v7

    #@14
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b
    .line 253
    const-string/jumbo v3, "SET_NETWORK %s ssid %s"

    #@1e
    new-array v4, v8, [Ljava/lang/Object;

    #@20
    aput-object p0, v4, v7

    #@22
    invoke-static {p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    aput-object v5, v4, v6

    #@28
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 254
    const-string/jumbo v3, "SET_NETWORK %s bssid %s"

    #@32
    new-array v4, v8, [Ljava/lang/Object;

    #@34
    .line 255
    aput-object p0, v4, v7

    #@36
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    aput-object v5, v4, v6

    #@3c
    .line 254
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 256
    const-string/jumbo v3, "SET_NETWORK %s eap %s"

    #@46
    new-array v4, v8, [Ljava/lang/Object;

    #@48
    .line 257
    aput-object p0, v4, v7

    #@4a
    invoke-virtual {v2}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getEAPMethodID()Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@4d
    move-result-object v5

    #@4e
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    aput-object v5, v4, v6

    #@54
    .line 256
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 259
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@62
    move-result-object v0

    #@63
    .line 260
    .local v0, "authParam":Lcom/android/server/wifi/anqp/eap/AuthParam;
    if-nez v0, :cond_0

    #@65
    .line 261
    return-object v9

    #@66
    .line 263
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-getcom_android_server_wifi_anqp_eap_EAP$AuthInfoIDSwitchesValues()[I

    #@69
    move-result-object v3

    #@6a
    invoke-interface {v0}, Lcom/android/server/wifi/anqp/eap/AuthParam;->getAuthInfoID()Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Lcom/android/server/wifi/anqp/eap/EAP$AuthInfoID;->ordinal()I

    #@71
    move-result v4

    #@72
    aget v3, v3, v4

    #@74
    packed-switch v3, :pswitch_data_0

    #@77
    .line 274
    return-object v9

    #@78
    .line 266
    :pswitch_0
    const-string/jumbo v3, "SET_NETWORK %s identity %s"

    #@7b
    new-array v4, v8, [Ljava/lang/Object;

    #@7d
    .line 267
    aput-object p0, v4, v7

    #@7f
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getUserName()Ljava/lang/String;

    #@82
    move-result-object v5

    #@83
    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    aput-object v5, v4, v6

    #@89
    .line 266
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    .line 268
    const-string/jumbo v3, "SET_NETWORK %s password %s"

    #@93
    new-array v4, v8, [Ljava/lang/Object;

    #@95
    .line 269
    aput-object p0, v4, v7

    #@97
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getPassword()Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    invoke-static {v5, v6}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->escapeString(Ljava/lang/String;Z)Ljava/lang/String;

    #@9e
    move-result-object v5

    #@9f
    aput-object v5, v4, v6

    #@a1
    .line 268
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a8
    .line 270
    const-string/jumbo v3, "SET_NETWORK %s anonymous_identity \"anonymous\""

    #@ab
    new-array v4, v6, [Ljava/lang/Object;

    #@ad
    .line 271
    aput-object p0, v4, v7

    #@af
    .line 270
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b6
    .line 276
    const-string/jumbo v3, "SET_NETWORK %s priority 0"

    #@b9
    new-array v4, v6, [Ljava/lang/Object;

    #@bb
    aput-object p0, v4, v7

    #@bd
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c4
    .line 277
    const-string/jumbo v3, "ENABLE_NETWORK %s"

    #@c7
    new-array v4, v6, [Ljava/lang/Object;

    #@c9
    aput-object p0, v4, v7

    #@cb
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d2
    .line 278
    const-string/jumbo v3, "SAVE_CONFIG"

    #@d5
    new-array v4, v7, [Ljava/lang/Object;

    #@d7
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@de
    .line 279
    return-object v1

    #@df
    .line 263
    nop

    #@e0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isAnqpAttribute(Ljava/lang/String;)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    const/16 v2, 0x3d

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 56
    .local v0, "split":I
    if-ltz v0, :cond_0

    #@9
    sget-object v2, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@b
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    :cond_0
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 453
    sget-object v2, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_0

    #@6
    aget-object v0, v2, v1

    #@8
    .line 454
    .local v0, "string":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->unescapeSSID(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@11
    .line 453
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 452
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;
    .locals 3
    .param p0, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@0
    .prologue
    .line 326
    invoke-static {}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-getcom_android_server_wifi_anqp_eap_EAP$EAPMethodIDSwitchesValues()[I

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
    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "No mapping for "

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
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 328
    :pswitch_0
    const-string/jumbo v0, "AKA"

    #@2a
    return-object v0

    #@2b
    .line 330
    :pswitch_1
    const-string/jumbo v0, "AKA\'"

    #@2e
    return-object v0

    #@2f
    .line 332
    :pswitch_2
    const-string/jumbo v0, "SIM"

    #@32
    return-object v0

    #@33
    .line 334
    :pswitch_3
    const-string/jumbo v0, "TLS"

    #@36
    return-object v0

    #@37
    .line 336
    :pswitch_4
    const-string/jumbo v0, "TTLS"

    #@3a
    return-object v0

    #@3b
    .line 326
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static parseANQPLines(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 65
    if-nez p0, :cond_0

    #@3
    .line 66
    return-object v5

    #@4
    .line 68
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v5

    #@a
    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    #@d
    .line 69
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .local v3, "line$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_2

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/lang/String;

    #@1d
    .line 71
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@20
    move-result-object v0

    #@21
    .line 72
    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    #@23
    .line 73
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@26
    move-result-object v5

    #@27
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    goto :goto_0

    #@2b
    .line 76
    .end local v0    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    :catch_0
    move-exception v4

    #@2c
    .line 77
    .local v4, "pe":Ljava/net/ProtocolException;
    const-class v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@2e
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "Failed to parse ANQP: "

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0

    #@4a
    .line 80
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "pe":Ljava/net/ProtocolException;
    :cond_2
    return-object v1
.end method

.method private static parseWPSData(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0, "bssInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 285
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-nez p0, :cond_0

    #@7
    .line 286
    return-object v1

    #@8
    .line 288
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    #@a
    new-instance v4, Ljava/io/StringReader;

    #@c
    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@12
    .line 290
    .local v3, "lineReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@18
    .line 291
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@1b
    move-result-object v0

    #@1c
    .line 292
    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    #@1e
    .line 293
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    goto :goto_0

    #@26
    .line 296
    .end local v0    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    :cond_2
    return-object v1
.end method

.method public static unescapeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/16 v14, 0x5c

    #@3
    const/4 v12, 0x0

    #@4
    .line 355
    new-instance v7, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    #@6
    invoke-direct {v7, p0, v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)V

    #@9
    .line 356
    .local v7, "chars":Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v11

    #@d
    new-array v9, v11, [B

    #@f
    .line 357
    .local v9, "octets":[B
    const/4 v2, 0x0

    #@10
    .line 359
    .local v2, "bo":I
    :goto_0
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    #@13
    move-result v11

    #@14
    if-eqz v11, :cond_3

    #@16
    .line 360
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    #@19
    move-result v6

    #@1a
    .line 361
    .local v6, "ch":C
    if-ne v6, v14, :cond_0

    #@1c
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    #@1f
    move-result v11

    #@20
    if-eqz v11, :cond_0

    #@22
    .line 365
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    #@25
    move-result v10

    #@26
    .line 366
    .local v10, "suffix":C
    sget-object v11, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@28
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@2b
    move-result-object v13

    #@2c
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v8

    #@30
    check-cast v8, Ljava/lang/Integer;

    #@32
    .line 367
    .local v8, "mapped":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    #@34
    .line 368
    add-int/lit8 v3, v2, 0x1

    #@36
    .end local v2    # "bo":I
    .local v3, "bo":I
    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    #@39
    move-result v11

    #@3a
    aput-byte v11, v9, v2

    #@3c
    move v2, v3

    #@3d
    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    #@3e
    .line 362
    .end local v8    # "mapped":Ljava/lang/Integer;
    .end local v10    # "suffix":C
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@40
    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    int-to-byte v11, v6

    #@41
    aput-byte v11, v9, v2

    #@43
    move v2, v3

    #@44
    .line 361
    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    #@45
    .line 370
    .restart local v8    # "mapped":Ljava/lang/Integer;
    .restart local v10    # "suffix":C
    :cond_1
    const/16 v11, 0x78

    #@47
    if-ne v10, v11, :cond_2

    #@49
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap0(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    #@4c
    move-result v11

    #@4d
    if-eqz v11, :cond_2

    #@4f
    .line 371
    add-int/lit8 v3, v2, 0x1

    #@51
    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap3(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)I

    #@54
    move-result v11

    #@55
    int-to-byte v11, v11

    #@56
    aput-byte v11, v9, v2

    #@58
    move v2, v3

    #@59
    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    #@5a
    .line 374
    :cond_2
    add-int/lit8 v3, v2, 0x1

    #@5c
    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    aput-byte v14, v9, v2

    #@5e
    .line 375
    add-int/lit8 v2, v3, 0x1

    #@60
    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    int-to-byte v11, v10

    #@61
    aput-byte v11, v9, v3

    #@63
    goto :goto_0

    #@64
    .line 380
    .end local v6    # "ch":C
    .end local v8    # "mapped":Ljava/lang/Integer;
    .end local v10    # "suffix":C
    :cond_3
    const/4 v0, 0x1

    #@65
    .line 381
    .local v0, "asciiOnly":Z
    array-length v13, v9

    #@66
    move v11, v12

    #@67
    :goto_1
    if-ge v11, v13, :cond_4

    #@69
    aget-byte v1, v9, v11

    #@6b
    .line 382
    .local v1, "b":B
    and-int/lit16 v14, v1, 0x80

    #@6d
    if-eqz v14, :cond_5

    #@6f
    .line 383
    const/4 v0, 0x0

    #@70
    .line 387
    .end local v1    # "b":B
    :cond_4
    if-eqz v0, :cond_6

    #@72
    .line 388
    new-instance v11, Ljava/lang/String;

    #@74
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@76
    invoke-direct {v11, v9, v12, v2, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@79
    return-object v11

    #@7a
    .line 381
    .restart local v1    # "b":B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 392
    .end local v1    # "b":B
    :cond_6
    :try_start_0
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@7f
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@82
    move-result-object v11

    #@83
    .line 393
    const/4 v13, 0x0

    #@84
    invoke-static {v9, v13, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@87
    move-result-object v13

    #@88
    .line 392
    invoke-virtual {v11, v13}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@8b
    move-result-object v4

    #@8c
    .line 394
    .local v4, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@8f
    move-result-object v11

    #@90
    return-object v11

    #@91
    .line 395
    .end local v4    # "cb":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v5

    #@92
    .line 396
    .local v5, "cce":Ljava/nio/charset/CharacterCodingException;
    new-instance v11, Ljava/lang/String;

    #@94
    sget-object v13, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@96
    invoke-direct {v11, v9, v12, v2, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@99
    return-object v11
.end method


# virtual methods
.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 11
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 100
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@6
    monitor-enter v6

    #@7
    .line 101
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@9
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    monitor-exit v6

    #@10
    .line 103
    if-nez v4, :cond_1

    #@12
    .line 104
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v5

    #@16
    invoke-static {v5}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    const-string/jumbo v7, "Spurious %s ANQP response for %012x"

    #@1d
    new-array v8, v8, [Ljava/lang/Object;

    #@1f
    .line 105
    if-eqz p2, :cond_0

    #@21
    const-string/jumbo v5, "successful"

    #@24
    :goto_0
    aput-object v5, v8, v9

    #@26
    aput-object p1, v8, v10

    #@28
    .line 104
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 106
    return-void

    #@30
    .line 100
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v5

    #@31
    monitor-exit v6

    #@32
    throw v5

    #@33
    .line 105
    .restart local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    const-string/jumbo v5, "failed"

    #@36
    goto :goto_0

    #@37
    .line 109
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@39
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->scanResult(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 111
    .local v0, "bssData":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseWPSData(Ljava/lang/String;)Ljava/util/Map;

    #@44
    move-result-object v1

    #@45
    .line 112
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v6

    #@49
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    const-string/jumbo v8, "%s ANQP response for %012x: %s"

    #@50
    const/4 v6, 0x3

    #@51
    new-array v9, v6, [Ljava/lang/Object;

    #@53
    .line 113
    if-eqz p2, :cond_2

    #@55
    const-string/jumbo v6, "successful"

    #@58
    :goto_1
    const/4 v10, 0x0

    #@59
    aput-object v6, v9, v10

    #@5b
    const/4 v6, 0x1

    #@5c
    aput-object p1, v9, v6

    #@5e
    const/4 v6, 0x2

    #@5f
    aput-object v1, v9, v6

    #@61
    .line 112
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 114
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@6a
    if-eqz p2, :cond_3

    #@6c
    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_2
    invoke-virtual {v6, v4, v1}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@6f
    .line 124
    :goto_3
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@71
    invoke-virtual {v6, v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@74
    .line 98
    return-void

    #@75
    .line 113
    .restart local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v6, "failed"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@78
    goto :goto_1

    #@79
    :cond_3
    move-object v1, v5

    #@7a
    .line 114
    goto :goto_2

    #@7b
    .line 120
    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :catch_0
    move-exception v3

    #@7c
    .line 121
    .local v3, "rte":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@7f
    move-result-object v6

    #@80
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@83
    move-result-object v6

    #@84
    new-instance v7, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v8, "Failed to parse ANQP: "

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    .line 122
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@93
    move-result-object v8

    #@94
    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    .line 122
    const-string/jumbo v8, ": "

    #@9b
    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v7

    #@9f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@aa
    goto :goto_3

    #@ab
    .line 116
    .end local v3    # "rte":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    #@ac
    .line 117
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@af
    move-result-object v6

    #@b0
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    new-instance v7, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v8, "Failed to parse ANQP: "

    #@bc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    .line 118
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@c3
    move-result-object v8

    #@c4
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v7

    #@c8
    .line 118
    const-string/jumbo v8, ": "

    #@cb
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v7

    #@d7
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    goto :goto_3
.end method

.method public startANQP(Lcom/android/server/wifi/ScanDetail;)V
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 85
    .local v0, "anqpGet":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@a
    monitor-enter v3

    #@b
    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@d
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@14
    move-result-wide v4

    #@15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@18
    move-result-object v4

    #@19
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v3

    #@1d
    .line 88
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@1f
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->doCustomCommand(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 89
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@25
    const-string/jumbo v2, "OK"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 90
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    new-instance v3, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v4, "ANQP initiated on "

    #@3e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 83
    :goto_0
    return-void

    #@4e
    .line 85
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@4f
    monitor-exit v3

    #@50
    throw v2

    #@51
    .line 93
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@54
    move-result-object v2

    #@55
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    new-instance v3, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v4, "ANQP failed on "

    #@61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    .line 94
    const-string/jumbo v4, ": "

    #@6c
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    goto :goto_0
.end method
