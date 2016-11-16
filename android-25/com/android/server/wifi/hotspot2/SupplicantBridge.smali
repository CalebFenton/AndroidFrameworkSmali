.class public Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;,
        Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I = null

.field private static final synthetic -com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I = null

.field private static final IconChunkSize:I = 0x578

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
.field private final mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

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
.method private static synthetic -getcom-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues:[I

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

.method private static synthetic -getcom-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-com-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues:[I

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
    .line 374
    new-instance v0, Ljava/util/HashMap;

    #@89
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8c
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sMappings:Ljava/util/Map;

    #@8e
    .line 377
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
    .line 378
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
    .line 379
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
    .line 380
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
    .line 381
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
    .line 382
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
    .line 472
    new-array v0, v3, [Ljava/lang/String;

    #@e8
    .line 473
    const-string/jumbo v1, "test-ssid"

    #@eb
    const/4 v2, 0x0

    #@ec
    aput-object v1, v0, v2

    #@ee
    .line 474
    const-string/jumbo v1, "test\\nss\\tid"

    #@f1
    const/4 v2, 0x1

    #@f2
    aput-object v1, v0, v2

    #@f4
    .line 475
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid"

    #@f7
    const/4 v2, 0x2

    #@f8
    aput-object v1, v0, v2

    #@fa
    .line 476
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\\\"

    #@fd
    const/4 v2, 0x3

    #@fe
    aput-object v1, v0, v2

    #@100
    .line 477
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\n"

    #@103
    const/4 v2, 0x4

    #@104
    aput-object v1, v0, v2

    #@106
    .line 478
    const-string/jumbo v1, "test\\x2d\\x5f\\nss\\tid\\x4a"

    #@109
    const/4 v2, 0x5

    #@10a
    aput-object v1, v0, v2

    #@10c
    .line 479
    const-string/jumbo v1, "another\\"

    #@10f
    const/4 v2, 0x6

    #@110
    aput-object v1, v0, v2

    #@112
    .line 480
    const-string/jumbo v1, "an\\other"

    #@115
    const/4 v2, 0x7

    #@116
    aput-object v1, v0, v2

    #@118
    .line 481
    const-string/jumbo v1, "another\\x2"

    #@11b
    const/16 v2, 0x8

    #@11d
    aput-object v1, v0, v2

    #@11f
    .line 472
    sput-object v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->TestStrings:[Ljava/lang/String;

    #@121
    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;)V
    .locals 1
    .param p1, "supplicantHook"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "callbacks"    # Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@a
    .line 80
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@c
    .line 81
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    #@e
    .line 79
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
    .line 332
    const/16 v5, 0x3d

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v4

    #@8
    .line 333
    .local v4, "separator":I
    if-gez v4, :cond_0

    #@a
    .line 334
    return-object v7

    #@b
    .line 337
    :cond_0
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 338
    .local v0, "elementName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->sWpsNames:Ljava/util/Map;

    #@11
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@17
    .line 339
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_1

    #@19
    .line 340
    return-object v7

    #@1a
    .line 345
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
    .line 351
    .local v3, "payload":[B
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@27
    move-result-object v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 352
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
    .line 351
    :goto_0
    return-object v5

    #@34
    .line 347
    .end local v3    # "payload":[B
    :catch_0
    move-exception v2

    #@35
    .line 348
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
    .line 349
    return-object v7

    #@42
    .line 354
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
    .line 353
    invoke-static {v1, v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@4f
    move-result-object v5

    #@50
    goto :goto_0
.end method

.method private static buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p1, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-static {p1}, Lcom/android/server/wifi/anqp/Constants;->hasBaseANQPElements(Ljava/util/Collection;)Z

    #@3
    move-result v0

    #@4
    .line 244
    .local v0, "baseANQPElements":Z
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 245
    .local v5, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    #@b
    .line 246
    const-string/jumbo v6, "ANQP_GET "

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    const/16 v7, 0x20

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 253
    const/4 v3, 0x1

    #@1f
    .line 254
    .local v3, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "elementType$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_4

    #@29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2f
    .line 255
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-eqz v3, :cond_1

    #@31
    .line 256
    const/4 v3, 0x0

    #@32
    .line 262
    :goto_2
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@35
    move-result-object v4

    #@36
    .line 263
    .local v4, "id":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    #@38
    .line 264
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_1

    #@3c
    .line 249
    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v2    # "elementType$iterator":Ljava/util/Iterator;
    .end local v3    # "first":Z
    .end local v4    # "id":Ljava/lang/Integer;
    :cond_0
    const-string/jumbo v6, "HS20_ANQP_GET "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0

    #@43
    .line 259
    .restart local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .restart local v2    # "elementType$iterator":Ljava/util/Iterator;
    .restart local v3    # "first":Z
    :cond_1
    const/16 v6, 0x2c

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48
    goto :goto_2

    #@49
    .line 267
    .restart local v4    # "id":Ljava/lang/Integer;
    :cond_2
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@4c
    move-result-object v4

    #@4d
    .line 268
    if-eqz v0, :cond_3

    #@4f
    .line 269
    const-string/jumbo v6, "hs20:"

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 271
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    goto :goto_1

    #@59
    .line 275
    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v4    # "id":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    return-object v6
.end method

.method private static escapeSSID(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/lang/String;
    .locals 2
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    .line 207
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
    .line 211
    const/4 v0, 0x1

    #@4
    .line 212
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
    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v1

    #@f
    .line 214
    .local v1, "ch":C
    const/16 v6, 0x7f

    #@11
    if-le v1, v6, :cond_1

    #@13
    .line 215
    const/4 v0, 0x0

    #@14
    .line 220
    .end local v1    # "ch":C
    :cond_0
    if-eqz v0, :cond_2

    #@16
    .line 221
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
    .line 212
    .restart local v1    # "ch":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 224
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
    .line 226
    .local v4, "octets":[B
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    .line 227
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
    .line 228
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
    .line 227
    add-int/lit8 v6, v6, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 224
    .end local v3    # "octet":B
    .end local v4    # "octets":[B
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@5c
    goto :goto_1

    #@5d
    .line 230
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
    .line 281
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 283
    .local v1, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@c
    move-result-object v2

    #@d
    .line 284
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
    .line 285
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
    .line 286
    const-string/jumbo v3, "SET_NETWORK %s bssid %s"

    #@32
    new-array v4, v8, [Ljava/lang/Object;

    #@34
    .line 287
    aput-object p0, v4, v7

    #@36
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSIDString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    aput-object v5, v4, v6

    #@3c
    .line 286
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 288
    const-string/jumbo v3, "SET_NETWORK %s eap %s"

    #@46
    new-array v4, v8, [Ljava/lang/Object;

    #@48
    .line 289
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
    .line 288
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 291
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getEAPMethod()Lcom/android/server/wifi/anqp/eap/EAPMethod;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Lcom/android/server/wifi/anqp/eap/EAPMethod;->getAuthParam()Lcom/android/server/wifi/anqp/eap/AuthParam;

    #@62
    move-result-object v0

    #@63
    .line 292
    .local v0, "authParam":Lcom/android/server/wifi/anqp/eap/AuthParam;
    if-nez v0, :cond_0

    #@65
    .line 293
    return-object v9

    #@66
    .line 295
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-getcom-android-server-wifi-anqp-eap-EAP$AuthInfoIDSwitchesValues()[I

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
    .line 306
    return-object v9

    #@78
    .line 298
    :pswitch_0
    const-string/jumbo v3, "SET_NETWORK %s identity %s"

    #@7b
    new-array v4, v8, [Ljava/lang/Object;

    #@7d
    .line 299
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
    .line 298
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@90
    .line 300
    const-string/jumbo v3, "SET_NETWORK %s password %s"

    #@93
    new-array v4, v8, [Ljava/lang/Object;

    #@95
    .line 301
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
    .line 300
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a8
    .line 302
    const-string/jumbo v3, "SET_NETWORK %s anonymous_identity \"anonymous\""

    #@ab
    new-array v4, v6, [Ljava/lang/Object;

    #@ad
    .line 303
    aput-object p0, v4, v7

    #@af
    .line 302
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b6
    .line 308
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
    .line 309
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
    .line 310
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
    .line 311
    return-object v1

    #@df
    .line 295
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
    .line 75
    const/16 v2, 0x3d

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 76
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
    .line 485
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
    .line 486
    .local v0, "string":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->unescapeSSID(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@11
    .line 485
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 484
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static mapEAPMethodName(Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;)Ljava/lang/String;
    .locals 3
    .param p0, "eapMethodID"    # Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    #@0
    .prologue
    .line 358
    invoke-static {}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->-getcom-android-server-wifi-anqp-eap-EAP$EAPMethodIDSwitchesValues()[I

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
    .line 370
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
    .line 360
    :pswitch_0
    const-string/jumbo v0, "AKA"

    #@2a
    return-object v0

    #@2b
    .line 362
    :pswitch_1
    const-string/jumbo v0, "AKA\'"

    #@2e
    return-object v0

    #@2f
    .line 364
    :pswitch_2
    const-string/jumbo v0, "SIM"

    #@32
    return-object v0

    #@33
    .line 366
    :pswitch_3
    const-string/jumbo v0, "TLS"

    #@36
    return-object v0

    #@37
    .line 368
    :pswitch_4
    const-string/jumbo v0, "TTLS"

    #@3a
    return-object v0

    #@3b
    .line 358
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
    .line 85
    if-nez p0, :cond_0

    #@3
    .line 86
    return-object v5

    #@4
    .line 88
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v5

    #@a
    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    #@d
    .line 89
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
    .line 91
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@20
    move-result-object v0

    #@21
    .line 92
    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    #@23
    .line 93
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
    .line 96
    .end local v0    # "element":Lcom/android/server/wifi/anqp/ANQPElement;
    :catch_0
    move-exception v4

    #@2c
    .line 97
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
    .line 100
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
    .line 316
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 317
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-nez p0, :cond_0

    #@7
    .line 318
    return-object v1

    #@8
    .line 320
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    #@a
    new-instance v4, Ljava/io/StringReader;

    #@c
    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@12
    .line 322
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
    .line 323
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildElement(Ljava/lang/String;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@1b
    move-result-object v0

    #@1c
    .line 324
    .local v0, "element":Lcom/android/server/wifi/anqp/ANQPElement;
    if-eqz v0, :cond_1

    #@1e
    .line 325
    invoke-virtual {v0}, Lcom/android/server/wifi/anqp/ANQPElement;->getID()Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    goto :goto_0

    #@26
    .line 328
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
    .line 387
    new-instance v7, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;

    #@6
    invoke-direct {v7, p0, v11}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)V

    #@9
    .line 388
    .local v7, "chars":Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v11

    #@d
    new-array v9, v11, [B

    #@f
    .line 389
    .local v9, "octets":[B
    const/4 v2, 0x0

    #@10
    .line 391
    .local v2, "bo":I
    :goto_0
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    #@13
    move-result v11

    #@14
    if-eqz v11, :cond_3

    #@16
    .line 392
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    #@19
    move-result v6

    #@1a
    .line 393
    .local v6, "ch":C
    if-ne v6, v14, :cond_0

    #@1c
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z

    #@1f
    move-result v11

    #@20
    if-eqz v11, :cond_0

    #@22
    .line 397
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->-wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C

    #@25
    move-result v10

    #@26
    .line 398
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
    .line 399
    .local v8, "mapped":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    #@34
    .line 400
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
    .line 394
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
    .line 393
    .end local v3    # "bo":I
    .restart local v2    # "bo":I
    goto :goto_0

    #@45
    .line 402
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
    .line 403
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
    .line 406
    :cond_2
    add-int/lit8 v3, v2, 0x1

    #@5c
    .end local v2    # "bo":I
    .restart local v3    # "bo":I
    aput-byte v14, v9, v2

    #@5e
    .line 407
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
    .line 412
    .end local v6    # "ch":C
    .end local v8    # "mapped":Ljava/lang/Integer;
    .end local v10    # "suffix":C
    :cond_3
    const/4 v0, 0x1

    #@65
    .line 413
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
    .line 414
    .local v1, "b":B
    and-int/lit16 v14, v1, 0x80

    #@6d
    if-eqz v14, :cond_5

    #@6f
    .line 415
    const/4 v0, 0x0

    #@70
    .line 419
    .end local v1    # "b":B
    :cond_4
    if-eqz v0, :cond_6

    #@72
    .line 420
    new-instance v11, Ljava/lang/String;

    #@74
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@76
    invoke-direct {v11, v9, v12, v2, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@79
    return-object v11

    #@7a
    .line 413
    .restart local v1    # "b":B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 424
    .end local v1    # "b":B
    :cond_6
    :try_start_0
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@7f
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@82
    move-result-object v11

    #@83
    .line 425
    const/4 v13, 0x0

    #@84
    invoke-static {v9, v13, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@87
    move-result-object v13

    #@88
    .line 424
    invoke-virtual {v11, v13}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@8b
    move-result-object v4

    #@8c
    .line 426
    .local v4, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@8f
    move-result-object v11

    #@90
    return-object v11

    #@91
    .line 427
    .end local v4    # "cb":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v5

    #@92
    .line 428
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
.method public doIconQuery(JLjava/lang/String;)Z
    .locals 5
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "REQ_HS20_ICON "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    .line 126
    invoke-static {p1, p2}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    .line 126
    const-string/jumbo v3, " "

    #@19
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 127
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@2b
    const-string/jumbo v1, "OK"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@31
    move-result v1

    #@32
    :goto_0
    return v1

    #@33
    :cond_0
    const/4 v1, 0x0

    #@34
    goto :goto_0
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 11
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 177
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@3
    monitor-enter v6

    #@4
    .line 178
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@6
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    check-cast v4, Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    monitor-exit v6

    #@d
    .line 181
    if-nez v4, :cond_1

    #@f
    .line 182
    if-nez p2, :cond_0

    #@11
    .line 183
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    #@13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@16
    move-result-wide v6

    #@17
    invoke-interface {v5, v6, v7}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;->notifyIconFailed(J)V

    #@1a
    .line 185
    :cond_0
    return-void

    #@1b
    .line 177
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v5

    #@1c
    monitor-exit v6

    #@1d
    throw v5

    #@1e
    .line 188
    .restart local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@20
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->scanResult(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 190
    .local v0, "bssData":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->parseWPSData(Ljava/lang/String;)Ljava/util/Map;

    #@2b
    move-result-object v1

    #@2c
    .line 191
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    const-string/jumbo v8, "%s ANQP response for %012x: %s"

    #@37
    const/4 v6, 0x3

    #@38
    new-array v9, v6, [Ljava/lang/Object;

    #@3a
    .line 192
    if-eqz p2, :cond_2

    #@3c
    const-string/jumbo v6, "successful"

    #@3f
    :goto_0
    const/4 v10, 0x0

    #@40
    aput-object v6, v9, v10

    #@42
    const/4 v6, 0x1

    #@43
    aput-object p1, v9, v6

    #@45
    const/4 v6, 0x2

    #@46
    aput-object v1, v9, v6

    #@48
    .line 191
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 193
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    #@51
    if-eqz p2, :cond_3

    #@53
    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_1
    invoke-interface {v6, v4, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@56
    .line 203
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mCallbacks:Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;

    #@58
    invoke-interface {v6, v4, v5}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;->notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@5b
    .line 175
    return-void

    #@5c
    .line 192
    .restart local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v6, "failed"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@5f
    goto :goto_0

    #@60
    :cond_3
    move-object v1, v5

    #@61
    .line 193
    goto :goto_1

    #@62
    .line 199
    .end local v1    # "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :catch_0
    move-exception v3

    #@63
    .line 200
    .local v3, "rte":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@66
    move-result-object v6

    #@67
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    new-instance v7, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v8, "Failed to parse ANQP: "

    #@73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    .line 201
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    #@7a
    move-result-object v8

    #@7b
    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v7

    #@7f
    .line 201
    const-string/jumbo v8, ": "

    #@82
    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v7

    #@8e
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    goto :goto_2

    #@92
    .line 195
    .end local v3    # "rte":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    #@93
    .line 196
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@96
    move-result-object v6

    #@97
    invoke-static {v6}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@9a
    move-result-object v6

    #@9b
    new-instance v7, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v8, "Failed to parse ANQP: "

    #@a3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v7

    #@a7
    .line 197
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@aa
    move-result-object v8

    #@ab
    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    .line 197
    const-string/jumbo v8, ": "

    #@b2
    .line 196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v7

    #@be
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c1
    goto :goto_2
.end method

.method public retrieveIcon(Lcom/android/server/wifi/hotspot2/IconEvent;)[B
    .locals 14
    .param p1, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    #@3
    move-result v8

    #@4
    new-array v3, v8, [B

    #@6
    .line 133
    .local v3, "iconData":[B
    const/4 v4, 0x0

    #@7
    .line 134
    .local v4, "offset":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    #@a
    move-result v8

    #@b
    if-ge v4, v8, :cond_3

    #@d
    .line 135
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    #@10
    move-result v8

    #@11
    sub-int/2addr v8, v4

    #@12
    const/16 v9, 0x578

    #@14
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v7

    #@18
    .line 137
    .local v7, "size":I
    const-string/jumbo v8, "GET_HS20_ICON %s %s %d %d"

    #@1b
    const/4 v9, 0x4

    #@1c
    new-array v9, v9, [Ljava/lang/Object;

    #@1e
    .line 138
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    #@21
    move-result-wide v10

    #@22
    invoke-static {v10, v11}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    const/4 v11, 0x0

    #@27
    aput-object v10, v9, v11

    #@29
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    #@2c
    move-result-object v10

    #@2d
    const/4 v11, 0x1

    #@2e
    aput-object v10, v9, v11

    #@30
    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v10

    #@34
    const/4 v11, 0x2

    #@35
    aput-object v10, v9, v11

    #@37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v10

    #@3b
    const/4 v11, 0x3

    #@3c
    aput-object v10, v9, v11

    #@3e
    .line 137
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 140
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@45
    move-result-object v8

    #@46
    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v10, "Issuing \'"

    #@52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    const-string/jumbo v10, "\'"

    #@5d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v9

    #@65
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 141
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@6a
    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    .line 142
    .local v5, "response":Ljava/lang/String;
    if-nez v5, :cond_0

    #@70
    .line 143
    new-instance v8, Ljava/io/IOException;

    #@72
    const-string/jumbo v9, "No icon data returned"

    #@75
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    .line 166
    .end local v0    # "command":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    .end local v7    # "size":I
    :catchall_0
    move-exception v8

    #@7a
    .line 167
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@7d
    move-result-object v9

    #@7e
    invoke-static {v9}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    new-instance v10, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v11, "Deleting icon for "

    #@8a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v10

    #@8e
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v10

    #@92
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v10

    #@96
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@99
    .line 168
    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@9b
    new-instance v10, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v11, "DEL_HS20_ICON "

    #@a3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v10

    #@a7
    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    #@aa
    move-result-wide v12

    #@ab
    invoke-static {v12, v13}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    #@ae
    move-result-object v11

    #@af
    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v10

    #@b3
    .line 169
    const-string/jumbo v11, " "

    #@b6
    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v10

    #@ba
    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    #@bd
    move-result-object v11

    #@be
    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v10

    #@c2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v10

    #@c6
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    .line 166
    .local v6, "result":Ljava/lang/String;
    throw v8

    #@cb
    .line 147
    .end local v6    # "result":Ljava/lang/String;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v7    # "size":I
    :cond_0
    const/4 v8, 0x0

    #@cc
    :try_start_1
    invoke-static {v5, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@cf
    move-result-object v1

    #@d0
    .line 148
    .local v1, "fragment":[B
    array-length v8, v1

    #@d1
    if-nez v8, :cond_1

    #@d3
    .line 149
    new-instance v8, Ljava/io/IOException;

    #@d5
    new-instance v9, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v10, "Null data for \'"

    #@dd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v9

    #@e1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v9

    #@e5
    const-string/jumbo v10, "\': "

    #@e8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f8
    .line 156
    .end local v1    # "fragment":[B
    :catch_0
    move-exception v2

    #@f9
    .line 157
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v8, Ljava/io/IOException;

    #@fb
    new-instance v9, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v10, "Failed to parse response to \'"

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v9

    #@10b
    .line 158
    const-string/jumbo v10, "\': "

    #@10e
    .line 157
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v9

    #@112
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v9

    #@116
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v9

    #@11a
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11d
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11e
    .line 151
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "fragment":[B
    :cond_1
    :try_start_3
    array-length v8, v1

    #@11f
    add-int/2addr v8, v4

    #@120
    array-length v9, v3

    #@121
    if-le v8, v9, :cond_2

    #@123
    .line 152
    new-instance v8, Ljava/io/IOException;

    #@125
    const-string/jumbo v9, "Icon chunk exceeds image size"

    #@128
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12b
    throw v8

    #@12c
    .line 154
    :cond_2
    array-length v8, v1

    #@12d
    const/4 v9, 0x0

    #@12e
    invoke-static {v1, v9, v3, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@131
    .line 155
    array-length v8, v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@132
    add-int/2addr v4, v8

    #@133
    goto/16 :goto_0

    #@135
    .line 161
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "fragment":[B
    .end local v5    # "response":Ljava/lang/String;
    .end local v7    # "size":I
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    #@138
    move-result v8

    #@139
    if-eq v4, v8, :cond_4

    #@13b
    .line 162
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@13e
    move-result-object v8

    #@13f
    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@142
    move-result-object v8

    #@143
    new-instance v9, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v10, "Partial icon data: "

    #@14b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v9

    #@14f
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@152
    move-result-object v9

    #@153
    .line 163
    const-string/jumbo v10, ", expected "

    #@156
    .line 162
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v9

    #@15a
    .line 163
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getSize()I

    #@15d
    move-result v10

    #@15e
    .line 162
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@161
    move-result-object v9

    #@162
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v9

    #@166
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@169
    .line 167
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@16c
    move-result-object v8

    #@16d
    invoke-static {v8}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@170
    move-result-object v8

    #@171
    new-instance v9, Ljava/lang/StringBuilder;

    #@173
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    const-string/jumbo v10, "Deleting icon for "

    #@179
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v9

    #@17d
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v9

    #@181
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@184
    move-result-object v9

    #@185
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@188
    .line 168
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@18a
    new-instance v9, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    const-string/jumbo v10, "DEL_HS20_ICON "

    #@192
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v9

    #@196
    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    #@199
    move-result-wide v10

    #@19a
    invoke-static {v10, v11}, Lcom/android/server/wifi/hotspot2/Utils;->macToString(J)Ljava/lang/String;

    #@19d
    move-result-object v10

    #@19e
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v9

    #@1a2
    .line 169
    const-string/jumbo v10, " "

    #@1a5
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v9

    #@1a9
    .line 169
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    #@1ac
    move-result-object v10

    #@1ad
    .line 168
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v9

    #@1b1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b4
    move-result-object v9

    #@1b5
    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    #@1b8
    move-result-object v6

    #@1b9
    .line 172
    .restart local v6    # "result":Ljava/lang/String;
    return-object v3
.end method

.method public startANQP(Lcom/android/server/wifi/ScanDetail;Ljava/util/List;)Z
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v6, 0x0

    #@1
    .line 104
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@4
    move-result-object v2

    #@5
    invoke-static {v2, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->buildWPSQueryRequest(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 105
    .local v0, "anqpGet":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .line 106
    return v6

    #@c
    .line 108
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@e
    monitor-enter v3

    #@f
    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mRequestMap:Ljava/util/Map;

    #@11
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@18
    move-result-wide v4

    #@19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c
    move-result-object v4

    #@1d
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v3

    #@21
    .line 111
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->mSupplicantHook:Lcom/android/server/wifi/WifiNative;

    #@23
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiNative;->doCustomSupplicantCommand(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 112
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@29
    const-string/jumbo v2, "OK"

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 113
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@35
    move-result-object v2

    #@36
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v4, "ANQP initiated on "

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    .line 114
    const-string/jumbo v4, " ("

    #@4d
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    .line 114
    const-string/jumbo v4, ")"

    #@58
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 115
    const/4 v2, 0x1

    #@64
    return v2

    #@65
    .line 108
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@66
    monitor-exit v3

    #@67
    throw v2

    #@68
    .line 118
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->getClass()Ljava/lang/Class;

    #@6b
    move-result-object v2

    #@6c
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    new-instance v3, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v4, "ANQP failed on "

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    .line 119
    const-string/jumbo v4, ": "

    #@83
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 120
    return v6
.end method
