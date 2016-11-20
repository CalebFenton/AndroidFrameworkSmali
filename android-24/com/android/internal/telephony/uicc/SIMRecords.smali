.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$1;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-uicc-SIMRecords$GetSpnFsmStateSwitchesValues:[I = null

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final EVENT_APP_LOCKED:I = 0x23

.field private static final EVENT_CARRIER_CONFIG_CHANGED:I = 0x25

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GID2_DONE:I = 0x24

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80


# instance fields
.field private mCallForwardingStatus:I

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfLi:[B

.field mEfMWIS:[B

.field mEfPl:[B

.field mPnnHomeName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-uicc-SIMRecords$GetSpnFsmStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com-android-internal-telephony-uicc-SIMRecords$GetSpnFsmStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com-android-internal-telephony-uicc-SIMRecords$GetSpnFsmStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->values()[Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x5

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x4

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com-android-internal-telephony-uicc-SIMRecords$GetSpnFsmStateSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 174
    const/16 v0, 0x83

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 175
    const-string/jumbo v1, "302370"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "302720"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "310260"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 176
    const-string/jumbo v1, "405025"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "405026"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "405027"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "405028"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "405029"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    const-string/jumbo v1, "405030"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    const-string/jumbo v1, "405031"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    const-string/jumbo v1, "405032"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 177
    const-string/jumbo v1, "405033"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    const-string/jumbo v1, "405034"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    const-string/jumbo v1, "405035"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    const-string/jumbo v1, "405036"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    const-string/jumbo v1, "405037"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    const-string/jumbo v1, "405038"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    const-string/jumbo v1, "405039"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    const-string/jumbo v1, "405040"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 178
    const-string/jumbo v1, "405041"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    const-string/jumbo v1, "405042"

    #@8b
    const/16 v2, 0x14

    #@8d
    aput-object v1, v0, v2

    #@8f
    const-string/jumbo v1, "405043"

    #@92
    const/16 v2, 0x15

    #@94
    aput-object v1, v0, v2

    #@96
    const-string/jumbo v1, "405044"

    #@99
    const/16 v2, 0x16

    #@9b
    aput-object v1, v0, v2

    #@9d
    const-string/jumbo v1, "405045"

    #@a0
    const/16 v2, 0x17

    #@a2
    aput-object v1, v0, v2

    #@a4
    const-string/jumbo v1, "405046"

    #@a7
    const/16 v2, 0x18

    #@a9
    aput-object v1, v0, v2

    #@ab
    const-string/jumbo v1, "405047"

    #@ae
    const/16 v2, 0x19

    #@b0
    aput-object v1, v0, v2

    #@b2
    const-string/jumbo v1, "405750"

    #@b5
    const/16 v2, 0x1a

    #@b7
    aput-object v1, v0, v2

    #@b9
    .line 179
    const-string/jumbo v1, "405751"

    #@bc
    const/16 v2, 0x1b

    #@be
    aput-object v1, v0, v2

    #@c0
    const-string/jumbo v1, "405752"

    #@c3
    const/16 v2, 0x1c

    #@c5
    aput-object v1, v0, v2

    #@c7
    const-string/jumbo v1, "405753"

    #@ca
    const/16 v2, 0x1d

    #@cc
    aput-object v1, v0, v2

    #@ce
    const-string/jumbo v1, "405754"

    #@d1
    const/16 v2, 0x1e

    #@d3
    aput-object v1, v0, v2

    #@d5
    const-string/jumbo v1, "405755"

    #@d8
    const/16 v2, 0x1f

    #@da
    aput-object v1, v0, v2

    #@dc
    const-string/jumbo v1, "405756"

    #@df
    const/16 v2, 0x20

    #@e1
    aput-object v1, v0, v2

    #@e3
    const-string/jumbo v1, "405799"

    #@e6
    const/16 v2, 0x21

    #@e8
    aput-object v1, v0, v2

    #@ea
    const-string/jumbo v1, "405800"

    #@ed
    const/16 v2, 0x22

    #@ef
    aput-object v1, v0, v2

    #@f1
    .line 180
    const-string/jumbo v1, "405801"

    #@f4
    const/16 v2, 0x23

    #@f6
    aput-object v1, v0, v2

    #@f8
    const-string/jumbo v1, "405802"

    #@fb
    const/16 v2, 0x24

    #@fd
    aput-object v1, v0, v2

    #@ff
    const-string/jumbo v1, "405803"

    #@102
    const/16 v2, 0x25

    #@104
    aput-object v1, v0, v2

    #@106
    const-string/jumbo v1, "405804"

    #@109
    const/16 v2, 0x26

    #@10b
    aput-object v1, v0, v2

    #@10d
    const-string/jumbo v1, "405805"

    #@110
    const/16 v2, 0x27

    #@112
    aput-object v1, v0, v2

    #@114
    const-string/jumbo v1, "405806"

    #@117
    const/16 v2, 0x28

    #@119
    aput-object v1, v0, v2

    #@11b
    const-string/jumbo v1, "405807"

    #@11e
    const/16 v2, 0x29

    #@120
    aput-object v1, v0, v2

    #@122
    const-string/jumbo v1, "405808"

    #@125
    const/16 v2, 0x2a

    #@127
    aput-object v1, v0, v2

    #@129
    .line 181
    const-string/jumbo v1, "405809"

    #@12c
    const/16 v2, 0x2b

    #@12e
    aput-object v1, v0, v2

    #@130
    const-string/jumbo v1, "405810"

    #@133
    const/16 v2, 0x2c

    #@135
    aput-object v1, v0, v2

    #@137
    const-string/jumbo v1, "405811"

    #@13a
    const/16 v2, 0x2d

    #@13c
    aput-object v1, v0, v2

    #@13e
    const-string/jumbo v1, "405812"

    #@141
    const/16 v2, 0x2e

    #@143
    aput-object v1, v0, v2

    #@145
    const-string/jumbo v1, "405813"

    #@148
    const/16 v2, 0x2f

    #@14a
    aput-object v1, v0, v2

    #@14c
    const-string/jumbo v1, "405814"

    #@14f
    const/16 v2, 0x30

    #@151
    aput-object v1, v0, v2

    #@153
    const-string/jumbo v1, "405815"

    #@156
    const/16 v2, 0x31

    #@158
    aput-object v1, v0, v2

    #@15a
    const-string/jumbo v1, "405816"

    #@15d
    const/16 v2, 0x32

    #@15f
    aput-object v1, v0, v2

    #@161
    .line 182
    const-string/jumbo v1, "405817"

    #@164
    const/16 v2, 0x33

    #@166
    aput-object v1, v0, v2

    #@168
    const-string/jumbo v1, "405818"

    #@16b
    const/16 v2, 0x34

    #@16d
    aput-object v1, v0, v2

    #@16f
    const-string/jumbo v1, "405819"

    #@172
    const/16 v2, 0x35

    #@174
    aput-object v1, v0, v2

    #@176
    const-string/jumbo v1, "405820"

    #@179
    const/16 v2, 0x36

    #@17b
    aput-object v1, v0, v2

    #@17d
    const-string/jumbo v1, "405821"

    #@180
    const/16 v2, 0x37

    #@182
    aput-object v1, v0, v2

    #@184
    const-string/jumbo v1, "405822"

    #@187
    const/16 v2, 0x38

    #@189
    aput-object v1, v0, v2

    #@18b
    const-string/jumbo v1, "405823"

    #@18e
    const/16 v2, 0x39

    #@190
    aput-object v1, v0, v2

    #@192
    const-string/jumbo v1, "405824"

    #@195
    const/16 v2, 0x3a

    #@197
    aput-object v1, v0, v2

    #@199
    .line 183
    const-string/jumbo v1, "405825"

    #@19c
    const/16 v2, 0x3b

    #@19e
    aput-object v1, v0, v2

    #@1a0
    const-string/jumbo v1, "405826"

    #@1a3
    const/16 v2, 0x3c

    #@1a5
    aput-object v1, v0, v2

    #@1a7
    const-string/jumbo v1, "405827"

    #@1aa
    const/16 v2, 0x3d

    #@1ac
    aput-object v1, v0, v2

    #@1ae
    const-string/jumbo v1, "405828"

    #@1b1
    const/16 v2, 0x3e

    #@1b3
    aput-object v1, v0, v2

    #@1b5
    const-string/jumbo v1, "405829"

    #@1b8
    const/16 v2, 0x3f

    #@1ba
    aput-object v1, v0, v2

    #@1bc
    const-string/jumbo v1, "405830"

    #@1bf
    const/16 v2, 0x40

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    const-string/jumbo v1, "405831"

    #@1c6
    const/16 v2, 0x41

    #@1c8
    aput-object v1, v0, v2

    #@1ca
    const-string/jumbo v1, "405832"

    #@1cd
    const/16 v2, 0x42

    #@1cf
    aput-object v1, v0, v2

    #@1d1
    .line 184
    const-string/jumbo v1, "405833"

    #@1d4
    const/16 v2, 0x43

    #@1d6
    aput-object v1, v0, v2

    #@1d8
    const-string/jumbo v1, "405834"

    #@1db
    const/16 v2, 0x44

    #@1dd
    aput-object v1, v0, v2

    #@1df
    const-string/jumbo v1, "405835"

    #@1e2
    const/16 v2, 0x45

    #@1e4
    aput-object v1, v0, v2

    #@1e6
    const-string/jumbo v1, "405836"

    #@1e9
    const/16 v2, 0x46

    #@1eb
    aput-object v1, v0, v2

    #@1ed
    const-string/jumbo v1, "405837"

    #@1f0
    const/16 v2, 0x47

    #@1f2
    aput-object v1, v0, v2

    #@1f4
    const-string/jumbo v1, "405838"

    #@1f7
    const/16 v2, 0x48

    #@1f9
    aput-object v1, v0, v2

    #@1fb
    const-string/jumbo v1, "405839"

    #@1fe
    const/16 v2, 0x49

    #@200
    aput-object v1, v0, v2

    #@202
    const-string/jumbo v1, "405840"

    #@205
    const/16 v2, 0x4a

    #@207
    aput-object v1, v0, v2

    #@209
    .line 185
    const-string/jumbo v1, "405841"

    #@20c
    const/16 v2, 0x4b

    #@20e
    aput-object v1, v0, v2

    #@210
    const-string/jumbo v1, "405842"

    #@213
    const/16 v2, 0x4c

    #@215
    aput-object v1, v0, v2

    #@217
    const-string/jumbo v1, "405843"

    #@21a
    const/16 v2, 0x4d

    #@21c
    aput-object v1, v0, v2

    #@21e
    const-string/jumbo v1, "405844"

    #@221
    const/16 v2, 0x4e

    #@223
    aput-object v1, v0, v2

    #@225
    const-string/jumbo v1, "405845"

    #@228
    const/16 v2, 0x4f

    #@22a
    aput-object v1, v0, v2

    #@22c
    const-string/jumbo v1, "405846"

    #@22f
    const/16 v2, 0x50

    #@231
    aput-object v1, v0, v2

    #@233
    const-string/jumbo v1, "405847"

    #@236
    const/16 v2, 0x51

    #@238
    aput-object v1, v0, v2

    #@23a
    const-string/jumbo v1, "405848"

    #@23d
    const/16 v2, 0x52

    #@23f
    aput-object v1, v0, v2

    #@241
    .line 186
    const-string/jumbo v1, "405849"

    #@244
    const/16 v2, 0x53

    #@246
    aput-object v1, v0, v2

    #@248
    const-string/jumbo v1, "405850"

    #@24b
    const/16 v2, 0x54

    #@24d
    aput-object v1, v0, v2

    #@24f
    const-string/jumbo v1, "405851"

    #@252
    const/16 v2, 0x55

    #@254
    aput-object v1, v0, v2

    #@256
    const-string/jumbo v1, "405852"

    #@259
    const/16 v2, 0x56

    #@25b
    aput-object v1, v0, v2

    #@25d
    const-string/jumbo v1, "405853"

    #@260
    const/16 v2, 0x57

    #@262
    aput-object v1, v0, v2

    #@264
    const-string/jumbo v1, "405875"

    #@267
    const/16 v2, 0x58

    #@269
    aput-object v1, v0, v2

    #@26b
    const-string/jumbo v1, "405876"

    #@26e
    const/16 v2, 0x59

    #@270
    aput-object v1, v0, v2

    #@272
    const-string/jumbo v1, "405877"

    #@275
    const/16 v2, 0x5a

    #@277
    aput-object v1, v0, v2

    #@279
    .line 187
    const-string/jumbo v1, "405878"

    #@27c
    const/16 v2, 0x5b

    #@27e
    aput-object v1, v0, v2

    #@280
    const-string/jumbo v1, "405879"

    #@283
    const/16 v2, 0x5c

    #@285
    aput-object v1, v0, v2

    #@287
    const-string/jumbo v1, "405880"

    #@28a
    const/16 v2, 0x5d

    #@28c
    aput-object v1, v0, v2

    #@28e
    const-string/jumbo v1, "405881"

    #@291
    const/16 v2, 0x5e

    #@293
    aput-object v1, v0, v2

    #@295
    const-string/jumbo v1, "405882"

    #@298
    const/16 v2, 0x5f

    #@29a
    aput-object v1, v0, v2

    #@29c
    const-string/jumbo v1, "405883"

    #@29f
    const/16 v2, 0x60

    #@2a1
    aput-object v1, v0, v2

    #@2a3
    const-string/jumbo v1, "405884"

    #@2a6
    const/16 v2, 0x61

    #@2a8
    aput-object v1, v0, v2

    #@2aa
    const-string/jumbo v1, "405885"

    #@2ad
    const/16 v2, 0x62

    #@2af
    aput-object v1, v0, v2

    #@2b1
    .line 188
    const-string/jumbo v1, "405886"

    #@2b4
    const/16 v2, 0x63

    #@2b6
    aput-object v1, v0, v2

    #@2b8
    const-string/jumbo v1, "405908"

    #@2bb
    const/16 v2, 0x64

    #@2bd
    aput-object v1, v0, v2

    #@2bf
    const-string/jumbo v1, "405909"

    #@2c2
    const/16 v2, 0x65

    #@2c4
    aput-object v1, v0, v2

    #@2c6
    const-string/jumbo v1, "405910"

    #@2c9
    const/16 v2, 0x66

    #@2cb
    aput-object v1, v0, v2

    #@2cd
    const-string/jumbo v1, "405911"

    #@2d0
    const/16 v2, 0x67

    #@2d2
    aput-object v1, v0, v2

    #@2d4
    const-string/jumbo v1, "405912"

    #@2d7
    const/16 v2, 0x68

    #@2d9
    aput-object v1, v0, v2

    #@2db
    const-string/jumbo v1, "405913"

    #@2de
    const/16 v2, 0x69

    #@2e0
    aput-object v1, v0, v2

    #@2e2
    const-string/jumbo v1, "405914"

    #@2e5
    const/16 v2, 0x6a

    #@2e7
    aput-object v1, v0, v2

    #@2e9
    .line 189
    const-string/jumbo v1, "405915"

    #@2ec
    const/16 v2, 0x6b

    #@2ee
    aput-object v1, v0, v2

    #@2f0
    const-string/jumbo v1, "405916"

    #@2f3
    const/16 v2, 0x6c

    #@2f5
    aput-object v1, v0, v2

    #@2f7
    const-string/jumbo v1, "405917"

    #@2fa
    const/16 v2, 0x6d

    #@2fc
    aput-object v1, v0, v2

    #@2fe
    const-string/jumbo v1, "405918"

    #@301
    const/16 v2, 0x6e

    #@303
    aput-object v1, v0, v2

    #@305
    const-string/jumbo v1, "405919"

    #@308
    const/16 v2, 0x6f

    #@30a
    aput-object v1, v0, v2

    #@30c
    const-string/jumbo v1, "405920"

    #@30f
    const/16 v2, 0x70

    #@311
    aput-object v1, v0, v2

    #@313
    const-string/jumbo v1, "405921"

    #@316
    const/16 v2, 0x71

    #@318
    aput-object v1, v0, v2

    #@31a
    const-string/jumbo v1, "405922"

    #@31d
    const/16 v2, 0x72

    #@31f
    aput-object v1, v0, v2

    #@321
    .line 190
    const-string/jumbo v1, "405923"

    #@324
    const/16 v2, 0x73

    #@326
    aput-object v1, v0, v2

    #@328
    const-string/jumbo v1, "405924"

    #@32b
    const/16 v2, 0x74

    #@32d
    aput-object v1, v0, v2

    #@32f
    const-string/jumbo v1, "405925"

    #@332
    const/16 v2, 0x75

    #@334
    aput-object v1, v0, v2

    #@336
    const-string/jumbo v1, "405926"

    #@339
    const/16 v2, 0x76

    #@33b
    aput-object v1, v0, v2

    #@33d
    const-string/jumbo v1, "405927"

    #@340
    const/16 v2, 0x77

    #@342
    aput-object v1, v0, v2

    #@344
    const-string/jumbo v1, "405928"

    #@347
    const/16 v2, 0x78

    #@349
    aput-object v1, v0, v2

    #@34b
    const-string/jumbo v1, "405929"

    #@34e
    const/16 v2, 0x79

    #@350
    aput-object v1, v0, v2

    #@352
    const-string/jumbo v1, "405930"

    #@355
    const/16 v2, 0x7a

    #@357
    aput-object v1, v0, v2

    #@359
    .line 191
    const-string/jumbo v1, "405931"

    #@35c
    const/16 v2, 0x7b

    #@35e
    aput-object v1, v0, v2

    #@360
    const-string/jumbo v1, "405932"

    #@363
    const/16 v2, 0x7c

    #@365
    aput-object v1, v0, v2

    #@367
    const-string/jumbo v1, "502142"

    #@36a
    const/16 v2, 0x7d

    #@36c
    aput-object v1, v0, v2

    #@36e
    const-string/jumbo v1, "502143"

    #@371
    const/16 v2, 0x7e

    #@373
    aput-object v1, v0, v2

    #@375
    const-string/jumbo v1, "502145"

    #@378
    const/16 v2, 0x7f

    #@37a
    aput-object v1, v0, v2

    #@37c
    const-string/jumbo v1, "502146"

    #@37f
    const/16 v2, 0x80

    #@381
    aput-object v1, v0, v2

    #@383
    const-string/jumbo v1, "502147"

    #@386
    const/16 v2, 0x81

    #@388
    aput-object v1, v0, v2

    #@38a
    const-string/jumbo v1, "502148"

    #@38d
    const/16 v2, 0x82

    #@38f
    aput-object v1, v0, v2

    #@391
    .line 174
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@393
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@6
    .line 76
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@8
    .line 77
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@a
    .line 79
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@c
    .line 80
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@e
    .line 81
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@10
    .line 82
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@12
    .line 84
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    #@14
    .line 85
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@16
    .line 89
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@18
    .line 91
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@1a
    .line 223
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$1;

    #@1c
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/SIMRecords$1;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    #@1f
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    #@21
    .line 199
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@23
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@25
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@28
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@2a
    .line 201
    new-instance v1, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@2c
    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    #@2f
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@31
    .line 202
    new-instance v1, Lcom/android/internal/telephony/uicc/SpnOverride;

    #@33
    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    #@36
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@38
    .line 204
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@3a
    .line 207
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3c
    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    const/16 v2, 0x15

    #@40
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    #@43
    .line 210
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@45
    const/16 v2, 0x1f

    #@47
    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4a
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    #@4d
    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4f
    invoke-virtual {v1, p0, v5, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@52
    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@54
    const/16 v2, 0x23

    #@56
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    #@59
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v2, "SIMRecords X ctor this="

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@70
    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    #@72
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@75
    .line 219
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    #@78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7b
    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    #@7d
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@80
    .line 196
    return-void
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    #@0
    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1364
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method private getExtFromEf(I)I
    .locals 3
    .param p1, "ef"    # I

    #@0
    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    #@3
    .line 323
    const/16 v0, 0x6f4a

    #@5
    .line 325
    .local v0, "ext":I
    :goto_0
    return v0

    #@6
    .line 316
    .end local v0    # "ext":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@b
    move-result-object v1

    #@c
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 317
    const/16 v0, 0x6f4e

    #@12
    .restart local v0    # "ext":I
    goto :goto_0

    #@13
    .line 319
    .end local v0    # "ext":I
    :cond_0
    const/16 v0, 0x6f4a

    #@15
    .restart local v0    # "ext":I
    goto :goto_0

    #@16
    .line 313
    :pswitch_data_0
    .packed-switch 0x6f40
        :pswitch_0
    .end packed-switch
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 8
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/16 v6, 0xc

    #@3
    const/4 v5, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    .line 1744
    if-eqz p1, :cond_2

    #@7
    .line 1747
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@9
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@b
    if-eq v2, v3, :cond_0

    #@d
    .line 1748
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 1753
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@15
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@17
    .line 1754
    return-void

    #@18
    .line 1749
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1a
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1c
    if-eq v2, v3, :cond_0

    #@1e
    .line 1750
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@20
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@22
    if-eq v2, v3, :cond_0

    #@24
    .line 1756
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@26
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@28
    .line 1760
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->-getcom-android-internal-telephony-uicc-SIMRecords$GetSpnFsmStateSwitchesValues()[I

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2e
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@31
    move-result v3

    #@32
    aget v2, v2, v3

    #@34
    packed-switch v2, :pswitch_data_0

    #@37
    .line 1865
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@39
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@3b
    .line 1741
    :cond_3
    :goto_0
    return-void

    #@3c
    .line 1762
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@3f
    .line 1764
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@41
    .line 1765
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@44
    move-result-object v3

    #@45
    .line 1764
    const/16 v4, 0x6f46

    #@47
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@4a
    .line 1766
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4c
    add-int/lit8 v2, v2, 0x1

    #@4e
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@50
    .line 1768
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@52
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@54
    goto :goto_0

    #@55
    .line 1771
    :pswitch_1
    if-eqz p2, :cond_6

    #@57
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@59
    if-nez v2, :cond_6

    #@5b
    .line 1772
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5d
    check-cast v0, [B

    #@5f
    .line 1773
    .local v0, "data":[B
    aget-byte v2, v0, v5

    #@61
    and-int/lit16 v2, v2, 0xff

    #@63
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@65
    .line 1776
    array-length v2, v0

    #@66
    add-int/lit8 v2, v2, -0x1

    #@68
    const/4 v3, 0x1

    #@69
    .line 1775
    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@70
    .line 1779
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 1781
    .local v1, "spn":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_5

    #@7c
    .line 1782
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@7e
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@80
    .line 1795
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@82
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@84
    if-ne v2, v3, :cond_3

    #@86
    .line 1796
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@88
    .line 1797
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v3

    #@8c
    .line 1796
    const/16 v4, 0x6f14

    #@8e
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@91
    .line 1798
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@93
    add-int/lit8 v2, v2, 0x1

    #@95
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@97
    .line 1802
    const/4 v2, -0x1

    #@98
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@9a
    goto :goto_0

    #@9b
    .line 1784
    .restart local v0    # "data":[B
    .restart local v1    # "spn":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v3, "Load EF_SPN: "

    #@a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v2

    #@ab
    .line 1785
    const-string/jumbo v3, " spnDisplayCondition: "

    #@ae
    .line 1784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    .line 1785
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@b4
    .line 1784
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@bf
    .line 1786
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@c1
    .line 1787
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c3
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@c6
    move-result v3

    #@c7
    .line 1786
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@ca
    .line 1789
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@cc
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@ce
    goto :goto_1

    #@cf
    .line 1792
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@d1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@d3
    goto :goto_1

    #@d4
    .line 1806
    :pswitch_2
    if-eqz p2, :cond_9

    #@d6
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d8
    if-nez v2, :cond_9

    #@da
    .line 1807
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@dc
    check-cast v0, [B

    #@de
    .line 1810
    .restart local v0    # "data":[B
    array-length v2, v0

    #@df
    .line 1809
    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@e6
    .line 1813
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    .line 1815
    .restart local v1    # "spn":Ljava/lang/String;
    if-eqz v1, :cond_7

    #@ec
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@ef
    move-result v2

    #@f0
    if-nez v2, :cond_8

    #@f2
    .line 1816
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f4
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f6
    .line 1831
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f8
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@fa
    if-ne v2, v3, :cond_3

    #@fc
    .line 1832
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@fe
    .line 1833
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@101
    move-result-object v3

    #@102
    const/16 v4, 0x6f18

    #@104
    .line 1832
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@107
    .line 1834
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@109
    add-int/lit8 v2, v2, 0x1

    #@10b
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@10d
    goto/16 :goto_0

    #@10f
    .line 1819
    .restart local v0    # "data":[B
    .restart local v1    # "spn":Ljava/lang/String;
    :cond_8
    iput v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@111
    .line 1821
    new-instance v2, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v3, "Load EF_SPN_CPHS: "

    #@119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v2

    #@11d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v2

    #@121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v2

    #@125
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@128
    .line 1822
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@12a
    .line 1823
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@12c
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@12f
    move-result v3

    #@130
    .line 1822
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@133
    .line 1825
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@135
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@137
    goto :goto_2

    #@138
    .line 1828
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@13a
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@13c
    goto :goto_2

    #@13d
    .line 1838
    :pswitch_3
    if-eqz p2, :cond_c

    #@13f
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@141
    if-nez v2, :cond_c

    #@143
    .line 1839
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@145
    check-cast v0, [B

    #@147
    .line 1842
    .restart local v0    # "data":[B
    array-length v2, v0

    #@148
    .line 1841
    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@14b
    move-result-object v2

    #@14c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@14f
    .line 1845
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@152
    move-result-object v1

    #@153
    .line 1847
    .restart local v1    # "spn":Ljava/lang/String;
    if-eqz v1, :cond_a

    #@155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@158
    move-result v2

    #@159
    if-nez v2, :cond_b

    #@15b
    .line 1848
    :cond_a
    const-string/jumbo v2, "No SPN loaded in either CHPS or 3GPP"

    #@15e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@161
    .line 1862
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@163
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@165
    goto/16 :goto_0

    #@167
    .line 1851
    .restart local v0    # "data":[B
    .restart local v1    # "spn":Ljava/lang/String;
    :cond_b
    iput v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@169
    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string/jumbo v3, "Load EF_SPN_SHORT_CPHS: "

    #@171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v2

    #@175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v2

    #@179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v2

    #@17d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@180
    .line 1854
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@182
    .line 1855
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@184
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@187
    move-result v3

    #@188
    .line 1854
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@18b
    goto :goto_3

    #@18c
    .line 1858
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@18f
    .line 1859
    const-string/jumbo v2, "No SPN loaded in either CHPS or 3GPP"

    #@192
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@195
    goto :goto_3

    #@196
    .line 1760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCarrierNameOverride()V
    .locals 4

    #@0
    .prologue
    .line 1509
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "carrier_config"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 1508
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@b
    .line 1510
    .local v1, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    #@d
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@10
    move-result-object v2

    #@11
    .line 1511
    const-string/jumbo v3, "carrier_name_override_bool"

    #@14
    .line 1510
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1512
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@1d
    move-result-object v2

    #@1e
    .line 1513
    const-string/jumbo v3, "carrier_name_string"

    #@21
    .line 1512
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 1514
    .local v0, "carrierName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@28
    .line 1515
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2c
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@2f
    move-result v3

    #@30
    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@33
    .line 1507
    .end local v0    # "carrierName":Ljava/lang/String;
    :goto_0
    return-void

    #@34
    .line 1518
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    #@3b
    goto :goto_0
.end method

.method private handleEfCspData([B)V
    .locals 5
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1959
    array-length v2, p1

    #@2
    div-int/lit8 v1, v2, 0x2

    #@4
    .line 1963
    .local v1, "usedCspGroups":I
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@6
    .line 1964
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@9
    .line 1965
    mul-int/lit8 v2, v0, 0x2

    #@b
    aget-byte v2, p1, v2

    #@d
    const/16 v3, -0x40

    #@f
    if-ne v2, v3, :cond_1

    #@11
    .line 1966
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "[CSP] found ValueAddedServicesGroup, value "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    mul-int/lit8 v3, v0, 0x2

    #@1f
    add-int/lit8 v3, v3, 0x1

    #@21
    aget-byte v3, p1, v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2e
    .line 1967
    mul-int/lit8 v2, v0, 0x2

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    aget-byte v2, p1, v2

    #@34
    and-int/lit16 v2, v2, 0x80

    #@36
    const/16 v3, 0x80

    #@38
    if-ne v2, v3, :cond_0

    #@3a
    .line 1971
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@3c
    .line 1979
    :goto_1
    return-void

    #@3d
    .line 1973
    :cond_0
    const/4 v2, 0x0

    #@3e
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@40
    .line 1976
    const-string/jumbo v2, "[CSP] Set Automatic Network Selection"

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@46
    .line 1977
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@48
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4b
    goto :goto_1

    #@4c
    .line 1964
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1983
    :cond_2
    const-string/jumbo v2, "[CSP] Value Added Service Group (0xC0), not found!"

    #@52
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@55
    .line 1952
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .param p1, "efid"    # I

    #@0
    .prologue
    const/16 v3, 0x6f40

    #@2
    const/4 v4, 0x1

    #@3
    .line 1283
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@b
    .line 1320
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@e
    .line 1282
    :goto_0
    return-void

    #@f
    .line 1285
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@15
    .line 1286
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@17
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@19
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@1c
    .line 1287
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@1e
    const/4 v2, 0x6

    #@1f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@22
    move-result-object v2

    #@23
    .line 1286
    const/16 v3, 0x6fc7

    #@25
    const/16 v4, 0x6fc8

    #@27
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1290
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@31
    .line 1291
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@35
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@38
    .line 1292
    const/16 v1, 0xb

    #@3a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@3d
    move-result-object v1

    #@3e
    .line 1291
    const/16 v2, 0x6f17

    #@40
    const/16 v3, 0x6f4a

    #@42
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@45
    goto :goto_0

    #@46
    .line 1295
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@48
    add-int/lit8 v0, v0, 0x1

    #@4a
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4c
    .line 1296
    const-string/jumbo v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@52
    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@54
    .line 1298
    const/16 v1, 0x21

    #@56
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@59
    move-result-object v1

    #@5a
    .line 1297
    const/16 v2, 0x6f15

    #@5c
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@5f
    goto :goto_0

    #@60
    .line 1301
    :sswitch_3
    const-string/jumbo v0, "SIM Refresh called for EF_FDN"

    #@63
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@66
    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@68
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    #@6b
    goto :goto_0

    #@6c
    .line 1305
    :sswitch_4
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@6e
    add-int/lit8 v0, v0, 0x1

    #@70
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@72
    .line 1306
    const-string/jumbo v0, "SIM Refresh called for EF_MSISDN"

    #@75
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@78
    .line 1307
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@7a
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@7c
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@7f
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    #@82
    move-result v1

    #@83
    .line 1308
    const/16 v2, 0xa

    #@85
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@88
    move-result-object v2

    #@89
    .line 1307
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@8c
    goto :goto_0

    #@8d
    .line 1312
    :sswitch_5
    const-string/jumbo v0, "SIM Refresh called for EF_CFIS or EF_CFF_CPHS"

    #@90
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@93
    .line 1313
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    #@96
    goto/16 :goto_0

    #@98
    .line 1283
    :sswitch_data_0
    .sparse-switch
        0x6f13 -> :sswitch_5
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6fc7 -> :sswitch_0
        0x6fcb -> :sswitch_5
    .end sparse-switch
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@0
    .prologue
    .line 1326
    if-nez p1, :cond_0

    #@2
    .line 1327
    const-string/jumbo v0, "handleSimRefresh received without input"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8
    .line 1328
    return-void

    #@9
    .line 1331
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1332
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 1337
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@1d
    packed-switch v0, :pswitch_data_0

    #@20
    .line 1353
    const-string/jumbo v0, "handleSimRefresh with unknown operation"

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@26
    .line 1325
    :goto_0
    return-void

    #@27
    .line 1334
    :cond_2
    return-void

    #@28
    .line 1339
    :pswitch_0
    const-string/jumbo v0, "handleSimRefresh with SIM_FILE_UPDATED"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2e
    .line 1340
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    #@33
    goto :goto_0

    #@34
    .line 1343
    :pswitch_1
    const-string/jumbo v0, "handleSimRefresh with SIM_REFRESH_INIT"

    #@37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3a
    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    #@3d
    goto :goto_0

    #@3e
    .line 1349
    :pswitch_2
    const-string/jumbo v0, "handleSimRefresh with SIM_REFRESH_RESET"

    #@41
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@44
    goto :goto_0

    #@45
    .line 1337
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 7
    .param p1, "ba"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1368
    aget-byte v3, p1, v6

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1369
    const-string/jumbo v3, "ENF"

    #@8
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "status : "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    aget-byte v5, p1, v6

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1373
    :cond_0
    aget-byte v3, p1, v6

    #@23
    const/4 v4, 0x3

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 1374
    array-length v1, p1

    #@27
    .line 1378
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    #@29
    new-array v2, v3, [B

    #@2b
    .line 1379
    .local v2, "pdu":[B
    add-int/lit8 v3, v1, -0x1

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-static {p1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 1380
    const-string/jumbo v3, "3gpp"

    #@34
    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@37
    move-result-object v0

    #@38
    .line 1382
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    #@3b
    .line 1367
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "n":I
    .end local v2    # "pdu":[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1388
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1390
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@9
    .line 1391
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [B

    #@f
    .line 1393
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 1394
    const-string/jumbo v6, "ENF"

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, "status "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    const-string/jumbo v8, ": "

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    aget-byte v8, v0, v9

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1399
    :cond_0
    aget-byte v6, v0, v9

    #@3c
    const/4 v7, 0x3

    #@3d
    if-ne v6, v7, :cond_1

    #@3f
    .line 1400
    array-length v4, v0

    #@40
    .line 1404
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    #@42
    new-array v5, v6, [B

    #@44
    .line 1405
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    #@46
    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 1406
    const-string/jumbo v6, "3gpp"

    #@4c
    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@4f
    move-result-object v3

    #@50
    .line 1408
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    #@53
    .line 1413
    aput-byte v10, v0, v9

    #@55
    .line 1390
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 1387
    .end local v0    # "ba":[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1914
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@4
    if-nez v2, :cond_0

    #@6
    return v1

    #@7
    .line 1915
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@9
    aget-byte v2, v2, v0

    #@b
    and-int/lit8 v2, v2, 0x30

    #@d
    const/16 v3, 0x30

    #@f
    if-ne v2, v3, :cond_1

    #@11
    :goto_0
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1697
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 1699
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 1700
    return v4

    #@10
    .line 1703
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 1704
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "spdiNet$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_3

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/String;

    #@26
    .line 1705
    .local v0, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1706
    return v4

    #@2d
    .line 1710
    .end local v0    # "spdiNet":Ljava/lang/String;
    .end local v1    # "spdiNet$iterator":Ljava/util/Iterator;
    :cond_3
    return v3
.end method

.method private loadCallForwardingRecords()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1563
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@3
    .line 1564
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@5
    const/16 v1, 0x20

    #@7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    const/16 v2, 0x6fcb

    #@d
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@10
    .line 1565
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@16
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@18
    const/16 v1, 0x18

    #@1a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@1d
    move-result-object v1

    #@1e
    const/16 v2, 0x6f13

    #@20
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@23
    .line 1567
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@29
    .line 1562
    return-void
.end method

.method private loadEfLiAndEfPl()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v3, 0x64

    #@3
    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 1551
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@10
    .line 1552
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@12
    .line 1553
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    #@14
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;)V

    #@17
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    .line 1552
    const/16 v2, 0x6f05

    #@1d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@20
    .line 1554
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@26
    .line 1556
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@28
    .line 1557
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    #@2a
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;)V

    #@2d
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v1

    #@31
    .line 1556
    const/16 v2, 0x2f05

    #@33
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@36
    .line 1558
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3c
    .line 1549
    :cond_0
    return-void
.end method

.method private onLocked()V
    .locals 1

    #@0
    .prologue
    .line 1545
    const-string/jumbo v0, "only fetch EF_LI and EF_PL in lock state"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6
    .line 1546
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    #@9
    .line 1544
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1876
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    #@3
    array-length v5, p1

    #@4
    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@7
    .line 1878
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    #@8
    .line 1880
    .local v2, "plmnEntries":[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1882
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@11
    move-result v5

    #@12
    const/16 v6, 0xa3

    #@14
    if-ne v5, v6, :cond_0

    #@16
    .line 1883
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    #@18
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@1f
    move-result-object v6

    #@20
    array-length v6, v6

    #@21
    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@24
    .end local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .local v4, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v3, v4

    #@25
    .line 1886
    .end local v4    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@28
    move-result v5

    #@29
    const/16 v6, 0x80

    #@2b
    if-ne v5, v6, :cond_2

    #@2d
    .line 1887
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@30
    move-result-object v2

    #@31
    .line 1892
    .end local v2    # "plmnEntries":[B
    :cond_1
    if-nez v2, :cond_3

    #@33
    .line 1893
    return-void

    #@34
    .line 1880
    .restart local v2    # "plmnEntries":[B
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@37
    goto :goto_0

    #@38
    .line 1896
    .end local v2    # "plmnEntries":[B
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    #@3a
    array-length v6, v2

    #@3b
    div-int/lit8 v6, v6, 0x3

    #@3d
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@40
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@42
    .line 1898
    const/4 v0, 0x0

    #@43
    .local v0, "i":I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    #@45
    array-length v6, v2

    #@46
    if-ge v5, v6, :cond_5

    #@48
    .line 1900
    const/4 v5, 0x3

    #@49
    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 1903
    .local v1, "plmnCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v5

    #@51
    const/4 v6, 0x5

    #@52
    if-lt v5, v6, :cond_4

    #@54
    .line 1904
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "EF_SPDI network: "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6b
    .line 1905
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 1898
    :cond_4
    add-int/lit8 v0, v0, 0x3

    #@72
    goto :goto_1

    #@73
    .line 1875
    .end local v1    # "plmnCode":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@11
    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@13
    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@15
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1525
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@20
    .line 1522
    :cond_0
    return-void
.end method

.method private setVoiceCallForwardingFlagFromSimRecords()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1439
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@c
    aget-byte v0, v1, v0

    #@e
    and-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@12
    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v1, "EF_CFIS: callForwardingEnabled="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2b
    .line 1438
    :goto_0
    return-void

    #@2c
    .line 1443
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 1445
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@32
    aget-byte v2, v2, v1

    #@34
    and-int/lit8 v2, v2, 0xf

    #@36
    const/16 v3, 0xa

    #@38
    if-ne v2, v3, :cond_1

    #@3a
    .line 1444
    :goto_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@3c
    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v1, "EF_CFF: callForwardingEnabled="

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@55
    goto :goto_0

    #@56
    :cond_1
    move v0, v1

    #@57
    .line 1446
    goto :goto_1

    #@58
    .line 1449
    :cond_2
    const/4 v0, -0x1

    #@59
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@5b
    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v1, "EF_CFIS and EF_CFF not valid. callForwardingEnabled="

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@74
    goto :goto_0
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1533
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    #@b
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@13
    .line 1535
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@15
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@1b
    .line 1531
    :cond_0
    return-void
.end method

.method private validEfCfis([B)Z
    .locals 4
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 487
    if-eqz p1, :cond_0

    #@4
    aget-byte v2, p1, v1

    #@6
    if-lt v2, v0, :cond_0

    #@8
    aget-byte v2, p1, v1

    #@a
    const/4 v3, 0x4

    #@b
    if-gt v2, v3, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Disposing SIMRecords this="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@17
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    #@1c
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1e
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    #@21
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@23
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@26
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@28
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    #@2b
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    #@2e
    .line 241
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    #@31
    .line 233
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1988
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SIMRecords: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 1989
    const-string/jumbo v0, " extends:"

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 1990
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20
    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v1, " mVmConfig="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v1, " mSpnOverride="

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v1, " mCallForwardingStatus="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 1994
    new-instance v0, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v1, " mSpnState="

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v1, " mCphsInfo="

    #@8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    const-string/jumbo v1, " mCspPlmnEnabled="

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b6
    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v1, " mEfMWIS[]="

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@c4
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v0

    #@cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v1, " mEfCPHS_MWI[]="

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@e1
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@e4
    move-result-object v1

    #@e5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v0

    #@ed
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v1, " mEfCff[]="

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@fe
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@101
    move-result-object v1

    #@102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v0

    #@106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10d
    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v1, " mEfCfis[]="

    #@115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v0

    #@119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@11b
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11e
    move-result-object v1

    #@11f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v0

    #@123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v0

    #@127
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12a
    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v1, " mSpnDisplayCondition="

    #@132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v0

    #@136
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v0

    #@13c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v0

    #@140
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v1, " mSpdiNetworks[]="

    #@14b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v0

    #@14f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@154
    move-result-object v0

    #@155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@158
    move-result-object v0

    #@159
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15c
    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v1, " mPnnHomeName="

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v0

    #@168
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v0

    #@16e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v0

    #@172
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@175
    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    const-string/jumbo v1, " mUsimServiceTable="

    #@17d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    move-result-object v0

    #@181
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v0

    #@187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v0

    #@18b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18e
    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    #@190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@193
    const-string/jumbo v1, " mGid1="

    #@196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v0

    #@19a
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@19c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v0

    #@1a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a3
    move-result-object v0

    #@1a4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a7
    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1ac
    const-string/jumbo v1, " mGid2="

    #@1af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v0

    #@1b3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v0

    #@1b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v0

    #@1bd
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c0
    .line 2007
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1c3
    .line 1987
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x6f40

    #@2
    const/4 v3, 0x1

    #@3
    .line 1571
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@5
    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "fetchSimRecords "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1e
    .line 1575
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@20
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    const/4 v2, 0x3

    #@27
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    #@2e
    .line 1576
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@34
    .line 1578
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@36
    const/4 v1, 0x4

    #@37
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@3a
    move-result-object v1

    #@3b
    const/16 v2, 0x2fe2

    #@3d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@40
    .line 1579
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@46
    .line 1583
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@48
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4a
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@4d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    #@50
    move-result v1

    #@51
    .line 1584
    const/16 v2, 0xa

    #@53
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@56
    move-result-object v2

    #@57
    .line 1583
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@5a
    .line 1585
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@5c
    add-int/lit8 v0, v0, 0x1

    #@5e
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@60
    .line 1588
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@62
    const/4 v1, 0x5

    #@63
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@66
    move-result-object v1

    #@67
    const/16 v2, 0x6fc9

    #@69
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@6c
    .line 1589
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@6e
    add-int/lit8 v0, v0, 0x1

    #@70
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@72
    .line 1591
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@74
    const/16 v1, 0x9

    #@76
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@79
    move-result-object v1

    #@7a
    const/16 v2, 0x6fad

    #@7c
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@7f
    .line 1592
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@81
    add-int/lit8 v0, v0, 0x1

    #@83
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@85
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@87
    const/4 v1, 0x7

    #@88
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v1

    #@8c
    const/16 v2, 0x6fca

    #@8e
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@91
    .line 1596
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@93
    add-int/lit8 v0, v0, 0x1

    #@95
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@97
    .line 1603
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@99
    .line 1605
    const/16 v1, 0x8

    #@9b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@9e
    move-result-object v1

    #@9f
    .line 1604
    const/16 v2, 0x6f11

    #@a1
    .line 1603
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@a4
    .line 1606
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@a6
    add-int/lit8 v0, v0, 0x1

    #@a8
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@aa
    .line 1610
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    #@ad
    .line 1612
    const/4 v0, 0x0

    #@ae
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    #@b1
    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@b3
    const/16 v1, 0xd

    #@b5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@b8
    move-result-object v1

    #@b9
    const/16 v2, 0x6fcd

    #@bb
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@be
    .line 1615
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@c0
    add-int/lit8 v0, v0, 0x1

    #@c2
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@c4
    .line 1617
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@c6
    const/16 v1, 0xf

    #@c8
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@cb
    move-result-object v1

    #@cc
    const/16 v2, 0x6fc5

    #@ce
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@d1
    .line 1618
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@d3
    add-int/lit8 v0, v0, 0x1

    #@d5
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@d7
    .line 1620
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@d9
    const/16 v1, 0x11

    #@db
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@de
    move-result-object v1

    #@df
    const/16 v2, 0x6f38

    #@e1
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@e4
    .line 1621
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@e6
    add-int/lit8 v0, v0, 0x1

    #@e8
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@ea
    .line 1623
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@ec
    const/16 v1, 0x1a

    #@ee
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@f1
    move-result-object v1

    #@f2
    const/16 v2, 0x6f16

    #@f4
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@f7
    .line 1624
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@f9
    add-int/lit8 v0, v0, 0x1

    #@fb
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@fd
    .line 1626
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@ff
    const/16 v1, 0x21

    #@101
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@104
    move-result-object v1

    #@105
    const/16 v2, 0x6f15

    #@107
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@10a
    .line 1627
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@10c
    add-int/lit8 v0, v0, 0x1

    #@10e
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@110
    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@112
    const/16 v1, 0x22

    #@114
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@117
    move-result-object v1

    #@118
    const/16 v2, 0x6f3e

    #@11a
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@11d
    .line 1630
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@11f
    add-int/lit8 v0, v0, 0x1

    #@121
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@123
    .line 1632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@125
    const/16 v1, 0x24

    #@127
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@12a
    move-result-object v1

    #@12b
    const/16 v2, 0x6f3f

    #@12d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@130
    .line 1633
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@132
    add-int/lit8 v0, v0, 0x1

    #@134
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@136
    .line 1635
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    #@139
    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    #@13b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13e
    const-string/jumbo v1, "fetchSimRecords "

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v0

    #@145
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v0

    #@14b
    const-string/jumbo v1, " requested: "

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v0

    #@15c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@15f
    .line 1570
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, "finalized"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6
    .line 245
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1670
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_1

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1671
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1673
    const/4 v0, 0x2

    #@19
    .line 1690
    .local v0, "rule":I
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 1674
    .end local v0    # "rule":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@26
    const/4 v2, -0x1

    #@27
    if-ne v1, v2, :cond_3

    #@29
    .line 1676
    :cond_2
    const/4 v0, 0x2

    #@2a
    .line 1674
    .restart local v0    # "rule":I
    goto :goto_0

    #@2b
    .line 1677
    .end local v0    # "rule":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 1678
    const/4 v0, 0x1

    #@32
    .line 1679
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@34
    and-int/lit8 v1, v1, 0x1

    #@36
    const/4 v2, 0x1

    #@37
    if-ne v1, v2, :cond_0

    #@39
    .line 1681
    const/4 v0, 0x3

    #@3a
    goto :goto_0

    #@3b
    .line 1684
    .end local v0    # "rule":I
    :cond_4
    const/4 v0, 0x2

    #@3c
    .line 1685
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@3e
    and-int/lit8 v1, v1, 0x2

    #@40
    if-nez v1, :cond_0

    #@42
    .line 1687
    const/4 v0, 0x3

    #@43
    goto :goto_0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 616
    const-string/jumbo v0, "getOperatorNumeric: IMSI == null"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c
    .line 617
    return-object v2

    #@d
    .line 619
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@f
    const/4 v1, -0x1

    #@10
    if-eq v0, v1, :cond_1

    #@12
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@14
    if-nez v0, :cond_2

    #@16
    .line 620
    :cond_1
    const-string/jumbo v0, "getSIMOperatorNumeric: bad mncLength"

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1c
    .line 621
    return-object v2

    #@1d
    .line 626
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@1f
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@21
    add-int/lit8 v1, v1, 0x3

    #@23
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@2
    return-object v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    #@0
    .prologue
    .line 526
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@2
    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 491
    const/4 v2, 0x0

    #@2
    .line 492
    .local v2, "voiceMailWaiting":Z
    const/4 v0, 0x0

    #@3
    .line 493
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 497
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@9
    aget-byte v3, v3, v4

    #@b
    and-int/lit8 v3, v3, 0x1

    #@d
    if-eqz v3, :cond_2

    #@f
    const/4 v2, 0x1

    #@10
    .line 498
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@12
    const/4 v4, 0x1

    #@13
    aget-byte v3, v3, v4

    #@15
    and-int/lit16 v0, v3, 0xff

    #@17
    .line 500
    if-eqz v2, :cond_0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 502
    const/4 v0, -0x1

    #@1c
    .line 504
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, " VoiceMessageCount from SIM MWIS = "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@33
    .line 518
    :cond_1
    :goto_1
    return v0

    #@34
    .line 497
    :cond_2
    const/4 v2, 0x0

    #@35
    goto :goto_0

    #@36
    .line 505
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 507
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@3c
    aget-byte v3, v3, v4

    #@3e
    and-int/lit8 v1, v3, 0xf

    #@40
    .line 510
    .local v1, "indicator":I
    const/16 v3, 0xa

    #@42
    if-ne v1, v3, :cond_5

    #@44
    .line 512
    const/4 v0, -0x1

    #@45
    .line 516
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v4, " VoiceMessageCount from SIM CPHS = "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@5c
    goto :goto_1

    #@5d
    .line 513
    :cond_5
    const/4 v3, 0x5

    #@5e
    if-ne v1, v3, :cond_4

    #@60
    .line 514
    const/4 v0, 0x0

    #@61
    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 637
    const/4 v14, 0x0

    #@1
    .line 639
    .local v14, "isRecordLoadResponse":Z
    move-object/from16 v0, p0

    #@3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Received message "

    #@13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v4, "["

    #@20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    move-object/from16 v0, p1

    #@26
    iget v4, v0, Landroid/os/Message;->what:I

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v4, "] "

    #@2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 641
    const-string/jumbo v4, " while being destroyed. Ignoring."

    #@36
    .line 640
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@43
    .line 642
    return-void

    #@44
    .line 645
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    #@46
    iget v2, v0, Landroid/os/Message;->what:I

    #@48
    packed-switch v2, :pswitch_data_0

    #@4b
    .line 1247
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 1254
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    #@50
    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@53
    .line 631
    :cond_2
    :goto_1
    return-void

    #@54
    .line 647
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1249
    :catch_0
    move-exception v12

    #@59
    .line 1251
    .local v12, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "Exception parsing SIM record"

    #@5c
    move-object/from16 v0, p0

    #@5e
    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    .line 1254
    if-eqz v14, :cond_2

    #@63
    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@66
    goto :goto_1

    #@67
    .line 651
    .end local v12    # "exc":Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 1252
    :catchall_0
    move-exception v2

    #@6c
    .line 1254
    if-eqz v14, :cond_3

    #@6e
    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@71
    .line 1252
    :cond_3
    throw v2

    #@72
    .line 656
    :pswitch_3
    const/4 v14, 0x1

    #@73
    .line 658
    :try_start_4
    move-object/from16 v0, p1

    #@75
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v9, Landroid/os/AsyncResult;

    #@79
    .line 660
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7b
    if-eqz v2, :cond_4

    #@7d
    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v4, "Exception querying IMSI, Exception:"

    #@85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@8b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v2

    #@93
    move-object/from16 v0, p0

    #@95
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@98
    goto :goto_0

    #@99
    .line 665
    :cond_4
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9b
    check-cast v2, Ljava/lang/String;

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a1
    .line 669
    move-object/from16 v0, p0

    #@a3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a5
    if-eqz v2, :cond_6

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@ab
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@ae
    move-result v2

    #@af
    const/4 v4, 0x6

    #@b0
    if-lt v2, v4, :cond_5

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b9
    move-result v2

    #@ba
    const/16 v4, 0xf

    #@bc
    if-le v2, v4, :cond_6

    #@be
    .line 670
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v4, "invalid IMSI "

    #@c6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@ce
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    move-object/from16 v0, p0

    #@d8
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@db
    .line 671
    const/4 v2, 0x0

    #@dc
    move-object/from16 v0, p0

    #@de
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@e0
    .line 674
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string/jumbo v4, "IMSI: mMncLength="

    #@e8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v2

    #@ec
    move-object/from16 v0, p0

    #@ee
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@f0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v2

    #@f8
    move-object/from16 v0, p0

    #@fa
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fd
    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v4, "IMSI: "

    #@105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v2

    #@109
    move-object/from16 v0, p0

    #@10b
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@10d
    const/4 v5, 0x0

    #@10e
    const/4 v6, 0x6

    #@10f
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@112
    move-result-object v4

    #@113
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v2

    #@117
    const-string/jumbo v4, "xxxxxxx"

    #@11a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v2

    #@11e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v2

    #@122
    move-object/from16 v0, p0

    #@124
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@127
    .line 677
    move-object/from16 v0, p0

    #@129
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@12b
    if-eqz v2, :cond_7

    #@12d
    move-object/from16 v0, p0

    #@12f
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@131
    const/4 v4, 0x2

    #@132
    if-ne v2, v4, :cond_8

    #@134
    .line 678
    :cond_7
    move-object/from16 v0, p0

    #@136
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@138
    if-eqz v2, :cond_8

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@13e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@141
    move-result v2

    #@142
    const/4 v4, 0x6

    #@143
    if-lt v2, v4, :cond_8

    #@145
    .line 679
    move-object/from16 v0, p0

    #@147
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@149
    const/4 v4, 0x0

    #@14a
    const/4 v5, 0x6

    #@14b
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14e
    move-result-object v18

    #@14f
    .line 680
    .local v18, "mccmncCode":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@151
    const/4 v2, 0x0

    #@152
    array-length v5, v4

    #@153
    :goto_2
    if-ge v2, v5, :cond_8

    #@155
    aget-object v17, v4, v2

    #@157
    .line 681
    .local v17, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15a
    move-result v6

    #@15b
    if-eqz v6, :cond_b

    #@15d
    .line 682
    const/4 v2, 0x3

    #@15e
    move-object/from16 v0, p0

    #@160
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@162
    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v4, "IMSI: setting1 mMncLength="

    #@16a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v2

    #@16e
    move-object/from16 v0, p0

    #@170
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@175
    move-result-object v2

    #@176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v2

    #@17a
    move-object/from16 v0, p0

    #@17c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@17f
    .line 689
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@181
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@183
    if-nez v2, :cond_9

    #@185
    .line 693
    :try_start_5
    move-object/from16 v0, p0

    #@187
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@189
    const/4 v4, 0x0

    #@18a
    const/4 v5, 0x3

    #@18b
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18e
    move-result-object v2

    #@18f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@192
    move-result v16

    #@193
    .line 694
    .local v16, "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@196
    move-result v2

    #@197
    move-object/from16 v0, p0

    #@199
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@19b
    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    #@19d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a0
    const-string/jumbo v4, "setting2 mMncLength="

    #@1a3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v2

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1ab
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v2

    #@1af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v2

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1b8
    .line 702
    .end local v16    # "mcc":I
    :cond_9
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    #@1ba
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1bc
    if-eqz v2, :cond_a

    #@1be
    move-object/from16 v0, p0

    #@1c0
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1c2
    const/4 v4, -0x1

    #@1c3
    if-eq v2, v4, :cond_a

    #@1c5
    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ca
    const-string/jumbo v4, "update mccmnc="

    #@1cd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d0
    move-result-object v2

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1d9
    add-int/lit8 v5, v5, 0x3

    #@1db
    const/4 v6, 0x0

    #@1dc
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1df
    move-result-object v4

    #@1e0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v2

    #@1e4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e7
    move-result-object v2

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1ed
    .line 705
    move-object/from16 v0, p0

    #@1ef
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@1f1
    .line 706
    move-object/from16 v0, p0

    #@1f3
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1f9
    add-int/lit8 v5, v5, 0x3

    #@1fb
    const/4 v6, 0x0

    #@1fc
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ff
    move-result-object v4

    #@200
    const/4 v5, 0x0

    #@201
    .line 705
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@204
    .line 708
    :cond_a
    move-object/from16 v0, p0

    #@206
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@208
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@20b
    goto/16 :goto_0

    #@20d
    .line 680
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@20f
    goto/16 :goto_2

    #@211
    .line 696
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v11

    #@212
    .line 697
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@213
    move-object/from16 v0, p0

    #@215
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@217
    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    #@219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21c
    const-string/jumbo v4, "Corrupt IMSI! setting3 mMncLength="

    #@21f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v2

    #@223
    move-object/from16 v0, p0

    #@225
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@227
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22a
    move-result-object v2

    #@22b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22e
    move-result-object v2

    #@22f
    move-object/from16 v0, p0

    #@231
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@234
    goto :goto_3

    #@235
    .line 713
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :pswitch_4
    const/4 v14, 0x1

    #@236
    .line 715
    move-object/from16 v0, p1

    #@238
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23a
    check-cast v9, Landroid/os/AsyncResult;

    #@23c
    .line 716
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@23e
    check-cast v10, [B

    #@240
    .line 718
    .local v10, "data":[B
    const/4 v15, 0x0

    #@241
    .line 719
    .local v15, "isValidMbdn":Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@243
    if-nez v2, :cond_c

    #@245
    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    #@247
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24a
    const-string/jumbo v4, "EF_MBI: "

    #@24d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@250
    move-result-object v2

    #@251
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@254
    move-result-object v4

    #@255
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@258
    move-result-object v2

    #@259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25c
    move-result-object v2

    #@25d
    move-object/from16 v0, p0

    #@25f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@262
    .line 724
    const/4 v2, 0x0

    #@263
    aget-byte v2, v10, v2

    #@265
    and-int/lit16 v2, v2, 0xff

    #@267
    move-object/from16 v0, p0

    #@269
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@26b
    .line 727
    move-object/from16 v0, p0

    #@26d
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@26f
    if-eqz v2, :cond_c

    #@271
    move-object/from16 v0, p0

    #@273
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@275
    const/16 v4, 0xff

    #@277
    if-eq v2, v4, :cond_c

    #@279
    .line 728
    const-string/jumbo v2, "Got valid mailbox number for MBDN"

    #@27c
    move-object/from16 v0, p0

    #@27e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@281
    .line 729
    const/4 v15, 0x1

    #@282
    .line 734
    :cond_c
    move-object/from16 v0, p0

    #@284
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@286
    add-int/lit8 v2, v2, 0x1

    #@288
    move-object/from16 v0, p0

    #@28a
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@28c
    .line 736
    if-eqz v15, :cond_d

    #@28e
    .line 738
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@290
    move-object/from16 v0, p0

    #@292
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@294
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@297
    .line 739
    move-object/from16 v0, p0

    #@299
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@29b
    const/4 v5, 0x6

    #@29c
    move-object/from16 v0, p0

    #@29e
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@2a1
    move-result-object v5

    #@2a2
    .line 738
    const/16 v6, 0x6fc7

    #@2a4
    const/16 v7, 0x6fc8

    #@2a6
    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 743
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2b1
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@2b4
    .line 745
    const/16 v4, 0xb

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@2bb
    move-result-object v4

    #@2bc
    .line 743
    const/16 v5, 0x6f17

    #@2be
    .line 744
    const/16 v6, 0x6f4a

    #@2c0
    const/4 v7, 0x1

    #@2c1
    .line 743
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2c4
    goto/16 :goto_0

    #@2c6
    .line 756
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    .end local v15    # "isValidMbdn":Z
    :pswitch_5
    const/4 v2, 0x0

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2cb
    .line 757
    const/4 v2, 0x0

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2d0
    .line 758
    const/4 v14, 0x1

    #@2d1
    .line 760
    move-object/from16 v0, p1

    #@2d3
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d5
    check-cast v9, Landroid/os/AsyncResult;

    #@2d7
    .line 762
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2d9
    if-eqz v2, :cond_f

    #@2db
    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    #@2dd
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e0
    const-string/jumbo v4, "Invalid or missing EF"

    #@2e3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    move-result-object v4

    #@2e7
    .line 765
    move-object/from16 v0, p1

    #@2e9
    iget v2, v0, Landroid/os/Message;->what:I

    #@2eb
    const/16 v5, 0xb

    #@2ed
    if-ne v2, v5, :cond_e

    #@2ef
    const-string/jumbo v2, "[MAILBOX]"

    #@2f2
    .line 764
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v2

    #@2f6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f9
    move-result-object v2

    #@2fa
    move-object/from16 v0, p0

    #@2fc
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2ff
    .line 770
    move-object/from16 v0, p1

    #@301
    iget v2, v0, Landroid/os/Message;->what:I

    #@303
    const/4 v4, 0x6

    #@304
    if-ne v2, v4, :cond_1

    #@306
    .line 774
    move-object/from16 v0, p0

    #@308
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@30a
    add-int/lit8 v2, v2, 0x1

    #@30c
    move-object/from16 v0, p0

    #@30e
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@310
    .line 775
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@312
    move-object/from16 v0, p0

    #@314
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@316
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@319
    .line 777
    const/16 v4, 0xb

    #@31b
    move-object/from16 v0, p0

    #@31d
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@320
    move-result-object v4

    #@321
    .line 776
    const/16 v5, 0x6f17

    #@323
    const/16 v6, 0x6f4a

    #@325
    const/4 v7, 0x1

    #@326
    .line 775
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@329
    goto/16 :goto_0

    #@32b
    .line 765
    :cond_e
    const-string/jumbo v2, "[MBDN]"

    #@32e
    goto :goto_4

    #@32f
    .line 782
    :cond_f
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@331
    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@333
    .line 784
    .local v3, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    #@335
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@338
    const-string/jumbo v4, "VM: "

    #@33b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33e
    move-result-object v2

    #@33f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@342
    move-result-object v4

    #@343
    .line 785
    move-object/from16 v0, p1

    #@345
    iget v2, v0, Landroid/os/Message;->what:I

    #@347
    const/16 v5, 0xb

    #@349
    if-ne v2, v5, :cond_10

    #@34b
    const-string/jumbo v2, " EF[MAILBOX]"

    #@34e
    .line 784
    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v2

    #@352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@355
    move-result-object v2

    #@356
    move-object/from16 v0, p0

    #@358
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@35b
    .line 787
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    #@35e
    move-result v2

    #@35f
    if-eqz v2, :cond_11

    #@361
    move-object/from16 v0, p1

    #@363
    iget v2, v0, Landroid/os/Message;->what:I

    #@365
    const/4 v4, 0x6

    #@366
    if-ne v2, v4, :cond_11

    #@368
    .line 791
    move-object/from16 v0, p0

    #@36a
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@36c
    add-int/lit8 v2, v2, 0x1

    #@36e
    move-object/from16 v0, p0

    #@370
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@372
    .line 792
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@374
    move-object/from16 v0, p0

    #@376
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@378
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@37b
    .line 794
    const/16 v4, 0xb

    #@37d
    move-object/from16 v0, p0

    #@37f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@382
    move-result-object v4

    #@383
    .line 793
    const/16 v5, 0x6f17

    #@385
    const/16 v6, 0x6f4a

    #@387
    const/4 v7, 0x1

    #@388
    .line 792
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@38b
    goto/16 :goto_0

    #@38d
    .line 785
    :cond_10
    const-string/jumbo v2, " EF[MBDN]"

    #@390
    goto :goto_5

    #@391
    .line 799
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@394
    move-result-object v2

    #@395
    move-object/from16 v0, p0

    #@397
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@399
    .line 800
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    #@39c
    move-result-object v2

    #@39d
    move-object/from16 v0, p0

    #@39f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@3a1
    goto/16 :goto_0

    #@3a3
    .line 804
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    const/4 v14, 0x1

    #@3a4
    .line 806
    move-object/from16 v0, p1

    #@3a6
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a8
    check-cast v9, Landroid/os/AsyncResult;

    #@3aa
    .line 808
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3ac
    if-eqz v2, :cond_12

    #@3ae
    .line 809
    const-string/jumbo v2, "Invalid or missing EF[MSISDN]"

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3b6
    goto/16 :goto_0

    #@3b8
    .line 813
    :cond_12
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3ba
    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@3bc
    .line 815
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@3bf
    move-result-object v2

    #@3c0
    move-object/from16 v0, p0

    #@3c2
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@3c4
    .line 816
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    #@3c7
    move-result-object v2

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@3cc
    .line 818
    const-string/jumbo v2, "MSISDN: xxxxxxx"

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3d4
    goto/16 :goto_0

    #@3d6
    .line 822
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const/4 v14, 0x0

    #@3d7
    .line 823
    move-object/from16 v0, p1

    #@3d9
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3db
    check-cast v9, Landroid/os/AsyncResult;

    #@3dd
    .line 825
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3df
    if-nez v2, :cond_13

    #@3e1
    .line 826
    move-object/from16 v0, p0

    #@3e3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@3e5
    move-object/from16 v0, p0

    #@3e7
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@3e9
    .line 827
    move-object/from16 v0, p0

    #@3eb
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@3ed
    move-object/from16 v0, p0

    #@3ef
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@3f1
    .line 828
    const-string/jumbo v2, "Success to update EF[MSISDN]"

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3f9
    .line 831
    :cond_13
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3fb
    if-eqz v2, :cond_1

    #@3fd
    .line 832
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3ff
    check-cast v2, Landroid/os/Message;

    #@401
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@404
    move-result-object v2

    #@405
    .line 833
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@407
    .line 832
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@409
    .line 834
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@40b
    check-cast v2, Landroid/os/Message;

    #@40d
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@410
    goto/16 :goto_0

    #@412
    .line 839
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    const/4 v14, 0x1

    #@413
    .line 841
    move-object/from16 v0, p1

    #@415
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@417
    check-cast v9, Landroid/os/AsyncResult;

    #@419
    .line 842
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@41b
    check-cast v10, [B

    #@41d
    .line 844
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@41f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@422
    const-string/jumbo v4, "EF_MWIS : "

    #@425
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@428
    move-result-object v2

    #@429
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@42c
    move-result-object v4

    #@42d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@430
    move-result-object v2

    #@431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@434
    move-result-object v2

    #@435
    move-object/from16 v0, p0

    #@437
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@43a
    .line 846
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@43c
    if-eqz v2, :cond_14

    #@43e
    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    #@440
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    const-string/jumbo v4, "EVENT_GET_MWIS_DONE exception = "

    #@446
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v2

    #@44a
    .line 848
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@44c
    .line 847
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v2

    #@450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@453
    move-result-object v2

    #@454
    move-object/from16 v0, p0

    #@456
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@459
    goto/16 :goto_0

    #@45b
    .line 852
    :cond_14
    const/4 v2, 0x0

    #@45c
    aget-byte v2, v10, v2

    #@45e
    and-int/lit16 v2, v2, 0xff

    #@460
    const/16 v4, 0xff

    #@462
    if-ne v2, v4, :cond_15

    #@464
    .line 853
    const-string/jumbo v2, "SIMRecords: Uninitialized record MWIS"

    #@467
    move-object/from16 v0, p0

    #@469
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@46c
    goto/16 :goto_0

    #@46e
    .line 857
    :cond_15
    move-object/from16 v0, p0

    #@470
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@472
    goto/16 :goto_0

    #@474
    .line 861
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_9
    const/4 v14, 0x1

    #@475
    .line 863
    move-object/from16 v0, p1

    #@477
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@479
    check-cast v9, Landroid/os/AsyncResult;

    #@47b
    .line 864
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@47d
    check-cast v10, [B

    #@47f
    .line 866
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@481
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@484
    const-string/jumbo v4, "EF_CPHS_MWI: "

    #@487
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48a
    move-result-object v2

    #@48b
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@48e
    move-result-object v4

    #@48f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@492
    move-result-object v2

    #@493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@496
    move-result-object v2

    #@497
    move-object/from16 v0, p0

    #@499
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@49c
    .line 868
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@49e
    if-eqz v2, :cond_16

    #@4a0
    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a5
    const-string/jumbo v4, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    #@4a8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ab
    move-result-object v2

    #@4ac
    .line 870
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4ae
    .line 869
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b1
    move-result-object v2

    #@4b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b5
    move-result-object v2

    #@4b6
    move-object/from16 v0, p0

    #@4b8
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@4bb
    goto/16 :goto_0

    #@4bd
    .line 874
    :cond_16
    move-object/from16 v0, p0

    #@4bf
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@4c1
    goto/16 :goto_0

    #@4c3
    .line 878
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_a
    const/4 v14, 0x1

    #@4c4
    .line 880
    move-object/from16 v0, p1

    #@4c6
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c8
    check-cast v9, Landroid/os/AsyncResult;

    #@4ca
    .line 881
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4cc
    check-cast v10, [B

    #@4ce
    .line 883
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4d0
    if-nez v2, :cond_1

    #@4d2
    .line 887
    array-length v2, v10

    #@4d3
    const/4 v4, 0x0

    #@4d4
    invoke-static {v10, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@4d7
    move-result-object v2

    #@4d8
    move-object/from16 v0, p0

    #@4da
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    #@4dc
    .line 888
    array-length v2, v10

    #@4dd
    const/4 v4, 0x0

    #@4de
    invoke-static {v10, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    #@4e1
    move-result-object v2

    #@4e2
    move-object/from16 v0, p0

    #@4e4
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    #@4e6
    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4eb
    const-string/jumbo v4, "iccid: "

    #@4ee
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f1
    move-result-object v2

    #@4f2
    move-object/from16 v0, p0

    #@4f4
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    #@4f6
    invoke-static {v4}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@4f9
    move-result-object v4

    #@4fa
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fd
    move-result-object v2

    #@4fe
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@501
    move-result-object v2

    #@502
    move-object/from16 v0, p0

    #@504
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@507
    goto/16 :goto_0

    #@509
    .line 897
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_b
    const/4 v14, 0x1

    #@50a
    .line 899
    :try_start_7
    move-object/from16 v0, p1

    #@50c
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@50e
    check-cast v9, Landroid/os/AsyncResult;

    #@510
    .line 900
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@512
    check-cast v10, [B

    #@514
    .line 902
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@516
    if-eqz v2, :cond_1e

    #@518
    .line 929
    :try_start_8
    move-object/from16 v0, p0

    #@51a
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@51c
    const/4 v4, -0x1

    #@51d
    if-eq v2, v4, :cond_17

    #@51f
    move-object/from16 v0, p0

    #@521
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@523
    if-nez v2, :cond_1b

    #@525
    .line 930
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    #@527
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@529
    if-eqz v2, :cond_18

    #@52b
    move-object/from16 v0, p0

    #@52d
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@52f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@532
    move-result v2

    #@533
    const/4 v4, 0x6

    #@534
    if-lt v2, v4, :cond_18

    #@536
    .line 931
    move-object/from16 v0, p0

    #@538
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@53a
    const/4 v4, 0x0

    #@53b
    const/4 v5, 0x6

    #@53c
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@53f
    move-result-object v18

    #@540
    .line 932
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@542
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@545
    const-string/jumbo v4, "mccmncCode="

    #@548
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54b
    move-result-object v2

    #@54c
    move-object/from16 v0, v18

    #@54e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@551
    move-result-object v2

    #@552
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@555
    move-result-object v2

    #@556
    move-object/from16 v0, p0

    #@558
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@55b
    .line 933
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@55d
    const/4 v2, 0x0

    #@55e
    array-length v5, v4

    #@55f
    :goto_7
    if-ge v2, v5, :cond_18

    #@561
    aget-object v17, v4, v2

    #@563
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@566
    move-result v6

    #@567
    if-eqz v6, :cond_1c

    #@569
    .line 935
    const/4 v2, 0x3

    #@56a
    move-object/from16 v0, p0

    #@56c
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@56e
    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    #@570
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@573
    const-string/jumbo v4, "setting6 mMncLength="

    #@576
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@579
    move-result-object v2

    #@57a
    move-object/from16 v0, p0

    #@57c
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@57e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@581
    move-result-object v2

    #@582
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@585
    move-result-object v2

    #@586
    move-object/from16 v0, p0

    #@588
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@58b
    .line 942
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    #@58d
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@58f
    if-eqz v2, :cond_19

    #@591
    move-object/from16 v0, p0

    #@593
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@595
    const/4 v4, -0x1

    #@596
    if-ne v2, v4, :cond_1a

    #@598
    .line 943
    :cond_19
    move-object/from16 v0, p0

    #@59a
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@59c
    if-eqz v2, :cond_1d

    #@59e
    .line 945
    :try_start_9
    move-object/from16 v0, p0

    #@5a0
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5a2
    const/4 v4, 0x0

    #@5a3
    const/4 v5, 0x3

    #@5a4
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5a7
    move-result-object v2

    #@5a8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5ab
    move-result v16

    #@5ac
    .line 947
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@5af
    move-result v2

    #@5b0
    move-object/from16 v0, p0

    #@5b2
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5b4
    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b9
    const-string/jumbo v4, "setting7 mMncLength="

    #@5bc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bf
    move-result-object v2

    #@5c0
    move-object/from16 v0, p0

    #@5c2
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5c4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c7
    move-result-object v2

    #@5c8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5cb
    move-result-object v2

    #@5cc
    move-object/from16 v0, p0

    #@5ce
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5d1
    .line 959
    .end local v16    # "mcc":I
    :cond_1a
    :goto_8
    :try_start_a
    move-object/from16 v0, p0

    #@5d3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5d5
    if-eqz v2, :cond_1

    #@5d7
    move-object/from16 v0, p0

    #@5d9
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5db
    if-eqz v2, :cond_1

    #@5dd
    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    #@5df
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e2
    const-string/jumbo v4, "update mccmnc="

    #@5e5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v2

    #@5e9
    move-object/from16 v0, p0

    #@5eb
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5ed
    move-object/from16 v0, p0

    #@5ef
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5f1
    add-int/lit8 v5, v5, 0x3

    #@5f3
    const/4 v6, 0x0

    #@5f4
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5f7
    move-result-object v4

    #@5f8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fb
    move-result-object v2

    #@5fc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ff
    move-result-object v2

    #@600
    move-object/from16 v0, p0

    #@602
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@605
    .line 963
    move-object/from16 v0, p0

    #@607
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@609
    .line 964
    move-object/from16 v0, p0

    #@60b
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@60d
    move-object/from16 v0, p0

    #@60f
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@611
    add-int/lit8 v5, v5, 0x3

    #@613
    const/4 v6, 0x0

    #@614
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@617
    move-result-object v4

    #@618
    const/4 v5, 0x0

    #@619
    .line 963
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@61c
    goto/16 :goto_0

    #@61e
    .line 930
    :cond_1b
    move-object/from16 v0, p0

    #@620
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@622
    const/4 v4, 0x2

    #@623
    if-ne v2, v4, :cond_18

    #@625
    goto/16 :goto_6

    #@627
    .line 933
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    #@629
    goto/16 :goto_7

    #@62b
    .line 949
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_2
    move-exception v11

    #@62c
    .line 950
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@62d
    move-object/from16 v0, p0

    #@62f
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@631
    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    #@633
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@636
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@639
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63c
    move-result-object v2

    #@63d
    move-object/from16 v0, p0

    #@63f
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@641
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@644
    move-result-object v2

    #@645
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@648
    move-result-object v2

    #@649
    move-object/from16 v0, p0

    #@64b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@64e
    goto :goto_8

    #@64f
    .line 955
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    const/4 v2, 0x0

    #@650
    move-object/from16 v0, p0

    #@652
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@654
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    #@656
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@659
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@65c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65f
    move-result-object v2

    #@660
    move-object/from16 v0, p0

    #@662
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@664
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@667
    move-result-object v2

    #@668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66b
    move-result-object v2

    #@66c
    move-object/from16 v0, p0

    #@66e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@671
    goto/16 :goto_8

    #@673
    .line 906
    :cond_1e
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    #@675
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@678
    const-string/jumbo v4, "EF_AD: "

    #@67b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67e
    move-result-object v2

    #@67f
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@682
    move-result-object v4

    #@683
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@686
    move-result-object v2

    #@687
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68a
    move-result-object v2

    #@68b
    move-object/from16 v0, p0

    #@68d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@690
    .line 908
    array-length v2, v10

    #@691
    const/4 v4, 0x3

    #@692
    if-ge v2, v4, :cond_26

    #@694
    .line 909
    const-string/jumbo v2, "Corrupt AD data on SIM"

    #@697
    move-object/from16 v0, p0

    #@699
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@69c
    .line 929
    :try_start_c
    move-object/from16 v0, p0

    #@69e
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6a0
    const/4 v4, -0x1

    #@6a1
    if-eq v2, v4, :cond_1f

    #@6a3
    move-object/from16 v0, p0

    #@6a5
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6a7
    if-nez v2, :cond_23

    #@6a9
    .line 930
    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    #@6ab
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6ad
    if-eqz v2, :cond_20

    #@6af
    move-object/from16 v0, p0

    #@6b1
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6b3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6b6
    move-result v2

    #@6b7
    const/4 v4, 0x6

    #@6b8
    if-lt v2, v4, :cond_20

    #@6ba
    .line 931
    move-object/from16 v0, p0

    #@6bc
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6be
    const/4 v4, 0x0

    #@6bf
    const/4 v5, 0x6

    #@6c0
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6c3
    move-result-object v18

    #@6c4
    .line 932
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c9
    const-string/jumbo v4, "mccmncCode="

    #@6cc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6cf
    move-result-object v2

    #@6d0
    move-object/from16 v0, v18

    #@6d2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d5
    move-result-object v2

    #@6d6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d9
    move-result-object v2

    #@6da
    move-object/from16 v0, p0

    #@6dc
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6df
    .line 933
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@6e1
    const/4 v2, 0x0

    #@6e2
    array-length v5, v4

    #@6e3
    :goto_a
    if-ge v2, v5, :cond_20

    #@6e5
    aget-object v17, v4, v2

    #@6e7
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6ea
    move-result v6

    #@6eb
    if-eqz v6, :cond_24

    #@6ed
    .line 935
    const/4 v2, 0x3

    #@6ee
    move-object/from16 v0, p0

    #@6f0
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6f2
    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f7
    const-string/jumbo v4, "setting6 mMncLength="

    #@6fa
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6fd
    move-result-object v2

    #@6fe
    move-object/from16 v0, p0

    #@700
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@702
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@705
    move-result-object v2

    #@706
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@709
    move-result-object v2

    #@70a
    move-object/from16 v0, p0

    #@70c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@70f
    .line 942
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    #@711
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@713
    if-eqz v2, :cond_21

    #@715
    move-object/from16 v0, p0

    #@717
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@719
    const/4 v4, -0x1

    #@71a
    if-ne v2, v4, :cond_22

    #@71c
    .line 943
    :cond_21
    move-object/from16 v0, p0

    #@71e
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@720
    if-eqz v2, :cond_25

    #@722
    .line 945
    :try_start_d
    move-object/from16 v0, p0

    #@724
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@726
    const/4 v4, 0x0

    #@727
    const/4 v5, 0x3

    #@728
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72b
    move-result-object v2

    #@72c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@72f
    move-result v16

    #@730
    .line 947
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@733
    move-result v2

    #@734
    move-object/from16 v0, p0

    #@736
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@738
    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    #@73a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73d
    const-string/jumbo v4, "setting7 mMncLength="

    #@740
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@743
    move-result-object v2

    #@744
    move-object/from16 v0, p0

    #@746
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@748
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74b
    move-result-object v2

    #@74c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74f
    move-result-object v2

    #@750
    move-object/from16 v0, p0

    #@752
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@755
    .line 959
    .end local v16    # "mcc":I
    :cond_22
    :goto_b
    :try_start_e
    move-object/from16 v0, p0

    #@757
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@759
    if-eqz v2, :cond_1

    #@75b
    move-object/from16 v0, p0

    #@75d
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@75f
    if-eqz v2, :cond_1

    #@761
    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    #@763
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@766
    const-string/jumbo v4, "update mccmnc="

    #@769
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76c
    move-result-object v2

    #@76d
    move-object/from16 v0, p0

    #@76f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@771
    move-object/from16 v0, p0

    #@773
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@775
    add-int/lit8 v5, v5, 0x3

    #@777
    const/4 v6, 0x0

    #@778
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@77b
    move-result-object v4

    #@77c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77f
    move-result-object v2

    #@780
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@783
    move-result-object v2

    #@784
    move-object/from16 v0, p0

    #@786
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@789
    .line 963
    move-object/from16 v0, p0

    #@78b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@78d
    .line 964
    move-object/from16 v0, p0

    #@78f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@791
    move-object/from16 v0, p0

    #@793
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@795
    add-int/lit8 v5, v5, 0x3

    #@797
    const/4 v6, 0x0

    #@798
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@79b
    move-result-object v4

    #@79c
    const/4 v5, 0x0

    #@79d
    .line 963
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@7a0
    goto/16 :goto_0

    #@7a2
    .line 930
    :cond_23
    move-object/from16 v0, p0

    #@7a4
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7a6
    const/4 v4, 0x2

    #@7a7
    if-ne v2, v4, :cond_20

    #@7a9
    goto/16 :goto_9

    #@7ab
    .line 933
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    #@7ad
    goto/16 :goto_a

    #@7af
    .line 949
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_3
    move-exception v11

    #@7b0
    .line 950
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@7b1
    move-object/from16 v0, p0

    #@7b3
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7b5
    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    #@7b7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7ba
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@7bd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c0
    move-result-object v2

    #@7c1
    move-object/from16 v0, p0

    #@7c3
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7c5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c8
    move-result-object v2

    #@7c9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7cc
    move-result-object v2

    #@7cd
    move-object/from16 v0, p0

    #@7cf
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@7d2
    goto :goto_b

    #@7d3
    .line 955
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    const/4 v2, 0x0

    #@7d4
    move-object/from16 v0, p0

    #@7d6
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7d8
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    #@7da
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7dd
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@7e0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e3
    move-result-object v2

    #@7e4
    move-object/from16 v0, p0

    #@7e6
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7e8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7eb
    move-result-object v2

    #@7ec
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ef
    move-result-object v2

    #@7f0
    move-object/from16 v0, p0

    #@7f2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@7f5
    goto/16 :goto_b

    #@7f7
    .line 913
    :cond_26
    :try_start_f
    array-length v2, v10

    #@7f8
    const/4 v4, 0x3

    #@7f9
    if-ne v2, v4, :cond_2e

    #@7fb
    .line 914
    const-string/jumbo v2, "MNC length not present in EF_AD"

    #@7fe
    move-object/from16 v0, p0

    #@800
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@803
    .line 929
    :try_start_10
    move-object/from16 v0, p0

    #@805
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@807
    const/4 v4, -0x1

    #@808
    if-eq v2, v4, :cond_27

    #@80a
    move-object/from16 v0, p0

    #@80c
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@80e
    if-nez v2, :cond_2b

    #@810
    .line 930
    :cond_27
    :goto_c
    move-object/from16 v0, p0

    #@812
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@814
    if-eqz v2, :cond_28

    #@816
    move-object/from16 v0, p0

    #@818
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@81a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@81d
    move-result v2

    #@81e
    const/4 v4, 0x6

    #@81f
    if-lt v2, v4, :cond_28

    #@821
    .line 931
    move-object/from16 v0, p0

    #@823
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@825
    const/4 v4, 0x0

    #@826
    const/4 v5, 0x6

    #@827
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@82a
    move-result-object v18

    #@82b
    .line 932
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@82d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@830
    const-string/jumbo v4, "mccmncCode="

    #@833
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@836
    move-result-object v2

    #@837
    move-object/from16 v0, v18

    #@839
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83c
    move-result-object v2

    #@83d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@840
    move-result-object v2

    #@841
    move-object/from16 v0, p0

    #@843
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@846
    .line 933
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@848
    const/4 v2, 0x0

    #@849
    array-length v5, v4

    #@84a
    :goto_d
    if-ge v2, v5, :cond_28

    #@84c
    aget-object v17, v4, v2

    #@84e
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@851
    move-result v6

    #@852
    if-eqz v6, :cond_2c

    #@854
    .line 935
    const/4 v2, 0x3

    #@855
    move-object/from16 v0, p0

    #@857
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@859
    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    #@85b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85e
    const-string/jumbo v4, "setting6 mMncLength="

    #@861
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@864
    move-result-object v2

    #@865
    move-object/from16 v0, p0

    #@867
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@869
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86c
    move-result-object v2

    #@86d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@870
    move-result-object v2

    #@871
    move-object/from16 v0, p0

    #@873
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@876
    .line 942
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    #@878
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@87a
    if-eqz v2, :cond_29

    #@87c
    move-object/from16 v0, p0

    #@87e
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@880
    const/4 v4, -0x1

    #@881
    if-ne v2, v4, :cond_2a

    #@883
    .line 943
    :cond_29
    move-object/from16 v0, p0

    #@885
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@887
    if-eqz v2, :cond_2d

    #@889
    .line 945
    :try_start_11
    move-object/from16 v0, p0

    #@88b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@88d
    const/4 v4, 0x0

    #@88e
    const/4 v5, 0x3

    #@88f
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@892
    move-result-object v2

    #@893
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@896
    move-result v16

    #@897
    .line 947
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@89a
    move-result v2

    #@89b
    move-object/from16 v0, p0

    #@89d
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@89f
    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    #@8a1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8a4
    const-string/jumbo v4, "setting7 mMncLength="

    #@8a7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8aa
    move-result-object v2

    #@8ab
    move-object/from16 v0, p0

    #@8ad
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8af
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b2
    move-result-object v2

    #@8b3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b6
    move-result-object v2

    #@8b7
    move-object/from16 v0, p0

    #@8b9
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@8bc
    .line 959
    .end local v16    # "mcc":I
    :cond_2a
    :goto_e
    :try_start_12
    move-object/from16 v0, p0

    #@8be
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8c0
    if-eqz v2, :cond_1

    #@8c2
    move-object/from16 v0, p0

    #@8c4
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8c6
    if-eqz v2, :cond_1

    #@8c8
    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    #@8ca
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8cd
    const-string/jumbo v4, "update mccmnc="

    #@8d0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d3
    move-result-object v2

    #@8d4
    move-object/from16 v0, p0

    #@8d6
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8d8
    move-object/from16 v0, p0

    #@8da
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8dc
    add-int/lit8 v5, v5, 0x3

    #@8de
    const/4 v6, 0x0

    #@8df
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8e2
    move-result-object v4

    #@8e3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e6
    move-result-object v2

    #@8e7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8ea
    move-result-object v2

    #@8eb
    move-object/from16 v0, p0

    #@8ed
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8f0
    .line 963
    move-object/from16 v0, p0

    #@8f2
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@8f4
    .line 964
    move-object/from16 v0, p0

    #@8f6
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8f8
    move-object/from16 v0, p0

    #@8fa
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8fc
    add-int/lit8 v5, v5, 0x3

    #@8fe
    const/4 v6, 0x0

    #@8ff
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@902
    move-result-object v4

    #@903
    const/4 v5, 0x0

    #@904
    .line 963
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@907
    goto/16 :goto_0

    #@909
    .line 930
    :cond_2b
    move-object/from16 v0, p0

    #@90b
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@90d
    const/4 v4, 0x2

    #@90e
    if-ne v2, v4, :cond_28

    #@910
    goto/16 :goto_c

    #@912
    .line 933
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    #@914
    goto/16 :goto_d

    #@916
    .line 949
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_4
    move-exception v11

    #@917
    .line 950
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@918
    move-object/from16 v0, p0

    #@91a
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@91c
    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    #@91e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@921
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@924
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@927
    move-result-object v2

    #@928
    move-object/from16 v0, p0

    #@92a
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@92c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92f
    move-result-object v2

    #@930
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@933
    move-result-object v2

    #@934
    move-object/from16 v0, p0

    #@936
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@939
    goto :goto_e

    #@93a
    .line 955
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2d
    const/4 v2, 0x0

    #@93b
    move-object/from16 v0, p0

    #@93d
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@93f
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    #@941
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@944
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@947
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94a
    move-result-object v2

    #@94b
    move-object/from16 v0, p0

    #@94d
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@94f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@952
    move-result-object v2

    #@953
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@956
    move-result-object v2

    #@957
    move-object/from16 v0, p0

    #@959
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@95c
    goto/16 :goto_e

    #@95e
    .line 918
    :cond_2e
    const/4 v2, 0x3

    #@95f
    :try_start_13
    aget-byte v2, v10, v2

    #@961
    and-int/lit8 v2, v2, 0xf

    #@963
    move-object/from16 v0, p0

    #@965
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@967
    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    #@969
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@96c
    const-string/jumbo v4, "setting4 mMncLength="

    #@96f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@972
    move-result-object v2

    #@973
    move-object/from16 v0, p0

    #@975
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@977
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97a
    move-result-object v2

    #@97b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97e
    move-result-object v2

    #@97f
    move-object/from16 v0, p0

    #@981
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@984
    .line 921
    move-object/from16 v0, p0

    #@986
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@988
    const/16 v4, 0xf

    #@98a
    if-ne v2, v4, :cond_34

    #@98c
    .line 922
    const/4 v2, 0x0

    #@98d
    move-object/from16 v0, p0

    #@98f
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@991
    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    #@993
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@996
    const-string/jumbo v4, "setting5 mMncLength="

    #@999
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99c
    move-result-object v2

    #@99d
    move-object/from16 v0, p0

    #@99f
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9a1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a4
    move-result-object v2

    #@9a5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a8
    move-result-object v2

    #@9a9
    move-object/from16 v0, p0

    #@9ab
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@9ae
    .line 929
    :cond_2f
    :goto_f
    :try_start_14
    move-object/from16 v0, p0

    #@9b0
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9b2
    const/4 v4, -0x1

    #@9b3
    if-eq v2, v4, :cond_30

    #@9b5
    move-object/from16 v0, p0

    #@9b7
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9b9
    if-nez v2, :cond_3a

    #@9bb
    .line 930
    :cond_30
    :goto_10
    move-object/from16 v0, p0

    #@9bd
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9bf
    if-eqz v2, :cond_31

    #@9c1
    move-object/from16 v0, p0

    #@9c3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9c5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@9c8
    move-result v2

    #@9c9
    const/4 v4, 0x6

    #@9ca
    if-lt v2, v4, :cond_31

    #@9cc
    .line 931
    move-object/from16 v0, p0

    #@9ce
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9d0
    const/4 v4, 0x0

    #@9d1
    const/4 v5, 0x6

    #@9d2
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9d5
    move-result-object v18

    #@9d6
    .line 932
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9d8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9db
    const-string/jumbo v4, "mccmncCode="

    #@9de
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e1
    move-result-object v2

    #@9e2
    move-object/from16 v0, v18

    #@9e4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e7
    move-result-object v2

    #@9e8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9eb
    move-result-object v2

    #@9ec
    move-object/from16 v0, p0

    #@9ee
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@9f1
    .line 933
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@9f3
    const/4 v2, 0x0

    #@9f4
    array-length v5, v4

    #@9f5
    :goto_11
    if-ge v2, v5, :cond_31

    #@9f7
    aget-object v17, v4, v2

    #@9f9
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9fc
    move-result v6

    #@9fd
    if-eqz v6, :cond_3b

    #@9ff
    .line 935
    const/4 v2, 0x3

    #@a00
    move-object/from16 v0, p0

    #@a02
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a04
    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    #@a06
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a09
    const-string/jumbo v4, "setting6 mMncLength="

    #@a0c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0f
    move-result-object v2

    #@a10
    move-object/from16 v0, p0

    #@a12
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a17
    move-result-object v2

    #@a18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1b
    move-result-object v2

    #@a1c
    move-object/from16 v0, p0

    #@a1e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@a21
    .line 942
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    #@a23
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a25
    if-eqz v2, :cond_32

    #@a27
    move-object/from16 v0, p0

    #@a29
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a2b
    const/4 v4, -0x1

    #@a2c
    if-ne v2, v4, :cond_33

    #@a2e
    .line 943
    :cond_32
    move-object/from16 v0, p0

    #@a30
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@a32
    if-eqz v2, :cond_3c

    #@a34
    .line 945
    :try_start_15
    move-object/from16 v0, p0

    #@a36
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a38
    const/4 v4, 0x0

    #@a39
    const/4 v5, 0x3

    #@a3a
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a3d
    move-result-object v2

    #@a3e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a41
    move-result v16

    #@a42
    .line 947
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@a45
    move-result v2

    #@a46
    move-object/from16 v0, p0

    #@a48
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a4a
    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    #@a4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a4f
    const-string/jumbo v4, "setting7 mMncLength="

    #@a52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a55
    move-result-object v2

    #@a56
    move-object/from16 v0, p0

    #@a58
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a5a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5d
    move-result-object v2

    #@a5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a61
    move-result-object v2

    #@a62
    move-object/from16 v0, p0

    #@a64
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    #@a67
    .line 959
    .end local v16    # "mcc":I
    :cond_33
    :goto_12
    :try_start_16
    move-object/from16 v0, p0

    #@a69
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a6b
    if-eqz v2, :cond_1

    #@a6d
    move-object/from16 v0, p0

    #@a6f
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a71
    if-eqz v2, :cond_1

    #@a73
    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    #@a75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a78
    const-string/jumbo v4, "update mccmnc="

    #@a7b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7e
    move-result-object v2

    #@a7f
    move-object/from16 v0, p0

    #@a81
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a83
    move-object/from16 v0, p0

    #@a85
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a87
    add-int/lit8 v5, v5, 0x3

    #@a89
    const/4 v6, 0x0

    #@a8a
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a8d
    move-result-object v4

    #@a8e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a91
    move-result-object v2

    #@a92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a95
    move-result-object v2

    #@a96
    move-object/from16 v0, p0

    #@a98
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@a9b
    .line 963
    move-object/from16 v0, p0

    #@a9d
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@a9f
    .line 964
    move-object/from16 v0, p0

    #@aa1
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@aa3
    move-object/from16 v0, p0

    #@aa5
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@aa7
    add-int/lit8 v5, v5, 0x3

    #@aa9
    const/4 v6, 0x0

    #@aaa
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@aad
    move-result-object v4

    #@aae
    const/4 v5, 0x0

    #@aaf
    .line 963
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@ab2
    goto/16 :goto_0

    #@ab4
    .line 924
    :cond_34
    :try_start_17
    move-object/from16 v0, p0

    #@ab6
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ab8
    const/4 v4, 0x2

    #@ab9
    if-eq v2, v4, :cond_2f

    #@abb
    move-object/from16 v0, p0

    #@abd
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@abf
    const/4 v4, 0x3

    #@ac0
    if-eq v2, v4, :cond_2f

    #@ac2
    .line 925
    const/4 v2, -0x1

    #@ac3
    move-object/from16 v0, p0

    #@ac5
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ac7
    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    #@ac9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@acc
    const-string/jumbo v4, "setting5 mMncLength="

    #@acf
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad2
    move-result-object v2

    #@ad3
    move-object/from16 v0, p0

    #@ad5
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ad7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ada
    move-result-object v2

    #@adb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ade
    move-result-object v2

    #@adf
    move-object/from16 v0, p0

    #@ae1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@ae4
    goto/16 :goto_f

    #@ae6
    .line 928
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :catchall_1
    move-exception v2

    #@ae7
    .line 929
    :try_start_18
    move-object/from16 v0, p0

    #@ae9
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@aeb
    const/4 v5, -0x1

    #@aec
    if-eq v4, v5, :cond_35

    #@aee
    move-object/from16 v0, p0

    #@af0
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@af2
    if-nez v4, :cond_3d

    #@af4
    .line 930
    :cond_35
    :goto_13
    move-object/from16 v0, p0

    #@af6
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@af8
    if-eqz v4, :cond_36

    #@afa
    move-object/from16 v0, p0

    #@afc
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@afe
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@b01
    move-result v4

    #@b02
    const/4 v5, 0x6

    #@b03
    if-lt v4, v5, :cond_36

    #@b05
    .line 931
    move-object/from16 v0, p0

    #@b07
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b09
    const/4 v5, 0x0

    #@b0a
    const/4 v6, 0x6

    #@b0b
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b0e
    move-result-object v18

    #@b0f
    .line 932
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@b11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b14
    const-string/jumbo v5, "mccmncCode="

    #@b17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1a
    move-result-object v4

    #@b1b
    move-object/from16 v0, v18

    #@b1d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b20
    move-result-object v4

    #@b21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b24
    move-result-object v4

    #@b25
    move-object/from16 v0, p0

    #@b27
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b2a
    .line 933
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@b2c
    const/4 v4, 0x0

    #@b2d
    array-length v6, v5

    #@b2e
    :goto_14
    if-ge v4, v6, :cond_36

    #@b30
    aget-object v17, v5, v4

    #@b32
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b35
    move-result v7

    #@b36
    if-eqz v7, :cond_3e

    #@b38
    .line 935
    const/4 v4, 0x3

    #@b39
    move-object/from16 v0, p0

    #@b3b
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b3d
    .line 936
    new-instance v4, Ljava/lang/StringBuilder;

    #@b3f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b42
    const-string/jumbo v5, "setting6 mMncLength="

    #@b45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b48
    move-result-object v4

    #@b49
    move-object/from16 v0, p0

    #@b4b
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b50
    move-result-object v4

    #@b51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b54
    move-result-object v4

    #@b55
    move-object/from16 v0, p0

    #@b57
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b5a
    .line 942
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    #@b5c
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b5e
    if-eqz v4, :cond_37

    #@b60
    move-object/from16 v0, p0

    #@b62
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b64
    const/4 v5, -0x1

    #@b65
    if-ne v4, v5, :cond_38

    #@b67
    .line 943
    :cond_37
    move-object/from16 v0, p0

    #@b69
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    #@b6b
    if-eqz v4, :cond_3f

    #@b6d
    .line 945
    :try_start_19
    move-object/from16 v0, p0

    #@b6f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b71
    const/4 v5, 0x0

    #@b72
    const/4 v6, 0x3

    #@b73
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b76
    move-result-object v4

    #@b77
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b7a
    move-result v16

    #@b7b
    .line 947
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@b7e
    move-result v4

    #@b7f
    move-object/from16 v0, p0

    #@b81
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b83
    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    #@b85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b88
    const-string/jumbo v5, "setting7 mMncLength="

    #@b8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8e
    move-result-object v4

    #@b8f
    move-object/from16 v0, p0

    #@b91
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b96
    move-result-object v4

    #@b97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9a
    move-result-object v4

    #@b9b
    move-object/from16 v0, p0

    #@b9d
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    #@ba0
    .line 959
    .end local v16    # "mcc":I
    :cond_38
    :goto_15
    :try_start_1a
    move-object/from16 v0, p0

    #@ba2
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@ba4
    if-eqz v4, :cond_39

    #@ba6
    move-object/from16 v0, p0

    #@ba8
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@baa
    if-eqz v4, :cond_39

    #@bac
    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    #@bae
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bb1
    const-string/jumbo v5, "update mccmnc="

    #@bb4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb7
    move-result-object v4

    #@bb8
    move-object/from16 v0, p0

    #@bba
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bbc
    move-object/from16 v0, p0

    #@bbe
    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bc0
    add-int/lit8 v6, v6, 0x3

    #@bc2
    const/4 v7, 0x0

    #@bc3
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bc6
    move-result-object v5

    #@bc7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bca
    move-result-object v4

    #@bcb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bce
    move-result-object v4

    #@bcf
    move-object/from16 v0, p0

    #@bd1
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@bd4
    .line 963
    move-object/from16 v0, p0

    #@bd6
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@bd8
    .line 964
    move-object/from16 v0, p0

    #@bda
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bdc
    move-object/from16 v0, p0

    #@bde
    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@be0
    add-int/lit8 v6, v6, 0x3

    #@be2
    const/4 v7, 0x0

    #@be3
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@be6
    move-result-object v5

    #@be7
    const/4 v6, 0x0

    #@be8
    .line 963
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@beb
    .line 928
    :cond_39
    throw v2

    #@bec
    .line 930
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "data":[B
    :cond_3a
    move-object/from16 v0, p0

    #@bee
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bf0
    const/4 v4, 0x2

    #@bf1
    if-ne v2, v4, :cond_31

    #@bf3
    goto/16 :goto_10

    #@bf5
    .line 933
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    #@bf7
    goto/16 :goto_11

    #@bf9
    .line 949
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_5
    move-exception v11

    #@bfa
    .line 950
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@bfb
    move-object/from16 v0, p0

    #@bfd
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bff
    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    #@c01
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c04
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@c07
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0a
    move-result-object v2

    #@c0b
    move-object/from16 v0, p0

    #@c0d
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c0f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c12
    move-result-object v2

    #@c13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c16
    move-result-object v2

    #@c17
    move-object/from16 v0, p0

    #@c19
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@c1c
    goto/16 :goto_12

    #@c1e
    .line 955
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3c
    const/4 v2, 0x0

    #@c1f
    move-object/from16 v0, p0

    #@c21
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c23
    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    #@c25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c28
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@c2b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2e
    move-result-object v2

    #@c2f
    move-object/from16 v0, p0

    #@c31
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c33
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c36
    move-result-object v2

    #@c37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3a
    move-result-object v2

    #@c3b
    move-object/from16 v0, p0

    #@c3d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c40
    goto/16 :goto_12

    #@c42
    .line 930
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :cond_3d
    move-object/from16 v0, p0

    #@c44
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c46
    const/4 v5, 0x2

    #@c47
    if-ne v4, v5, :cond_36

    #@c49
    goto/16 :goto_13

    #@c4b
    .line 933
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    #@c4d
    goto/16 :goto_14

    #@c4f
    .line 949
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_6
    move-exception v11

    #@c50
    .line 950
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@c51
    move-object/from16 v0, p0

    #@c53
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c55
    .line 951
    new-instance v4, Ljava/lang/StringBuilder;

    #@c57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c5a
    const-string/jumbo v5, "Corrupt IMSI! setting8 mMncLength="

    #@c5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c60
    move-result-object v4

    #@c61
    move-object/from16 v0, p0

    #@c63
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c68
    move-result-object v4

    #@c69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6c
    move-result-object v4

    #@c6d
    move-object/from16 v0, p0

    #@c6f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@c72
    goto/16 :goto_15

    #@c74
    .line 955
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    const/4 v4, 0x0

    #@c75
    move-object/from16 v0, p0

    #@c77
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c79
    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    #@c7b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c7e
    const-string/jumbo v5, "MNC length not present in EF_AD setting9 mMncLength="

    #@c81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c84
    move-result-object v4

    #@c85
    move-object/from16 v0, p0

    #@c87
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8c
    move-result-object v4

    #@c8d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c90
    move-result-object v4

    #@c91
    move-object/from16 v0, p0

    #@c93
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c96
    goto/16 :goto_15

    #@c98
    .line 970
    :pswitch_c
    const/4 v14, 0x1

    #@c99
    .line 971
    move-object/from16 v0, p1

    #@c9b
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c9d
    check-cast v9, Landroid/os/AsyncResult;

    #@c9f
    .line 972
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    #@ca0
    move-object/from16 v0, p0

    #@ca2
    invoke-direct {v0, v2, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    #@ca5
    goto/16 :goto_0

    #@ca7
    .line 976
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    const/4 v14, 0x1

    #@ca8
    .line 978
    move-object/from16 v0, p1

    #@caa
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cac
    check-cast v9, Landroid/os/AsyncResult;

    #@cae
    .line 979
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@cb0
    check-cast v10, [B

    #@cb2
    .line 981
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cb4
    if-eqz v2, :cond_40

    #@cb6
    .line 982
    const/4 v2, 0x0

    #@cb7
    move-object/from16 v0, p0

    #@cb9
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@cbb
    goto/16 :goto_0

    #@cbd
    .line 984
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    #@cbf
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cc2
    const-string/jumbo v4, "EF_CFF_CPHS: "

    #@cc5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc8
    move-result-object v2

    #@cc9
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@ccc
    move-result-object v4

    #@ccd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd0
    move-result-object v2

    #@cd1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd4
    move-result-object v2

    #@cd5
    move-object/from16 v0, p0

    #@cd7
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@cda
    .line 985
    move-object/from16 v0, p0

    #@cdc
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@cde
    goto/16 :goto_0

    #@ce0
    .line 991
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_e
    const/4 v14, 0x1

    #@ce1
    .line 993
    move-object/from16 v0, p1

    #@ce3
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ce5
    check-cast v9, Landroid/os/AsyncResult;

    #@ce7
    .line 994
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ce9
    check-cast v10, [B

    #@ceb
    .line 996
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ced
    if-nez v2, :cond_1

    #@cef
    .line 1000
    move-object/from16 v0, p0

    #@cf1
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    #@cf4
    goto/16 :goto_0

    #@cf6
    .line 1004
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_f
    move-object/from16 v0, p1

    #@cf8
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cfa
    check-cast v9, Landroid/os/AsyncResult;

    #@cfc
    .line 1005
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cfe
    if-eqz v2, :cond_1

    #@d00
    .line 1006
    const-string/jumbo v2, "update failed. "

    #@d03
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d05
    move-object/from16 v0, p0

    #@d07
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d0a
    goto/16 :goto_0

    #@d0c
    .line 1011
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    const/4 v14, 0x1

    #@d0d
    .line 1013
    move-object/from16 v0, p1

    #@d0f
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d11
    check-cast v9, Landroid/os/AsyncResult;

    #@d13
    .line 1014
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d15
    check-cast v10, [B

    #@d17
    .line 1016
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d19
    if-nez v2, :cond_1

    #@d1b
    .line 1020
    new-instance v21, Lcom/android/internal/telephony/gsm/SimTlv;

    #@d1d
    array-length v2, v10

    #@d1e
    const/4 v4, 0x0

    #@d1f
    move-object/from16 v0, v21

    #@d21
    invoke-direct {v0, v10, v4, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@d24
    .line 1022
    .local v21, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_16
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    #@d27
    move-result v2

    #@d28
    if-eqz v2, :cond_1

    #@d2a
    .line 1023
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@d2d
    move-result v2

    #@d2e
    const/16 v4, 0x43

    #@d30
    if-ne v2, v4, :cond_41

    #@d32
    .line 1026
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@d35
    move-result-object v2

    #@d36
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@d39
    move-result-object v4

    #@d3a
    array-length v4, v4

    #@d3b
    const/4 v5, 0x0

    #@d3c
    .line 1025
    invoke-static {v2, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    #@d3f
    move-result-object v2

    #@d40
    .line 1024
    move-object/from16 v0, p0

    #@d42
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@d44
    goto/16 :goto_0

    #@d46
    .line 1022
    :cond_41
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@d49
    goto :goto_16

    #@d4a
    .line 1033
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    .end local v21    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :pswitch_11
    const/4 v14, 0x1

    #@d4b
    .line 1035
    move-object/from16 v0, p1

    #@d4d
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d4f
    check-cast v9, Landroid/os/AsyncResult;

    #@d51
    .line 1036
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d53
    if-nez v2, :cond_1

    #@d55
    .line 1039
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d57
    check-cast v2, Ljava/util/ArrayList;

    #@d59
    move-object/from16 v0, p0

    #@d5b
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    #@d5e
    goto/16 :goto_0

    #@d60
    .line 1043
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    const-string/jumbo v2, "ENF"

    #@d63
    new-instance v4, Ljava/lang/StringBuilder;

    #@d65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d68
    const-string/jumbo v5, "marked read: sms "

    #@d6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6e
    move-result-object v4

    #@d6f
    move-object/from16 v0, p1

    #@d71
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@d73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d76
    move-result-object v4

    #@d77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7a
    move-result-object v4

    #@d7b
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d7e
    goto/16 :goto_0

    #@d80
    .line 1048
    :pswitch_13
    const/4 v14, 0x0

    #@d81
    .line 1050
    move-object/from16 v0, p1

    #@d83
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d85
    check-cast v9, Landroid/os/AsyncResult;

    #@d87
    .line 1052
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d89
    check-cast v13, [I

    #@d8b
    .line 1054
    .local v13, "index":[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d8d
    if-nez v2, :cond_42

    #@d8f
    array-length v2, v13

    #@d90
    const/4 v4, 0x1

    #@d91
    if-eq v2, v4, :cond_43

    #@d93
    .line 1055
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    #@d95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d98
    const-string/jumbo v4, "Error on SMS_ON_SIM with exp "

    #@d9b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9e
    move-result-object v2

    #@d9f
    .line 1056
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@da1
    .line 1055
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da4
    move-result-object v2

    #@da5
    .line 1056
    const-string/jumbo v4, " length "

    #@da8
    .line 1055
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dab
    move-result-object v2

    #@dac
    .line 1056
    array-length v4, v13

    #@dad
    .line 1055
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@db0
    move-result-object v2

    #@db1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db4
    move-result-object v2

    #@db5
    move-object/from16 v0, p0

    #@db7
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@dba
    goto/16 :goto_0

    #@dbc
    .line 1058
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    #@dbe
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@dc1
    const-string/jumbo v4, "READ EF_SMS RECORD index="

    #@dc4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc7
    move-result-object v2

    #@dc8
    const/4 v4, 0x0

    #@dc9
    aget v4, v13, v4

    #@dcb
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dce
    move-result-object v2

    #@dcf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd2
    move-result-object v2

    #@dd3
    move-object/from16 v0, p0

    #@dd5
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@dd8
    .line 1059
    move-object/from16 v0, p0

    #@dda
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@ddc
    const/4 v4, 0x0

    #@ddd
    aget v4, v13, v4

    #@ddf
    .line 1060
    const/16 v5, 0x16

    #@de1
    move-object/from16 v0, p0

    #@de3
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@de6
    move-result-object v5

    #@de7
    .line 1059
    const/16 v6, 0x6f3c

    #@de9
    invoke-virtual {v2, v6, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@dec
    goto/16 :goto_0

    #@dee
    .line 1065
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "index":[I
    :pswitch_14
    const/4 v14, 0x0

    #@def
    .line 1066
    move-object/from16 v0, p1

    #@df1
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@df3
    check-cast v9, Landroid/os/AsyncResult;

    #@df5
    .line 1067
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@df7
    if-nez v2, :cond_44

    #@df9
    .line 1068
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@dfb
    check-cast v2, [B

    #@dfd
    move-object/from16 v0, p0

    #@dff
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    #@e02
    goto/16 :goto_0

    #@e04
    .line 1070
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    #@e06
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e09
    const-string/jumbo v4, "Error on GET_SMS with exp "

    #@e0c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0f
    move-result-object v2

    #@e10
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e12
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e15
    move-result-object v2

    #@e16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e19
    move-result-object v2

    #@e1a
    move-object/from16 v0, p0

    #@e1c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@e1f
    goto/16 :goto_0

    #@e21
    .line 1074
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const/4 v14, 0x1

    #@e22
    .line 1076
    move-object/from16 v0, p1

    #@e24
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e26
    check-cast v9, Landroid/os/AsyncResult;

    #@e28
    .line 1077
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e2a
    check-cast v10, [B

    #@e2c
    .line 1079
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e2e
    if-nez v2, :cond_1

    #@e30
    .line 1083
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e32
    invoke-direct {v2, v10}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    #@e35
    move-object/from16 v0, p0

    #@e37
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e39
    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    #@e3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e3e
    const-string/jumbo v4, "SST: "

    #@e41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e44
    move-result-object v2

    #@e45
    move-object/from16 v0, p0

    #@e47
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e4c
    move-result-object v2

    #@e4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e50
    move-result-object v2

    #@e51
    move-object/from16 v0, p0

    #@e53
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e56
    goto/16 :goto_0

    #@e58
    .line 1088
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_16
    const/4 v14, 0x1

    #@e59
    .line 1090
    move-object/from16 v0, p1

    #@e5b
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e5d
    check-cast v9, Landroid/os/AsyncResult;

    #@e5f
    .line 1092
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e61
    if-nez v2, :cond_1

    #@e63
    .line 1096
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e65
    check-cast v2, [B

    #@e67
    move-object/from16 v0, p0

    #@e69
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@e6b
    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    #@e6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e70
    const-string/jumbo v4, "iCPHS: "

    #@e73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e76
    move-result-object v2

    #@e77
    move-object/from16 v0, p0

    #@e79
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@e7b
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@e7e
    move-result-object v4

    #@e7f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e82
    move-result-object v2

    #@e83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e86
    move-result-object v2

    #@e87
    move-object/from16 v0, p0

    #@e89
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e8c
    goto/16 :goto_0

    #@e8e
    .line 1102
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    const/4 v14, 0x0

    #@e8f
    .line 1103
    move-object/from16 v0, p1

    #@e91
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e93
    check-cast v9, Landroid/os/AsyncResult;

    #@e95
    .line 1105
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e9a
    const-string/jumbo v4, "EVENT_SET_MBDN_DONE ex:"

    #@e9d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea0
    move-result-object v2

    #@ea1
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ea3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea6
    move-result-object v2

    #@ea7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eaa
    move-result-object v2

    #@eab
    move-object/from16 v0, p0

    #@ead
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@eb0
    .line 1106
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@eb2
    if-nez v2, :cond_45

    #@eb4
    .line 1107
    move-object/from16 v0, p0

    #@eb6
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@eb8
    move-object/from16 v0, p0

    #@eba
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@ebc
    .line 1108
    move-object/from16 v0, p0

    #@ebe
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@ec0
    move-object/from16 v0, p0

    #@ec2
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@ec4
    .line 1111
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    #@ec7
    move-result v2

    #@ec8
    if-eqz v2, :cond_47

    #@eca
    .line 1112
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@ecc
    move-object/from16 v0, p0

    #@ece
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@ed0
    move-object/from16 v0, p0

    #@ed2
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@ed4
    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ed7
    .line 1113
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@ed9
    move-object/from16 v19, v0

    #@edb
    check-cast v19, Landroid/os/Message;

    #@edd
    .line 1122
    .local v19, "onCphsCompleted":Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@edf
    if-nez v2, :cond_46

    #@ee1
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@ee3
    if-eqz v2, :cond_46

    #@ee5
    .line 1123
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@ee7
    check-cast v2, Landroid/os/Message;

    #@ee9
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@eec
    move-result-object v2

    #@eed
    .line 1124
    const/4 v4, 0x0

    #@eee
    .line 1123
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ef0
    .line 1125
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@ef2
    check-cast v2, Landroid/os/Message;

    #@ef4
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@ef7
    .line 1127
    const-string/jumbo v2, "Callback with MBDN successful."

    #@efa
    move-object/from16 v0, p0

    #@efc
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@eff
    .line 1129
    const/16 v19, 0x0

    #@f01
    .line 1132
    .end local v19    # "onCphsCompleted":Landroid/os/Message;
    :cond_46
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@f03
    move-object/from16 v0, p0

    #@f05
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@f07
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@f0a
    .line 1134
    const/16 v4, 0x19

    #@f0c
    move-object/from16 v0, p0

    #@f0e
    move-object/from16 v1, v19

    #@f10
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f13
    move-result-object v8

    #@f14
    .line 1133
    const/16 v4, 0x6f17

    #@f16
    const/16 v5, 0x6f4a

    #@f18
    const/4 v6, 0x1

    #@f19
    const/4 v7, 0x0

    #@f1a
    .line 1132
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@f1d
    goto/16 :goto_0

    #@f1f
    .line 1137
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_47
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f21
    if-eqz v2, :cond_1

    #@f23
    .line 1138
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@f26
    move-result-object v20

    #@f27
    .line 1139
    .local v20, "resource":Landroid/content/res/Resources;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f29
    if-eqz v2, :cond_48

    #@f2b
    const v2, 0x1120095

    #@f2e
    move-object/from16 v0, v20

    #@f30
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f33
    move-result v2

    #@f34
    if-eqz v2, :cond_48

    #@f36
    .line 1143
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f38
    check-cast v2, Landroid/os/Message;

    #@f3a
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f3d
    move-result-object v2

    #@f3e
    .line 1144
    new-instance v4, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@f40
    .line 1145
    const-string/jumbo v5, "Update SIM voice mailbox error"

    #@f43
    .line 1144
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    #@f46
    .line 1143
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f48
    .line 1150
    :goto_17
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f4a
    check-cast v2, Landroid/os/Message;

    #@f4c
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@f4f
    goto/16 :goto_0

    #@f51
    .line 1147
    :cond_48
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f53
    check-cast v2, Landroid/os/Message;

    #@f55
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f58
    move-result-object v2

    #@f59
    .line 1148
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f5b
    .line 1147
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f5d
    goto :goto_17

    #@f5e
    .line 1155
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "resource":Landroid/content/res/Resources;
    :pswitch_18
    const/4 v14, 0x0

    #@f5f
    .line 1156
    move-object/from16 v0, p1

    #@f61
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f63
    check-cast v9, Landroid/os/AsyncResult;

    #@f65
    .line 1157
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f67
    if-nez v2, :cond_49

    #@f69
    .line 1158
    move-object/from16 v0, p0

    #@f6b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@f6d
    move-object/from16 v0, p0

    #@f6f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@f71
    .line 1159
    move-object/from16 v0, p0

    #@f73
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@f75
    move-object/from16 v0, p0

    #@f77
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@f79
    .line 1164
    :goto_18
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f7b
    if-eqz v2, :cond_1

    #@f7d
    .line 1165
    const-string/jumbo v2, "Callback with CPHS MB successful."

    #@f80
    move-object/from16 v0, p0

    #@f82
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@f85
    .line 1166
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f87
    check-cast v2, Landroid/os/Message;

    #@f89
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f8c
    move-result-object v2

    #@f8d
    .line 1167
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f8f
    .line 1166
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f91
    .line 1168
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f93
    check-cast v2, Landroid/os/Message;

    #@f95
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@f98
    goto/16 :goto_0

    #@f9a
    .line 1161
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    #@f9c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f9f
    const-string/jumbo v4, "Set CPHS MailBox with exception: "

    #@fa2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa5
    move-result-object v2

    #@fa6
    .line 1162
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fa8
    .line 1161
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fab
    move-result-object v2

    #@fac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@faf
    move-result-object v2

    #@fb0
    move-object/from16 v0, p0

    #@fb2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fb5
    goto :goto_18

    #@fb6
    .line 1172
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    const/4 v14, 0x0

    #@fb7
    .line 1173
    move-object/from16 v0, p1

    #@fb9
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fbb
    check-cast v9, Landroid/os/AsyncResult;

    #@fbd
    .line 1174
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    #@fbf
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fc2
    const-string/jumbo v4, "Sim REFRESH with exception: "

    #@fc5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc8
    move-result-object v2

    #@fc9
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fcb
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fce
    move-result-object v2

    #@fcf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd2
    move-result-object v2

    #@fd3
    move-object/from16 v0, p0

    #@fd5
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fd8
    .line 1175
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fda
    if-nez v2, :cond_1

    #@fdc
    .line 1176
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@fde
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@fe0
    move-object/from16 v0, p0

    #@fe2
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@fe5
    goto/16 :goto_0

    #@fe7
    .line 1180
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a
    const/4 v14, 0x1

    #@fe8
    .line 1182
    move-object/from16 v0, p1

    #@fea
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fec
    check-cast v9, Landroid/os/AsyncResult;

    #@fee
    .line 1183
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ff0
    check-cast v10, [B

    #@ff2
    .line 1185
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ff4
    if-eqz v2, :cond_4a

    #@ff6
    .line 1186
    const/4 v2, 0x0

    #@ff7
    move-object/from16 v0, p0

    #@ff9
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@ffb
    goto/16 :goto_0

    #@ffd
    .line 1188
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@fff
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1002
    const-string/jumbo v4, "EF_CFIS: "

    #@1005
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1008
    move-result-object v2

    #@1009
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@100c
    move-result-object v4

    #@100d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1010
    move-result-object v2

    #@1011
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1014
    move-result-object v2

    #@1015
    move-object/from16 v0, p0

    #@1017
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@101a
    .line 1189
    move-object/from16 v0, p0

    #@101c
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@101e
    goto/16 :goto_0

    #@1020
    .line 1195
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1b
    const/4 v14, 0x1

    #@1021
    .line 1197
    move-object/from16 v0, p1

    #@1023
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1025
    check-cast v9, Landroid/os/AsyncResult;

    #@1027
    .line 1199
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1029
    if-eqz v2, :cond_4b

    #@102b
    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    #@102d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1030
    const-string/jumbo v4, "Exception in fetching EF_CSP data "

    #@1033
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1036
    move-result-object v2

    #@1037
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1039
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@103c
    move-result-object v2

    #@103d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1040
    move-result-object v2

    #@1041
    move-object/from16 v0, p0

    #@1043
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@1046
    goto/16 :goto_0

    #@1048
    .line 1204
    :cond_4b
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@104a
    check-cast v10, [B

    #@104c
    .line 1206
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@104e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1051
    const-string/jumbo v4, "EF_CSP: "

    #@1054
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1057
    move-result-object v2

    #@1058
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@105b
    move-result-object v4

    #@105c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105f
    move-result-object v2

    #@1060
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1063
    move-result-object v2

    #@1064
    move-object/from16 v0, p0

    #@1066
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1069
    .line 1207
    move-object/from16 v0, p0

    #@106b
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    #@106e
    goto/16 :goto_0

    #@1070
    .line 1211
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1c
    const/4 v14, 0x1

    #@1071
    .line 1213
    move-object/from16 v0, p1

    #@1073
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1075
    check-cast v9, Landroid/os/AsyncResult;

    #@1077
    .line 1214
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1079
    check-cast v10, [B

    #@107b
    .line 1216
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@107d
    if-eqz v2, :cond_4c

    #@107f
    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    #@1081
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1084
    const-string/jumbo v4, "Exception in get GID1 "

    #@1087
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108a
    move-result-object v2

    #@108b
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@108d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1090
    move-result-object v2

    #@1091
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1094
    move-result-object v2

    #@1095
    move-object/from16 v0, p0

    #@1097
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@109a
    .line 1218
    const/4 v2, 0x0

    #@109b
    move-object/from16 v0, p0

    #@109d
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@109f
    goto/16 :goto_0

    #@10a1
    .line 1221
    :cond_4c
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@10a4
    move-result-object v2

    #@10a5
    move-object/from16 v0, p0

    #@10a7
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10a9
    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    #@10ab
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10ae
    const-string/jumbo v4, "GID1: "

    #@10b1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b4
    move-result-object v2

    #@10b5
    move-object/from16 v0, p0

    #@10b7
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10b9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10bc
    move-result-object v2

    #@10bd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c0
    move-result-object v2

    #@10c1
    move-object/from16 v0, p0

    #@10c3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@10c6
    goto/16 :goto_0

    #@10c8
    .line 1227
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1d
    const/4 v14, 0x1

    #@10c9
    .line 1229
    move-object/from16 v0, p1

    #@10cb
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10cd
    check-cast v9, Landroid/os/AsyncResult;

    #@10cf
    .line 1230
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10d1
    check-cast v10, [B

    #@10d3
    .line 1232
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10d5
    if-eqz v2, :cond_4d

    #@10d7
    .line 1233
    new-instance v2, Ljava/lang/StringBuilder;

    #@10d9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10dc
    const-string/jumbo v4, "Exception in get GID2 "

    #@10df
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e2
    move-result-object v2

    #@10e3
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10e5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e8
    move-result-object v2

    #@10e9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10ec
    move-result-object v2

    #@10ed
    move-object/from16 v0, p0

    #@10ef
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@10f2
    .line 1234
    const/4 v2, 0x0

    #@10f3
    move-object/from16 v0, p0

    #@10f5
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@10f7
    goto/16 :goto_0

    #@10f9
    .line 1237
    :cond_4d
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@10fc
    move-result-object v2

    #@10fd
    move-object/from16 v0, p0

    #@10ff
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1101
    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    #@1103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1106
    const-string/jumbo v4, "GID2: "

    #@1109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110c
    move-result-object v2

    #@110d
    move-object/from16 v0, p0

    #@110f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1114
    move-result-object v2

    #@1115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1118
    move-result-object v2

    #@1119
    move-object/from16 v0, p0

    #@111b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@111e
    goto/16 :goto_0

    #@1120
    .line 1243
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleCarrierNameOverride()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    #@1123
    goto/16 :goto_0

    #@1125
    .line 645
    nop

    #@1126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_15
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_d
        :pswitch_18
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_2
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1942
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1920
    const-string/jumbo v0, "SIMRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[SIMRecords] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1919
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1925
    const-string/jumbo v0, "SIMRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[SIMRecords] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1924
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1933
    const-string/jumbo v0, "SIMRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[SIMRecords] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1932
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1929
    const-string/jumbo v0, "SIMRecords"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[SIMRecords] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 1928
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1456
    const-string/jumbo v3, "record load complete"

    #@5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8
    .line 1458
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    .line 1459
    .local v1, "resource":Landroid/content/res/Resources;
    const v3, 0x112009c

    #@f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 1460
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    #@17
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@19
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    #@1c
    .line 1465
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    #@1f
    .line 1467
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@21
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@24
    move-result-object v3

    #@25
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@27
    if-eq v3, v4, :cond_0

    #@29
    .line 1468
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2b
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2e
    move-result-object v3

    #@2f
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@31
    if-ne v3, v4, :cond_2

    #@33
    .line 1470
    :cond_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@35
    .line 1472
    return-void

    #@36
    .line 1462
    :cond_1
    const-string/jumbo v3, "Not using EF LI/EF PL"

    #@39
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1477
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1478
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_3

    #@47
    .line 1479
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    .line 1480
    const-string/jumbo v4, "\'"

    #@5a
    .line 1479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@65
    .line 1481
    new-instance v3, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v4, "update icc_operator_numeric="

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@7c
    .line 1482
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7e
    .line 1483
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@80
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@83
    move-result v4

    #@84
    .line 1482
    invoke-virtual {v3, v4, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@87
    .line 1484
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@8a
    move-result-object v2

    #@8b
    .line 1485
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@8e
    move-result v3

    #@8f
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@92
    .line 1490
    .end local v2    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@97
    move-result v3

    #@98
    if-nez v3, :cond_4

    #@9a
    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v4, "onAllRecordsLoaded set mcc imsi"

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v3

    #@a6
    const-string/jumbo v4, ""

    #@a9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v3

    #@ad
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b4
    .line 1492
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@b6
    .line 1493
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b8
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@bb
    move-result v4

    #@bc
    .line 1494
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@be
    const/4 v6, 0x3

    #@bf
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c2
    move-result-object v5

    #@c3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c6
    move-result v5

    #@c7
    .line 1493
    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    .line 1492
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@ce
    .line 1499
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    #@d1
    .line 1501
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@d3
    .line 1502
    new-instance v4, Landroid/os/AsyncResult;

    #@d5
    invoke-direct {v4, v7, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@d8
    .line 1501
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@db
    .line 1455
    return-void

    #@dc
    .line 1487
    :cond_3
    const-string/jumbo v3, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    #@df
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e2
    goto :goto_1

    #@e3
    .line 1496
    :cond_4
    const-string/jumbo v3, "onAllRecordsLoaded empty imsi skipping setting mcc"

    #@e6
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e9
    goto :goto_2
.end method

.method public onReady()V
    .locals 0

    #@0
    .prologue
    .line 1541
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@3
    .line 1540
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1427
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@7
    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v1, "onRecordLoaded "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, " requested: "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2d
    .line 1430
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@2f
    if-nez v0, :cond_1

    #@31
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 1431
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    #@38
    .line 1424
    :cond_0
    :goto_0
    return-void

    #@39
    .line 1432
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3b
    if-gez v0, :cond_0

    #@3d
    .line 1433
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    #@40
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@43
    .line 1434
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@45
    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    #@0
    .prologue
    .line 602
    if-eqz p1, :cond_0

    #@2
    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@5
    .line 601
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 250
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@4
    .line 251
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@6
    .line 252
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@8
    .line 253
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "setting0 mMncLength"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@23
    .line 255
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    #@25
    .line 256
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    #@27
    .line 258
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@29
    .line 259
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@2b
    .line 260
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@2d
    .line 261
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@2f
    .line 262
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@31
    .line 263
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@33
    .line 264
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@35
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@37
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@3a
    .line 268
    const-string/jumbo v0, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    #@3d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@40
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v1, "update icc_operator_numeric="

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@57
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@59
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@5e
    move-result v1

    #@5f
    const-string/jumbo v2, ""

    #@62
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@65
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@67
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@69
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@6c
    move-result v1

    #@6d
    const-string/jumbo v2, ""

    #@70
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@73
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@75
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@77
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@7a
    move-result v1

    #@7b
    const-string/jumbo v2, ""

    #@7e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@81
    .line 277
    const/4 v0, 0x0

    #@82
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@84
    .line 249
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/16 v2, 0x6f40

    #@2
    .line 349
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@4
    .line 350
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@6
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Set MSISDN: "

    #@e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v3, " "

    #@1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v3, "xxxxxxx"

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2d
    .line 354
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@2f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@31
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@33
    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 356
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@38
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3a
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@3d
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    #@40
    move-result v3

    #@41
    .line 357
    const/16 v4, 0x1e

    #@43
    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@46
    move-result-object v6

    #@47
    .line 356
    const/4 v4, 0x1

    #@48
    const/4 v5, 0x0

    #@49
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@4c
    .line 345
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 8
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 535
    if-eq p1, v1, :cond_0

    #@4
    return-void

    #@5
    .line 537
    :cond_0
    if-eqz p2, :cond_1

    #@7
    move v0, v1

    #@8
    :cond_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@a
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@13
    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_6

    #@1b
    .line 545
    if-eqz p2, :cond_4

    #@1d
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@1f
    const/4 v1, 0x1

    #@20
    aget-byte v2, v0, v1

    #@22
    or-int/lit8 v2, v2, 0x1

    #@24
    int-to-byte v2, v2

    #@25
    aput-byte v2, v0, v1

    #@27
    .line 551
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v1, "setVoiceCallForwardingFlag: enable="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 552
    const-string/jumbo v1, " mEfCfis="

    #@3a
    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 552
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@40
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@4f
    .line 556
    if-eqz p2, :cond_2

    #@51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_5

    #@57
    .line 567
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    .line 568
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@5b
    .line 569
    const/16 v1, 0x6fcb

    #@5d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@60
    move-result-object v1

    #@61
    const/16 v2, 0xe

    #@63
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@66
    move-result-object v5

    #@67
    .line 568
    const/16 v1, 0x6fcb

    #@69
    const/4 v2, 0x1

    #@6a
    const/4 v4, 0x0

    #@6b
    .line 567
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@6e
    .line 575
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@70
    if-eqz v0, :cond_3

    #@72
    .line 576
    if-eqz p2, :cond_7

    #@74
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@76
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@78
    const/4 v2, 0x0

    #@79
    aget-byte v1, v1, v2

    #@7b
    and-int/lit16 v1, v1, 0xf0

    #@7d
    or-int/lit8 v1, v1, 0xa

    #@7f
    int-to-byte v1, v1

    #@80
    const/4 v2, 0x0

    #@81
    aput-byte v1, v0, v2

    #@83
    .line 584
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@85
    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@87
    .line 586
    const/16 v2, 0x6f13

    #@89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8c
    move-result-object v2

    #@8d
    const/16 v3, 0xe

    #@8f
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@92
    move-result-object v2

    #@93
    .line 585
    const/16 v3, 0x6f13

    #@95
    .line 584
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    #@98
    .line 533
    :cond_3
    :goto_4
    return-void

    #@99
    .line 548
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@9b
    const/4 v1, 0x1

    #@9c
    aget-byte v2, v0, v1

    #@9e
    and-int/lit16 v2, v2, 0xfe

    #@a0
    int-to-byte v2, v2

    #@a1
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a3
    goto :goto_0

    #@a4
    .line 588
    :catch_0
    move-exception v7

    #@a5
    .line 589
    .local v7, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    #@a8
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ab
    goto :goto_4

    #@ac
    .line 557
    .end local v7    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v1, "EF_CFIS: updating cf number, "

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c3
    .line 558
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    #@c6
    move-result-object v6

    #@c7
    .line 560
    .local v6, "bcdNumber":[B
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@c9
    array-length v1, v6

    #@ca
    const/4 v2, 0x0

    #@cb
    const/4 v3, 0x3

    #@cc
    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@cf
    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@d1
    array-length v1, v6

    #@d2
    int-to-byte v1, v1

    #@d3
    const/4 v2, 0x2

    #@d4
    aput-byte v1, v0, v2

    #@d6
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@d8
    const/4 v1, -0x1

    #@d9
    const/16 v2, 0xe

    #@db
    aput-byte v1, v0, v2

    #@dd
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@df
    const/4 v1, -0x1

    #@e0
    const/16 v2, 0xf

    #@e2
    aput-byte v1, v0, v2

    #@e4
    goto/16 :goto_1

    #@e6
    .line 571
    .end local v6    # "bcdNumber":[B
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v1, "setVoiceCallForwardingFlag: ignoring enable="

    #@ee
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    .line 572
    const-string/jumbo v1, " invalid mEfCfis="

    #@f9
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v0

    #@fd
    .line 572
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@ff
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@102
    move-result-object v1

    #@103
    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v0

    #@107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v0

    #@10b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@10e
    goto/16 :goto_2

    #@110
    .line 580
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@112
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@114
    const/4 v2, 0x0

    #@115
    aget-byte v1, v1, v2

    #@117
    and-int/lit16 v1, v1, 0xf0

    #@119
    or-int/lit8 v1, v1, 0x5

    #@11b
    int-to-byte v1, v1

    #@11c
    const/4 v2, 0x0

    #@11d
    aput-byte v1, v0, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@11f
    goto/16 :goto_3
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 397
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 398
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@8
    move-result-object v0

    #@9
    .line 399
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    #@b
    const-string/jumbo v3, "Voicemail number is fixed by operator"

    #@e
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    #@11
    .line 398
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    .line 400
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 401
    return-void

    #@17
    .line 404
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@19
    .line 405
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@1b
    .line 407
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@1d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@1f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@21
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 409
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@26
    if-eqz v0, :cond_1

    #@28
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@2a
    const/16 v2, 0xff

    #@2c
    if-eq v0, v2, :cond_1

    #@2e
    .line 411
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@30
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@32
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@35
    .line 412
    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@37
    .line 413
    const/16 v2, 0x14

    #@39
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c
    move-result-object v6

    #@3d
    .line 411
    const/16 v2, 0x6fc7

    #@3f
    const/16 v3, 0x6fc8

    #@41
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@44
    .line 396
    :goto_0
    return-void

    #@45
    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 417
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@4d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4f
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@52
    .line 419
    const/16 v2, 0x19

    #@54
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@57
    move-result-object v6

    #@58
    .line 417
    const/16 v2, 0x6f17

    #@5a
    .line 418
    const/16 v3, 0x6f4a

    #@5c
    const/4 v4, 0x1

    #@5d
    .line 417
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@60
    goto :goto_0

    #@61
    .line 422
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@64
    move-result-object v0

    #@65
    .line 423
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@67
    const-string/jumbo v3, "Update SIM voice mailbox error"

    #@6a
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    #@6d
    .line 422
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6f
    .line 424
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@72
    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 7
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 444
    if-eq p1, v1, :cond_0

    #@4
    .line 446
    return-void

    #@5
    .line 450
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@b
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@d
    const/4 v4, 0x0

    #@e
    aget-byte v3, v3, v4

    #@10
    and-int/lit16 v3, v3, 0xfe

    #@12
    .line 455
    if-nez p2, :cond_3

    #@14
    .line 454
    :goto_0
    or-int/2addr v0, v3

    #@15
    int-to-byte v0, v0

    #@16
    const/4 v1, 0x0

    #@17
    aput-byte v0, v2, v1

    #@19
    .line 458
    if-gez p2, :cond_4

    #@1b
    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@1d
    const/4 v1, 0x0

    #@1e
    const/4 v2, 0x1

    #@1f
    aput-byte v1, v0, v2

    #@21
    .line 466
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@23
    .line 467
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@25
    .line 468
    const/16 v1, 0xe

    #@27
    const/16 v2, 0x6fca

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    #@2d
    move-result-object v5

    #@2e
    .line 467
    const/16 v1, 0x6fca

    #@30
    const/4 v2, 0x1

    #@31
    const/4 v4, 0x0

    #@32
    .line 466
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@35
    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 473
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@3b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@3d
    const/4 v2, 0x0

    #@3e
    aget-byte v0, v0, v2

    #@40
    and-int/lit16 v2, v0, 0xf0

    #@42
    .line 474
    if-nez p2, :cond_5

    #@44
    const/4 v0, 0x5

    #@45
    .line 473
    :goto_2
    or-int/2addr v0, v2

    #@46
    int-to-byte v0, v0

    #@47
    const/4 v2, 0x0

    #@48
    aput-byte v0, v1, v2

    #@4a
    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4c
    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@4e
    .line 477
    const/16 v2, 0x6f11

    #@50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v2

    #@54
    const/16 v3, 0xe

    #@56
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@59
    move-result-object v2

    #@5a
    .line 476
    const/16 v3, 0x6f11

    #@5c
    .line 475
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    #@5f
    .line 443
    :cond_2
    :goto_3
    return-void

    #@60
    :cond_3
    move v0, v1

    #@61
    .line 455
    goto :goto_0

    #@62
    .line 463
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@64
    int-to-byte v1, p2

    #@65
    const/4 v2, 0x1

    #@66
    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    goto :goto_1

    #@69
    .line 479
    :catch_0
    move-exception v6

    #@6a
    .line 480
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    #@6d
    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@70
    goto :goto_3

    #@71
    .line 474
    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    const/16 v0, 0xa

    #@73
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SimRecords: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 98
    const-string/jumbo v1, " mVmConfig"

    #@17
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@1d
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 99
    const-string/jumbo v1, " mSpnOverride="

    #@24
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 99
    const-string/jumbo v1, "mSpnOverride"

    #@2b
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 100
    const-string/jumbo v1, " callForwardingEnabled="

    #@32
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 100
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@38
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 101
    const-string/jumbo v1, " spnState="

    #@3f
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@45
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 102
    const-string/jumbo v1, " mCphsInfo="

    #@4c
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@52
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 103
    const-string/jumbo v1, " mCspPlmnEnabled="

    #@59
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 103
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@5f
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 104
    const-string/jumbo v1, " efMWIS="

    #@66
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@6c
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 105
    const-string/jumbo v1, " efCPHS_MWI="

    #@73
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@79
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 106
    const-string/jumbo v1, " mEfCff="

    #@80
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@86
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    .line 107
    const-string/jumbo v1, " mEfCfis="

    #@8d
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@93
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    .line 108
    const-string/jumbo v1, " getOperatorNumeric="

    #@9a
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    return-object v0
.end method
