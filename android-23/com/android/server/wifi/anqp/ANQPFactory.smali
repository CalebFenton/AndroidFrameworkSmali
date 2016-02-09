.class public Lcom/android/server/wifi/anqp/ANQPFactory;
.super Ljava/lang/Object;
.source "ANQPFactory.java"


# static fields
.field private static synthetic -com_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues:[I

.field private static final BaseANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field private static final HS20ANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method private static synthetic -getcom_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->values()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@10
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1b

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@19
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1a

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPCivicLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@22
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_19

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2b
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_18

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyAlert:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@34
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_17

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNAI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@3d
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_16

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPEmergencyNumber:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@46
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_15

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPGeoLoc:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@4f
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_14

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@59
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_13

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPLocURI:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@63
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_12

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6d
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_11

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNeighborReport:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@77
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_10

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@81
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_f

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@8b
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0x19

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_e

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@95
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0xe

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_d

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPTDLSCap:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@9f
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0xf

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_c

    #@a7
    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVendorSpec:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a9
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@ac
    move-result v1

    #@ad
    const/16 v2, 0x10

    #@af
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_b

    #@b1
    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@b3
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@b6
    move-result v1

    #@b7
    const/16 v2, 0x11

    #@b9
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_a

    #@bb
    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSCapabilityList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@bd
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@c0
    move-result v1

    #@c1
    const/16 v2, 0x12

    #@c3
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_9

    #@c5
    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@c7
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@ca
    move-result v1

    #@cb
    const/16 v2, 0x13

    #@cd
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_8

    #@cf
    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@d1
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@d4
    move-result v1

    #@d5
    const/16 v2, 0x14

    #@d7
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_7

    #@d9
    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconFile:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@db
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@de
    move-result v1

    #@df
    const/16 v2, 0x15

    #@e1
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_6

    #@e3
    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSIconRequest:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e5
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@e8
    move-result v1

    #@e9
    const/16 v2, 0x1a

    #@eb
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_5

    #@ed
    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSNAIHomeRealmQuery:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@ef
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@f2
    move-result v1

    #@f3
    const/16 v2, 0x1b

    #@f5
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4

    #@f7
    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@f9
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@fc
    move-result v1

    #@fd
    const/16 v2, 0x16

    #@ff
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_3

    #@101
    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOperatingclass:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@103
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@106
    move-result v1

    #@107
    const/16 v2, 0x17

    #@109
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_2

    #@10b
    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSQueryList:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@10d
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@110
    move-result v1

    #@111
    const/16 v2, 0x1c

    #@113
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1

    #@115
    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@117
    invoke-virtual {v1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@11a
    move-result v1

    #@11b
    const/16 v2, 0x18

    #@11d
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_0

    #@11f
    :goto_1b
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues:[I

    #@121
    return-object v0

    #@122
    :catch_0
    move-exception v1

    #@123
    goto :goto_1b

    #@124
    :catch_1
    move-exception v1

    #@125
    goto :goto_1a

    #@126
    :catch_2
    move-exception v1

    #@127
    goto :goto_19

    #@128
    :catch_3
    move-exception v1

    #@129
    goto :goto_18

    #@12a
    :catch_4
    move-exception v1

    #@12b
    goto :goto_17

    #@12c
    :catch_5
    move-exception v1

    #@12d
    goto :goto_16

    #@12e
    :catch_6
    move-exception v1

    #@12f
    goto :goto_15

    #@130
    :catch_7
    move-exception v1

    #@131
    goto :goto_14

    #@132
    :catch_8
    move-exception v1

    #@133
    goto :goto_13

    #@134
    :catch_9
    move-exception v1

    #@135
    goto :goto_12

    #@136
    :catch_a
    move-exception v1

    #@137
    goto :goto_11

    #@138
    :catch_b
    move-exception v1

    #@139
    goto/16 :goto_10

    #@13b
    :catch_c
    move-exception v1

    #@13c
    goto/16 :goto_f

    #@13e
    :catch_d
    move-exception v1

    #@13f
    goto/16 :goto_e

    #@141
    :catch_e
    move-exception v1

    #@142
    goto/16 :goto_d

    #@144
    :catch_f
    move-exception v1

    #@145
    goto/16 :goto_c

    #@147
    :catch_10
    move-exception v1

    #@148
    goto/16 :goto_b

    #@14a
    :catch_11
    move-exception v1

    #@14b
    goto/16 :goto_a

    #@14d
    :catch_12
    move-exception v1

    #@14e
    goto/16 :goto_9

    #@150
    :catch_13
    move-exception v1

    #@151
    goto/16 :goto_8

    #@153
    :catch_14
    move-exception v1

    #@154
    goto/16 :goto_7

    #@156
    :catch_15
    move-exception v1

    #@157
    goto/16 :goto_6

    #@159
    :catch_16
    move-exception v1

    #@15a
    goto/16 :goto_5

    #@15c
    :catch_17
    move-exception v1

    #@15d
    goto/16 :goto_4

    #@15f
    :catch_18
    move-exception v1

    #@160
    goto/16 :goto_3

    #@162
    :catch_19
    move-exception v1

    #@163
    goto/16 :goto_2

    #@165
    :catch_1a
    move-exception v1

    #@166
    goto/16 :goto_1

    #@168
    :catch_1b
    move-exception v1

    #@169
    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 18
    const/4 v0, 0x7

    #@5
    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@7
    .line 19
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@9
    aput-object v1, v0, v3

    #@b
    .line 20
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@d
    aput-object v1, v0, v4

    #@f
    .line 21
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@11
    aput-object v1, v0, v5

    #@13
    .line 22
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@15
    aput-object v1, v0, v6

    #@17
    .line 23
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@19
    const/4 v2, 0x4

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 24
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1e
    const/4 v2, 0x5

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 25
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@23
    const/4 v2, 0x6

    #@24
    aput-object v1, v0, v2

    #@26
    .line 18
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@28
    .line 28
    new-array v0, v6, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2a
    .line 29
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2c
    aput-object v1, v0, v3

    #@2e
    .line 30
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@30
    aput-object v1, v0, v4

    #@32
    .line 31
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@34
    aput-object v1, v0, v5

    #@36
    .line 28
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@38
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const v5, 0xffff

    #@3
    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v3

    #@7
    const/4 v4, 0x4

    #@8
    if-ge v3, v4, :cond_0

    #@a
    .line 143
    new-instance v3, Ljava/net/ProtocolException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Runt payload: "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@1b
    move-result v5

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@2b
    move-result v3

    #@2c
    and-int v1, v3, v5

    #@2e
    .line 146
    .local v1, "infoIDNumber":I
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@31
    move-result-object v0

    #@32
    .line 147
    .local v0, "infoID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v0, :cond_1

    #@34
    .line 148
    new-instance v3, Ljava/net/ProtocolException;

    #@36
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "Bad info ID: "

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3

    #@4e
    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@51
    move-result v3

    #@52
    and-int v2, v3, v5

    #@54
    .line 152
    .local v2, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@57
    move-result v3

    #@58
    if-ge v3, v2, :cond_2

    #@5a
    .line 153
    new-instance v3, Ljava/net/ProtocolException;

    #@5c
    new-instance v4, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v5, "Truncated payload: "

    #@64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v4

    #@68
    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6b
    move-result v5

    #@6c
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    .line 154
    const-string/jumbo v5, " vs "

    #@73
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@82
    throw v3

    #@83
    .line 156
    :cond_2
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    #@86
    move-result-object v3

    #@87
    return-object v3
.end method

.method public static buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 7
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 161
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@4
    move-result-object v4

    #@5
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@7
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    .line 162
    .local v0, "elementPayload":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v4

    #@f
    add-int/2addr v4, p2

    #@10
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@16
    move-result v4

    #@17
    add-int/2addr v4, p2

    #@18
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1b
    .line 165
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->-getcom_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues()[I

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@22
    move-result v5

    #@23
    aget v4, v4, v5

    #@25
    packed-switch v4, :pswitch_data_0

    #@28
    .line 215
    new-instance v4, Ljava/net/ProtocolException;

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "Unknown element ID: "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@41
    throw v4

    #@42
    .line 167
    :pswitch_0
    new-instance v4, Lcom/android/server/wifi/anqp/CapabilityListElement;

    #@44
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/CapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@47
    return-object v4

    #@48
    .line 169
    :pswitch_1
    new-instance v4, Lcom/android/server/wifi/anqp/VenueNameElement;

    #@4a
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@4d
    return-object v4

    #@4e
    .line 171
    :pswitch_2
    new-instance v4, Lcom/android/server/wifi/anqp/EmergencyNumberElement;

    #@50
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/EmergencyNumberElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@53
    return-object v4

    #@54
    .line 173
    :pswitch_3
    new-instance v4, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;

    #@56
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@59
    return-object v4

    #@5a
    .line 175
    :pswitch_4
    new-instance v4, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    #@5c
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@5f
    return-object v4

    #@60
    .line 177
    :pswitch_5
    new-instance v4, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;

    #@62
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@65
    return-object v4

    #@66
    .line 179
    :pswitch_6
    new-instance v4, Lcom/android/server/wifi/anqp/NAIRealmElement;

    #@68
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/NAIRealmElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@6b
    return-object v4

    #@6c
    .line 181
    :pswitch_7
    new-instance v4, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    #@6e
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@71
    return-object v4

    #@72
    .line 183
    :pswitch_8
    new-instance v4, Lcom/android/server/wifi/anqp/GEOLocationElement;

    #@74
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GEOLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@77
    return-object v4

    #@78
    .line 185
    :pswitch_9
    new-instance v4, Lcom/android/server/wifi/anqp/CivicLocationElement;

    #@7a
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/CivicLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@7d
    return-object v4

    #@7e
    .line 187
    :pswitch_a
    new-instance v4, Lcom/android/server/wifi/anqp/GenericStringElement;

    #@80
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@83
    return-object v4

    #@84
    .line 189
    :pswitch_b
    new-instance v4, Lcom/android/server/wifi/anqp/DomainNameElement;

    #@86
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/DomainNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@89
    return-object v4

    #@8a
    .line 191
    :pswitch_c
    new-instance v4, Lcom/android/server/wifi/anqp/GenericStringElement;

    #@8c
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@8f
    return-object v4

    #@90
    .line 193
    :pswitch_d
    new-instance v4, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@92
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@95
    return-object v4

    #@96
    .line 195
    :pswitch_e
    new-instance v4, Lcom/android/server/wifi/anqp/GenericStringElement;

    #@98
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@9b
    return-object v4

    #@9c
    .line 197
    :pswitch_f
    new-instance v4, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@9e
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@a1
    return-object v4

    #@a2
    .line 199
    :pswitch_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@a5
    move-result v4

    #@a6
    const/4 v5, 0x5

    #@a7
    if-le v4, v5, :cond_2

    #@a9
    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    #@ac
    move-result v2

    #@ad
    .line 201
    .local v2, "oi":I
    const v4, 0x119a6f50

    #@b0
    if-eq v2, v4, :cond_0

    #@b2
    .line 202
    return-object v6

    #@b3
    .line 204
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@b6
    move-result v4

    #@b7
    and-int/lit16 v3, v4, 0xff

    #@b9
    .line 205
    .local v3, "subType":I
    invoke-static {v3}, Lcom/android/server/wifi/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@bc
    move-result-object v1

    #@bd
    .line 206
    .local v1, "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v1, :cond_1

    #@bf
    .line 207
    new-instance v4, Ljava/net/ProtocolException;

    #@c1
    new-instance v5, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v6, "Bad HS20 info ID: "

    #@c9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v5

    #@d1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v5

    #@d5
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v4

    #@d9
    .line 209
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@dc
    .line 210
    invoke-static {v1, v0}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@df
    move-result-object v4

    #@e0
    return-object v4

    #@e1
    .line 212
    .end local v1    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v2    # "oi":I
    .end local v3    # "subType":I
    :cond_2
    new-instance v4, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@e3
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@e6
    return-object v4

    #@e7
    .line 165
    nop

    #@e8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_f
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_10
        :pswitch_1
    .end packed-switch
.end method

.method public static buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 2
    .param p0, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->-getcom_android_server_wifi_anqp_Constants$ANQPElementTypeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 237
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 223
    :pswitch_0
    new-instance v0, Lcom/android/server/wifi/anqp/HSCapabilityListElement;

    #@11
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/HSCapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@14
    return-object v0

    #@15
    .line 225
    :pswitch_1
    new-instance v0, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    #@17
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@1a
    return-object v0

    #@1b
    .line 227
    :pswitch_2
    new-instance v0, Lcom/android/server/wifi/anqp/HSWanMetricsElement;

    #@1d
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@20
    return-object v0

    #@21
    .line 229
    :pswitch_3
    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    #@23
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@26
    return-object v0

    #@27
    .line 231
    :pswitch_4
    new-instance v0, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@29
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@2c
    return-object v0

    #@2d
    .line 233
    :pswitch_5
    new-instance v0, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;

    #@2f
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@32
    return-object v0

    #@33
    .line 235
    :pswitch_6
    new-instance v0, Lcom/android/server/wifi/anqp/HSIconFileElement;

    #@35
    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/anqp/HSIconFileElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@38
    return-object v0

    #@39
    .line 221
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static buildHomeRealmRequest(Ljava/util/List;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "realmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    #@1
    .line 93
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@6
    .line 94
    const/16 v4, -0x2223

    #@8
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@b
    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v0

    #@f
    .line 96
    .local v0, "lenPos":I
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@12
    .line 98
    const v4, 0x119a6f50

    #@15
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@18
    .line 99
    const/4 v4, 0x6

    #@19
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1c
    .line 100
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1f
    .line 102
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@22
    move-result v4

    #@23
    int-to-byte v4, v4

    #@24
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@27
    .line 103
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    .local v3, "realmName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Ljava/lang/String;

    #@37
    .line 104
    .local v2, "realmName":Ljava/lang/String;
    const/4 v4, 0x1

    #@38
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3b
    .line 105
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3d
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@40
    move-result-object v1

    #@41
    .line 106
    .local v1, "octets":[B
    array-length v4, v1

    #@42
    int-to-byte v4, v4

    #@43
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@46
    .line 107
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@49
    goto :goto_0

    #@4a
    .line 109
    .end local v1    # "octets":[B
    .end local v2    # "realmName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4d
    move-result v4

    #@4e
    sub-int/2addr v4, v0

    #@4f
    add-int/lit8 v4, v4, -0x2

    #@51
    int-to-short v4, v4

    #@52
    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@55
    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@58
    .line 112
    return-object p1
.end method

.method public static buildIconRequest(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 116
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@6
    .line 117
    const/16 v1, -0x2223

    #@8
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@b
    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v0

    #@f
    .line 119
    .local v0, "lenPos":I
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@12
    .line 121
    const v1, 0x119a6f50

    #@15
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@18
    .line 122
    const/16 v1, 0xa

    #@1a
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1d
    .line 123
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@20
    .line 125
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@22
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@29
    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@2c
    move-result v1

    #@2d
    sub-int/2addr v1, v0

    #@2e
    add-int/lit8 v1, v1, -0x2

    #@30
    int-to-short v1, v1

    #@31
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@34
    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@37
    .line 129
    return-object p1
.end method

.method public static buildQueryRequest(Ljava/util/Set;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v7, 0x0

    #@1
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@6
    .line 45
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@9
    .line 47
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@c
    move-result-object v0

    #@d
    .line 49
    .local v0, "elementIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@f
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@12
    .line 50
    const/16 v6, 0x100

    #@14
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@17
    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1a
    move-result v3

    #@1b
    .line 52
    .local v3, "lenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@1e
    .line 54
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_1

    #@24
    .line 55
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2a
    invoke-static {v6}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@2d
    move-result-object v2

    #@2e
    .line 56
    .local v2, "id":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@30
    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    #@33
    move-result v6

    #@34
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@37
    goto :goto_0

    #@38
    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@3b
    .line 63
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3e
    move-result v6

    #@3f
    sub-int/2addr v6, v3

    #@40
    add-int/lit8 v6, v6, -0x2

    #@42
    int-to-short v6, v6

    #@43
    invoke-virtual {p1, v3, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@46
    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_4

    #@4c
    .line 67
    const/16 v6, -0x2223

    #@4e
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@51
    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@54
    move-result v5

    #@55
    .line 69
    .local v5, "vsLenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@58
    .line 71
    const v6, 0x119a6f50

    #@5b
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5e
    .line 72
    const/4 v6, 0x1

    #@5f
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@62
    .line 73
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@65
    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_3

    #@6b
    .line 76
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@71
    .line 77
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@74
    move-result-object v2

    #@75
    .line 78
    .restart local v2    # "id":Ljava/lang/Integer;
    if-nez v2, :cond_2

    #@77
    .line 79
    new-instance v6, Ljava/lang/RuntimeException;

    #@79
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "Unmapped ANQPElementType: "

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v7

    #@89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@90
    throw v6

    #@91
    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    #@94
    move-result v6

    #@95
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@98
    goto :goto_1

    #@99
    .line 85
    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@9c
    move-result v6

    #@9d
    sub-int/2addr v6, v5

    #@9e
    add-int/lit8 v6, v6, -0x2

    #@a0
    int-to-short v6, v6

    #@a1
    .line 84
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@a4
    .line 88
    .end local v5    # "vsLenPos":I
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@a7
    .line 89
    return-object p1
.end method

.method public static getBaseANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    return-object v0
.end method

.method public static getHS20ANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2
    return-object v0
.end method

.method public static parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 135
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 136
    invoke-static {p0}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    goto :goto_0

    #@18
    .line 138
    :cond_0
    return-object v0
.end method
