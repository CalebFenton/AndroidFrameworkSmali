.class public Lcom/android/server/wifi/anqp/ANQPFactory;
.super Ljava/lang/Object;
.source "ANQPFactory.java"


# static fields
.field private static final synthetic -com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

.field private static final BaseANQPSet1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final BaseANQPSet2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final HS20ANQPSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field

.field private static final HS20ANQPSetwOSU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->-com-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues:[I

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
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 21
    const/4 v0, 0x7

    #@6
    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@8
    .line 22
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@a
    aput-object v1, v0, v3

    #@c
    .line 23
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@e
    aput-object v1, v0, v4

    #@10
    .line 24
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@12
    aput-object v1, v0, v5

    #@14
    .line 25
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@16
    aput-object v1, v0, v6

    #@18
    .line 26
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1a
    aput-object v1, v0, v7

    #@1c
    .line 27
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1e
    const/4 v2, 0x5

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 28
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@23
    const/4 v2, 0x6

    #@24
    aput-object v1, v0, v2

    #@26
    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@29
    move-result-object v0

    #@2a
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet1:Ljava/util/List;

    #@2c
    .line 30
    const/4 v0, 0x6

    #@2d
    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@2f
    .line 31
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@31
    aput-object v1, v0, v3

    #@33
    .line 32
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@35
    aput-object v1, v0, v4

    #@37
    .line 33
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@39
    aput-object v1, v0, v5

    #@3b
    .line 34
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@3d
    aput-object v1, v0, v6

    #@3f
    .line 35
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@41
    aput-object v1, v0, v7

    #@43
    .line 36
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@45
    const/4 v2, 0x5

    #@46
    aput-object v1, v0, v2

    #@48
    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@4b
    move-result-object v0

    #@4c
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet2:Ljava/util/List;

    #@4e
    .line 38
    new-array v0, v6, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@50
    .line 39
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@52
    aput-object v1, v0, v3

    #@54
    .line 40
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@56
    aput-object v1, v0, v4

    #@58
    .line 41
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@5a
    aput-object v1, v0, v5

    #@5c
    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5f
    move-result-object v0

    #@60
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:Ljava/util/List;

    #@62
    .line 43
    new-array v0, v7, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@64
    .line 44
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@66
    aput-object v1, v0, v3

    #@68
    .line 45
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6a
    aput-object v1, v0, v4

    #@6c
    .line 46
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@6e
    aput-object v1, v0, v5

    #@70
    .line 47
    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@72
    aput-object v1, v0, v6

    #@74
    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@77
    move-result-object v0

    #@78
    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSetwOSU:Ljava/util/List;

    #@7a
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
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
    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v3

    #@7
    const/4 v4, 0x4

    #@8
    if-ge v3, v4, :cond_0

    #@a
    .line 179
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
    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@2b
    move-result v3

    #@2c
    and-int v1, v3, v5

    #@2e
    .line 182
    .local v1, "infoIDNumber":I
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@31
    move-result-object v0

    #@32
    .line 183
    .local v0, "infoID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v0, :cond_1

    #@34
    .line 184
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
    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    #@51
    move-result v3

    #@52
    and-int v2, v3, v5

    #@54
    .line 188
    .local v2, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@57
    move-result v3

    #@58
    if-ge v3, v2, :cond_2

    #@5a
    .line 189
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
    .line 190
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6b
    move-result v5

    #@6c
    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    .line 190
    const-string/jumbo v5, " vs "

    #@73
    .line 189
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
    .line 192
    :cond_2
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    #@86
    move-result-object v3

    #@87
    return-object v3
.end method

.method public static buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 9
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
    const/4 v8, 0x0

    #@1
    .line 198
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@4
    move-result-object v6

    #@5
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@7
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v2

    #@b
    .line 199
    .local v2, "elementPayload":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v6

    #@f
    add-int/2addr v6, p2

    #@10
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 200
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    #@16
    move-result v6

    #@17
    add-int/2addr v6, p2

    #@18
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@1b
    .line 202
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->-getcom-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues()[I

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@22
    move-result v7

    #@23
    aget v6, v6, v7

    #@25
    packed-switch v6, :pswitch_data_0

    #@28
    .line 252
    new-instance v6, Ljava/net/ProtocolException;

    #@2a
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v8, "Unknown element ID: "

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@41
    throw v6
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@42
    .line 254
    .end local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    #@43
    .line 255
    .local v1, "e":Ljava/net/ProtocolException;
    throw v1

    #@44
    .line 204
    .end local v1    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    :pswitch_0
    :try_start_1
    new-instance v6, Lcom/android/server/wifi/anqp/CapabilityListElement;

    #@46
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/CapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@49
    return-object v6

    #@4a
    .line 206
    :pswitch_1
    new-instance v6, Lcom/android/server/wifi/anqp/VenueNameElement;

    #@4c
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@4f
    return-object v6

    #@50
    .line 208
    :pswitch_2
    new-instance v6, Lcom/android/server/wifi/anqp/EmergencyNumberElement;

    #@52
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/EmergencyNumberElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@55
    return-object v6

    #@56
    .line 210
    :pswitch_3
    new-instance v6, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;

    #@58
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@5b
    return-object v6

    #@5c
    .line 212
    :pswitch_4
    new-instance v6, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    #@5e
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@61
    return-object v6

    #@62
    .line 214
    :pswitch_5
    new-instance v6, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;

    #@64
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@67
    return-object v6

    #@68
    .line 216
    :pswitch_6
    new-instance v6, Lcom/android/server/wifi/anqp/NAIRealmElement;

    #@6a
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/NAIRealmElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@6d
    return-object v6

    #@6e
    .line 218
    :pswitch_7
    new-instance v6, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    #@70
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@73
    return-object v6

    #@74
    .line 220
    :pswitch_8
    new-instance v6, Lcom/android/server/wifi/anqp/GEOLocationElement;

    #@76
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@79
    return-object v6

    #@7a
    .line 222
    :pswitch_9
    new-instance v6, Lcom/android/server/wifi/anqp/CivicLocationElement;

    #@7c
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@7f
    return-object v6

    #@80
    .line 224
    :pswitch_a
    new-instance v6, Lcom/android/server/wifi/anqp/GenericStringElement;

    #@82
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@85
    return-object v6

    #@86
    .line 226
    :pswitch_b
    new-instance v6, Lcom/android/server/wifi/anqp/DomainNameElement;

    #@88
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/DomainNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@8b
    return-object v6

    #@8c
    .line 228
    :pswitch_c
    new-instance v6, Lcom/android/server/wifi/anqp/GenericStringElement;

    #@8e
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@91
    return-object v6

    #@92
    .line 230
    :pswitch_d
    new-instance v6, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@94
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@97
    return-object v6

    #@98
    .line 232
    :pswitch_e
    new-instance v6, Lcom/android/server/wifi/anqp/GenericStringElement;

    #@9a
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@9d
    return-object v6

    #@9e
    .line 234
    :pswitch_f
    new-instance v6, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@a0
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@a3
    return-object v6

    #@a4
    .line 236
    :pswitch_10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@a7
    move-result v6

    #@a8
    const/4 v7, 0x5

    #@a9
    if-le v6, v7, :cond_2

    #@ab
    .line 237
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@ae
    move-result v4

    #@af
    .line 238
    .local v4, "oi":I
    const v6, 0x119a6f50

    #@b2
    if-eq v4, v6, :cond_0

    #@b4
    .line 239
    return-object v8

    #@b5
    .line 241
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    #@b8
    move-result v6

    #@b9
    and-int/lit16 v5, v6, 0xff

    #@bb
    .line 242
    .local v5, "subType":I
    invoke-static {v5}, Lcom/android/server/wifi/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@be
    move-result-object v3

    #@bf
    .line 243
    .local v3, "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v3, :cond_1

    #@c1
    .line 244
    new-instance v6, Ljava/net/ProtocolException;

    #@c3
    new-instance v7, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v8, "Bad HS20 info ID: "

    #@cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v7

    #@d3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v7

    #@d7
    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@da
    throw v6
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@db
    .line 256
    .end local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    .end local v3    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v4    # "oi":I
    .end local v5    # "subType":I
    :catch_1
    move-exception v0

    #@dc
    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/net/ProtocolException;

    #@de
    const-string/jumbo v7, "Unknown parsing error"

    #@e1
    invoke-direct {v6, v7, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e4
    throw v6

    #@e5
    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "elementPayload":Ljava/nio/ByteBuffer;
    .restart local v3    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .restart local v4    # "oi":I
    .restart local v5    # "subType":I
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    #@e8
    .line 247
    invoke-static {v3, v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@eb
    move-result-object v6

    #@ec
    return-object v6

    #@ed
    .line 249
    .end local v3    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v4    # "oi":I
    .end local v5    # "subType":I
    :cond_2
    new-instance v6, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@ef
    invoke-direct {v6, p1, v2}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@f2
    return-object v6

    #@f3
    .line 202
    nop

    #@f4
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
    .locals 4
    .param p0, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/anqp/ANQPFactory;->-getcom-android-server-wifi-anqp-Constants$ANQPElementTypeSwitchesValues()[I

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    #@7
    move-result v3

    #@8
    aget v2, v2, v3

    #@a
    packed-switch v2, :pswitch_data_0

    #@d
    .line 282
    const/4 v2, 0x0

    #@e
    return-object v2

    #@f
    .line 268
    :pswitch_0
    new-instance v2, Lcom/android/server/wifi/anqp/HSCapabilityListElement;

    #@11
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSCapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@14
    return-object v2

    #@15
    .line 270
    :pswitch_1
    new-instance v2, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    #@17
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@1a
    return-object v2

    #@1b
    .line 272
    :pswitch_2
    new-instance v2, Lcom/android/server/wifi/anqp/HSWanMetricsElement;

    #@1d
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@20
    return-object v2

    #@21
    .line 274
    :pswitch_3
    new-instance v2, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    #@23
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@26
    return-object v2

    #@27
    .line 276
    :pswitch_4
    new-instance v2, Lcom/android/server/wifi/anqp/GenericBlobElement;

    #@29
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@2c
    return-object v2

    #@2d
    .line 278
    :pswitch_5
    new-instance v2, Lcom/android/server/wifi/anqp/RawByteElement;

    #@2f
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/RawByteElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    #@32
    return-object v2

    #@33
    .line 280
    :pswitch_6
    new-instance v2, Lcom/android/server/wifi/anqp/HSIconFileElement;

    #@35
    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/anqp/HSIconFileElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    return-object v2

    #@39
    .line 286
    :catch_0
    move-exception v0

    #@3a
    .line 289
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/net/ProtocolException;

    #@3c
    const-string/jumbo v3, "Unknown parsing error"

    #@3f
    invoke-direct {v2, v3, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@42
    throw v2

    #@43
    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@44
    .line 285
    .local v1, "e":Ljava/net/ProtocolException;
    throw v1

    #@45
    .line 266
    nop

    #@46
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
    .line 129
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@6
    .line 130
    const/16 v4, -0x2223

    #@8
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@b
    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v0

    #@f
    .line 132
    .local v0, "lenPos":I
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@12
    .line 134
    const v4, 0x119a6f50

    #@15
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@18
    .line 135
    const/4 v4, 0x6

    #@19
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1c
    .line 136
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1f
    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@22
    move-result v4

    #@23
    int-to-byte v4, v4

    #@24
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@27
    .line 139
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
    .line 140
    .local v2, "realmName":Ljava/lang/String;
    const/4 v4, 0x1

    #@38
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@3b
    .line 141
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@3d
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@40
    move-result-object v1

    #@41
    .line 142
    .local v1, "octets":[B
    array-length v4, v1

    #@42
    int-to-byte v4, v4

    #@43
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@46
    .line 143
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@49
    goto :goto_0

    #@4a
    .line 145
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
    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@58
    .line 148
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
    .line 152
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@6
    .line 153
    const/16 v1, -0x2223

    #@8
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@b
    .line 154
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@e
    move-result v0

    #@f
    .line 155
    .local v0, "lenPos":I
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@12
    .line 157
    const v1, 0x119a6f50

    #@15
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@18
    .line 158
    const/16 v1, 0xa

    #@1a
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1d
    .line 159
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@20
    .line 161
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@22
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@29
    .line 162
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
    .line 164
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@37
    .line 165
    return-object p1
.end method

.method public static buildQueryList(Lcom/android/server/wifi/hotspot2/NetworkDetail;ZZ)Ljava/util/List;
    .locals 4
    .param p0, "networkDetail"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p1, "matchSet"    # Z
    .param p2, "osu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 61
    .local v1, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    if-eqz p1, :cond_1

    #@8
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpOICount()I

    #@b
    move-result v3

    #@c
    if-lez v3, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    :cond_0
    invoke-static {v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->getBaseANQPSet(Z)Ljava/util/List;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@16
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@19
    move-result-object v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 66
    if-eqz p2, :cond_3

    #@1e
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHSRelease()Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@21
    move-result-object v2

    #@22
    sget-object v3, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@24
    if-ne v2, v3, :cond_3

    #@26
    const/4 v0, 0x1

    #@27
    .line 67
    .local v0, "includeOSU":Z
    :goto_0
    if-eqz p1, :cond_4

    #@29
    .line 68
    invoke-static {v0}, Lcom/android/server/wifi/anqp/ANQPFactory;->getHS20ANQPSet(Z)Ljava/util/List;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@30
    .line 75
    .end local v0    # "includeOSU":Z
    :cond_2
    :goto_1
    return-object v1

    #@31
    .line 66
    :cond_3
    const/4 v0, 0x0

    #@32
    .restart local v0    # "includeOSU":Z
    goto :goto_0

    #@33
    .line 70
    :cond_4
    if-eqz v0, :cond_2

    #@35
    .line 71
    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSOSUProviders:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@37
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    goto :goto_1
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
    .line 80
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@6
    .line 81
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@9
    .line 83
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@c
    move-result-object v0

    #@d
    .line 85
    .local v0, "elementIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@f
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@12
    .line 86
    const/16 v6, 0x100

    #@14
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@17
    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1a
    move-result v3

    #@1b
    .line 88
    .local v3, "lenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@1e
    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_1

    #@24
    .line 91
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
    .line 92
    .local v2, "id":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    #@30
    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    #@33
    move-result v6

    #@34
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@37
    goto :goto_0

    #@38
    .line 95
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@3b
    .line 99
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
    .line 102
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_4

    #@4c
    .line 103
    const/16 v6, -0x2223

    #@4e
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@51
    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@54
    move-result v5

    #@55
    .line 105
    .local v5, "vsLenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@58
    .line 107
    const v6, 0x119a6f50

    #@5b
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5e
    .line 108
    const/4 v6, 0x1

    #@5f
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@62
    .line 109
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@65
    .line 111
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_3

    #@6b
    .line 112
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@71
    .line 113
    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    #@74
    move-result-object v2

    #@75
    .line 114
    .restart local v2    # "id":Ljava/lang/Integer;
    if-nez v2, :cond_2

    #@77
    .line 115
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
    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    #@94
    move-result v6

    #@95
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@98
    goto :goto_1

    #@99
    .line 121
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
    .line 120
    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@a4
    .line 124
    .end local v5    # "vsLenPos":I
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@a7
    .line 125
    return-object p1
.end method

.method public static getBaseANQPSet(Z)Ljava/util/List;
    .locals 1
    .param p0, "includeRC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet1:Ljava/util/List;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet2:Ljava/util/List;

    #@7
    goto :goto_0
.end method

.method public static getHS20ANQPSet(Z)Ljava/util/List;
    .locals 1
    .param p0, "includeOSU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSetwOSU:Ljava/util/List;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:Ljava/util/List;

    #@7
    goto :goto_0
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
    .line 169
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 171
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 172
    invoke-static {p0}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    goto :goto_0

    #@18
    .line 174
    :cond_0
    return-object v0
.end method
