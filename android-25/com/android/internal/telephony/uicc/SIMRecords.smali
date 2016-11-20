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
    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1366
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
    .line 1746
    if-eqz p1, :cond_2

    #@7
    .line 1749
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@9
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@b
    if-eq v2, v3, :cond_0

    #@d
    .line 1750
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@11
    if-ne v2, v3, :cond_1

    #@13
    .line 1755
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@15
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@17
    .line 1756
    return-void

    #@18
    .line 1751
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1a
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1c
    if-eq v2, v3, :cond_0

    #@1e
    .line 1752
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@20
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@22
    if-eq v2, v3, :cond_0

    #@24
    .line 1758
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@26
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@28
    .line 1762
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
    .line 1867
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@39
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@3b
    .line 1743
    :cond_3
    :goto_0
    return-void

    #@3c
    .line 1764
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@3f
    .line 1766
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@41
    .line 1767
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@44
    move-result-object v3

    #@45
    .line 1766
    const/16 v4, 0x6f46

    #@47
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@4a
    .line 1768
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4c
    add-int/lit8 v2, v2, 0x1

    #@4e
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@50
    .line 1770
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@52
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@54
    goto :goto_0

    #@55
    .line 1773
    :pswitch_1
    if-eqz p2, :cond_6

    #@57
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@59
    if-nez v2, :cond_6

    #@5b
    .line 1774
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5d
    check-cast v0, [B

    #@5f
    .line 1775
    .local v0, "data":[B
    aget-byte v2, v0, v5

    #@61
    and-int/lit16 v2, v2, 0xff

    #@63
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@65
    .line 1778
    array-length v2, v0

    #@66
    add-int/lit8 v2, v2, -0x1

    #@68
    const/4 v3, 0x1

    #@69
    .line 1777
    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@70
    .line 1781
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 1783
    .local v1, "spn":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@79
    move-result v2

    #@7a
    if-nez v2, :cond_5

    #@7c
    .line 1784
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@7e
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@80
    .line 1797
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@82
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@84
    if-ne v2, v3, :cond_3

    #@86
    .line 1798
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@88
    .line 1799
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@8b
    move-result-object v3

    #@8c
    .line 1798
    const/16 v4, 0x6f14

    #@8e
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@91
    .line 1800
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@93
    add-int/lit8 v2, v2, 0x1

    #@95
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@97
    .line 1804
    const/4 v2, -0x1

    #@98
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@9a
    goto :goto_0

    #@9b
    .line 1786
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
    .line 1787
    const-string/jumbo v3, " spnDisplayCondition: "

    #@ae
    .line 1786
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    .line 1787
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@b4
    .line 1786
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
    .line 1788
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@c1
    .line 1789
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@c3
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@c6
    move-result v3

    #@c7
    .line 1788
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@ca
    .line 1791
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@cc
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@ce
    goto :goto_1

    #@cf
    .line 1794
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@d1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@d3
    goto :goto_1

    #@d4
    .line 1808
    :pswitch_2
    if-eqz p2, :cond_9

    #@d6
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d8
    if-nez v2, :cond_9

    #@da
    .line 1809
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@dc
    check-cast v0, [B

    #@de
    .line 1812
    .restart local v0    # "data":[B
    array-length v2, v0

    #@df
    .line 1811
    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@e6
    .line 1815
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    .line 1817
    .restart local v1    # "spn":Ljava/lang/String;
    if-eqz v1, :cond_7

    #@ec
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@ef
    move-result v2

    #@f0
    if-nez v2, :cond_8

    #@f2
    .line 1818
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f4
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f6
    .line 1833
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@f8
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@fa
    if-ne v2, v3, :cond_3

    #@fc
    .line 1834
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@fe
    .line 1835
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@101
    move-result-object v3

    #@102
    const/16 v4, 0x6f18

    #@104
    .line 1834
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@107
    .line 1836
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@109
    add-int/lit8 v2, v2, 0x1

    #@10b
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@10d
    goto/16 :goto_0

    #@10f
    .line 1821
    .restart local v0    # "data":[B
    .restart local v1    # "spn":Ljava/lang/String;
    :cond_8
    iput v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@111
    .line 1823
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
    .line 1824
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@12a
    .line 1825
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@12c
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@12f
    move-result v3

    #@130
    .line 1824
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@133
    .line 1827
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@135
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@137
    goto :goto_2

    #@138
    .line 1830
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@13a
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@13c
    goto :goto_2

    #@13d
    .line 1840
    :pswitch_3
    if-eqz p2, :cond_c

    #@13f
    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@141
    if-nez v2, :cond_c

    #@143
    .line 1841
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@145
    check-cast v0, [B

    #@147
    .line 1844
    .restart local v0    # "data":[B
    array-length v2, v0

    #@148
    .line 1843
    invoke-static {v0, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@14b
    move-result-object v2

    #@14c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@14f
    .line 1847
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@152
    move-result-object v1

    #@153
    .line 1849
    .restart local v1    # "spn":Ljava/lang/String;
    if-eqz v1, :cond_a

    #@155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@158
    move-result v2

    #@159
    if-nez v2, :cond_b

    #@15b
    .line 1850
    :cond_a
    const-string/jumbo v2, "No SPN loaded in either CHPS or 3GPP"

    #@15e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@161
    .line 1864
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@163
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@165
    goto/16 :goto_0

    #@167
    .line 1853
    .restart local v0    # "data":[B
    .restart local v1    # "spn":Ljava/lang/String;
    :cond_b
    iput v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@169
    .line 1855
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
    .line 1856
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@182
    .line 1857
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@184
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@187
    move-result v3

    #@188
    .line 1856
    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@18b
    goto :goto_3

    #@18c
    .line 1860
    .end local v0    # "data":[B
    .end local v1    # "spn":Ljava/lang/String;
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@18f
    .line 1861
    const-string/jumbo v2, "No SPN loaded in either CHPS or 3GPP"

    #@192
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@195
    goto :goto_3

    #@196
    .line 1762
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
    .line 1511
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "carrier_config"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 1510
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@b
    .line 1512
    .local v1, "configLoader":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    #@d
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@10
    move-result-object v2

    #@11
    .line 1513
    const-string/jumbo v3, "carrier_name_override_bool"

    #@14
    .line 1512
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 1514
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@1d
    move-result-object v2

    #@1e
    .line 1515
    const-string/jumbo v3, "carrier_name_string"

    #@21
    .line 1514
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 1516
    .local v0, "carrierName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@28
    .line 1517
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
    .line 1509
    .end local v0    # "carrierName":Ljava/lang/String;
    :goto_0
    return-void

    #@34
    .line 1520
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
    .line 1961
    array-length v2, p1

    #@2
    div-int/lit8 v1, v2, 0x2

    #@4
    .line 1965
    .local v1, "usedCspGroups":I
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@6
    .line 1966
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@9
    .line 1967
    mul-int/lit8 v2, v0, 0x2

    #@b
    aget-byte v2, p1, v2

    #@d
    const/16 v3, -0x40

    #@f
    if-ne v2, v3, :cond_1

    #@11
    .line 1968
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
    .line 1969
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
    .line 1973
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@3c
    .line 1981
    :goto_1
    return-void

    #@3d
    .line 1975
    :cond_0
    const/4 v2, 0x0

    #@3e
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@40
    .line 1978
    const-string/jumbo v2, "[CSP] Set Automatic Network Selection"

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@46
    .line 1979
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@48
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4b
    goto :goto_1

    #@4c
    .line 1966
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1985
    :cond_2
    const-string/jumbo v2, "[CSP] Value Added Service Group (0xC0), not found!"

    #@52
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@55
    .line 1954
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
    .line 1284
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@b
    .line 1322
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@e
    .line 1283
    :goto_0
    return-void

    #@f
    .line 1286
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@15
    .line 1287
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@17
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@19
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@1c
    .line 1288
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@1e
    const/4 v2, 0x6

    #@1f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@22
    move-result-object v2

    #@23
    .line 1287
    const/16 v3, 0x6fc7

    #@25
    const/16 v4, 0x6fc8

    #@27
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1291
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@31
    .line 1292
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@35
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@38
    .line 1293
    const/16 v1, 0xb

    #@3a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@3d
    move-result-object v1

    #@3e
    .line 1292
    const/16 v2, 0x6f17

    #@40
    const/16 v3, 0x6f4a

    #@42
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@45
    goto :goto_0

    #@46
    .line 1296
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@48
    add-int/lit8 v0, v0, 0x1

    #@4a
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4c
    .line 1297
    const-string/jumbo v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@52
    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@54
    .line 1299
    const/16 v1, 0x21

    #@56
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@59
    move-result-object v1

    #@5a
    .line 1298
    const/16 v2, 0x6f15

    #@5c
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@5f
    goto :goto_0

    #@60
    .line 1302
    :sswitch_3
    const-string/jumbo v0, "SIM Refresh called for EF_FDN"

    #@63
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@66
    .line 1303
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@68
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    #@6b
    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@6d
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@70
    goto :goto_0

    #@71
    .line 1307
    :sswitch_4
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@73
    add-int/lit8 v0, v0, 0x1

    #@75
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@77
    .line 1308
    const-string/jumbo v0, "SIM Refresh called for EF_MSISDN"

    #@7a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@7d
    .line 1309
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@7f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@81
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@84
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    #@87
    move-result v1

    #@88
    .line 1310
    const/16 v2, 0xa

    #@8a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@8d
    move-result-object v2

    #@8e
    .line 1309
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@91
    goto/16 :goto_0

    #@93
    .line 1314
    :sswitch_5
    const-string/jumbo v0, "SIM Refresh called for EF_CFIS or EF_CFF_CPHS"

    #@96
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@99
    .line 1315
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    #@9c
    goto/16 :goto_0

    #@9e
    .line 1284
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
    .line 1328
    if-nez p1, :cond_0

    #@2
    .line 1329
    const-string/jumbo v0, "handleSimRefresh received without input"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8
    .line 1330
    return-void

    #@9
    .line 1333
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1334
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
    .line 1339
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@1d
    packed-switch v0, :pswitch_data_0

    #@20
    .line 1355
    const-string/jumbo v0, "handleSimRefresh with unknown operation"

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@26
    .line 1327
    :goto_0
    return-void

    #@27
    .line 1336
    :cond_2
    return-void

    #@28
    .line 1341
    :pswitch_0
    const-string/jumbo v0, "handleSimRefresh with SIM_FILE_UPDATED"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2e
    .line 1342
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    #@33
    goto :goto_0

    #@34
    .line 1345
    :pswitch_1
    const-string/jumbo v0, "handleSimRefresh with SIM_REFRESH_INIT"

    #@37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3a
    .line 1347
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    #@3d
    goto :goto_0

    #@3e
    .line 1351
    :pswitch_2
    const-string/jumbo v0, "handleSimRefresh with SIM_REFRESH_RESET"

    #@41
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@44
    goto :goto_0

    #@45
    .line 1339
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
    .line 1370
    aget-byte v3, p1, v6

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1371
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
    .line 1375
    :cond_0
    aget-byte v3, p1, v6

    #@23
    const/4 v4, 0x3

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 1376
    array-length v1, p1

    #@27
    .line 1380
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    #@29
    new-array v2, v3, [B

    #@2b
    .line 1381
    .local v2, "pdu":[B
    add-int/lit8 v3, v1, -0x1

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-static {p1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 1382
    const-string/jumbo v3, "3gpp"

    #@34
    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@37
    move-result-object v0

    #@38
    .line 1384
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    #@3b
    .line 1369
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
    .line 1390
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1392
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@9
    .line 1393
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [B

    #@f
    .line 1395
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 1396
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
    .line 1401
    :cond_0
    aget-byte v6, v0, v9

    #@3c
    const/4 v7, 0x3

    #@3d
    if-ne v6, v7, :cond_1

    #@3f
    .line 1402
    array-length v4, v0

    #@40
    .line 1406
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    #@42
    new-array v5, v6, [B

    #@44
    .line 1407
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    #@46
    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 1408
    const-string/jumbo v6, "3gpp"

    #@4c
    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@4f
    move-result-object v3

    #@50
    .line 1410
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    #@53
    .line 1415
    aput-byte v10, v0, v9

    #@55
    .line 1392
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 1389
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
    .line 1916
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@4
    if-nez v2, :cond_0

    #@6
    return v1

    #@7
    .line 1917
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
    .line 1699
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 1701
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
    .line 1702
    return v4

    #@10
    .line 1705
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 1706
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
    .line 1707
    .local v0, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1708
    return v4

    #@2d
    .line 1712
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
    .line 1565
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@3
    .line 1566
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
    .line 1567
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@16
    .line 1568
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
    .line 1569
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@29
    .line 1564
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
    .line 1552
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
    .line 1553
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@10
    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@12
    .line 1555
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    #@14
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;)V

    #@17
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    .line 1554
    const/16 v2, 0x6f05

    #@1d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@20
    .line 1556
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@26
    .line 1558
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@28
    .line 1559
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    #@2a
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;)V

    #@2d
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v1

    #@31
    .line 1558
    const/16 v2, 0x2f05

    #@33
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@36
    .line 1560
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3c
    .line 1551
    :cond_0
    return-void
.end method

.method private onLocked()V
    .locals 1

    #@0
    .prologue
    .line 1547
    const-string/jumbo v0, "only fetch EF_LI and EF_PL in lock state"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6
    .line 1548
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    #@9
    .line 1546
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1878
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    #@3
    array-length v5, p1

    #@4
    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@7
    .line 1880
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    #@8
    .line 1882
    .local v2, "plmnEntries":[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1884
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@11
    move-result v5

    #@12
    const/16 v6, 0xa3

    #@14
    if-ne v5, v6, :cond_0

    #@16
    .line 1885
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
    .line 1888
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
    .line 1889
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@30
    move-result-object v2

    #@31
    .line 1894
    .end local v2    # "plmnEntries":[B
    :cond_1
    if-nez v2, :cond_3

    #@33
    .line 1895
    return-void

    #@34
    .line 1882
    .restart local v2    # "plmnEntries":[B
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@37
    goto :goto_0

    #@38
    .line 1898
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
    .line 1900
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
    .line 1902
    const/4 v5, 0x3

    #@49
    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 1905
    .local v1, "plmnCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v5

    #@51
    const/4 v6, 0x5

    #@52
    if-lt v5, v6, :cond_4

    #@54
    .line 1906
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
    .line 1907
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 1900
    :cond_4
    add-int/lit8 v0, v0, 0x3

    #@72
    goto :goto_1

    #@73
    .line 1877
    .end local v1    # "plmnCode":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@11
    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@13
    .line 1528
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
    .line 1527
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@20
    .line 1524
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
    .line 1441
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 1443
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@c
    aget-byte v0, v1, v0

    #@e
    and-int/lit8 v0, v0, 0x1

    #@10
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@12
    .line 1444
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
    .line 1440
    :goto_0
    return-void

    #@2c
    .line 1445
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 1447
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
    .line 1446
    :goto_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@3c
    .line 1449
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
    .line 1448
    goto :goto_1

    #@58
    .line 1451
    :cond_2
    const/4 v0, -0x1

    #@59
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@5b
    .line 1452
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
    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1535
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    #@b
    .line 1536
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@13
    .line 1537
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@15
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@1b
    .line 1533
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
    .line 488
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
    .line 1990
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
    .line 1991
    const-string/jumbo v0, " extends:"

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 1992
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20
    .line 1993
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
    .line 1994
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
    .line 1995
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
    .line 1996
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
    .line 1997
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
    .line 1998
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
    .line 1999
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
    .line 2000
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
    .line 2001
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
    .line 2002
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
    .line 2003
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
    .line 2004
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
    .line 2005
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
    .line 2006
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
    .line 2007
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
    .line 2008
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
    .line 2009
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1c3
    .line 1989
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
    .line 1573
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@5
    .line 1575
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
    .line 1577
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
    .line 1578
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@34
    .line 1580
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
    .line 1581
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@46
    .line 1585
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
    .line 1586
    const/16 v2, 0xa

    #@53
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@56
    move-result-object v2

    #@57
    .line 1585
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@5a
    .line 1587
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@5c
    add-int/lit8 v0, v0, 0x1

    #@5e
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@60
    .line 1590
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
    .line 1591
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@6e
    add-int/lit8 v0, v0, 0x1

    #@70
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@72
    .line 1593
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
    .line 1594
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@81
    add-int/lit8 v0, v0, 0x1

    #@83
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@85
    .line 1597
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
    .line 1598
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@93
    add-int/lit8 v0, v0, 0x1

    #@95
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@97
    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@99
    .line 1607
    const/16 v1, 0x8

    #@9b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@9e
    move-result-object v1

    #@9f
    .line 1606
    const/16 v2, 0x6f11

    #@a1
    .line 1605
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@a4
    .line 1608
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@a6
    add-int/lit8 v0, v0, 0x1

    #@a8
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@aa
    .line 1612
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    #@ad
    .line 1614
    const/4 v0, 0x0

    #@ae
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    #@b1
    .line 1616
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
    .line 1617
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@c0
    add-int/lit8 v0, v0, 0x1

    #@c2
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@c4
    .line 1619
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
    .line 1620
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@d3
    add-int/lit8 v0, v0, 0x1

    #@d5
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@d7
    .line 1622
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
    .line 1623
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@e6
    add-int/lit8 v0, v0, 0x1

    #@e8
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@ea
    .line 1625
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
    .line 1626
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@f9
    add-int/lit8 v0, v0, 0x1

    #@fb
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@fd
    .line 1628
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
    .line 1629
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@10c
    add-int/lit8 v0, v0, 0x1

    #@10e
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@110
    .line 1631
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
    .line 1632
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@11f
    add-int/lit8 v0, v0, 0x1

    #@121
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@123
    .line 1634
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
    .line 1635
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@132
    add-int/lit8 v0, v0, 0x1

    #@134
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@136
    .line 1637
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    #@139
    .line 1657
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
    .line 1572
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
    .line 1672
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
    .line 1673
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
    .line 1675
    const/4 v0, 0x2

    #@19
    .line 1692
    .local v0, "rule":I
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 1676
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
    .line 1678
    :cond_2
    const/4 v0, 0x2

    #@2a
    .line 1676
    .restart local v0    # "rule":I
    goto :goto_0

    #@2b
    .line 1679
    .end local v0    # "rule":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 1680
    const/4 v0, 0x1

    #@32
    .line 1681
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@34
    and-int/lit8 v1, v1, 0x1

    #@36
    const/4 v2, 0x1

    #@37
    if-ne v1, v2, :cond_0

    #@39
    .line 1683
    const/4 v0, 0x3

    #@3a
    goto :goto_0

    #@3b
    .line 1686
    .end local v0    # "rule":I
    :cond_4
    const/4 v0, 0x2

    #@3c
    .line 1687
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@3e
    and-int/lit8 v1, v1, 0x2

    #@40
    if-nez v1, :cond_0

    #@42
    .line 1689
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
    .line 363
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
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 617
    const-string/jumbo v0, "getOperatorNumeric: IMSI == null"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c
    .line 618
    return-object v2

    #@d
    .line 620
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
    .line 621
    :cond_1
    const-string/jumbo v0, "getSIMOperatorNumeric: bad mncLength"

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1c
    .line 622
    return-object v2

    #@1d
    .line 627
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
    .line 527
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@2
    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 368
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
    .line 492
    const/4 v2, 0x0

    #@2
    .line 493
    .local v2, "voiceMailWaiting":Z
    const/4 v0, 0x0

    #@3
    .line 494
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 498
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
    .line 499
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@12
    const/4 v4, 0x1

    #@13
    aget-byte v3, v3, v4

    #@15
    and-int/lit16 v0, v3, 0xff

    #@17
    .line 501
    if-eqz v2, :cond_0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 503
    const/4 v0, -0x1

    #@1c
    .line 505
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
    .line 519
    :cond_1
    :goto_1
    return v0

    #@34
    .line 498
    :cond_2
    const/4 v2, 0x0

    #@35
    goto :goto_0

    #@36
    .line 506
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 508
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@3c
    aget-byte v3, v3, v4

    #@3e
    and-int/lit8 v1, v3, 0xf

    #@40
    .line 511
    .local v1, "indicator":I
    const/16 v3, 0xa

    #@42
    if-ne v1, v3, :cond_5

    #@44
    .line 513
    const/4 v0, -0x1

    #@45
    .line 517
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
    .line 514
    :cond_5
    const/4 v3, 0x5

    #@5e
    if-ne v1, v3, :cond_4

    #@60
    .line 515
    const/4 v0, 0x0

    #@61
    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 638
    const/4 v14, 0x0

    #@1
    .line 640
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
    .line 641
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
    .line 642
    const-string/jumbo v4, " while being destroyed. Ignoring."

    #@36
    .line 641
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
    .line 643
    return-void

    #@44
    .line 646
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    #@46
    iget v2, v0, Landroid/os/Message;->what:I

    #@48
    packed-switch v2, :pswitch_data_0

    #@4b
    .line 1248
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 1255
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    #@50
    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@53
    .line 632
    :cond_2
    :goto_1
    return-void

    #@54
    .line 648
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1250
    :catch_0
    move-exception v12

    #@59
    .line 1252
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
    .line 1255
    if-eqz v14, :cond_2

    #@63
    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@66
    goto :goto_1

    #@67
    .line 652
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
    .line 1253
    :catchall_0
    move-exception v2

    #@6c
    .line 1255
    if-eqz v14, :cond_3

    #@6e
    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@71
    .line 1253
    :cond_3
    throw v2

    #@72
    .line 657
    :pswitch_3
    const/4 v14, 0x1

    #@73
    .line 659
    :try_start_4
    move-object/from16 v0, p1

    #@75
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v9, Landroid/os/AsyncResult;

    #@79
    .line 661
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7b
    if-eqz v2, :cond_4

    #@7d
    .line 662
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
    .line 666
    :cond_4
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9b
    check-cast v2, Ljava/lang/String;

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a1
    .line 670
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
    .line 671
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
    .line 672
    const/4 v2, 0x0

    #@dc
    move-object/from16 v0, p0

    #@de
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@e0
    .line 675
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
    .line 676
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
    const-string/jumbo v4, "SIMRecords"

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@11e
    const/4 v6, 0x6

    #@11f
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@122
    move-result-object v5

    #@123
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@126
    move-result-object v4

    #@127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v2

    #@12b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v2

    #@12f
    move-object/from16 v0, p0

    #@131
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@134
    .line 678
    move-object/from16 v0, p0

    #@136
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@138
    if-eqz v2, :cond_7

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@13e
    const/4 v4, 0x2

    #@13f
    if-ne v2, v4, :cond_8

    #@141
    .line 679
    :cond_7
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@145
    if-eqz v2, :cond_8

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@14b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14e
    move-result v2

    #@14f
    const/4 v4, 0x6

    #@150
    if-lt v2, v4, :cond_8

    #@152
    .line 680
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@156
    const/4 v4, 0x0

    #@157
    const/4 v5, 0x6

    #@158
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15b
    move-result-object v18

    #@15c
    .line 681
    .local v18, "mccmncCode":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@15e
    const/4 v2, 0x0

    #@15f
    array-length v5, v4

    #@160
    :goto_2
    if-ge v2, v5, :cond_8

    #@162
    aget-object v17, v4, v2

    #@164
    .line 682
    .local v17, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@167
    move-result v6

    #@168
    if-eqz v6, :cond_b

    #@16a
    .line 683
    const/4 v2, 0x3

    #@16b
    move-object/from16 v0, p0

    #@16d
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@16f
    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v4, "IMSI: setting1 mMncLength="

    #@177
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v2

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@17f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@182
    move-result-object v2

    #@183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v2

    #@187
    move-object/from16 v0, p0

    #@189
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@18c
    .line 690
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    #@18e
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@190
    if-nez v2, :cond_9

    #@192
    .line 694
    :try_start_5
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@196
    const/4 v4, 0x0

    #@197
    const/4 v5, 0x3

    #@198
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@19b
    move-result-object v2

    #@19c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@19f
    move-result v16

    #@1a0
    .line 695
    .local v16, "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@1a3
    move-result v2

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1a8
    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v4, "setting2 mMncLength="

    #@1b0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v2

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1b8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v2

    #@1bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v2

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1c5
    .line 703
    .end local v16    # "mcc":I
    :cond_9
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    #@1c7
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1c9
    if-eqz v2, :cond_a

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1cf
    const/4 v4, -0x1

    #@1d0
    if-eq v2, v4, :cond_a

    #@1d2
    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    const-string/jumbo v4, "update mccmnc="

    #@1da
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v2

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@1e6
    add-int/lit8 v5, v5, 0x3

    #@1e8
    const/4 v6, 0x0

    #@1e9
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ec
    move-result-object v4

    #@1ed
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v2

    #@1f1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f4
    move-result-object v2

    #@1f5
    move-object/from16 v0, p0

    #@1f7
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1fa
    .line 706
    move-object/from16 v0, p0

    #@1fc
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@1fe
    .line 707
    move-object/from16 v0, p0

    #@200
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@202
    move-object/from16 v0, p0

    #@204
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@206
    add-int/lit8 v5, v5, 0x3

    #@208
    const/4 v6, 0x0

    #@209
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20c
    move-result-object v4

    #@20d
    const/4 v5, 0x0

    #@20e
    .line 706
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@211
    .line 709
    :cond_a
    move-object/from16 v0, p0

    #@213
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@215
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@218
    goto/16 :goto_0

    #@21a
    .line 681
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@21c
    goto/16 :goto_2

    #@21e
    .line 697
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v11

    #@21f
    .line 698
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@220
    move-object/from16 v0, p0

    #@222
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@224
    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    #@226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@229
    const-string/jumbo v4, "Corrupt IMSI! setting3 mMncLength="

    #@22c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v2

    #@230
    move-object/from16 v0, p0

    #@232
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@234
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@237
    move-result-object v2

    #@238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23b
    move-result-object v2

    #@23c
    move-object/from16 v0, p0

    #@23e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@241
    goto :goto_3

    #@242
    .line 714
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :pswitch_4
    const/4 v14, 0x1

    #@243
    .line 716
    move-object/from16 v0, p1

    #@245
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@247
    check-cast v9, Landroid/os/AsyncResult;

    #@249
    .line 717
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@24b
    check-cast v10, [B

    #@24d
    .line 719
    .local v10, "data":[B
    const/4 v15, 0x0

    #@24e
    .line 720
    .local v15, "isValidMbdn":Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@250
    if-nez v2, :cond_c

    #@252
    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    #@254
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@257
    const-string/jumbo v4, "EF_MBI: "

    #@25a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v2

    #@25e
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@261
    move-result-object v4

    #@262
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v2

    #@266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v2

    #@26a
    move-object/from16 v0, p0

    #@26c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@26f
    .line 725
    const/4 v2, 0x0

    #@270
    aget-byte v2, v10, v2

    #@272
    and-int/lit16 v2, v2, 0xff

    #@274
    move-object/from16 v0, p0

    #@276
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@278
    .line 728
    move-object/from16 v0, p0

    #@27a
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@27c
    if-eqz v2, :cond_c

    #@27e
    move-object/from16 v0, p0

    #@280
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@282
    const/16 v4, 0xff

    #@284
    if-eq v2, v4, :cond_c

    #@286
    .line 729
    const-string/jumbo v2, "Got valid mailbox number for MBDN"

    #@289
    move-object/from16 v0, p0

    #@28b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@28e
    .line 730
    const/4 v15, 0x1

    #@28f
    .line 735
    :cond_c
    move-object/from16 v0, p0

    #@291
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@293
    add-int/lit8 v2, v2, 0x1

    #@295
    move-object/from16 v0, p0

    #@297
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@299
    .line 737
    if-eqz v15, :cond_d

    #@29b
    .line 739
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@29d
    move-object/from16 v0, p0

    #@29f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2a1
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@2a4
    .line 740
    move-object/from16 v0, p0

    #@2a6
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@2a8
    const/4 v5, 0x6

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@2ae
    move-result-object v5

    #@2af
    .line 739
    const/16 v6, 0x6fc7

    #@2b1
    const/16 v7, 0x6fc8

    #@2b3
    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2b6
    goto/16 :goto_0

    #@2b8
    .line 744
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@2ba
    move-object/from16 v0, p0

    #@2bc
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2be
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@2c1
    .line 746
    const/16 v4, 0xb

    #@2c3
    move-object/from16 v0, p0

    #@2c5
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@2c8
    move-result-object v4

    #@2c9
    .line 744
    const/16 v5, 0x6f17

    #@2cb
    .line 745
    const/16 v6, 0x6f4a

    #@2cd
    const/4 v7, 0x1

    #@2ce
    .line 744
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2d1
    goto/16 :goto_0

    #@2d3
    .line 757
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    .end local v15    # "isValidMbdn":Z
    :pswitch_5
    const/4 v2, 0x0

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@2d8
    .line 758
    const/4 v2, 0x0

    #@2d9
    move-object/from16 v0, p0

    #@2db
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2dd
    .line 759
    const/4 v14, 0x1

    #@2de
    .line 761
    move-object/from16 v0, p1

    #@2e0
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e2
    check-cast v9, Landroid/os/AsyncResult;

    #@2e4
    .line 763
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2e6
    if-eqz v2, :cond_f

    #@2e8
    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    #@2ea
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2ed
    const-string/jumbo v4, "Invalid or missing EF"

    #@2f0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v4

    #@2f4
    .line 766
    move-object/from16 v0, p1

    #@2f6
    iget v2, v0, Landroid/os/Message;->what:I

    #@2f8
    const/16 v5, 0xb

    #@2fa
    if-ne v2, v5, :cond_e

    #@2fc
    const-string/jumbo v2, "[MAILBOX]"

    #@2ff
    .line 765
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@302
    move-result-object v2

    #@303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@306
    move-result-object v2

    #@307
    move-object/from16 v0, p0

    #@309
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@30c
    .line 771
    move-object/from16 v0, p1

    #@30e
    iget v2, v0, Landroid/os/Message;->what:I

    #@310
    const/4 v4, 0x6

    #@311
    if-ne v2, v4, :cond_1

    #@313
    .line 775
    move-object/from16 v0, p0

    #@315
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@317
    add-int/lit8 v2, v2, 0x1

    #@319
    move-object/from16 v0, p0

    #@31b
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@31d
    .line 776
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@31f
    move-object/from16 v0, p0

    #@321
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@323
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@326
    .line 778
    const/16 v4, 0xb

    #@328
    move-object/from16 v0, p0

    #@32a
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@32d
    move-result-object v4

    #@32e
    .line 777
    const/16 v5, 0x6f17

    #@330
    const/16 v6, 0x6f4a

    #@332
    const/4 v7, 0x1

    #@333
    .line 776
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@336
    goto/16 :goto_0

    #@338
    .line 766
    :cond_e
    const-string/jumbo v2, "[MBDN]"

    #@33b
    goto :goto_4

    #@33c
    .line 783
    :cond_f
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@33e
    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@340
    .line 785
    .local v3, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    #@342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@345
    const-string/jumbo v4, "VM: "

    #@348
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    move-result-object v2

    #@34c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34f
    move-result-object v4

    #@350
    .line 786
    move-object/from16 v0, p1

    #@352
    iget v2, v0, Landroid/os/Message;->what:I

    #@354
    const/16 v5, 0xb

    #@356
    if-ne v2, v5, :cond_10

    #@358
    const-string/jumbo v2, " EF[MAILBOX]"

    #@35b
    .line 785
    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v2

    #@35f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@362
    move-result-object v2

    #@363
    move-object/from16 v0, p0

    #@365
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@368
    .line 788
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    #@36b
    move-result v2

    #@36c
    if-eqz v2, :cond_11

    #@36e
    move-object/from16 v0, p1

    #@370
    iget v2, v0, Landroid/os/Message;->what:I

    #@372
    const/4 v4, 0x6

    #@373
    if-ne v2, v4, :cond_11

    #@375
    .line 792
    move-object/from16 v0, p0

    #@377
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@379
    add-int/lit8 v2, v2, 0x1

    #@37b
    move-object/from16 v0, p0

    #@37d
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@37f
    .line 793
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@381
    move-object/from16 v0, p0

    #@383
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@385
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@388
    .line 795
    const/16 v4, 0xb

    #@38a
    move-object/from16 v0, p0

    #@38c
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@38f
    move-result-object v4

    #@390
    .line 794
    const/16 v5, 0x6f17

    #@392
    const/16 v6, 0x6f4a

    #@394
    const/4 v7, 0x1

    #@395
    .line 793
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@398
    goto/16 :goto_0

    #@39a
    .line 786
    :cond_10
    const-string/jumbo v2, " EF[MBDN]"

    #@39d
    goto :goto_5

    #@39e
    .line 800
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@3a1
    move-result-object v2

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@3a6
    .line 801
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    #@3a9
    move-result-object v2

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@3ae
    goto/16 :goto_0

    #@3b0
    .line 805
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    const/4 v14, 0x1

    #@3b1
    .line 807
    move-object/from16 v0, p1

    #@3b3
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b5
    check-cast v9, Landroid/os/AsyncResult;

    #@3b7
    .line 809
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3b9
    if-eqz v2, :cond_12

    #@3bb
    .line 810
    const-string/jumbo v2, "Invalid or missing EF[MSISDN]"

    #@3be
    move-object/from16 v0, p0

    #@3c0
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3c3
    goto/16 :goto_0

    #@3c5
    .line 814
    :cond_12
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3c7
    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@3c9
    .line 816
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@3cc
    move-result-object v2

    #@3cd
    move-object/from16 v0, p0

    #@3cf
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@3d1
    .line 817
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    #@3d4
    move-result-object v2

    #@3d5
    move-object/from16 v0, p0

    #@3d7
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@3d9
    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    #@3db
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3de
    const-string/jumbo v4, "MSISDN: "

    #@3e1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e4
    move-result-object v2

    #@3e5
    const-string/jumbo v4, "SIMRecords"

    #@3e8
    move-object/from16 v0, p0

    #@3ea
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@3ec
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@3ef
    move-result-object v4

    #@3f0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f3
    move-result-object v2

    #@3f4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f7
    move-result-object v2

    #@3f8
    move-object/from16 v0, p0

    #@3fa
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3fd
    goto/16 :goto_0

    #@3ff
    .line 823
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const/4 v14, 0x0

    #@400
    .line 824
    move-object/from16 v0, p1

    #@402
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@404
    check-cast v9, Landroid/os/AsyncResult;

    #@406
    .line 826
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@408
    if-nez v2, :cond_13

    #@40a
    .line 827
    move-object/from16 v0, p0

    #@40c
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@40e
    move-object/from16 v0, p0

    #@410
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@412
    .line 828
    move-object/from16 v0, p0

    #@414
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@416
    move-object/from16 v0, p0

    #@418
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@41a
    .line 829
    const-string/jumbo v2, "Success to update EF[MSISDN]"

    #@41d
    move-object/from16 v0, p0

    #@41f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@422
    .line 832
    :cond_13
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@424
    if-eqz v2, :cond_1

    #@426
    .line 833
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@428
    check-cast v2, Landroid/os/Message;

    #@42a
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@42d
    move-result-object v2

    #@42e
    .line 834
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@430
    .line 833
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@432
    .line 835
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@434
    check-cast v2, Landroid/os/Message;

    #@436
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@439
    goto/16 :goto_0

    #@43b
    .line 840
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    const/4 v14, 0x1

    #@43c
    .line 842
    move-object/from16 v0, p1

    #@43e
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@440
    check-cast v9, Landroid/os/AsyncResult;

    #@442
    .line 843
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@444
    check-cast v10, [B

    #@446
    .line 845
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@448
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44b
    const-string/jumbo v4, "EF_MWIS : "

    #@44e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@451
    move-result-object v2

    #@452
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@455
    move-result-object v4

    #@456
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@459
    move-result-object v2

    #@45a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45d
    move-result-object v2

    #@45e
    move-object/from16 v0, p0

    #@460
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@463
    .line 847
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@465
    if-eqz v2, :cond_14

    #@467
    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    #@469
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@46c
    const-string/jumbo v4, "EVENT_GET_MWIS_DONE exception = "

    #@46f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@472
    move-result-object v2

    #@473
    .line 849
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@475
    .line 848
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@478
    move-result-object v2

    #@479
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47c
    move-result-object v2

    #@47d
    move-object/from16 v0, p0

    #@47f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@482
    goto/16 :goto_0

    #@484
    .line 853
    :cond_14
    const/4 v2, 0x0

    #@485
    aget-byte v2, v10, v2

    #@487
    and-int/lit16 v2, v2, 0xff

    #@489
    const/16 v4, 0xff

    #@48b
    if-ne v2, v4, :cond_15

    #@48d
    .line 854
    const-string/jumbo v2, "SIMRecords: Uninitialized record MWIS"

    #@490
    move-object/from16 v0, p0

    #@492
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@495
    goto/16 :goto_0

    #@497
    .line 858
    :cond_15
    move-object/from16 v0, p0

    #@499
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@49b
    goto/16 :goto_0

    #@49d
    .line 862
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_9
    const/4 v14, 0x1

    #@49e
    .line 864
    move-object/from16 v0, p1

    #@4a0
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a2
    check-cast v9, Landroid/os/AsyncResult;

    #@4a4
    .line 865
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4a6
    check-cast v10, [B

    #@4a8
    .line 867
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@4aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4ad
    const-string/jumbo v4, "EF_CPHS_MWI: "

    #@4b0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b3
    move-result-object v2

    #@4b4
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@4b7
    move-result-object v4

    #@4b8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4bb
    move-result-object v2

    #@4bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4bf
    move-result-object v2

    #@4c0
    move-object/from16 v0, p0

    #@4c2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@4c5
    .line 869
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4c7
    if-eqz v2, :cond_16

    #@4c9
    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    #@4cb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4ce
    const-string/jumbo v4, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    #@4d1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d4
    move-result-object v2

    #@4d5
    .line 871
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4d7
    .line 870
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v2

    #@4db
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4de
    move-result-object v2

    #@4df
    move-object/from16 v0, p0

    #@4e1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@4e4
    goto/16 :goto_0

    #@4e6
    .line 875
    :cond_16
    move-object/from16 v0, p0

    #@4e8
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@4ea
    goto/16 :goto_0

    #@4ec
    .line 879
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_a
    const/4 v14, 0x1

    #@4ed
    .line 881
    move-object/from16 v0, p1

    #@4ef
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4f1
    check-cast v9, Landroid/os/AsyncResult;

    #@4f3
    .line 882
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4f5
    check-cast v10, [B

    #@4f7
    .line 884
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4f9
    if-nez v2, :cond_1

    #@4fb
    .line 888
    array-length v2, v10

    #@4fc
    const/4 v4, 0x0

    #@4fd
    invoke-static {v10, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@500
    move-result-object v2

    #@501
    move-object/from16 v0, p0

    #@503
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    #@505
    .line 889
    array-length v2, v10

    #@506
    const/4 v4, 0x0

    #@507
    invoke-static {v10, v4, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    #@50a
    move-result-object v2

    #@50b
    move-object/from16 v0, p0

    #@50d
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    #@50f
    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    #@511
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@514
    const-string/jumbo v4, "iccid: "

    #@517
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51a
    move-result-object v2

    #@51b
    move-object/from16 v0, p0

    #@51d
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFullIccId:Ljava/lang/String;

    #@51f
    invoke-static {v4}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@522
    move-result-object v4

    #@523
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@526
    move-result-object v2

    #@527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52a
    move-result-object v2

    #@52b
    move-object/from16 v0, p0

    #@52d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@530
    goto/16 :goto_0

    #@532
    .line 898
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_b
    const/4 v14, 0x1

    #@533
    .line 900
    :try_start_7
    move-object/from16 v0, p1

    #@535
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@537
    check-cast v9, Landroid/os/AsyncResult;

    #@539
    .line 901
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@53b
    check-cast v10, [B

    #@53d
    .line 903
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@53f
    if-eqz v2, :cond_1e

    #@541
    .line 930
    :try_start_8
    move-object/from16 v0, p0

    #@543
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@545
    const/4 v4, -0x1

    #@546
    if-eq v2, v4, :cond_17

    #@548
    move-object/from16 v0, p0

    #@54a
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@54c
    if-nez v2, :cond_1b

    #@54e
    .line 931
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    #@550
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@552
    if-eqz v2, :cond_18

    #@554
    move-object/from16 v0, p0

    #@556
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@558
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@55b
    move-result v2

    #@55c
    const/4 v4, 0x6

    #@55d
    if-lt v2, v4, :cond_18

    #@55f
    .line 932
    move-object/from16 v0, p0

    #@561
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@563
    const/4 v4, 0x0

    #@564
    const/4 v5, 0x6

    #@565
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@568
    move-result-object v18

    #@569
    .line 933
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@56b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56e
    const-string/jumbo v4, "mccmncCode="

    #@571
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@574
    move-result-object v2

    #@575
    move-object/from16 v0, v18

    #@577
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57a
    move-result-object v2

    #@57b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57e
    move-result-object v2

    #@57f
    move-object/from16 v0, p0

    #@581
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@584
    .line 934
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@586
    const/4 v2, 0x0

    #@587
    array-length v5, v4

    #@588
    :goto_7
    if-ge v2, v5, :cond_18

    #@58a
    aget-object v17, v4, v2

    #@58c
    .line 935
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58f
    move-result v6

    #@590
    if-eqz v6, :cond_1c

    #@592
    .line 936
    const/4 v2, 0x3

    #@593
    move-object/from16 v0, p0

    #@595
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@597
    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    #@599
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59c
    const-string/jumbo v4, "setting6 mMncLength="

    #@59f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a2
    move-result-object v2

    #@5a3
    move-object/from16 v0, p0

    #@5a5
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5a7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5aa
    move-result-object v2

    #@5ab
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ae
    move-result-object v2

    #@5af
    move-object/from16 v0, p0

    #@5b1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@5b4
    .line 943
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    #@5b6
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5b8
    if-eqz v2, :cond_19

    #@5ba
    move-object/from16 v0, p0

    #@5bc
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5be
    const/4 v4, -0x1

    #@5bf
    if-ne v2, v4, :cond_1a

    #@5c1
    .line 944
    :cond_19
    move-object/from16 v0, p0

    #@5c3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@5c5
    if-eqz v2, :cond_1d

    #@5c7
    .line 946
    :try_start_9
    move-object/from16 v0, p0

    #@5c9
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5cb
    const/4 v4, 0x0

    #@5cc
    const/4 v5, 0x3

    #@5cd
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5d0
    move-result-object v2

    #@5d1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5d4
    move-result v16

    #@5d5
    .line 948
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@5d8
    move-result v2

    #@5d9
    move-object/from16 v0, p0

    #@5db
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5dd
    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    #@5df
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e2
    const-string/jumbo v4, "setting7 mMncLength="

    #@5e5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v2

    #@5e9
    move-object/from16 v0, p0

    #@5eb
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5ed
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f0
    move-result-object v2

    #@5f1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f4
    move-result-object v2

    #@5f5
    move-object/from16 v0, p0

    #@5f7
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5fa
    .line 960
    .end local v16    # "mcc":I
    :cond_1a
    :goto_8
    :try_start_a
    move-object/from16 v0, p0

    #@5fc
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5fe
    if-eqz v2, :cond_1

    #@600
    move-object/from16 v0, p0

    #@602
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@604
    if-eqz v2, :cond_1

    #@606
    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    #@608
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60b
    const-string/jumbo v4, "update mccmnc="

    #@60e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@611
    move-result-object v2

    #@612
    move-object/from16 v0, p0

    #@614
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@616
    move-object/from16 v0, p0

    #@618
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@61a
    add-int/lit8 v5, v5, 0x3

    #@61c
    const/4 v6, 0x0

    #@61d
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@620
    move-result-object v4

    #@621
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@624
    move-result-object v2

    #@625
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@628
    move-result-object v2

    #@629
    move-object/from16 v0, p0

    #@62b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@62e
    .line 964
    move-object/from16 v0, p0

    #@630
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@632
    .line 965
    move-object/from16 v0, p0

    #@634
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@636
    move-object/from16 v0, p0

    #@638
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@63a
    add-int/lit8 v5, v5, 0x3

    #@63c
    const/4 v6, 0x0

    #@63d
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@640
    move-result-object v4

    #@641
    const/4 v5, 0x0

    #@642
    .line 964
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@645
    goto/16 :goto_0

    #@647
    .line 931
    :cond_1b
    move-object/from16 v0, p0

    #@649
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@64b
    const/4 v4, 0x2

    #@64c
    if-ne v2, v4, :cond_18

    #@64e
    goto/16 :goto_6

    #@650
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    #@652
    goto/16 :goto_7

    #@654
    .line 950
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_2
    move-exception v11

    #@655
    .line 951
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@656
    move-object/from16 v0, p0

    #@658
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@65a
    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    #@65c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65f
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@662
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@665
    move-result-object v2

    #@666
    move-object/from16 v0, p0

    #@668
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@66a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66d
    move-result-object v2

    #@66e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@671
    move-result-object v2

    #@672
    move-object/from16 v0, p0

    #@674
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@677
    goto :goto_8

    #@678
    .line 956
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    const/4 v2, 0x0

    #@679
    move-object/from16 v0, p0

    #@67b
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@67d
    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    #@67f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@682
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@685
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@688
    move-result-object v2

    #@689
    move-object/from16 v0, p0

    #@68b
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@68d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@690
    move-result-object v2

    #@691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@694
    move-result-object v2

    #@695
    move-object/from16 v0, p0

    #@697
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@69a
    goto/16 :goto_8

    #@69c
    .line 907
    :cond_1e
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    #@69e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6a1
    const-string/jumbo v4, "EF_AD: "

    #@6a4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a7
    move-result-object v2

    #@6a8
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@6ab
    move-result-object v4

    #@6ac
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6af
    move-result-object v2

    #@6b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b3
    move-result-object v2

    #@6b4
    move-object/from16 v0, p0

    #@6b6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6b9
    .line 909
    array-length v2, v10

    #@6ba
    const/4 v4, 0x3

    #@6bb
    if-ge v2, v4, :cond_26

    #@6bd
    .line 910
    const-string/jumbo v2, "Corrupt AD data on SIM"

    #@6c0
    move-object/from16 v0, p0

    #@6c2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@6c5
    .line 930
    :try_start_c
    move-object/from16 v0, p0

    #@6c7
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6c9
    const/4 v4, -0x1

    #@6ca
    if-eq v2, v4, :cond_1f

    #@6cc
    move-object/from16 v0, p0

    #@6ce
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6d0
    if-nez v2, :cond_23

    #@6d2
    .line 931
    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    #@6d4
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6d6
    if-eqz v2, :cond_20

    #@6d8
    move-object/from16 v0, p0

    #@6da
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6dc
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6df
    move-result v2

    #@6e0
    const/4 v4, 0x6

    #@6e1
    if-lt v2, v4, :cond_20

    #@6e3
    .line 932
    move-object/from16 v0, p0

    #@6e5
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6e7
    const/4 v4, 0x0

    #@6e8
    const/4 v5, 0x6

    #@6e9
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6ec
    move-result-object v18

    #@6ed
    .line 933
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@6ef
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f2
    const-string/jumbo v4, "mccmncCode="

    #@6f5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f8
    move-result-object v2

    #@6f9
    move-object/from16 v0, v18

    #@6fb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6fe
    move-result-object v2

    #@6ff
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@702
    move-result-object v2

    #@703
    move-object/from16 v0, p0

    #@705
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@708
    .line 934
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@70a
    const/4 v2, 0x0

    #@70b
    array-length v5, v4

    #@70c
    :goto_a
    if-ge v2, v5, :cond_20

    #@70e
    aget-object v17, v4, v2

    #@710
    .line 935
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@713
    move-result v6

    #@714
    if-eqz v6, :cond_24

    #@716
    .line 936
    const/4 v2, 0x3

    #@717
    move-object/from16 v0, p0

    #@719
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@71b
    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    #@71d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@720
    const-string/jumbo v4, "setting6 mMncLength="

    #@723
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@726
    move-result-object v2

    #@727
    move-object/from16 v0, p0

    #@729
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@72b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72e
    move-result-object v2

    #@72f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@732
    move-result-object v2

    #@733
    move-object/from16 v0, p0

    #@735
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@738
    .line 943
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    #@73a
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@73c
    if-eqz v2, :cond_21

    #@73e
    move-object/from16 v0, p0

    #@740
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@742
    const/4 v4, -0x1

    #@743
    if-ne v2, v4, :cond_22

    #@745
    .line 944
    :cond_21
    move-object/from16 v0, p0

    #@747
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@749
    if-eqz v2, :cond_25

    #@74b
    .line 946
    :try_start_d
    move-object/from16 v0, p0

    #@74d
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@74f
    const/4 v4, 0x0

    #@750
    const/4 v5, 0x3

    #@751
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@754
    move-result-object v2

    #@755
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@758
    move-result v16

    #@759
    .line 948
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@75c
    move-result v2

    #@75d
    move-object/from16 v0, p0

    #@75f
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@761
    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    #@763
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@766
    const-string/jumbo v4, "setting7 mMncLength="

    #@769
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76c
    move-result-object v2

    #@76d
    move-object/from16 v0, p0

    #@76f
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@771
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@774
    move-result-object v2

    #@775
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@778
    move-result-object v2

    #@779
    move-object/from16 v0, p0

    #@77b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@77e
    .line 960
    .end local v16    # "mcc":I
    :cond_22
    :goto_b
    :try_start_e
    move-object/from16 v0, p0

    #@780
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@782
    if-eqz v2, :cond_1

    #@784
    move-object/from16 v0, p0

    #@786
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@788
    if-eqz v2, :cond_1

    #@78a
    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    #@78c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@78f
    const-string/jumbo v4, "update mccmnc="

    #@792
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@795
    move-result-object v2

    #@796
    move-object/from16 v0, p0

    #@798
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@79a
    move-object/from16 v0, p0

    #@79c
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@79e
    add-int/lit8 v5, v5, 0x3

    #@7a0
    const/4 v6, 0x0

    #@7a1
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7a4
    move-result-object v4

    #@7a5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a8
    move-result-object v2

    #@7a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7ac
    move-result-object v2

    #@7ad
    move-object/from16 v0, p0

    #@7af
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@7b2
    .line 964
    move-object/from16 v0, p0

    #@7b4
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@7b6
    .line 965
    move-object/from16 v0, p0

    #@7b8
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@7ba
    move-object/from16 v0, p0

    #@7bc
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7be
    add-int/lit8 v5, v5, 0x3

    #@7c0
    const/4 v6, 0x0

    #@7c1
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7c4
    move-result-object v4

    #@7c5
    const/4 v5, 0x0

    #@7c6
    .line 964
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@7c9
    goto/16 :goto_0

    #@7cb
    .line 931
    :cond_23
    move-object/from16 v0, p0

    #@7cd
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7cf
    const/4 v4, 0x2

    #@7d0
    if-ne v2, v4, :cond_20

    #@7d2
    goto/16 :goto_9

    #@7d4
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    #@7d6
    goto/16 :goto_a

    #@7d8
    .line 950
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_3
    move-exception v11

    #@7d9
    .line 951
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@7da
    move-object/from16 v0, p0

    #@7dc
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7de
    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7e3
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@7e6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e9
    move-result-object v2

    #@7ea
    move-object/from16 v0, p0

    #@7ec
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7ee
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f1
    move-result-object v2

    #@7f2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f5
    move-result-object v2

    #@7f6
    move-object/from16 v0, p0

    #@7f8
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@7fb
    goto :goto_b

    #@7fc
    .line 956
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    const/4 v2, 0x0

    #@7fd
    move-object/from16 v0, p0

    #@7ff
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@801
    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    #@803
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@806
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@809
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80c
    move-result-object v2

    #@80d
    move-object/from16 v0, p0

    #@80f
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@811
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@814
    move-result-object v2

    #@815
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@818
    move-result-object v2

    #@819
    move-object/from16 v0, p0

    #@81b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@81e
    goto/16 :goto_b

    #@820
    .line 914
    :cond_26
    :try_start_f
    array-length v2, v10

    #@821
    const/4 v4, 0x3

    #@822
    if-ne v2, v4, :cond_2e

    #@824
    .line 915
    const-string/jumbo v2, "MNC length not present in EF_AD"

    #@827
    move-object/from16 v0, p0

    #@829
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@82c
    .line 930
    :try_start_10
    move-object/from16 v0, p0

    #@82e
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@830
    const/4 v4, -0x1

    #@831
    if-eq v2, v4, :cond_27

    #@833
    move-object/from16 v0, p0

    #@835
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@837
    if-nez v2, :cond_2b

    #@839
    .line 931
    :cond_27
    :goto_c
    move-object/from16 v0, p0

    #@83b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@83d
    if-eqz v2, :cond_28

    #@83f
    move-object/from16 v0, p0

    #@841
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@843
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@846
    move-result v2

    #@847
    const/4 v4, 0x6

    #@848
    if-lt v2, v4, :cond_28

    #@84a
    .line 932
    move-object/from16 v0, p0

    #@84c
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@84e
    const/4 v4, 0x0

    #@84f
    const/4 v5, 0x6

    #@850
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@853
    move-result-object v18

    #@854
    .line 933
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@856
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@859
    const-string/jumbo v4, "mccmncCode="

    #@85c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85f
    move-result-object v2

    #@860
    move-object/from16 v0, v18

    #@862
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@865
    move-result-object v2

    #@866
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@869
    move-result-object v2

    #@86a
    move-object/from16 v0, p0

    #@86c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@86f
    .line 934
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@871
    const/4 v2, 0x0

    #@872
    array-length v5, v4

    #@873
    :goto_d
    if-ge v2, v5, :cond_28

    #@875
    aget-object v17, v4, v2

    #@877
    .line 935
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87a
    move-result v6

    #@87b
    if-eqz v6, :cond_2c

    #@87d
    .line 936
    const/4 v2, 0x3

    #@87e
    move-object/from16 v0, p0

    #@880
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@882
    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    #@884
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@887
    const-string/jumbo v4, "setting6 mMncLength="

    #@88a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88d
    move-result-object v2

    #@88e
    move-object/from16 v0, p0

    #@890
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@892
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@895
    move-result-object v2

    #@896
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@899
    move-result-object v2

    #@89a
    move-object/from16 v0, p0

    #@89c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@89f
    .line 943
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    #@8a1
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8a3
    if-eqz v2, :cond_29

    #@8a5
    move-object/from16 v0, p0

    #@8a7
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8a9
    const/4 v4, -0x1

    #@8aa
    if-ne v2, v4, :cond_2a

    #@8ac
    .line 944
    :cond_29
    move-object/from16 v0, p0

    #@8ae
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@8b0
    if-eqz v2, :cond_2d

    #@8b2
    .line 946
    :try_start_11
    move-object/from16 v0, p0

    #@8b4
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8b6
    const/4 v4, 0x0

    #@8b7
    const/4 v5, 0x3

    #@8b8
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8bb
    move-result-object v2

    #@8bc
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8bf
    move-result v16

    #@8c0
    .line 948
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@8c3
    move-result v2

    #@8c4
    move-object/from16 v0, p0

    #@8c6
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8c8
    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    #@8ca
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8cd
    const-string/jumbo v4, "setting7 mMncLength="

    #@8d0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d3
    move-result-object v2

    #@8d4
    move-object/from16 v0, p0

    #@8d6
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8d8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8db
    move-result-object v2

    #@8dc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8df
    move-result-object v2

    #@8e0
    move-object/from16 v0, p0

    #@8e2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@8e5
    .line 960
    .end local v16    # "mcc":I
    :cond_2a
    :goto_e
    :try_start_12
    move-object/from16 v0, p0

    #@8e7
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8e9
    if-eqz v2, :cond_1

    #@8eb
    move-object/from16 v0, p0

    #@8ed
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8ef
    if-eqz v2, :cond_1

    #@8f1
    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    #@8f3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8f6
    const-string/jumbo v4, "update mccmnc="

    #@8f9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8fc
    move-result-object v2

    #@8fd
    move-object/from16 v0, p0

    #@8ff
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@901
    move-object/from16 v0, p0

    #@903
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@905
    add-int/lit8 v5, v5, 0x3

    #@907
    const/4 v6, 0x0

    #@908
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@90b
    move-result-object v4

    #@90c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90f
    move-result-object v2

    #@910
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@913
    move-result-object v2

    #@914
    move-object/from16 v0, p0

    #@916
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@919
    .line 964
    move-object/from16 v0, p0

    #@91b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@91d
    .line 965
    move-object/from16 v0, p0

    #@91f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@921
    move-object/from16 v0, p0

    #@923
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@925
    add-int/lit8 v5, v5, 0x3

    #@927
    const/4 v6, 0x0

    #@928
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@92b
    move-result-object v4

    #@92c
    const/4 v5, 0x0

    #@92d
    .line 964
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@930
    goto/16 :goto_0

    #@932
    .line 931
    :cond_2b
    move-object/from16 v0, p0

    #@934
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@936
    const/4 v4, 0x2

    #@937
    if-ne v2, v4, :cond_28

    #@939
    goto/16 :goto_c

    #@93b
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    #@93d
    goto/16 :goto_d

    #@93f
    .line 950
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_4
    move-exception v11

    #@940
    .line 951
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@941
    move-object/from16 v0, p0

    #@943
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@945
    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    #@947
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94a
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@94d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@950
    move-result-object v2

    #@951
    move-object/from16 v0, p0

    #@953
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@955
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@958
    move-result-object v2

    #@959
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95c
    move-result-object v2

    #@95d
    move-object/from16 v0, p0

    #@95f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@962
    goto :goto_e

    #@963
    .line 956
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2d
    const/4 v2, 0x0

    #@964
    move-object/from16 v0, p0

    #@966
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@968
    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    #@96a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@96d
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@970
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@973
    move-result-object v2

    #@974
    move-object/from16 v0, p0

    #@976
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@978
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97b
    move-result-object v2

    #@97c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97f
    move-result-object v2

    #@980
    move-object/from16 v0, p0

    #@982
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@985
    goto/16 :goto_e

    #@987
    .line 919
    :cond_2e
    const/4 v2, 0x3

    #@988
    :try_start_13
    aget-byte v2, v10, v2

    #@98a
    and-int/lit8 v2, v2, 0xf

    #@98c
    move-object/from16 v0, p0

    #@98e
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@990
    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    #@992
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@995
    const-string/jumbo v4, "setting4 mMncLength="

    #@998
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99b
    move-result-object v2

    #@99c
    move-object/from16 v0, p0

    #@99e
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9a0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a3
    move-result-object v2

    #@9a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a7
    move-result-object v2

    #@9a8
    move-object/from16 v0, p0

    #@9aa
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@9ad
    .line 922
    move-object/from16 v0, p0

    #@9af
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9b1
    const/16 v4, 0xf

    #@9b3
    if-ne v2, v4, :cond_34

    #@9b5
    .line 923
    const/4 v2, 0x0

    #@9b6
    move-object/from16 v0, p0

    #@9b8
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9ba
    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    #@9bc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9bf
    const-string/jumbo v4, "setting5 mMncLength="

    #@9c2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c5
    move-result-object v2

    #@9c6
    move-object/from16 v0, p0

    #@9c8
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9ca
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9cd
    move-result-object v2

    #@9ce
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d1
    move-result-object v2

    #@9d2
    move-object/from16 v0, p0

    #@9d4
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@9d7
    .line 930
    :cond_2f
    :goto_f
    :try_start_14
    move-object/from16 v0, p0

    #@9d9
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9db
    const/4 v4, -0x1

    #@9dc
    if-eq v2, v4, :cond_30

    #@9de
    move-object/from16 v0, p0

    #@9e0
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9e2
    if-nez v2, :cond_3a

    #@9e4
    .line 931
    :cond_30
    :goto_10
    move-object/from16 v0, p0

    #@9e6
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9e8
    if-eqz v2, :cond_31

    #@9ea
    move-object/from16 v0, p0

    #@9ec
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9ee
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@9f1
    move-result v2

    #@9f2
    const/4 v4, 0x6

    #@9f3
    if-lt v2, v4, :cond_31

    #@9f5
    .line 932
    move-object/from16 v0, p0

    #@9f7
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9f9
    const/4 v4, 0x0

    #@9fa
    const/4 v5, 0x6

    #@9fb
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9fe
    move-result-object v18

    #@9ff
    .line 933
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@a01
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a04
    const-string/jumbo v4, "mccmncCode="

    #@a07
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0a
    move-result-object v2

    #@a0b
    move-object/from16 v0, v18

    #@a0d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a10
    move-result-object v2

    #@a11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a14
    move-result-object v2

    #@a15
    move-object/from16 v0, p0

    #@a17
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@a1a
    .line 934
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@a1c
    const/4 v2, 0x0

    #@a1d
    array-length v5, v4

    #@a1e
    :goto_11
    if-ge v2, v5, :cond_31

    #@a20
    aget-object v17, v4, v2

    #@a22
    .line 935
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a25
    move-result v6

    #@a26
    if-eqz v6, :cond_3b

    #@a28
    .line 936
    const/4 v2, 0x3

    #@a29
    move-object/from16 v0, p0

    #@a2b
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a2d
    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    #@a2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a32
    const-string/jumbo v4, "setting6 mMncLength="

    #@a35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a38
    move-result-object v2

    #@a39
    move-object/from16 v0, p0

    #@a3b
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a3d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a40
    move-result-object v2

    #@a41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a44
    move-result-object v2

    #@a45
    move-object/from16 v0, p0

    #@a47
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@a4a
    .line 943
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    #@a4c
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a4e
    if-eqz v2, :cond_32

    #@a50
    move-object/from16 v0, p0

    #@a52
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a54
    const/4 v4, -0x1

    #@a55
    if-ne v2, v4, :cond_33

    #@a57
    .line 944
    :cond_32
    move-object/from16 v0, p0

    #@a59
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@a5b
    if-eqz v2, :cond_3c

    #@a5d
    .line 946
    :try_start_15
    move-object/from16 v0, p0

    #@a5f
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a61
    const/4 v4, 0x0

    #@a62
    const/4 v5, 0x3

    #@a63
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a66
    move-result-object v2

    #@a67
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a6a
    move-result v16

    #@a6b
    .line 948
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@a6e
    move-result v2

    #@a6f
    move-object/from16 v0, p0

    #@a71
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a73
    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    #@a75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a78
    const-string/jumbo v4, "setting7 mMncLength="

    #@a7b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7e
    move-result-object v2

    #@a7f
    move-object/from16 v0, p0

    #@a81
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a86
    move-result-object v2

    #@a87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8a
    move-result-object v2

    #@a8b
    move-object/from16 v0, p0

    #@a8d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    #@a90
    .line 960
    .end local v16    # "mcc":I
    :cond_33
    :goto_12
    :try_start_16
    move-object/from16 v0, p0

    #@a92
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a94
    if-eqz v2, :cond_1

    #@a96
    move-object/from16 v0, p0

    #@a98
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a9a
    if-eqz v2, :cond_1

    #@a9c
    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    #@a9e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@aa1
    const-string/jumbo v4, "update mccmnc="

    #@aa4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa7
    move-result-object v2

    #@aa8
    move-object/from16 v0, p0

    #@aaa
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@aac
    move-object/from16 v0, p0

    #@aae
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ab0
    add-int/lit8 v5, v5, 0x3

    #@ab2
    const/4 v6, 0x0

    #@ab3
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ab6
    move-result-object v4

    #@ab7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aba
    move-result-object v2

    #@abb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@abe
    move-result-object v2

    #@abf
    move-object/from16 v0, p0

    #@ac1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@ac4
    .line 964
    move-object/from16 v0, p0

    #@ac6
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@ac8
    .line 965
    move-object/from16 v0, p0

    #@aca
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@acc
    move-object/from16 v0, p0

    #@ace
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ad0
    add-int/lit8 v5, v5, 0x3

    #@ad2
    const/4 v6, 0x0

    #@ad3
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ad6
    move-result-object v4

    #@ad7
    const/4 v5, 0x0

    #@ad8
    .line 964
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@adb
    goto/16 :goto_0

    #@add
    .line 925
    :cond_34
    :try_start_17
    move-object/from16 v0, p0

    #@adf
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ae1
    const/4 v4, 0x2

    #@ae2
    if-eq v2, v4, :cond_2f

    #@ae4
    move-object/from16 v0, p0

    #@ae6
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ae8
    const/4 v4, 0x3

    #@ae9
    if-eq v2, v4, :cond_2f

    #@aeb
    .line 926
    const/4 v2, -0x1

    #@aec
    move-object/from16 v0, p0

    #@aee
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@af0
    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    #@af2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@af5
    const-string/jumbo v4, "setting5 mMncLength="

    #@af8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@afb
    move-result-object v2

    #@afc
    move-object/from16 v0, p0

    #@afe
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b00
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b03
    move-result-object v2

    #@b04
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b07
    move-result-object v2

    #@b08
    move-object/from16 v0, p0

    #@b0a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    #@b0d
    goto/16 :goto_f

    #@b0f
    .line 929
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :catchall_1
    move-exception v2

    #@b10
    .line 930
    :try_start_18
    move-object/from16 v0, p0

    #@b12
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b14
    const/4 v5, -0x1

    #@b15
    if-eq v4, v5, :cond_35

    #@b17
    move-object/from16 v0, p0

    #@b19
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b1b
    if-nez v4, :cond_3d

    #@b1d
    .line 931
    :cond_35
    :goto_13
    move-object/from16 v0, p0

    #@b1f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b21
    if-eqz v4, :cond_36

    #@b23
    move-object/from16 v0, p0

    #@b25
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@b2a
    move-result v4

    #@b2b
    const/4 v5, 0x6

    #@b2c
    if-lt v4, v5, :cond_36

    #@b2e
    .line 932
    move-object/from16 v0, p0

    #@b30
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b32
    const/4 v5, 0x0

    #@b33
    const/4 v6, 0x6

    #@b34
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b37
    move-result-object v18

    #@b38
    .line 933
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@b3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b3d
    const-string/jumbo v5, "mccmncCode="

    #@b40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b43
    move-result-object v4

    #@b44
    move-object/from16 v0, v18

    #@b46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b49
    move-result-object v4

    #@b4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4d
    move-result-object v4

    #@b4e
    move-object/from16 v0, p0

    #@b50
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b53
    .line 934
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@b55
    const/4 v4, 0x0

    #@b56
    array-length v6, v5

    #@b57
    :goto_14
    if-ge v4, v6, :cond_36

    #@b59
    aget-object v17, v5, v4

    #@b5b
    .line 935
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5e
    move-result v7

    #@b5f
    if-eqz v7, :cond_3e

    #@b61
    .line 936
    const/4 v4, 0x3

    #@b62
    move-object/from16 v0, p0

    #@b64
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b66
    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    #@b68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b6b
    const-string/jumbo v5, "setting6 mMncLength="

    #@b6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b71
    move-result-object v4

    #@b72
    move-object/from16 v0, p0

    #@b74
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b79
    move-result-object v4

    #@b7a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7d
    move-result-object v4

    #@b7e
    move-object/from16 v0, p0

    #@b80
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b83
    .line 943
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    #@b85
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b87
    if-eqz v4, :cond_37

    #@b89
    move-object/from16 v0, p0

    #@b8b
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b8d
    const/4 v5, -0x1

    #@b8e
    if-ne v4, v5, :cond_38

    #@b90
    .line 944
    :cond_37
    move-object/from16 v0, p0

    #@b92
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    #@b94
    if-eqz v4, :cond_3f

    #@b96
    .line 946
    :try_start_19
    move-object/from16 v0, p0

    #@b98
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b9a
    const/4 v5, 0x0

    #@b9b
    const/4 v6, 0x3

    #@b9c
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b9f
    move-result-object v4

    #@ba0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ba3
    move-result v16

    #@ba4
    .line 948
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@ba7
    move-result v4

    #@ba8
    move-object/from16 v0, p0

    #@baa
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bac
    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    #@bae
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bb1
    const-string/jumbo v5, "setting7 mMncLength="

    #@bb4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb7
    move-result-object v4

    #@bb8
    move-object/from16 v0, p0

    #@bba
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bbc
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bbf
    move-result-object v4

    #@bc0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc3
    move-result-object v4

    #@bc4
    move-object/from16 v0, p0

    #@bc6
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    #@bc9
    .line 960
    .end local v16    # "mcc":I
    :cond_38
    :goto_15
    :try_start_1a
    move-object/from16 v0, p0

    #@bcb
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bcd
    if-eqz v4, :cond_39

    #@bcf
    move-object/from16 v0, p0

    #@bd1
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bd3
    if-eqz v4, :cond_39

    #@bd5
    .line 963
    new-instance v4, Ljava/lang/StringBuilder;

    #@bd7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bda
    const-string/jumbo v5, "update mccmnc="

    #@bdd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be0
    move-result-object v4

    #@be1
    move-object/from16 v0, p0

    #@be3
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@be5
    move-object/from16 v0, p0

    #@be7
    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@be9
    add-int/lit8 v6, v6, 0x3

    #@beb
    const/4 v7, 0x0

    #@bec
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bef
    move-result-object v5

    #@bf0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf3
    move-result-object v4

    #@bf4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf7
    move-result-object v4

    #@bf8
    move-object/from16 v0, p0

    #@bfa
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@bfd
    .line 964
    move-object/from16 v0, p0

    #@bff
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@c01
    .line 965
    move-object/from16 v0, p0

    #@c03
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@c05
    move-object/from16 v0, p0

    #@c07
    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c09
    add-int/lit8 v6, v6, 0x3

    #@c0b
    const/4 v7, 0x0

    #@c0c
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c0f
    move-result-object v5

    #@c10
    const/4 v6, 0x0

    #@c11
    .line 964
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@c14
    .line 929
    :cond_39
    throw v2

    #@c15
    .line 931
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    .restart local v10    # "data":[B
    :cond_3a
    move-object/from16 v0, p0

    #@c17
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c19
    const/4 v4, 0x2

    #@c1a
    if-ne v2, v4, :cond_31

    #@c1c
    goto/16 :goto_10

    #@c1e
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    #@c20
    goto/16 :goto_11

    #@c22
    .line 950
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_5
    move-exception v11

    #@c23
    .line 951
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@c24
    move-object/from16 v0, p0

    #@c26
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c28
    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    #@c2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c2d
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@c30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c33
    move-result-object v2

    #@c34
    move-object/from16 v0, p0

    #@c36
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3b
    move-result-object v2

    #@c3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3f
    move-result-object v2

    #@c40
    move-object/from16 v0, p0

    #@c42
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@c45
    goto/16 :goto_12

    #@c47
    .line 956
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3c
    const/4 v2, 0x0

    #@c48
    move-object/from16 v0, p0

    #@c4a
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c4c
    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    #@c4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c51
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@c54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c57
    move-result-object v2

    #@c58
    move-object/from16 v0, p0

    #@c5a
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c5c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5f
    move-result-object v2

    #@c60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c63
    move-result-object v2

    #@c64
    move-object/from16 v0, p0

    #@c66
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c69
    goto/16 :goto_12

    #@c6b
    .line 931
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :cond_3d
    move-object/from16 v0, p0

    #@c6d
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c6f
    const/4 v5, 0x2

    #@c70
    if-ne v4, v5, :cond_36

    #@c72
    goto/16 :goto_13

    #@c74
    .line 934
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    #@c76
    goto/16 :goto_14

    #@c78
    .line 950
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_6
    move-exception v11

    #@c79
    .line 951
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@c7a
    move-object/from16 v0, p0

    #@c7c
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c7e
    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    #@c80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c83
    const-string/jumbo v5, "Corrupt IMSI! setting8 mMncLength="

    #@c86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c89
    move-result-object v4

    #@c8a
    move-object/from16 v0, p0

    #@c8c
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c91
    move-result-object v4

    #@c92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c95
    move-result-object v4

    #@c96
    move-object/from16 v0, p0

    #@c98
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@c9b
    goto/16 :goto_15

    #@c9d
    .line 956
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    const/4 v4, 0x0

    #@c9e
    move-object/from16 v0, p0

    #@ca0
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ca2
    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    #@ca4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ca7
    const-string/jumbo v5, "MNC length not present in EF_AD setting9 mMncLength="

    #@caa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cad
    move-result-object v4

    #@cae
    move-object/from16 v0, p0

    #@cb0
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@cb2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb5
    move-result-object v4

    #@cb6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb9
    move-result-object v4

    #@cba
    move-object/from16 v0, p0

    #@cbc
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@cbf
    goto/16 :goto_15

    #@cc1
    .line 971
    :pswitch_c
    const/4 v14, 0x1

    #@cc2
    .line 972
    move-object/from16 v0, p1

    #@cc4
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cc6
    check-cast v9, Landroid/os/AsyncResult;

    #@cc8
    .line 973
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    #@cc9
    move-object/from16 v0, p0

    #@ccb
    invoke-direct {v0, v2, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    #@cce
    goto/16 :goto_0

    #@cd0
    .line 977
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    const/4 v14, 0x1

    #@cd1
    .line 979
    move-object/from16 v0, p1

    #@cd3
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cd5
    check-cast v9, Landroid/os/AsyncResult;

    #@cd7
    .line 980
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@cd9
    check-cast v10, [B

    #@cdb
    .line 982
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cdd
    if-eqz v2, :cond_40

    #@cdf
    .line 983
    const/4 v2, 0x0

    #@ce0
    move-object/from16 v0, p0

    #@ce2
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@ce4
    goto/16 :goto_0

    #@ce6
    .line 985
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    #@ce8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ceb
    const-string/jumbo v4, "EF_CFF_CPHS: "

    #@cee
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf1
    move-result-object v2

    #@cf2
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@cf5
    move-result-object v4

    #@cf6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf9
    move-result-object v2

    #@cfa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cfd
    move-result-object v2

    #@cfe
    move-object/from16 v0, p0

    #@d00
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@d03
    .line 986
    move-object/from16 v0, p0

    #@d05
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@d07
    goto/16 :goto_0

    #@d09
    .line 992
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_e
    const/4 v14, 0x1

    #@d0a
    .line 994
    move-object/from16 v0, p1

    #@d0c
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d0e
    check-cast v9, Landroid/os/AsyncResult;

    #@d10
    .line 995
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d12
    check-cast v10, [B

    #@d14
    .line 997
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d16
    if-nez v2, :cond_1

    #@d18
    .line 1001
    move-object/from16 v0, p0

    #@d1a
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    #@d1d
    goto/16 :goto_0

    #@d1f
    .line 1005
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_f
    move-object/from16 v0, p1

    #@d21
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d23
    check-cast v9, Landroid/os/AsyncResult;

    #@d25
    .line 1006
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d27
    if-eqz v2, :cond_1

    #@d29
    .line 1007
    const-string/jumbo v2, "update failed. "

    #@d2c
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d2e
    move-object/from16 v0, p0

    #@d30
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d33
    goto/16 :goto_0

    #@d35
    .line 1012
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    const/4 v14, 0x1

    #@d36
    .line 1014
    move-object/from16 v0, p1

    #@d38
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d3a
    check-cast v9, Landroid/os/AsyncResult;

    #@d3c
    .line 1015
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d3e
    check-cast v10, [B

    #@d40
    .line 1017
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d42
    if-nez v2, :cond_1

    #@d44
    .line 1021
    new-instance v21, Lcom/android/internal/telephony/gsm/SimTlv;

    #@d46
    array-length v2, v10

    #@d47
    const/4 v4, 0x0

    #@d48
    move-object/from16 v0, v21

    #@d4a
    invoke-direct {v0, v10, v4, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@d4d
    .line 1023
    .local v21, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_16
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    #@d50
    move-result v2

    #@d51
    if-eqz v2, :cond_1

    #@d53
    .line 1024
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@d56
    move-result v2

    #@d57
    const/16 v4, 0x43

    #@d59
    if-ne v2, v4, :cond_41

    #@d5b
    .line 1027
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@d5e
    move-result-object v2

    #@d5f
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@d62
    move-result-object v4

    #@d63
    array-length v4, v4

    #@d64
    const/4 v5, 0x0

    #@d65
    .line 1026
    invoke-static {v2, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    #@d68
    move-result-object v2

    #@d69
    .line 1025
    move-object/from16 v0, p0

    #@d6b
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@d6d
    goto/16 :goto_0

    #@d6f
    .line 1023
    :cond_41
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@d72
    goto :goto_16

    #@d73
    .line 1034
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    .end local v21    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :pswitch_11
    const/4 v14, 0x1

    #@d74
    .line 1036
    move-object/from16 v0, p1

    #@d76
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d78
    check-cast v9, Landroid/os/AsyncResult;

    #@d7a
    .line 1037
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d7c
    if-nez v2, :cond_1

    #@d7e
    .line 1040
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d80
    check-cast v2, Ljava/util/ArrayList;

    #@d82
    move-object/from16 v0, p0

    #@d84
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    #@d87
    goto/16 :goto_0

    #@d89
    .line 1044
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    const-string/jumbo v2, "ENF"

    #@d8c
    new-instance v4, Ljava/lang/StringBuilder;

    #@d8e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d91
    const-string/jumbo v5, "marked read: sms "

    #@d94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d97
    move-result-object v4

    #@d98
    move-object/from16 v0, p1

    #@d9a
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@d9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9f
    move-result-object v4

    #@da0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da3
    move-result-object v4

    #@da4
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@da7
    goto/16 :goto_0

    #@da9
    .line 1049
    :pswitch_13
    const/4 v14, 0x0

    #@daa
    .line 1051
    move-object/from16 v0, p1

    #@dac
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@dae
    check-cast v9, Landroid/os/AsyncResult;

    #@db0
    .line 1053
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@db2
    check-cast v13, [I

    #@db4
    .line 1055
    .local v13, "index":[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@db6
    if-nez v2, :cond_42

    #@db8
    array-length v2, v13

    #@db9
    const/4 v4, 0x1

    #@dba
    if-eq v2, v4, :cond_43

    #@dbc
    .line 1056
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    #@dbe
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@dc1
    const-string/jumbo v4, "Error on SMS_ON_SIM with exp "

    #@dc4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc7
    move-result-object v2

    #@dc8
    .line 1057
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@dca
    .line 1056
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dcd
    move-result-object v2

    #@dce
    .line 1057
    const-string/jumbo v4, " length "

    #@dd1
    .line 1056
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd4
    move-result-object v2

    #@dd5
    .line 1057
    array-length v4, v13

    #@dd6
    .line 1056
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd9
    move-result-object v2

    #@dda
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ddd
    move-result-object v2

    #@dde
    move-object/from16 v0, p0

    #@de0
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@de3
    goto/16 :goto_0

    #@de5
    .line 1059
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    #@de7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@dea
    const-string/jumbo v4, "READ EF_SMS RECORD index="

    #@ded
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df0
    move-result-object v2

    #@df1
    const/4 v4, 0x0

    #@df2
    aget v4, v13, v4

    #@df4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@df7
    move-result-object v2

    #@df8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dfb
    move-result-object v2

    #@dfc
    move-object/from16 v0, p0

    #@dfe
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e01
    .line 1060
    move-object/from16 v0, p0

    #@e03
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@e05
    const/4 v4, 0x0

    #@e06
    aget v4, v13, v4

    #@e08
    .line 1061
    const/16 v5, 0x16

    #@e0a
    move-object/from16 v0, p0

    #@e0c
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@e0f
    move-result-object v5

    #@e10
    .line 1060
    const/16 v6, 0x6f3c

    #@e12
    invoke-virtual {v2, v6, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@e15
    goto/16 :goto_0

    #@e17
    .line 1066
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "index":[I
    :pswitch_14
    const/4 v14, 0x0

    #@e18
    .line 1067
    move-object/from16 v0, p1

    #@e1a
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e1c
    check-cast v9, Landroid/os/AsyncResult;

    #@e1e
    .line 1068
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e20
    if-nez v2, :cond_44

    #@e22
    .line 1069
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e24
    check-cast v2, [B

    #@e26
    move-object/from16 v0, p0

    #@e28
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    #@e2b
    goto/16 :goto_0

    #@e2d
    .line 1071
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    #@e2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e32
    const-string/jumbo v4, "Error on GET_SMS with exp "

    #@e35
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e38
    move-result-object v2

    #@e39
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3e
    move-result-object v2

    #@e3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e42
    move-result-object v2

    #@e43
    move-object/from16 v0, p0

    #@e45
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@e48
    goto/16 :goto_0

    #@e4a
    .line 1075
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const/4 v14, 0x1

    #@e4b
    .line 1077
    move-object/from16 v0, p1

    #@e4d
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e4f
    check-cast v9, Landroid/os/AsyncResult;

    #@e51
    .line 1078
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e53
    check-cast v10, [B

    #@e55
    .line 1080
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e57
    if-nez v2, :cond_1

    #@e59
    .line 1084
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e5b
    invoke-direct {v2, v10}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    #@e5e
    move-object/from16 v0, p0

    #@e60
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e62
    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    #@e64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e67
    const-string/jumbo v4, "SST: "

    #@e6a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6d
    move-result-object v2

    #@e6e
    move-object/from16 v0, p0

    #@e70
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e72
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e75
    move-result-object v2

    #@e76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e79
    move-result-object v2

    #@e7a
    move-object/from16 v0, p0

    #@e7c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e7f
    goto/16 :goto_0

    #@e81
    .line 1089
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_16
    const/4 v14, 0x1

    #@e82
    .line 1091
    move-object/from16 v0, p1

    #@e84
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e86
    check-cast v9, Landroid/os/AsyncResult;

    #@e88
    .line 1093
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e8a
    if-nez v2, :cond_1

    #@e8c
    .line 1097
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e8e
    check-cast v2, [B

    #@e90
    move-object/from16 v0, p0

    #@e92
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@e94
    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    #@e96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e99
    const-string/jumbo v4, "iCPHS: "

    #@e9c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9f
    move-result-object v2

    #@ea0
    move-object/from16 v0, p0

    #@ea2
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@ea4
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@ea7
    move-result-object v4

    #@ea8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eab
    move-result-object v2

    #@eac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eaf
    move-result-object v2

    #@eb0
    move-object/from16 v0, p0

    #@eb2
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@eb5
    goto/16 :goto_0

    #@eb7
    .line 1103
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    const/4 v14, 0x0

    #@eb8
    .line 1104
    move-object/from16 v0, p1

    #@eba
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@ebc
    check-cast v9, Landroid/os/AsyncResult;

    #@ebe
    .line 1106
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    #@ec0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ec3
    const-string/jumbo v4, "EVENT_SET_MBDN_DONE ex:"

    #@ec6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec9
    move-result-object v2

    #@eca
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ecc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ecf
    move-result-object v2

    #@ed0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed3
    move-result-object v2

    #@ed4
    move-object/from16 v0, p0

    #@ed6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@ed9
    .line 1107
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@edb
    if-nez v2, :cond_45

    #@edd
    .line 1108
    move-object/from16 v0, p0

    #@edf
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@ee1
    move-object/from16 v0, p0

    #@ee3
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@ee5
    .line 1109
    move-object/from16 v0, p0

    #@ee7
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@ee9
    move-object/from16 v0, p0

    #@eeb
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@eed
    .line 1112
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    #@ef0
    move-result v2

    #@ef1
    if-eqz v2, :cond_47

    #@ef3
    .line 1113
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@ef5
    move-object/from16 v0, p0

    #@ef7
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@ef9
    move-object/from16 v0, p0

    #@efb
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@efd
    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f00
    .line 1114
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f02
    move-object/from16 v19, v0

    #@f04
    check-cast v19, Landroid/os/Message;

    #@f06
    .line 1123
    .local v19, "onCphsCompleted":Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f08
    if-nez v2, :cond_46

    #@f0a
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f0c
    if-eqz v2, :cond_46

    #@f0e
    .line 1124
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f10
    check-cast v2, Landroid/os/Message;

    #@f12
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f15
    move-result-object v2

    #@f16
    .line 1125
    const/4 v4, 0x0

    #@f17
    .line 1124
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f19
    .line 1126
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f1b
    check-cast v2, Landroid/os/Message;

    #@f1d
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@f20
    .line 1128
    const-string/jumbo v2, "Callback with MBDN successful."

    #@f23
    move-object/from16 v0, p0

    #@f25
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@f28
    .line 1130
    const/16 v19, 0x0

    #@f2a
    .line 1133
    .end local v19    # "onCphsCompleted":Landroid/os/Message;
    :cond_46
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@f2c
    move-object/from16 v0, p0

    #@f2e
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@f30
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@f33
    .line 1135
    const/16 v4, 0x19

    #@f35
    move-object/from16 v0, p0

    #@f37
    move-object/from16 v1, v19

    #@f39
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f3c
    move-result-object v8

    #@f3d
    .line 1134
    const/16 v4, 0x6f17

    #@f3f
    const/16 v5, 0x6f4a

    #@f41
    const/4 v6, 0x1

    #@f42
    const/4 v7, 0x0

    #@f43
    .line 1133
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@f46
    goto/16 :goto_0

    #@f48
    .line 1138
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_47
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f4a
    if-eqz v2, :cond_1

    #@f4c
    .line 1139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@f4f
    move-result-object v20

    #@f50
    .line 1140
    .local v20, "resource":Landroid/content/res/Resources;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f52
    if-eqz v2, :cond_48

    #@f54
    const v2, 0x1120097

    #@f57
    move-object/from16 v0, v20

    #@f59
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f5c
    move-result v2

    #@f5d
    if-eqz v2, :cond_48

    #@f5f
    .line 1144
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f61
    check-cast v2, Landroid/os/Message;

    #@f63
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f66
    move-result-object v2

    #@f67
    .line 1145
    new-instance v4, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@f69
    .line 1146
    const-string/jumbo v5, "Update SIM voice mailbox error"

    #@f6c
    .line 1145
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    #@f6f
    .line 1144
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f71
    .line 1151
    :goto_17
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f73
    check-cast v2, Landroid/os/Message;

    #@f75
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@f78
    goto/16 :goto_0

    #@f7a
    .line 1148
    :cond_48
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f7c
    check-cast v2, Landroid/os/Message;

    #@f7e
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f81
    move-result-object v2

    #@f82
    .line 1149
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f84
    .line 1148
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f86
    goto :goto_17

    #@f87
    .line 1156
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "resource":Landroid/content/res/Resources;
    :pswitch_18
    const/4 v14, 0x0

    #@f88
    .line 1157
    move-object/from16 v0, p1

    #@f8a
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f8c
    check-cast v9, Landroid/os/AsyncResult;

    #@f8e
    .line 1158
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f90
    if-nez v2, :cond_49

    #@f92
    .line 1159
    move-object/from16 v0, p0

    #@f94
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@f96
    move-object/from16 v0, p0

    #@f98
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@f9a
    .line 1160
    move-object/from16 v0, p0

    #@f9c
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@f9e
    move-object/from16 v0, p0

    #@fa0
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@fa2
    .line 1165
    :goto_18
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@fa4
    if-eqz v2, :cond_1

    #@fa6
    .line 1166
    const-string/jumbo v2, "Callback with CPHS MB successful."

    #@fa9
    move-object/from16 v0, p0

    #@fab
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fae
    .line 1167
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@fb0
    check-cast v2, Landroid/os/Message;

    #@fb2
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@fb5
    move-result-object v2

    #@fb6
    .line 1168
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fb8
    .line 1167
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fba
    .line 1169
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@fbc
    check-cast v2, Landroid/os/Message;

    #@fbe
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@fc1
    goto/16 :goto_0

    #@fc3
    .line 1162
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    #@fc5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fc8
    const-string/jumbo v4, "Set CPHS MailBox with exception: "

    #@fcb
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fce
    move-result-object v2

    #@fcf
    .line 1163
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fd1
    .line 1162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd4
    move-result-object v2

    #@fd5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd8
    move-result-object v2

    #@fd9
    move-object/from16 v0, p0

    #@fdb
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fde
    goto :goto_18

    #@fdf
    .line 1173
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    const/4 v14, 0x0

    #@fe0
    .line 1174
    move-object/from16 v0, p1

    #@fe2
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fe4
    check-cast v9, Landroid/os/AsyncResult;

    #@fe6
    .line 1175
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    #@fe8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@feb
    const-string/jumbo v4, "Sim REFRESH with exception: "

    #@fee
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff1
    move-result-object v2

    #@ff2
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ff4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff7
    move-result-object v2

    #@ff8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ffb
    move-result-object v2

    #@ffc
    move-object/from16 v0, p0

    #@ffe
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1001
    .line 1176
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1003
    if-nez v2, :cond_1

    #@1005
    .line 1177
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1007
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@1009
    move-object/from16 v0, p0

    #@100b
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@100e
    goto/16 :goto_0

    #@1010
    .line 1181
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a
    const/4 v14, 0x1

    #@1011
    .line 1183
    move-object/from16 v0, p1

    #@1013
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1015
    check-cast v9, Landroid/os/AsyncResult;

    #@1017
    .line 1184
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1019
    check-cast v10, [B

    #@101b
    .line 1186
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@101d
    if-eqz v2, :cond_4a

    #@101f
    .line 1187
    const/4 v2, 0x0

    #@1020
    move-object/from16 v0, p0

    #@1022
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@1024
    goto/16 :goto_0

    #@1026
    .line 1189
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1028
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@102b
    const-string/jumbo v4, "EF_CFIS: "

    #@102e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1031
    move-result-object v2

    #@1032
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@1035
    move-result-object v4

    #@1036
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1039
    move-result-object v2

    #@103a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103d
    move-result-object v2

    #@103e
    move-object/from16 v0, p0

    #@1040
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1043
    .line 1190
    move-object/from16 v0, p0

    #@1045
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@1047
    goto/16 :goto_0

    #@1049
    .line 1196
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1b
    const/4 v14, 0x1

    #@104a
    .line 1198
    move-object/from16 v0, p1

    #@104c
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@104e
    check-cast v9, Landroid/os/AsyncResult;

    #@1050
    .line 1200
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1052
    if-eqz v2, :cond_4b

    #@1054
    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    #@1056
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1059
    const-string/jumbo v4, "Exception in fetching EF_CSP data "

    #@105c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105f
    move-result-object v2

    #@1060
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1062
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1065
    move-result-object v2

    #@1066
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1069
    move-result-object v2

    #@106a
    move-object/from16 v0, p0

    #@106c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@106f
    goto/16 :goto_0

    #@1071
    .line 1205
    :cond_4b
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1073
    check-cast v10, [B

    #@1075
    .line 1207
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@1077
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@107a
    const-string/jumbo v4, "EF_CSP: "

    #@107d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1080
    move-result-object v2

    #@1081
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@1084
    move-result-object v4

    #@1085
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1088
    move-result-object v2

    #@1089
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108c
    move-result-object v2

    #@108d
    move-object/from16 v0, p0

    #@108f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1092
    .line 1208
    move-object/from16 v0, p0

    #@1094
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    #@1097
    goto/16 :goto_0

    #@1099
    .line 1212
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1c
    const/4 v14, 0x1

    #@109a
    .line 1214
    move-object/from16 v0, p1

    #@109c
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@109e
    check-cast v9, Landroid/os/AsyncResult;

    #@10a0
    .line 1215
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10a2
    check-cast v10, [B

    #@10a4
    .line 1217
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10a6
    if-eqz v2, :cond_4c

    #@10a8
    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    #@10aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10ad
    const-string/jumbo v4, "Exception in get GID1 "

    #@10b0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b3
    move-result-object v2

    #@10b4
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10b6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b9
    move-result-object v2

    #@10ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10bd
    move-result-object v2

    #@10be
    move-object/from16 v0, p0

    #@10c0
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@10c3
    .line 1219
    const/4 v2, 0x0

    #@10c4
    move-object/from16 v0, p0

    #@10c6
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10c8
    goto/16 :goto_0

    #@10ca
    .line 1222
    :cond_4c
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@10cd
    move-result-object v2

    #@10ce
    move-object/from16 v0, p0

    #@10d0
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10d2
    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    #@10d4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10d7
    const-string/jumbo v4, "GID1: "

    #@10da
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10dd
    move-result-object v2

    #@10de
    move-object/from16 v0, p0

    #@10e0
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10e2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e5
    move-result-object v2

    #@10e6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e9
    move-result-object v2

    #@10ea
    move-object/from16 v0, p0

    #@10ec
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@10ef
    goto/16 :goto_0

    #@10f1
    .line 1228
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1d
    const/4 v14, 0x1

    #@10f2
    .line 1230
    move-object/from16 v0, p1

    #@10f4
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10f6
    check-cast v9, Landroid/os/AsyncResult;

    #@10f8
    .line 1231
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10fa
    check-cast v10, [B

    #@10fc
    .line 1233
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10fe
    if-eqz v2, :cond_4d

    #@1100
    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    #@1102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1105
    const-string/jumbo v4, "Exception in get GID2 "

    #@1108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110b
    move-result-object v2

    #@110c
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@110e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1111
    move-result-object v2

    #@1112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1115
    move-result-object v2

    #@1116
    move-object/from16 v0, p0

    #@1118
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@111b
    .line 1235
    const/4 v2, 0x0

    #@111c
    move-object/from16 v0, p0

    #@111e
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1120
    goto/16 :goto_0

    #@1122
    .line 1238
    :cond_4d
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@1125
    move-result-object v2

    #@1126
    move-object/from16 v0, p0

    #@1128
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@112a
    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    #@112c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@112f
    const-string/jumbo v4, "GID2: "

    #@1132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1135
    move-result-object v2

    #@1136
    move-object/from16 v0, p0

    #@1138
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@113a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113d
    move-result-object v2

    #@113e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1141
    move-result-object v2

    #@1142
    move-object/from16 v0, p0

    #@1144
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1147
    goto/16 :goto_0

    #@1149
    .line 1244
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleCarrierNameOverride()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    #@114c
    goto/16 :goto_0

    #@114e
    .line 646
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
    .line 1944
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1922
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
    .line 1921
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1927
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
    .line 1926
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1935
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
    .line 1934
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1931
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
    .line 1930
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
    .line 1458
    const-string/jumbo v3, "record load complete"

    #@5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8
    .line 1460
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    .line 1461
    .local v1, "resource":Landroid/content/res/Resources;
    const v3, 0x112009e

    #@f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 1462
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    #@17
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@19
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    #@1c
    .line 1467
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    #@1f
    .line 1469
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
    .line 1470
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
    .line 1472
    :cond_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@35
    .line 1474
    return-void

    #@36
    .line 1464
    :cond_1
    const-string/jumbo v3, "Not using EF LI/EF PL"

    #@39
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1479
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .line 1480
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_3

    #@47
    .line 1481
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
    .line 1482
    const-string/jumbo v4, "\'"

    #@5a
    .line 1481
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
    .line 1483
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
    .line 1484
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7e
    .line 1485
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@80
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@83
    move-result v4

    #@84
    .line 1484
    invoke-virtual {v3, v4, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@87
    .line 1486
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@8a
    move-result-object v2

    #@8b
    .line 1487
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    #@8e
    move-result v3

    #@8f
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@92
    .line 1492
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
    .line 1493
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
    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@b6
    .line 1495
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b8
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@bb
    move-result v4

    #@bc
    .line 1496
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
    .line 1495
    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@ca
    move-result-object v5

    #@cb
    .line 1494
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@ce
    .line 1501
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    #@d1
    .line 1503
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@d3
    .line 1504
    new-instance v4, Landroid/os/AsyncResult;

    #@d5
    invoke-direct {v4, v7, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@d8
    .line 1503
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@db
    .line 1457
    return-void

    #@dc
    .line 1489
    :cond_3
    const-string/jumbo v3, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    #@df
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e2
    goto :goto_1

    #@e3
    .line 1498
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
    .line 1543
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@3
    .line 1542
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1429
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@7
    .line 1430
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
    .line 1432
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@2f
    if-nez v0, :cond_1

    #@31
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 1433
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    #@38
    .line 1426
    :cond_0
    :goto_0
    return-void

    #@39
    .line 1434
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3b
    if-gez v0, :cond_0

    #@3d
    .line 1435
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    #@40
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@43
    .line 1436
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
    .line 603
    if-eqz p1, :cond_0

    #@2
    .line 607
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@5
    .line 602
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
    .line 353
    const-string/jumbo v3, "SIMRecords"

    #@22
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@24
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@33
    .line 355
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@35
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@37
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@39
    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 357
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@3e
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@40
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@43
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    #@46
    move-result v3

    #@47
    .line 358
    const/16 v4, 0x1e

    #@49
    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@4c
    move-result-object v6

    #@4d
    .line 357
    const/4 v4, 0x1

    #@4e
    const/4 v5, 0x0

    #@4f
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@52
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
    .line 536
    if-eq p1, v1, :cond_0

    #@4
    return-void

    #@5
    .line 538
    :cond_0
    if-eqz p2, :cond_1

    #@7
    move v0, v1

    #@8
    :cond_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    #@a
    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@13
    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@15
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_6

    #@1b
    .line 546
    if-eqz p2, :cond_4

    #@1d
    .line 547
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
    .line 552
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
    .line 553
    const-string/jumbo v1, " mEfCfis="

    #@3a
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@40
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 552
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
    .line 557
    if-eqz p2, :cond_2

    #@51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_5

    #@57
    .line 568
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@59
    .line 569
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@5b
    .line 570
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
    .line 569
    const/16 v1, 0x6fcb

    #@69
    const/4 v2, 0x1

    #@6a
    const/4 v4, 0x0

    #@6b
    .line 568
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@6e
    .line 576
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@70
    if-eqz v0, :cond_3

    #@72
    .line 577
    if-eqz p2, :cond_7

    #@74
    .line 578
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
    .line 585
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@85
    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@87
    .line 587
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
    .line 586
    const/16 v3, 0x6f13

    #@95
    .line 585
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    #@98
    .line 534
    :cond_3
    :goto_4
    return-void

    #@99
    .line 549
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
    .line 589
    :catch_0
    move-exception v7

    #@a5
    .line 590
    .local v7, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    #@a8
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ab
    goto :goto_4

    #@ac
    .line 558
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
    const-string/jumbo v1, "SIMRecords"

    #@bb
    invoke-static {v1, p3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v0

    #@c7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V

    #@ca
    .line 559
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    #@cd
    move-result-object v6

    #@ce
    .line 561
    .local v6, "bcdNumber":[B
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@d0
    array-length v1, v6

    #@d1
    const/4 v2, 0x0

    #@d2
    const/4 v3, 0x3

    #@d3
    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d6
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@d8
    array-length v1, v6

    #@d9
    int-to-byte v1, v1

    #@da
    const/4 v2, 0x2

    #@db
    aput-byte v1, v0, v2

    #@dd
    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@df
    const/4 v1, -0x1

    #@e0
    const/16 v2, 0xe

    #@e2
    aput-byte v1, v0, v2

    #@e4
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@e6
    const/4 v1, -0x1

    #@e7
    const/16 v2, 0xf

    #@e9
    aput-byte v1, v0, v2

    #@eb
    goto/16 :goto_1

    #@ed
    .line 572
    .end local v6    # "bcdNumber":[B
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v1, "setVoiceCallForwardingFlag: ignoring enable="

    #@f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v0

    #@fd
    .line 573
    const-string/jumbo v1, " invalid mEfCfis="

    #@100
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    .line 573
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@106
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v0

    #@10e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v0

    #@112
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@115
    goto/16 :goto_2

    #@117
    .line 581
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@11b
    const/4 v2, 0x0

    #@11c
    aget-byte v1, v1, v2

    #@11e
    and-int/lit16 v1, v1, 0xf0

    #@120
    or-int/lit8 v1, v1, 0x5

    #@122
    int-to-byte v1, v1

    #@123
    const/4 v2, 0x0

    #@124
    aput-byte v1, v0, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@126
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
    .line 398
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 399
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@8
    move-result-object v0

    #@9
    .line 400
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    #@b
    const-string/jumbo v3, "Voicemail number is fixed by operator"

    #@e
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    #@11
    .line 399
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    .line 401
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 402
    return-void

    #@17
    .line 405
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@19
    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@1b
    .line 408
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@1d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@1f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@21
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 410
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
    .line 412
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@30
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@32
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@35
    .line 413
    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@37
    .line 414
    const/16 v2, 0x14

    #@39
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c
    move-result-object v6

    #@3d
    .line 412
    const/16 v2, 0x6fc7

    #@3f
    const/16 v3, 0x6fc8

    #@41
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@44
    .line 397
    :goto_0
    return-void

    #@45
    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 418
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@4d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4f
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@52
    .line 420
    const/16 v2, 0x19

    #@54
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@57
    move-result-object v6

    #@58
    .line 418
    const/16 v2, 0x6f17

    #@5a
    .line 419
    const/16 v3, 0x6f4a

    #@5c
    const/4 v4, 0x1

    #@5d
    .line 418
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@60
    goto :goto_0

    #@61
    .line 423
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@64
    move-result-object v0

    #@65
    .line 424
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@67
    const-string/jumbo v3, "Update SIM voice mailbox error"

    #@6a
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    #@6d
    .line 423
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6f
    .line 425
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
    .line 445
    if-eq p1, v1, :cond_0

    #@4
    .line 447
    return-void

    #@5
    .line 451
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 455
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
    .line 456
    if-nez p2, :cond_3

    #@14
    .line 455
    :goto_0
    or-int/2addr v0, v3

    #@15
    int-to-byte v0, v0

    #@16
    const/4 v1, 0x0

    #@17
    aput-byte v0, v2, v1

    #@19
    .line 459
    if-gez p2, :cond_4

    #@1b
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@1d
    const/4 v1, 0x0

    #@1e
    const/4 v2, 0x1

    #@1f
    aput-byte v1, v0, v2

    #@21
    .line 467
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@23
    .line 468
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@25
    .line 469
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
    .line 468
    const/16 v1, 0x6fca

    #@30
    const/4 v2, 0x1

    #@31
    const/4 v4, 0x0

    #@32
    .line 467
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@35
    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 474
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
    .line 475
    if-nez p2, :cond_5

    #@44
    const/4 v0, 0x5

    #@45
    .line 474
    :goto_2
    or-int/2addr v0, v2

    #@46
    int-to-byte v0, v0

    #@47
    const/4 v2, 0x0

    #@48
    aput-byte v0, v1, v2

    #@4a
    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4c
    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@4e
    .line 478
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
    .line 477
    const/16 v3, 0x6f11

    #@5c
    .line 476
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    #@5f
    .line 444
    :cond_2
    :goto_3
    return-void

    #@60
    :cond_3
    move v0, v1

    #@61
    .line 456
    goto :goto_0

    #@62
    .line 464
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
    .line 480
    :catch_0
    move-exception v6

    #@6a
    .line 481
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    #@6d
    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@70
    goto :goto_3

    #@71
    .line 475
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
