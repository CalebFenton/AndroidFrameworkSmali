.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I = null

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
.field private mCallForwardingEnabled:Z

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfLi:[B

.field mEfMWIS:[B

.field mEfPl:[B

.field mPnnHomeName:Ljava/lang/String;

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
.method private static synthetic -getcom_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->-com_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues:[I

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
    .line 170
    const/16 v0, 0x83

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 171
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
    .line 172
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
    .line 173
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
    .line 174
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
    .line 175
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
    .line 176
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
    .line 177
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
    .line 178
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
    .line 179
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
    .line 180
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
    .line 181
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
    .line 182
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
    .line 183
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
    .line 184
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
    .line 185
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
    .line 186
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
    .line 187
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
    .line 170
    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@393
    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    #@6
    .line 73
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@8
    .line 74
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@a
    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@c
    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@e
    .line 78
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@10
    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@12
    .line 81
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    #@14
    .line 82
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@16
    .line 86
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@18
    .line 88
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@1a
    .line 195
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@1c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@1e
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@21
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@23
    .line 197
    new-instance v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@25
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    #@28
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@2a
    .line 198
    new-instance v0, Lcom/android/internal/telephony/uicc/SpnOverride;

    #@2c
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    #@2f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@31
    .line 200
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@33
    .line 203
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@35
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@37
    const/16 v1, 0x15

    #@39
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3c
    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    const/16 v1, 0x1f

    #@40
    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    #@43
    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    #@46
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@48
    invoke-virtual {v0, p0, v4, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@4b
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@4d
    const/16 v1, 0x23

    #@4f
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    #@52
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v1, "SIMRecords X ctor this="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@69
    .line 192
    return-void
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    #@0
    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@5
    .line 1363
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method private getExtFromEf(I)I
    .locals 3
    .param p1, "ef"    # I

    #@0
    .prologue
    .line 295
    packed-switch p1, :pswitch_data_0

    #@3
    .line 305
    const/16 v0, 0x6f4a

    #@5
    .line 307
    .local v0, "ext":I
    :goto_0
    return v0

    #@6
    .line 298
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
    .line 299
    const/16 v0, 0x6f4e

    #@12
    .restart local v0    # "ext":I
    goto :goto_0

    #@13
    .line 301
    .end local v0    # "ext":I
    :cond_0
    const/16 v0, 0x6f4a

    #@15
    .restart local v0    # "ext":I
    goto :goto_0

    #@16
    .line 295
    :pswitch_data_0
    .packed-switch 0x6f40
        :pswitch_0
    .end packed-switch
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/16 v5, 0xc

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 1707
    if-eqz p1, :cond_2

    #@6
    .line 1710
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@8
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 1711
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@e
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@10
    if-ne v1, v2, :cond_1

    #@12
    .line 1716
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@14
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@16
    .line 1717
    return-void

    #@17
    .line 1712
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@19
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1b
    if-eq v1, v2, :cond_0

    #@1d
    .line 1713
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@1f
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@21
    if-eq v1, v2, :cond_0

    #@23
    .line 1719
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@25
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@27
    .line 1723
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->-getcom_android_internal_telephony_uicc_SIMRecords$GetSpnFsmStateSwitchesValues()[I

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@2d
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    #@30
    move-result v2

    #@31
    aget v1, v1, v2

    #@33
    packed-switch v1, :pswitch_data_0

    #@36
    .line 1791
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@38
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@3a
    .line 1704
    :goto_0
    return-void

    #@3b
    .line 1725
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@3e
    .line 1727
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@40
    .line 1728
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@43
    move-result-object v2

    #@44
    .line 1727
    const/16 v3, 0x6f46

    #@46
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@49
    .line 1729
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4f
    .line 1731
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@53
    goto :goto_0

    #@54
    .line 1734
    :pswitch_1
    if-eqz p2, :cond_3

    #@56
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@58
    if-nez v1, :cond_3

    #@5a
    .line 1735
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@5c
    check-cast v0, [B

    #@5e
    .line 1736
    .local v0, "data":[B
    aget-byte v1, v0, v4

    #@60
    and-int/lit16 v1, v1, 0xff

    #@62
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@64
    .line 1738
    array-length v1, v0

    #@65
    add-int/lit8 v1, v1, -0x1

    #@67
    const/4 v2, 0x1

    #@68
    .line 1737
    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@6f
    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v2, "Load EF_SPN: "

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    .line 1741
    const-string/jumbo v2, " spnDisplayCondition: "

    #@86
    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    .line 1741
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@8c
    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@97
    .line 1742
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@99
    .line 1743
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9b
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@9e
    move-result v2

    #@9f
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    .line 1742
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@a6
    .line 1745
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@a8
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@aa
    goto :goto_0

    #@ab
    .line 1747
    .end local v0    # "data":[B
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@ad
    .line 1748
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@b0
    move-result-object v2

    #@b1
    .line 1747
    const/16 v3, 0x6f14

    #@b3
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@b6
    .line 1749
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@b8
    add-int/lit8 v1, v1, 0x1

    #@ba
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@bc
    .line 1751
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@be
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@c0
    .line 1755
    const/4 v1, -0x1

    #@c1
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@c3
    goto/16 :goto_0

    #@c5
    .line 1759
    :pswitch_2
    if-eqz p2, :cond_4

    #@c7
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c9
    if-nez v1, :cond_4

    #@cb
    .line 1760
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@cd
    check-cast v0, [B

    #@cf
    .line 1761
    .restart local v0    # "data":[B
    array-length v1, v0

    #@d0
    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@d7
    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v2, "Load EF_SPN_CPHS: "

    #@df
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@e6
    move-result-object v2

    #@e7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v1

    #@ef
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@f2
    .line 1764
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@f4
    .line 1765
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@f6
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@f9
    move-result v2

    #@fa
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@fd
    move-result-object v3

    #@fe
    .line 1764
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@101
    .line 1767
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@103
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@105
    goto/16 :goto_0

    #@107
    .line 1769
    .end local v0    # "data":[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@109
    .line 1770
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@10c
    move-result-object v2

    #@10d
    const/16 v3, 0x6f18

    #@10f
    .line 1769
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@112
    .line 1771
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@114
    add-int/lit8 v1, v1, 0x1

    #@116
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@118
    .line 1773
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@11a
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@11c
    goto/16 :goto_0

    #@11e
    .line 1777
    :pswitch_3
    if-eqz p2, :cond_5

    #@120
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@122
    if-nez v1, :cond_5

    #@124
    .line 1778
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@126
    check-cast v0, [B

    #@128
    .line 1779
    .restart local v0    # "data":[B
    array-length v1, v0

    #@129
    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@12c
    move-result-object v1

    #@12d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@130
    .line 1781
    new-instance v1, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v2, "Load EF_SPN_SHORT_CPHS: "

    #@138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@13f
    move-result-object v2

    #@140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@14b
    .line 1782
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@14d
    .line 1783
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14f
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@152
    move-result v2

    #@153
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    #@156
    move-result-object v3

    #@157
    .line 1782
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@15a
    .line 1788
    .end local v0    # "data":[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@15c
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@15e
    goto/16 :goto_0

    #@160
    .line 1785
    :cond_5
    const-string/jumbo v1, "No SPN loaded in either CHPS or 3GPP"

    #@163
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@166
    goto :goto_1

    #@167
    .line 1723
    nop

    #@168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 5
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1885
    array-length v2, p1

    #@2
    div-int/lit8 v1, v2, 0x2

    #@4
    .line 1889
    .local v1, "usedCspGroups":I
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@6
    .line 1890
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@9
    .line 1891
    mul-int/lit8 v2, v0, 0x2

    #@b
    aget-byte v2, p1, v2

    #@d
    const/16 v3, -0x40

    #@f
    if-ne v2, v3, :cond_1

    #@11
    .line 1892
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
    .line 1893
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
    .line 1897
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@3c
    .line 1905
    :goto_1
    return-void

    #@3d
    .line 1899
    :cond_0
    const/4 v2, 0x0

    #@3e
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@40
    .line 1902
    const-string/jumbo v2, "[CSP] Set Automatic Network Selection"

    #@43
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@46
    .line 1903
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    #@48
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4b
    goto :goto_1

    #@4c
    .line 1890
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1909
    :cond_2
    const-string/jumbo v2, "[CSP] Value Added Service Group (0xC0), not found!"

    #@52
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@55
    .line 1878
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
    .line 1275
    sparse-switch p1, :sswitch_data_0

    #@6
    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@8
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@b
    .line 1319
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@e
    .line 1274
    :goto_0
    return-void

    #@f
    .line 1277
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@15
    .line 1278
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@17
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@19
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@1c
    .line 1279
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@1e
    const/4 v2, 0x6

    #@1f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@22
    move-result-object v2

    #@23
    .line 1278
    const/16 v3, 0x6fc7

    #@25
    const/16 v4, 0x6fc8

    #@27
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1282
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@31
    .line 1283
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@33
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@35
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@38
    .line 1284
    const/16 v1, 0xb

    #@3a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@3d
    move-result-object v1

    #@3e
    .line 1283
    const/16 v2, 0x6f17

    #@40
    const/16 v3, 0x6f4a

    #@42
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@45
    goto :goto_0

    #@46
    .line 1287
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@48
    add-int/lit8 v0, v0, 0x1

    #@4a
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@4c
    .line 1288
    const-string/jumbo v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@52
    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@54
    .line 1290
    const/16 v1, 0x21

    #@56
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@59
    move-result-object v1

    #@5a
    .line 1289
    const/16 v2, 0x6f15

    #@5c
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@5f
    goto :goto_0

    #@60
    .line 1293
    :sswitch_3
    const-string/jumbo v0, "SIM Refresh called for EF_FDN"

    #@63
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@66
    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@68
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    #@6b
    goto :goto_0

    #@6c
    .line 1297
    :sswitch_4
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@6e
    add-int/lit8 v0, v0, 0x1

    #@70
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@72
    .line 1298
    const-string/jumbo v0, "SIM Refresh called for EF_MSISDN"

    #@75
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@78
    .line 1299
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
    .line 1300
    const/16 v2, 0xa

    #@85
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@88
    move-result-object v2

    #@89
    .line 1299
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@8c
    goto :goto_0

    #@8d
    .line 1303
    :sswitch_5
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@8f
    add-int/lit8 v0, v0, 0x1

    #@91
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@93
    .line 1304
    const-string/jumbo v0, "SIM Refresh called for EF_CFIS"

    #@96
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@99
    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@9b
    .line 1306
    const/16 v1, 0x20

    #@9d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@a0
    move-result-object v1

    #@a1
    .line 1305
    const/16 v2, 0x6fcb

    #@a3
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@a6
    goto/16 :goto_0

    #@a8
    .line 1309
    :sswitch_6
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@aa
    add-int/lit8 v0, v0, 0x1

    #@ac
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@ae
    .line 1310
    const-string/jumbo v0, "SIM Refresh called for EF_CFF_CPHS"

    #@b1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b4
    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@b6
    .line 1312
    const/16 v1, 0x18

    #@b8
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@bb
    move-result-object v1

    #@bc
    .line 1311
    const/16 v2, 0x6f13

    #@be
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@c1
    goto/16 :goto_0

    #@c3
    .line 1275
    nop

    #@c4
    :sswitch_data_0
    .sparse-switch
        0x6f13 -> :sswitch_6
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
    .line 1325
    if-nez p1, :cond_0

    #@2
    .line 1326
    const-string/jumbo v0, "handleSimRefresh received without input"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8
    .line 1327
    return-void

    #@9
    .line 1330
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1331
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
    .line 1336
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    #@1d
    packed-switch v0, :pswitch_data_0

    #@20
    .line 1352
    const-string/jumbo v0, "handleSimRefresh with unknown operation"

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@26
    .line 1324
    :goto_0
    return-void

    #@27
    .line 1333
    :cond_2
    return-void

    #@28
    .line 1338
    :pswitch_0
    const-string/jumbo v0, "handleSimRefresh with SIM_FILE_UPDATED"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@2e
    .line 1339
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    #@33
    goto :goto_0

    #@34
    .line 1342
    :pswitch_1
    const-string/jumbo v0, "handleSimRefresh with SIM_REFRESH_INIT"

    #@37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3a
    .line 1344
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    #@3d
    goto :goto_0

    #@3e
    .line 1348
    :pswitch_2
    const-string/jumbo v0, "handleSimRefresh with SIM_REFRESH_RESET"

    #@41
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@44
    goto :goto_0

    #@45
    .line 1336
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
    .line 1367
    aget-byte v3, p1, v6

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1368
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
    .line 1372
    :cond_0
    aget-byte v3, p1, v6

    #@23
    const/4 v4, 0x3

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 1373
    array-length v1, p1

    #@27
    .line 1377
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    #@29
    new-array v2, v3, [B

    #@2b
    .line 1378
    .local v2, "pdu":[B
    add-int/lit8 v3, v1, -0x1

    #@2d
    const/4 v4, 0x1

    #@2e
    invoke-static {p1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 1379
    const-string/jumbo v3, "3gpp"

    #@34
    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@37
    move-result-object v0

    #@38
    .line 1381
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    #@3b
    .line 1366
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
    .line 1387
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 1389
    .local v1, "count":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@9
    .line 1390
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [B

    #@f
    .line 1392
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 1393
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
    .line 1398
    :cond_0
    aget-byte v6, v0, v9

    #@3c
    const/4 v7, 0x3

    #@3d
    if-ne v6, v7, :cond_1

    #@3f
    .line 1399
    array-length v4, v0

    #@40
    .line 1403
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    #@42
    new-array v5, v6, [B

    #@44
    .line 1404
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    #@46
    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 1405
    const-string/jumbo v6, "3gpp"

    #@4c
    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@4f
    move-result-object v3

    #@50
    .line 1407
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    #@53
    .line 1412
    aput-byte v10, v0, v9

    #@55
    .line 1389
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_0

    #@58
    .line 1386
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
    .line 1840
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@4
    if-nez v2, :cond_0

    #@6
    return v1

    #@7
    .line 1841
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
    .line 1660
    if-nez p1, :cond_0

    #@4
    return v3

    #@5
    .line 1662
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
    .line 1663
    return v4

    #@10
    .line 1666
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@12
    if-eqz v2, :cond_3

    #@14
    .line 1667
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
    .line 1668
    .local v0, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 1669
    return v4

    #@2d
    .line 1673
    .end local v0    # "spdiNet":Ljava/lang/String;
    .end local v1    # "spdiNet$iterator":Ljava/util/Iterator;
    :cond_3
    return v3
.end method

.method private loadEfLiAndEfPl()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v3, 0x64

    #@3
    .line 1517
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
    .line 1518
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@10
    .line 1519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@12
    .line 1520
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    #@14
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;)V

    #@17
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1a
    move-result-object v1

    #@1b
    .line 1519
    const/16 v2, 0x6f05

    #@1d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@20
    .line 1521
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@26
    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@28
    .line 1524
    new-instance v1, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    #@2a
    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;)V

    #@2d
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v1

    #@31
    .line 1523
    const/16 v2, 0x2f05

    #@33
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@36
    .line 1525
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@38
    add-int/lit8 v0, v0, 0x1

    #@3a
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3c
    .line 1516
    :cond_0
    return-void
.end method

.method private onLocked()V
    .locals 1

    #@0
    .prologue
    .line 1512
    const-string/jumbo v0, "only fetch EF_LI and EF_PL in lock state"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6
    .line 1513
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    #@9
    .line 1511
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .param p1, "data"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1802
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    #@3
    array-length v5, p1

    #@4
    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@7
    .line 1804
    .local v3, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    #@8
    .line 1806
    .local v2, "plmnEntries":[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1808
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@11
    move-result v5

    #@12
    const/16 v6, 0xa3

    #@14
    if-ne v5, v6, :cond_0

    #@16
    .line 1809
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
    .line 1812
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
    .line 1813
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@30
    move-result-object v2

    #@31
    .line 1818
    .end local v2    # "plmnEntries":[B
    :cond_1
    if-nez v2, :cond_3

    #@33
    .line 1819
    return-void

    #@34
    .line 1806
    .restart local v2    # "plmnEntries":[B
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@37
    goto :goto_0

    #@38
    .line 1822
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
    .line 1824
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
    .line 1826
    const/4 v5, 0x3

    #@49
    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 1829
    .local v1, "plmnCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v5

    #@51
    const/4 v6, 0x5

    #@52
    if-lt v5, v6, :cond_4

    #@54
    .line 1830
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
    .line 1831
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 1824
    :cond_4
    add-int/lit8 v0, v0, 0x3

    #@72
    goto :goto_1

    #@73
    .line 1801
    .end local v1    # "plmnCode":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    #@11
    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@13
    .line 1493
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
    .line 1492
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@20
    .line 1489
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1500
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    #@b
    .line 1501
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@13
    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@15
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@1b
    .line 1498
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
    .line 469
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
    .line 217
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
    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@19
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    #@1c
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@1e
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    #@21
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@23
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@26
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@28
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    #@2b
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    #@2e
    .line 224
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    #@31
    .line 216
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1914
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
    .line 1915
    const-string/jumbo v0, " extends:"

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 1916
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@20
    .line 1917
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
    .line 1918
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
    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v1, " mCallForwardingEnabled="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 1920
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
    .line 1921
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
    .line 1922
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
    .line 1923
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
    .line 1924
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
    .line 1925
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
    .line 1926
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
    .line 1927
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
    .line 1928
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
    .line 1929
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
    .line 1930
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
    .line 1931
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
    .line 1932
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
    .line 1933
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@1c3
    .line 1913
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
    .line 1530
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@5
    .line 1532
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
    .line 1534
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
    .line 1535
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@34
    .line 1537
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
    .line 1538
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@46
    .line 1542
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
    .line 1543
    const/16 v2, 0xa

    #@53
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@56
    move-result-object v2

    #@57
    .line 1542
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@5a
    .line 1544
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@5c
    add-int/lit8 v0, v0, 0x1

    #@5e
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@60
    .line 1547
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
    .line 1548
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@6e
    add-int/lit8 v0, v0, 0x1

    #@70
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@72
    .line 1550
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
    .line 1551
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@81
    add-int/lit8 v0, v0, 0x1

    #@83
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@85
    .line 1554
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
    .line 1555
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@93
    add-int/lit8 v0, v0, 0x1

    #@95
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@97
    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@99
    .line 1564
    const/16 v1, 0x8

    #@9b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@9e
    move-result-object v1

    #@9f
    .line 1563
    const/16 v2, 0x6f11

    #@a1
    .line 1562
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@a4
    .line 1565
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@a6
    add-int/lit8 v0, v0, 0x1

    #@a8
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@aa
    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@ac
    const/16 v1, 0x20

    #@ae
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@b1
    move-result-object v1

    #@b2
    const/16 v2, 0x6fcb

    #@b4
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@b7
    .line 1570
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@b9
    add-int/lit8 v0, v0, 0x1

    #@bb
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@bd
    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@bf
    const/16 v1, 0x18

    #@c1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@c4
    move-result-object v1

    #@c5
    const/16 v2, 0x6f13

    #@c7
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@ca
    .line 1572
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@cc
    add-int/lit8 v0, v0, 0x1

    #@ce
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@d0
    .line 1575
    const/4 v0, 0x0

    #@d1
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    #@d4
    .line 1577
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@d6
    const/16 v1, 0xd

    #@d8
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@db
    move-result-object v1

    #@dc
    const/16 v2, 0x6fcd

    #@de
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@e1
    .line 1578
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@e3
    add-int/lit8 v0, v0, 0x1

    #@e5
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@e7
    .line 1580
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@e9
    const/16 v1, 0xf

    #@eb
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@ee
    move-result-object v1

    #@ef
    const/16 v2, 0x6fc5

    #@f1
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@f4
    .line 1581
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@f6
    add-int/lit8 v0, v0, 0x1

    #@f8
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@fa
    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@fc
    const/16 v1, 0x11

    #@fe
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@101
    move-result-object v1

    #@102
    const/16 v2, 0x6f38

    #@104
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@107
    .line 1584
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@109
    add-int/lit8 v0, v0, 0x1

    #@10b
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@10d
    .line 1586
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@10f
    const/16 v1, 0x1a

    #@111
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@114
    move-result-object v1

    #@115
    const/16 v2, 0x6f16

    #@117
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@11a
    .line 1587
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@11c
    add-int/lit8 v0, v0, 0x1

    #@11e
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@120
    .line 1589
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@122
    const/16 v1, 0x21

    #@124
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@127
    move-result-object v1

    #@128
    const/16 v2, 0x6f15

    #@12a
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@12d
    .line 1590
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@12f
    add-int/lit8 v0, v0, 0x1

    #@131
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@133
    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@135
    const/16 v1, 0x22

    #@137
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@13a
    move-result-object v1

    #@13b
    const/16 v2, 0x6f3e

    #@13d
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@140
    .line 1593
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@142
    add-int/lit8 v0, v0, 0x1

    #@144
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@146
    .line 1595
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@148
    const/16 v1, 0x24

    #@14a
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@14d
    move-result-object v1

    #@14e
    const/16 v2, 0x6f3f

    #@150
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    #@153
    .line 1596
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@155
    add-int/lit8 v0, v0, 0x1

    #@157
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@159
    .line 1598
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    #@15c
    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    #@15e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@161
    const-string/jumbo v1, "fetchSimRecords "

    #@164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v0

    #@168
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v0

    #@16e
    const-string/jumbo v1, " requested: "

    #@171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v0

    #@175
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v0

    #@17b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v0

    #@17f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@182
    .line 1529
    return-void
.end method

.method protected finalize()V
    .locals 1

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "finalized"

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6
    .line 228
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1633
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
    .line 1634
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
    .line 1636
    const/4 v0, 0x2

    #@19
    .line 1653
    .local v0, "rule":I
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 1637
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
    .line 1639
    :cond_2
    const/4 v0, 0x2

    #@2a
    .line 1637
    .restart local v0    # "rule":I
    goto :goto_0

    #@2b
    .line 1640
    .end local v0    # "rule":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 1641
    const/4 v0, 0x1

    #@32
    .line 1642
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@34
    and-int/lit8 v1, v1, 0x1

    #@36
    const/4 v2, 0x1

    #@37
    if-ne v1, v2, :cond_0

    #@39
    .line 1644
    const/4 v0, 0x3

    #@3a
    goto :goto_0

    #@3b
    .line 1647
    .end local v0    # "rule":I
    :cond_4
    const/4 v0, 0x2

    #@3c
    .line 1648
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@3e
    and-int/lit8 v1, v1, 0x2

    #@40
    if-nez v1, :cond_0

    #@42
    .line 1650
    const/4 v0, 0x3

    #@43
    goto :goto_0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 275
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
    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 597
    const-string/jumbo v0, "getOperatorNumeric: IMSI == null"

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c
    .line 598
    return-object v2

    #@d
    .line 600
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
    .line 601
    :cond_1
    const-string/jumbo v0, "getSIMOperatorNumeric: bad mncLength"

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1c
    .line 602
    return-object v2

    #@1d
    .line 607
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
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@2
    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    #@0
    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@2
    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
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
    .line 473
    const/4 v2, 0x0

    #@2
    .line 474
    .local v2, "voiceMailWaiting":Z
    const/4 v0, 0x0

    #@3
    .line 475
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@5
    if-eqz v3, :cond_3

    #@7
    .line 479
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
    .line 480
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@12
    const/4 v4, 0x1

    #@13
    aget-byte v3, v3, v4

    #@15
    and-int/lit16 v0, v3, 0xff

    #@17
    .line 482
    if-eqz v2, :cond_0

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 484
    const/4 v0, -0x1

    #@1c
    .line 486
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
    .line 500
    :cond_1
    :goto_1
    return v0

    #@34
    .line 479
    :cond_2
    const/4 v2, 0x0

    #@35
    goto :goto_0

    #@36
    .line 487
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@38
    if-eqz v3, :cond_1

    #@3a
    .line 489
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@3c
    aget-byte v3, v3, v4

    #@3e
    and-int/lit8 v1, v3, 0xf

    #@40
    .line 492
    .local v1, "indicator":I
    const/16 v3, 0xa

    #@42
    if-ne v1, v3, :cond_5

    #@44
    .line 494
    const/4 v0, -0x1

    #@45
    .line 498
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
    .line 495
    :cond_5
    const/4 v3, 0x5

    #@5e
    if-ne v1, v3, :cond_4

    #@60
    .line 496
    const/4 v0, 0x0

    #@61
    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 618
    const/4 v14, 0x0

    #@1
    .line 620
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
    .line 621
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
    .line 622
    const-string/jumbo v4, " while being destroyed. Ignoring."

    #@36
    .line 621
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
    .line 623
    return-void

    #@44
    .line 626
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    #@46
    iget v2, v0, Landroid/os/Message;->what:I

    #@48
    packed-switch v2, :pswitch_data_0

    #@4b
    .line 1239
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 1246
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    #@50
    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@53
    .line 612
    :cond_2
    :goto_1
    return-void

    #@54
    .line 628
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1241
    :catch_0
    move-exception v12

    #@59
    .line 1243
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
    .line 1246
    if-eqz v14, :cond_2

    #@63
    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@66
    goto :goto_1

    #@67
    .line 632
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
    .line 1244
    :catchall_0
    move-exception v2

    #@6c
    .line 1246
    if-eqz v14, :cond_3

    #@6e
    .line 1247
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    #@71
    .line 1244
    :cond_3
    throw v2

    #@72
    .line 637
    :pswitch_3
    const/4 v14, 0x1

    #@73
    .line 639
    :try_start_4
    move-object/from16 v0, p1

    #@75
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@77
    check-cast v9, Landroid/os/AsyncResult;

    #@79
    .line 641
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@7b
    if-eqz v2, :cond_4

    #@7d
    .line 642
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
    .line 646
    :cond_4
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9b
    check-cast v2, Ljava/lang/String;

    #@9d
    move-object/from16 v0, p0

    #@9f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a1
    .line 650
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
    .line 651
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
    .line 652
    const/4 v2, 0x0

    #@dc
    move-object/from16 v0, p0

    #@de
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@e0
    .line 655
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
    .line 656
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
    .line 658
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
    .line 659
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
    .line 660
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
    .line 661
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
    .line 662
    .local v17, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15a
    move-result v6

    #@15b
    if-eqz v6, :cond_b

    #@15d
    .line 663
    const/4 v2, 0x3

    #@15e
    move-object/from16 v0, p0

    #@160
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@162
    .line 664
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
    .line 670
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
    .line 674
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
    .line 675
    .local v16, "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@196
    move-result v2

    #@197
    move-object/from16 v0, p0

    #@199
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@19b
    .line 676
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
    .line 683
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
    .line 684
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
    .line 686
    move-object/from16 v0, p0

    #@1ef
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@1f1
    .line 687
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
    .line 686
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@204
    .line 689
    :cond_a
    move-object/from16 v0, p0

    #@206
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    #@208
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@20b
    goto/16 :goto_0

    #@20d
    .line 661
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    #@20f
    goto/16 :goto_2

    #@211
    .line 677
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v11

    #@212
    .line 678
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@213
    move-object/from16 v0, p0

    #@215
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@217
    .line 679
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
    .line 694
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :pswitch_4
    const/4 v14, 0x1

    #@236
    .line 696
    move-object/from16 v0, p1

    #@238
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23a
    check-cast v9, Landroid/os/AsyncResult;

    #@23c
    .line 697
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@23e
    check-cast v10, [B

    #@240
    .line 699
    .local v10, "data":[B
    const/4 v15, 0x0

    #@241
    .line 700
    .local v15, "isValidMbdn":Z
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@243
    if-nez v2, :cond_c

    #@245
    .line 702
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
    .line 705
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
    .line 708
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
    .line 709
    const-string/jumbo v2, "Got valid mailbox number for MBDN"

    #@27c
    move-object/from16 v0, p0

    #@27e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@281
    .line 710
    const/4 v15, 0x1

    #@282
    .line 715
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
    .line 717
    if-eqz v15, :cond_d

    #@28e
    .line 719
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@290
    move-object/from16 v0, p0

    #@292
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@294
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@297
    .line 720
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
    .line 719
    const/16 v6, 0x6fc7

    #@2a4
    const/16 v7, 0x6fc8

    #@2a6
    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2a9
    goto/16 :goto_0

    #@2ab
    .line 724
    :cond_d
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2b1
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@2b4
    .line 726
    const/16 v4, 0xb

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@2bb
    move-result-object v4

    #@2bc
    .line 724
    const/16 v5, 0x6f17

    #@2be
    .line 725
    const/16 v6, 0x6f4a

    #@2c0
    const/4 v7, 0x1

    #@2c1
    .line 724
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@2c4
    goto/16 :goto_0

    #@2c6
    .line 737
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
    .line 738
    const/4 v2, 0x0

    #@2cc
    move-object/from16 v0, p0

    #@2ce
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@2d0
    .line 739
    const/4 v14, 0x1

    #@2d1
    .line 741
    move-object/from16 v0, p1

    #@2d3
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2d5
    check-cast v9, Landroid/os/AsyncResult;

    #@2d7
    .line 743
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@2d9
    if-eqz v2, :cond_f

    #@2db
    .line 745
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
    .line 746
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
    .line 745
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
    .line 751
    move-object/from16 v0, p1

    #@301
    iget v2, v0, Landroid/os/Message;->what:I

    #@303
    const/4 v4, 0x6

    #@304
    if-ne v2, v4, :cond_1

    #@306
    .line 755
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
    .line 756
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@312
    move-object/from16 v0, p0

    #@314
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@316
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@319
    .line 758
    const/16 v4, 0xb

    #@31b
    move-object/from16 v0, p0

    #@31d
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@320
    move-result-object v4

    #@321
    .line 757
    const/16 v5, 0x6f17

    #@323
    const/16 v6, 0x6f4a

    #@325
    const/4 v7, 0x1

    #@326
    .line 756
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@329
    goto/16 :goto_0

    #@32b
    .line 746
    :cond_e
    const-string/jumbo v2, "[MBDN]"

    #@32e
    goto :goto_4

    #@32f
    .line 763
    :cond_f
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@331
    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@333
    .line 765
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
    .line 766
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
    .line 765
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
    .line 768
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
    .line 772
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
    .line 773
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@374
    move-object/from16 v0, p0

    #@376
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@378
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@37b
    .line 775
    const/16 v4, 0xb

    #@37d
    move-object/from16 v0, p0

    #@37f
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@382
    move-result-object v4

    #@383
    .line 774
    const/16 v5, 0x6f17

    #@385
    const/16 v6, 0x6f4a

    #@387
    const/4 v7, 0x1

    #@388
    .line 773
    invoke-virtual {v2, v5, v6, v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    #@38b
    goto/16 :goto_0

    #@38d
    .line 766
    :cond_10
    const-string/jumbo v2, " EF[MBDN]"

    #@390
    goto :goto_5

    #@391
    .line 780
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@394
    move-result-object v2

    #@395
    move-object/from16 v0, p0

    #@397
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@399
    .line 781
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
    .line 785
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    const/4 v14, 0x1

    #@3a4
    .line 787
    move-object/from16 v0, p1

    #@3a6
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3a8
    check-cast v9, Landroid/os/AsyncResult;

    #@3aa
    .line 789
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3ac
    if-eqz v2, :cond_12

    #@3ae
    .line 790
    const-string/jumbo v2, "Invalid or missing EF[MSISDN]"

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3b6
    goto/16 :goto_0

    #@3b8
    .line 794
    :cond_12
    iget-object v3, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@3ba
    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@3bc
    .line 796
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    #@3bf
    move-result-object v2

    #@3c0
    move-object/from16 v0, p0

    #@3c2
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@3c4
    .line 797
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    #@3c7
    move-result-object v2

    #@3c8
    move-object/from16 v0, p0

    #@3ca
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@3cc
    .line 799
    const-string/jumbo v2, "MSISDN: xxxxxxx"

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3d4
    goto/16 :goto_0

    #@3d6
    .line 803
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    const/4 v14, 0x0

    #@3d7
    .line 804
    move-object/from16 v0, p1

    #@3d9
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3db
    check-cast v9, Landroid/os/AsyncResult;

    #@3dd
    .line 806
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3df
    if-nez v2, :cond_13

    #@3e1
    .line 807
    move-object/from16 v0, p0

    #@3e3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@3e5
    move-object/from16 v0, p0

    #@3e7
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@3e9
    .line 808
    move-object/from16 v0, p0

    #@3eb
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@3ed
    move-object/from16 v0, p0

    #@3ef
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    #@3f1
    .line 809
    const-string/jumbo v2, "Success to update EF[MSISDN]"

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3f9
    .line 812
    :cond_13
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3fb
    if-eqz v2, :cond_1

    #@3fd
    .line 813
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3ff
    check-cast v2, Landroid/os/Message;

    #@401
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@404
    move-result-object v2

    #@405
    .line 814
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@407
    .line 813
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@409
    .line 815
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@40b
    check-cast v2, Landroid/os/Message;

    #@40d
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@410
    goto/16 :goto_0

    #@412
    .line 820
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    const/4 v14, 0x1

    #@413
    .line 822
    move-object/from16 v0, p1

    #@415
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@417
    check-cast v9, Landroid/os/AsyncResult;

    #@419
    .line 823
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@41b
    check-cast v10, [B

    #@41d
    .line 825
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
    .line 827
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@43c
    if-eqz v2, :cond_14

    #@43e
    .line 828
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
    .line 829
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@44c
    .line 828
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
    .line 833
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
    .line 834
    const-string/jumbo v2, "SIMRecords: Uninitialized record MWIS"

    #@467
    move-object/from16 v0, p0

    #@469
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@46c
    goto/16 :goto_0

    #@46e
    .line 838
    :cond_15
    move-object/from16 v0, p0

    #@470
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@472
    goto/16 :goto_0

    #@474
    .line 842
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_9
    const/4 v14, 0x1

    #@475
    .line 844
    move-object/from16 v0, p1

    #@477
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@479
    check-cast v9, Landroid/os/AsyncResult;

    #@47b
    .line 845
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@47d
    check-cast v10, [B

    #@47f
    .line 847
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
    .line 849
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@49e
    if-eqz v2, :cond_16

    #@4a0
    .line 850
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
    .line 851
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4ae
    .line 850
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
    .line 855
    :cond_16
    move-object/from16 v0, p0

    #@4bf
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@4c1
    goto/16 :goto_0

    #@4c3
    .line 859
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_a
    const/4 v14, 0x1

    #@4c4
    .line 861
    move-object/from16 v0, p1

    #@4c6
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4c8
    check-cast v9, Landroid/os/AsyncResult;

    #@4ca
    .line 862
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@4cc
    check-cast v10, [B

    #@4ce
    .line 864
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4d0
    if-nez v2, :cond_1

    #@4d2
    .line 868
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
    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    #@4de
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e1
    const-string/jumbo v4, "iccid: "

    #@4e4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e7
    move-result-object v2

    #@4e8
    move-object/from16 v0, p0

    #@4ea
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    #@4ec
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ef
    move-result-object v2

    #@4f0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f3
    move-result-object v2

    #@4f4
    move-object/from16 v0, p0

    #@4f6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@4f9
    goto/16 :goto_0

    #@4fb
    .line 877
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_b
    const/4 v14, 0x1

    #@4fc
    .line 879
    :try_start_7
    move-object/from16 v0, p1

    #@4fe
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@500
    check-cast v9, Landroid/os/AsyncResult;

    #@502
    .line 880
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@504
    check-cast v10, [B

    #@506
    .line 882
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@508
    if-eqz v2, :cond_1e

    #@50a
    .line 906
    :try_start_8
    move-object/from16 v0, p0

    #@50c
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@50e
    const/4 v4, -0x1

    #@50f
    if-ne v2, v4, :cond_1a

    #@511
    .line 907
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    #@513
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@515
    if-eqz v2, :cond_18

    #@517
    move-object/from16 v0, p0

    #@519
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@51b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@51e
    move-result v2

    #@51f
    const/4 v4, 0x6

    #@520
    if-lt v2, v4, :cond_18

    #@522
    .line 908
    move-object/from16 v0, p0

    #@524
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@526
    const/4 v4, 0x0

    #@527
    const/4 v5, 0x6

    #@528
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52b
    move-result-object v18

    #@52c
    .line 909
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@52e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@531
    const-string/jumbo v4, "mccmncCode="

    #@534
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@537
    move-result-object v2

    #@538
    move-object/from16 v0, v18

    #@53a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53d
    move-result-object v2

    #@53e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@541
    move-result-object v2

    #@542
    move-object/from16 v0, p0

    #@544
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@547
    .line 910
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@549
    const/4 v2, 0x0

    #@54a
    array-length v5, v4

    #@54b
    :goto_7
    if-ge v2, v5, :cond_18

    #@54d
    aget-object v17, v4, v2

    #@54f
    .line 911
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@552
    move-result v6

    #@553
    if-eqz v6, :cond_1b

    #@555
    .line 912
    const/4 v2, 0x3

    #@556
    move-object/from16 v0, p0

    #@558
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@55a
    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    #@55c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@55f
    const-string/jumbo v4, "setting6 mMncLength="

    #@562
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@565
    move-result-object v2

    #@566
    move-object/from16 v0, p0

    #@568
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@56a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56d
    move-result-object v2

    #@56e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@571
    move-result-object v2

    #@572
    move-object/from16 v0, p0

    #@574
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@577
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    #@579
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@57b
    if-nez v2, :cond_1c

    #@57d
    .line 920
    :goto_8
    move-object/from16 v0, p0

    #@57f
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@581
    if-eqz v2, :cond_1d

    #@583
    .line 922
    :try_start_9
    move-object/from16 v0, p0

    #@585
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@587
    const/4 v4, 0x0

    #@588
    const/4 v5, 0x3

    #@589
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@58c
    move-result-object v2

    #@58d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@590
    move-result v16

    #@591
    .line 924
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@594
    move-result v2

    #@595
    move-object/from16 v0, p0

    #@597
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@599
    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    #@59b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@59e
    const-string/jumbo v4, "setting7 mMncLength="

    #@5a1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a4
    move-result-object v2

    #@5a5
    move-object/from16 v0, p0

    #@5a7
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5a9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ac
    move-result-object v2

    #@5ad
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b0
    move-result-object v2

    #@5b1
    move-object/from16 v0, p0

    #@5b3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5b6
    .line 936
    .end local v16    # "mcc":I
    :cond_19
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    #@5b8
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5ba
    if-eqz v2, :cond_1

    #@5bc
    move-object/from16 v0, p0

    #@5be
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5c0
    if-eqz v2, :cond_1

    #@5c2
    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    #@5c4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c7
    const-string/jumbo v4, "update mccmnc="

    #@5ca
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5cd
    move-result-object v2

    #@5ce
    move-object/from16 v0, p0

    #@5d0
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5d2
    move-object/from16 v0, p0

    #@5d4
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5d6
    add-int/lit8 v5, v5, 0x3

    #@5d8
    const/4 v6, 0x0

    #@5d9
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5dc
    move-result-object v4

    #@5dd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e0
    move-result-object v2

    #@5e1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e4
    move-result-object v2

    #@5e5
    move-object/from16 v0, p0

    #@5e7
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@5ea
    .line 940
    move-object/from16 v0, p0

    #@5ec
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@5ee
    .line 941
    move-object/from16 v0, p0

    #@5f0
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@5f2
    move-object/from16 v0, p0

    #@5f4
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@5f6
    add-int/lit8 v5, v5, 0x3

    #@5f8
    const/4 v6, 0x0

    #@5f9
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5fc
    move-result-object v4

    #@5fd
    const/4 v5, 0x0

    #@5fe
    .line 940
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@601
    goto/16 :goto_0

    #@603
    .line 906
    :cond_1a
    move-object/from16 v0, p0

    #@605
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@607
    if-eqz v2, :cond_17

    #@609
    .line 907
    move-object/from16 v0, p0

    #@60b
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@60d
    const/4 v4, 0x2

    #@60e
    if-ne v2, v4, :cond_18

    #@610
    goto/16 :goto_6

    #@612
    .line 910
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    #@614
    goto/16 :goto_7

    #@616
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    #@618
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@61a
    const/4 v4, -0x1

    #@61b
    if-ne v2, v4, :cond_19

    #@61d
    goto/16 :goto_8

    #@61f
    .line 926
    :catch_2
    move-exception v11

    #@620
    .line 927
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@621
    move-object/from16 v0, p0

    #@623
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@625
    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    #@627
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62a
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@62d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@630
    move-result-object v2

    #@631
    move-object/from16 v0, p0

    #@633
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@635
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@638
    move-result-object v2

    #@639
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63c
    move-result-object v2

    #@63d
    move-object/from16 v0, p0

    #@63f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@642
    goto/16 :goto_9

    #@644
    .line 932
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    const/4 v2, 0x0

    #@645
    move-object/from16 v0, p0

    #@647
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@649
    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    #@64b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64e
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@651
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@654
    move-result-object v2

    #@655
    move-object/from16 v0, p0

    #@657
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@659
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65c
    move-result-object v2

    #@65d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@660
    move-result-object v2

    #@661
    move-object/from16 v0, p0

    #@663
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@666
    goto/16 :goto_9

    #@668
    .line 886
    :cond_1e
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    #@66a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66d
    const-string/jumbo v4, "EF_AD: "

    #@670
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@673
    move-result-object v2

    #@674
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@677
    move-result-object v4

    #@678
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67b
    move-result-object v2

    #@67c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67f
    move-result-object v2

    #@680
    move-object/from16 v0, p0

    #@682
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@685
    .line 888
    array-length v2, v10

    #@686
    const/4 v4, 0x3

    #@687
    if-ge v2, v4, :cond_26

    #@689
    .line 889
    const-string/jumbo v2, "Corrupt AD data on SIM"

    #@68c
    move-object/from16 v0, p0

    #@68e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@691
    .line 906
    :try_start_c
    move-object/from16 v0, p0

    #@693
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@695
    const/4 v4, -0x1

    #@696
    if-ne v2, v4, :cond_22

    #@698
    .line 907
    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    #@69a
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@69c
    if-eqz v2, :cond_20

    #@69e
    move-object/from16 v0, p0

    #@6a0
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6a2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@6a5
    move-result v2

    #@6a6
    const/4 v4, 0x6

    #@6a7
    if-lt v2, v4, :cond_20

    #@6a9
    .line 908
    move-object/from16 v0, p0

    #@6ab
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@6ad
    const/4 v4, 0x0

    #@6ae
    const/4 v5, 0x6

    #@6af
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6b2
    move-result-object v18

    #@6b3
    .line 909
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@6b5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b8
    const-string/jumbo v4, "mccmncCode="

    #@6bb
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6be
    move-result-object v2

    #@6bf
    move-object/from16 v0, v18

    #@6c1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c4
    move-result-object v2

    #@6c5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c8
    move-result-object v2

    #@6c9
    move-object/from16 v0, p0

    #@6cb
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6ce
    .line 910
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@6d0
    const/4 v2, 0x0

    #@6d1
    array-length v5, v4

    #@6d2
    :goto_b
    if-ge v2, v5, :cond_20

    #@6d4
    aget-object v17, v4, v2

    #@6d6
    .line 911
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d9
    move-result v6

    #@6da
    if-eqz v6, :cond_23

    #@6dc
    .line 912
    const/4 v2, 0x3

    #@6dd
    move-object/from16 v0, p0

    #@6df
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6e1
    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    #@6e3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6e6
    const-string/jumbo v4, "setting6 mMncLength="

    #@6e9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6ec
    move-result-object v2

    #@6ed
    move-object/from16 v0, p0

    #@6ef
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@6f1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f4
    move-result-object v2

    #@6f5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f8
    move-result-object v2

    #@6f9
    move-object/from16 v0, p0

    #@6fb
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@6fe
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    #@700
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@702
    if-nez v2, :cond_24

    #@704
    .line 920
    :goto_c
    move-object/from16 v0, p0

    #@706
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@708
    if-eqz v2, :cond_25

    #@70a
    .line 922
    :try_start_d
    move-object/from16 v0, p0

    #@70c
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@70e
    const/4 v4, 0x0

    #@70f
    const/4 v5, 0x3

    #@710
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@713
    move-result-object v2

    #@714
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@717
    move-result v16

    #@718
    .line 924
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@71b
    move-result v2

    #@71c
    move-object/from16 v0, p0

    #@71e
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@720
    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    #@722
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@725
    const-string/jumbo v4, "setting7 mMncLength="

    #@728
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72b
    move-result-object v2

    #@72c
    move-object/from16 v0, p0

    #@72e
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@730
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@733
    move-result-object v2

    #@734
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@737
    move-result-object v2

    #@738
    move-object/from16 v0, p0

    #@73a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@73d
    .line 936
    .end local v16    # "mcc":I
    :cond_21
    :goto_d
    :try_start_e
    move-object/from16 v0, p0

    #@73f
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@741
    if-eqz v2, :cond_1

    #@743
    move-object/from16 v0, p0

    #@745
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@747
    if-eqz v2, :cond_1

    #@749
    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    #@74b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@74e
    const-string/jumbo v4, "update mccmnc="

    #@751
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@754
    move-result-object v2

    #@755
    move-object/from16 v0, p0

    #@757
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@759
    move-object/from16 v0, p0

    #@75b
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@75d
    add-int/lit8 v5, v5, 0x3

    #@75f
    const/4 v6, 0x0

    #@760
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@763
    move-result-object v4

    #@764
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@767
    move-result-object v2

    #@768
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76b
    move-result-object v2

    #@76c
    move-object/from16 v0, p0

    #@76e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@771
    .line 940
    move-object/from16 v0, p0

    #@773
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@775
    .line 941
    move-object/from16 v0, p0

    #@777
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@779
    move-object/from16 v0, p0

    #@77b
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@77d
    add-int/lit8 v5, v5, 0x3

    #@77f
    const/4 v6, 0x0

    #@780
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@783
    move-result-object v4

    #@784
    const/4 v5, 0x0

    #@785
    .line 940
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@788
    goto/16 :goto_0

    #@78a
    .line 906
    :cond_22
    move-object/from16 v0, p0

    #@78c
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@78e
    if-eqz v2, :cond_1f

    #@790
    .line 907
    move-object/from16 v0, p0

    #@792
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@794
    const/4 v4, 0x2

    #@795
    if-ne v2, v4, :cond_20

    #@797
    goto/16 :goto_a

    #@799
    .line 910
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    #@79b
    goto/16 :goto_b

    #@79d
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    #@79f
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7a1
    const/4 v4, -0x1

    #@7a2
    if-ne v2, v4, :cond_21

    #@7a4
    goto/16 :goto_c

    #@7a6
    .line 926
    :catch_3
    move-exception v11

    #@7a7
    .line 927
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@7a8
    move-object/from16 v0, p0

    #@7aa
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7ac
    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    #@7ae
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7b1
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@7b4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b7
    move-result-object v2

    #@7b8
    move-object/from16 v0, p0

    #@7ba
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7bc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7bf
    move-result-object v2

    #@7c0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c3
    move-result-object v2

    #@7c4
    move-object/from16 v0, p0

    #@7c6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@7c9
    goto/16 :goto_d

    #@7cb
    .line 932
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    const/4 v2, 0x0

    #@7cc
    move-object/from16 v0, p0

    #@7ce
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7d0
    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7d5
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@7d8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7db
    move-result-object v2

    #@7dc
    move-object/from16 v0, p0

    #@7de
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7e0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e3
    move-result-object v2

    #@7e4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e7
    move-result-object v2

    #@7e8
    move-object/from16 v0, p0

    #@7ea
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@7ed
    goto/16 :goto_d

    #@7ef
    .line 893
    :cond_26
    :try_start_f
    array-length v2, v10

    #@7f0
    const/4 v4, 0x3

    #@7f1
    if-ne v2, v4, :cond_2e

    #@7f3
    .line 894
    const-string/jumbo v2, "MNC length not present in EF_AD"

    #@7f6
    move-object/from16 v0, p0

    #@7f8
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@7fb
    .line 906
    :try_start_10
    move-object/from16 v0, p0

    #@7fd
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@7ff
    const/4 v4, -0x1

    #@800
    if-ne v2, v4, :cond_2a

    #@802
    .line 907
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    #@804
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@806
    if-eqz v2, :cond_28

    #@808
    move-object/from16 v0, p0

    #@80a
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@80c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@80f
    move-result v2

    #@810
    const/4 v4, 0x6

    #@811
    if-lt v2, v4, :cond_28

    #@813
    .line 908
    move-object/from16 v0, p0

    #@815
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@817
    const/4 v4, 0x0

    #@818
    const/4 v5, 0x6

    #@819
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@81c
    move-result-object v18

    #@81d
    .line 909
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@81f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@822
    const-string/jumbo v4, "mccmncCode="

    #@825
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@828
    move-result-object v2

    #@829
    move-object/from16 v0, v18

    #@82b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82e
    move-result-object v2

    #@82f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@832
    move-result-object v2

    #@833
    move-object/from16 v0, p0

    #@835
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@838
    .line 910
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@83a
    const/4 v2, 0x0

    #@83b
    array-length v5, v4

    #@83c
    :goto_f
    if-ge v2, v5, :cond_28

    #@83e
    aget-object v17, v4, v2

    #@840
    .line 911
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@843
    move-result v6

    #@844
    if-eqz v6, :cond_2b

    #@846
    .line 912
    const/4 v2, 0x3

    #@847
    move-object/from16 v0, p0

    #@849
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@84b
    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    #@84d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@850
    const-string/jumbo v4, "setting6 mMncLength="

    #@853
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@856
    move-result-object v2

    #@857
    move-object/from16 v0, p0

    #@859
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@85b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85e
    move-result-object v2

    #@85f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@862
    move-result-object v2

    #@863
    move-object/from16 v0, p0

    #@865
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@868
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    #@86a
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@86c
    if-nez v2, :cond_2c

    #@86e
    .line 920
    :goto_10
    move-object/from16 v0, p0

    #@870
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@872
    if-eqz v2, :cond_2d

    #@874
    .line 922
    :try_start_11
    move-object/from16 v0, p0

    #@876
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@878
    const/4 v4, 0x0

    #@879
    const/4 v5, 0x3

    #@87a
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@87d
    move-result-object v2

    #@87e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@881
    move-result v16

    #@882
    .line 924
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@885
    move-result v2

    #@886
    move-object/from16 v0, p0

    #@888
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@88a
    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    #@88c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@88f
    const-string/jumbo v4, "setting7 mMncLength="

    #@892
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@895
    move-result-object v2

    #@896
    move-object/from16 v0, p0

    #@898
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@89a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89d
    move-result-object v2

    #@89e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a1
    move-result-object v2

    #@8a2
    move-object/from16 v0, p0

    #@8a4
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@8a7
    .line 936
    .end local v16    # "mcc":I
    :cond_29
    :goto_11
    :try_start_12
    move-object/from16 v0, p0

    #@8a9
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8ab
    if-eqz v2, :cond_1

    #@8ad
    move-object/from16 v0, p0

    #@8af
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8b1
    if-eqz v2, :cond_1

    #@8b3
    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    #@8b5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8b8
    const-string/jumbo v4, "update mccmnc="

    #@8bb
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8be
    move-result-object v2

    #@8bf
    move-object/from16 v0, p0

    #@8c1
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8c3
    move-object/from16 v0, p0

    #@8c5
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8c7
    add-int/lit8 v5, v5, 0x3

    #@8c9
    const/4 v6, 0x0

    #@8ca
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8cd
    move-result-object v4

    #@8ce
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d1
    move-result-object v2

    #@8d2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d5
    move-result-object v2

    #@8d6
    move-object/from16 v0, p0

    #@8d8
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8db
    .line 940
    move-object/from16 v0, p0

    #@8dd
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@8df
    .line 941
    move-object/from16 v0, p0

    #@8e1
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@8e3
    move-object/from16 v0, p0

    #@8e5
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8e7
    add-int/lit8 v5, v5, 0x3

    #@8e9
    const/4 v6, 0x0

    #@8ea
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8ed
    move-result-object v4

    #@8ee
    const/4 v5, 0x0

    #@8ef
    .line 940
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@8f2
    goto/16 :goto_0

    #@8f4
    .line 906
    :cond_2a
    move-object/from16 v0, p0

    #@8f6
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8f8
    if-eqz v2, :cond_27

    #@8fa
    .line 907
    move-object/from16 v0, p0

    #@8fc
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@8fe
    const/4 v4, 0x2

    #@8ff
    if-ne v2, v4, :cond_28

    #@901
    goto/16 :goto_e

    #@903
    .line 910
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    #@905
    goto/16 :goto_f

    #@907
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    #@909
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@90b
    const/4 v4, -0x1

    #@90c
    if-ne v2, v4, :cond_29

    #@90e
    goto/16 :goto_10

    #@910
    .line 926
    :catch_4
    move-exception v11

    #@911
    .line 927
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@912
    move-object/from16 v0, p0

    #@914
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@916
    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    #@918
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91b
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@91e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@921
    move-result-object v2

    #@922
    move-object/from16 v0, p0

    #@924
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@926
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@929
    move-result-object v2

    #@92a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92d
    move-result-object v2

    #@92e
    move-object/from16 v0, p0

    #@930
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@933
    goto/16 :goto_11

    #@935
    .line 932
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2d
    const/4 v2, 0x0

    #@936
    move-object/from16 v0, p0

    #@938
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@93a
    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    #@93c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@93f
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@942
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@945
    move-result-object v2

    #@946
    move-object/from16 v0, p0

    #@948
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@94a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94d
    move-result-object v2

    #@94e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@951
    move-result-object v2

    #@952
    move-object/from16 v0, p0

    #@954
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    #@957
    goto/16 :goto_11

    #@959
    .line 898
    :cond_2e
    const/4 v2, 0x3

    #@95a
    :try_start_13
    aget-byte v2, v10, v2

    #@95c
    and-int/lit8 v2, v2, 0xf

    #@95e
    move-object/from16 v0, p0

    #@960
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@962
    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    #@964
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@967
    const-string/jumbo v4, "setting4 mMncLength="

    #@96a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96d
    move-result-object v2

    #@96e
    move-object/from16 v0, p0

    #@970
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@972
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@975
    move-result-object v2

    #@976
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@979
    move-result-object v2

    #@97a
    move-object/from16 v0, p0

    #@97c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@97f
    .line 901
    move-object/from16 v0, p0

    #@981
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@983
    const/16 v4, 0xf

    #@985
    if-ne v2, v4, :cond_2f

    #@987
    .line 902
    const/4 v2, 0x0

    #@988
    move-object/from16 v0, p0

    #@98a
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@98c
    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    #@98e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@991
    const-string/jumbo v4, "setting5 mMncLength="

    #@994
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@997
    move-result-object v2

    #@998
    move-object/from16 v0, p0

    #@99a
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@99c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99f
    move-result-object v2

    #@9a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a3
    move-result-object v2

    #@9a4
    move-object/from16 v0, p0

    #@9a6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@9a9
    .line 906
    :cond_2f
    :try_start_14
    move-object/from16 v0, p0

    #@9ab
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9ad
    const/4 v4, -0x1

    #@9ae
    if-ne v2, v4, :cond_33

    #@9b0
    .line 907
    :cond_30
    :goto_12
    move-object/from16 v0, p0

    #@9b2
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9b4
    if-eqz v2, :cond_31

    #@9b6
    move-object/from16 v0, p0

    #@9b8
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9ba
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@9bd
    move-result v2

    #@9be
    const/4 v4, 0x6

    #@9bf
    if-lt v2, v4, :cond_31

    #@9c1
    .line 908
    move-object/from16 v0, p0

    #@9c3
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@9c5
    const/4 v4, 0x0

    #@9c6
    const/4 v5, 0x6

    #@9c7
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9ca
    move-result-object v18

    #@9cb
    .line 909
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@9cd
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9d0
    const-string/jumbo v4, "mccmncCode="

    #@9d3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d6
    move-result-object v2

    #@9d7
    move-object/from16 v0, v18

    #@9d9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9dc
    move-result-object v2

    #@9dd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e0
    move-result-object v2

    #@9e1
    move-object/from16 v0, p0

    #@9e3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@9e6
    .line 910
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@9e8
    const/4 v2, 0x0

    #@9e9
    array-length v5, v4

    #@9ea
    :goto_13
    if-ge v2, v5, :cond_31

    #@9ec
    aget-object v17, v4, v2

    #@9ee
    .line 911
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f1
    move-result v6

    #@9f2
    if-eqz v6, :cond_34

    #@9f4
    .line 912
    const/4 v2, 0x3

    #@9f5
    move-object/from16 v0, p0

    #@9f7
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@9f9
    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    #@9fb
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9fe
    const-string/jumbo v4, "setting6 mMncLength="

    #@a01
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a04
    move-result-object v2

    #@a05
    move-object/from16 v0, p0

    #@a07
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a09
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0c
    move-result-object v2

    #@a0d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a10
    move-result-object v2

    #@a11
    move-object/from16 v0, p0

    #@a13
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@a16
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, p0

    #@a18
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a1a
    if-nez v2, :cond_35

    #@a1c
    .line 920
    :goto_14
    move-object/from16 v0, p0

    #@a1e
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@a20
    if-eqz v2, :cond_36

    #@a22
    .line 922
    :try_start_15
    move-object/from16 v0, p0

    #@a24
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a26
    const/4 v4, 0x0

    #@a27
    const/4 v5, 0x3

    #@a28
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a2b
    move-result-object v2

    #@a2c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a2f
    move-result v16

    #@a30
    .line 924
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@a33
    move-result v2

    #@a34
    move-object/from16 v0, p0

    #@a36
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a38
    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    #@a3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a3d
    const-string/jumbo v4, "setting7 mMncLength="

    #@a40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a43
    move-result-object v2

    #@a44
    move-object/from16 v0, p0

    #@a46
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4b
    move-result-object v2

    #@a4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4f
    move-result-object v2

    #@a50
    move-object/from16 v0, p0

    #@a52
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    #@a55
    .line 936
    .end local v16    # "mcc":I
    :cond_32
    :goto_15
    :try_start_16
    move-object/from16 v0, p0

    #@a57
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a59
    if-eqz v2, :cond_1

    #@a5b
    move-object/from16 v0, p0

    #@a5d
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a5f
    if-eqz v2, :cond_1

    #@a61
    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    #@a63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a66
    const-string/jumbo v4, "update mccmnc="

    #@a69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6c
    move-result-object v2

    #@a6d
    move-object/from16 v0, p0

    #@a6f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a71
    move-object/from16 v0, p0

    #@a73
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a75
    add-int/lit8 v5, v5, 0x3

    #@a77
    const/4 v6, 0x0

    #@a78
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a7b
    move-result-object v4

    #@a7c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7f
    move-result-object v2

    #@a80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a83
    move-result-object v2

    #@a84
    move-object/from16 v0, p0

    #@a86
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@a89
    .line 940
    move-object/from16 v0, p0

    #@a8b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@a8d
    .line 941
    move-object/from16 v0, p0

    #@a8f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@a91
    move-object/from16 v0, p0

    #@a93
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a95
    add-int/lit8 v5, v5, 0x3

    #@a97
    const/4 v6, 0x0

    #@a98
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a9b
    move-result-object v4

    #@a9c
    const/4 v5, 0x0

    #@a9d
    .line 940
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@aa0
    goto/16 :goto_0

    #@aa2
    .line 906
    :cond_33
    move-object/from16 v0, p0

    #@aa4
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@aa6
    if-eqz v2, :cond_30

    #@aa8
    .line 907
    move-object/from16 v0, p0

    #@aaa
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@aac
    const/4 v4, 0x2

    #@aad
    if-ne v2, v4, :cond_31

    #@aaf
    goto/16 :goto_12

    #@ab1
    .line 910
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    #@ab3
    goto/16 :goto_13

    #@ab5
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    #@ab7
    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ab9
    const/4 v4, -0x1

    #@aba
    if-ne v2, v4, :cond_32

    #@abc
    goto/16 :goto_14

    #@abe
    .line 926
    :catch_5
    move-exception v11

    #@abf
    .line 927
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@ac0
    move-object/from16 v0, p0

    #@ac2
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ac4
    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    #@ac6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ac9
    const-string/jumbo v4, "Corrupt IMSI! setting8 mMncLength="

    #@acc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@acf
    move-result-object v2

    #@ad0
    move-object/from16 v0, p0

    #@ad2
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ad4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad7
    move-result-object v2

    #@ad8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@adb
    move-result-object v2

    #@adc
    move-object/from16 v0, p0

    #@ade
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@ae1
    goto/16 :goto_15

    #@ae3
    .line 932
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_36
    const/4 v2, 0x0

    #@ae4
    move-object/from16 v0, p0

    #@ae6
    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ae8
    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    #@aea
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@aed
    const-string/jumbo v4, "MNC length not present in EF_AD setting9 mMncLength="

    #@af0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af3
    move-result-object v2

    #@af4
    move-object/from16 v0, p0

    #@af6
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@af8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@afb
    move-result-object v2

    #@afc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aff
    move-result-object v2

    #@b00
    move-object/from16 v0, p0

    #@b02
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b05
    goto/16 :goto_15

    #@b07
    .line 905
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :catchall_1
    move-exception v2

    #@b08
    .line 906
    move-object/from16 v0, p0

    #@b0a
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b0c
    const/4 v5, -0x1

    #@b0d
    if-ne v4, v5, :cond_3b

    #@b0f
    .line 907
    :cond_37
    :goto_16
    move-object/from16 v0, p0

    #@b11
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b13
    if-eqz v4, :cond_38

    #@b15
    move-object/from16 v0, p0

    #@b17
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@b1c
    move-result v4

    #@b1d
    const/4 v5, 0x6

    #@b1e
    if-lt v4, v5, :cond_38

    #@b20
    .line 908
    move-object/from16 v0, p0

    #@b22
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b24
    const/4 v5, 0x0

    #@b25
    const/4 v6, 0x6

    #@b26
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b29
    move-result-object v18

    #@b2a
    .line 909
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@b2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2f
    const-string/jumbo v5, "mccmncCode="

    #@b32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b35
    move-result-object v4

    #@b36
    move-object/from16 v0, v18

    #@b38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3b
    move-result-object v4

    #@b3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3f
    move-result-object v4

    #@b40
    move-object/from16 v0, p0

    #@b42
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b45
    .line 910
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    #@b47
    const/4 v4, 0x0

    #@b48
    array-length v6, v5

    #@b49
    :goto_17
    if-ge v4, v6, :cond_38

    #@b4b
    aget-object v17, v5, v4

    #@b4d
    .line 911
    .restart local v17    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b50
    move-result v7

    #@b51
    if-eqz v7, :cond_3c

    #@b53
    .line 912
    const/4 v4, 0x3

    #@b54
    move-object/from16 v0, p0

    #@b56
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b58
    .line 913
    new-instance v4, Ljava/lang/StringBuilder;

    #@b5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b5d
    const-string/jumbo v5, "setting6 mMncLength="

    #@b60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b63
    move-result-object v4

    #@b64
    move-object/from16 v0, p0

    #@b66
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b6b
    move-result-object v4

    #@b6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6f
    move-result-object v4

    #@b70
    move-object/from16 v0, p0

    #@b72
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b75
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    #@b77
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b79
    if-nez v4, :cond_3d

    #@b7b
    .line 920
    :goto_18
    move-object/from16 v0, p0

    #@b7d
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@b7f
    if-eqz v4, :cond_3e

    #@b81
    .line 922
    :try_start_17
    move-object/from16 v0, p0

    #@b83
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@b85
    const/4 v5, 0x0

    #@b86
    const/4 v6, 0x3

    #@b87
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b8a
    move-result-object v4

    #@b8b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b8e
    move-result v16

    #@b8f
    .line 924
    .restart local v16    # "mcc":I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    #@b92
    move-result v4

    #@b93
    move-object/from16 v0, p0

    #@b95
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@b97
    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    #@b99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b9c
    const-string/jumbo v5, "setting7 mMncLength="

    #@b9f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba2
    move-result-object v4

    #@ba3
    move-object/from16 v0, p0

    #@ba5
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@ba7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@baa
    move-result-object v4

    #@bab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bae
    move-result-object v4

    #@baf
    move-object/from16 v0, p0

    #@bb1
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    #@bb4
    .line 936
    .end local v16    # "mcc":I
    :cond_39
    :goto_19
    :try_start_18
    move-object/from16 v0, p0

    #@bb6
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bb8
    if-eqz v4, :cond_3a

    #@bba
    move-object/from16 v0, p0

    #@bbc
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bbe
    if-eqz v4, :cond_3a

    #@bc0
    .line 939
    new-instance v4, Ljava/lang/StringBuilder;

    #@bc2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bc5
    const-string/jumbo v5, "update mccmnc="

    #@bc8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bcb
    move-result-object v4

    #@bcc
    move-object/from16 v0, p0

    #@bce
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bd0
    move-object/from16 v0, p0

    #@bd2
    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bd4
    add-int/lit8 v6, v6, 0x3

    #@bd6
    const/4 v7, 0x0

    #@bd7
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bda
    move-result-object v5

    #@bdb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bde
    move-result-object v4

    #@bdf
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be2
    move-result-object v4

    #@be3
    move-object/from16 v0, p0

    #@be5
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@be8
    .line 940
    move-object/from16 v0, p0

    #@bea
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    #@bec
    .line 941
    move-object/from16 v0, p0

    #@bee
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bf0
    move-object/from16 v0, p0

    #@bf2
    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@bf4
    add-int/lit8 v6, v6, 0x3

    #@bf6
    const/4 v7, 0x0

    #@bf7
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bfa
    move-result-object v5

    #@bfb
    const/4 v6, 0x0

    #@bfc
    .line 940
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    #@bff
    .line 905
    :cond_3a
    throw v2

    #@c00
    .line 906
    :cond_3b
    move-object/from16 v0, p0

    #@c02
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c04
    if-eqz v4, :cond_37

    #@c06
    .line 907
    move-object/from16 v0, p0

    #@c08
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c0a
    const/4 v5, 0x2

    #@c0b
    if-ne v4, v5, :cond_38

    #@c0d
    goto/16 :goto_16

    #@c0f
    .line 910
    .restart local v17    # "mccmnc":Ljava/lang/String;
    .restart local v18    # "mccmncCode":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    #@c11
    goto/16 :goto_17

    #@c13
    .line 919
    .end local v17    # "mccmnc":Ljava/lang/String;
    .end local v18    # "mccmncCode":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    #@c15
    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c17
    const/4 v5, -0x1

    #@c18
    if-ne v4, v5, :cond_39

    #@c1a
    goto/16 :goto_18

    #@c1c
    .line 926
    :catch_6
    move-exception v11

    #@c1d
    .line 927
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@c1e
    move-object/from16 v0, p0

    #@c20
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c22
    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    #@c24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c27
    const-string/jumbo v5, "Corrupt IMSI! setting8 mMncLength="

    #@c2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2d
    move-result-object v4

    #@c2e
    move-object/from16 v0, p0

    #@c30
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c35
    move-result-object v4

    #@c36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c39
    move-result-object v4

    #@c3a
    move-object/from16 v0, p0

    #@c3c
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@c3f
    goto/16 :goto_19

    #@c41
    .line 932
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_3e
    const/4 v4, 0x0

    #@c42
    move-object/from16 v0, p0

    #@c44
    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c46
    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    #@c48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c4b
    const-string/jumbo v5, "MNC length not present in EF_AD setting9 mMncLength="

    #@c4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c51
    move-result-object v4

    #@c52
    move-object/from16 v0, p0

    #@c54
    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@c56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c59
    move-result-object v4

    #@c5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5d
    move-result-object v4

    #@c5e
    move-object/from16 v0, p0

    #@c60
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@c63
    goto/16 :goto_19

    #@c65
    .line 947
    :pswitch_c
    const/4 v14, 0x1

    #@c66
    .line 948
    move-object/from16 v0, p1

    #@c68
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c6a
    check-cast v9, Landroid/os/AsyncResult;

    #@c6c
    .line 949
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    #@c6d
    move-object/from16 v0, p0

    #@c6f
    invoke-direct {v0, v2, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    #@c72
    goto/16 :goto_0

    #@c74
    .line 953
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    const/4 v14, 0x1

    #@c75
    .line 955
    move-object/from16 v0, p1

    #@c77
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c79
    check-cast v9, Landroid/os/AsyncResult;

    #@c7b
    .line 956
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@c7d
    check-cast v10, [B

    #@c7f
    .line 958
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@c81
    if-nez v2, :cond_1

    #@c83
    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    #@c85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c88
    const-string/jumbo v4, "EF_CFF_CPHS: "

    #@c8b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8e
    move-result-object v2

    #@c8f
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@c92
    move-result-object v4

    #@c93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c96
    move-result-object v2

    #@c97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9a
    move-result-object v2

    #@c9b
    move-object/from16 v0, p0

    #@c9d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@ca0
    .line 963
    move-object/from16 v0, p0

    #@ca2
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@ca4
    .line 966
    move-object/from16 v0, p0

    #@ca6
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@ca8
    move-object/from16 v0, p0

    #@caa
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@cad
    move-result v2

    #@cae
    if-nez v2, :cond_40

    #@cb0
    .line 968
    const/4 v2, 0x0

    #@cb1
    aget-byte v2, v10, v2

    #@cb3
    and-int/lit8 v2, v2, 0xf

    #@cb5
    const/16 v4, 0xa

    #@cb7
    if-ne v2, v4, :cond_3f

    #@cb9
    const/4 v2, 0x1

    #@cba
    .line 967
    :goto_1a
    move-object/from16 v0, p0

    #@cbc
    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@cbe
    .line 970
    move-object/from16 v0, p0

    #@cc0
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@cc2
    const/4 v4, 0x1

    #@cc3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cc6
    move-result-object v4

    #@cc7
    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@cca
    goto/16 :goto_0

    #@ccc
    .line 968
    :cond_3f
    const/4 v2, 0x0

    #@ccd
    goto :goto_1a

    #@cce
    .line 972
    :cond_40
    const-string/jumbo v2, "EVENT_GET_CFF_DONE: EF_CFIS is valid, ignoring EF_CFF_CPHS"

    #@cd1
    move-object/from16 v0, p0

    #@cd3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@cd6
    goto/16 :goto_0

    #@cd8
    .line 977
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_e
    const/4 v14, 0x1

    #@cd9
    .line 979
    move-object/from16 v0, p1

    #@cdb
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cdd
    check-cast v9, Landroid/os/AsyncResult;

    #@cdf
    .line 980
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@ce1
    check-cast v10, [B

    #@ce3
    .line 982
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ce5
    if-nez v2, :cond_1

    #@ce7
    .line 986
    move-object/from16 v0, p0

    #@ce9
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    #@cec
    goto/16 :goto_0

    #@cee
    .line 990
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_f
    move-object/from16 v0, p1

    #@cf0
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@cf2
    check-cast v9, Landroid/os/AsyncResult;

    #@cf4
    .line 991
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cf6
    if-eqz v2, :cond_1

    #@cf8
    .line 992
    const-string/jumbo v2, "update failed. "

    #@cfb
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@cfd
    move-object/from16 v0, p0

    #@cff
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d02
    goto/16 :goto_0

    #@d04
    .line 997
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    const/4 v14, 0x1

    #@d05
    .line 999
    move-object/from16 v0, p1

    #@d07
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d09
    check-cast v9, Landroid/os/AsyncResult;

    #@d0b
    .line 1000
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d0d
    check-cast v10, [B

    #@d0f
    .line 1002
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d11
    if-nez v2, :cond_1

    #@d13
    .line 1006
    new-instance v21, Lcom/android/internal/telephony/gsm/SimTlv;

    #@d15
    array-length v2, v10

    #@d16
    const/4 v4, 0x0

    #@d17
    move-object/from16 v0, v21

    #@d19
    invoke-direct {v0, v10, v4, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    #@d1c
    .line 1008
    .local v21, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_1b
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    #@d1f
    move-result v2

    #@d20
    if-eqz v2, :cond_1

    #@d22
    .line 1009
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    #@d25
    move-result v2

    #@d26
    const/16 v4, 0x43

    #@d28
    if-ne v2, v4, :cond_41

    #@d2a
    .line 1012
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@d2d
    move-result-object v2

    #@d2e
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    #@d31
    move-result-object v4

    #@d32
    array-length v4, v4

    #@d33
    const/4 v5, 0x0

    #@d34
    .line 1011
    invoke-static {v2, v5, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    #@d37
    move-result-object v2

    #@d38
    .line 1010
    move-object/from16 v0, p0

    #@d3a
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@d3c
    goto/16 :goto_0

    #@d3e
    .line 1008
    :cond_41
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    #@d41
    goto :goto_1b

    #@d42
    .line 1019
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    .end local v21    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :pswitch_11
    const/4 v14, 0x1

    #@d43
    .line 1021
    move-object/from16 v0, p1

    #@d45
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d47
    check-cast v9, Landroid/os/AsyncResult;

    #@d49
    .line 1022
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d4b
    if-nez v2, :cond_1

    #@d4d
    .line 1025
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d4f
    check-cast v2, Ljava/util/ArrayList;

    #@d51
    move-object/from16 v0, p0

    #@d53
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    #@d56
    goto/16 :goto_0

    #@d58
    .line 1029
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    const-string/jumbo v2, "ENF"

    #@d5b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d60
    const-string/jumbo v5, "marked read: sms "

    #@d63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d66
    move-result-object v4

    #@d67
    move-object/from16 v0, p1

    #@d69
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@d6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d6e
    move-result-object v4

    #@d6f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d72
    move-result-object v4

    #@d73
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d76
    goto/16 :goto_0

    #@d78
    .line 1034
    :pswitch_13
    const/4 v14, 0x0

    #@d79
    .line 1036
    move-object/from16 v0, p1

    #@d7b
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d7d
    check-cast v9, Landroid/os/AsyncResult;

    #@d7f
    .line 1038
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@d81
    check-cast v13, [I

    #@d83
    .line 1040
    .local v13, "index":[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d85
    if-nez v2, :cond_42

    #@d87
    array-length v2, v13

    #@d88
    const/4 v4, 0x1

    #@d89
    if-eq v2, v4, :cond_43

    #@d8b
    .line 1041
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    #@d8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d90
    const-string/jumbo v4, "Error on SMS_ON_SIM with exp "

    #@d93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d96
    move-result-object v2

    #@d97
    .line 1042
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@d99
    .line 1041
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9c
    move-result-object v2

    #@d9d
    .line 1042
    const-string/jumbo v4, " length "

    #@da0
    .line 1041
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da3
    move-result-object v2

    #@da4
    .line 1042
    array-length v4, v13

    #@da5
    .line 1041
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@da8
    move-result-object v2

    #@da9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dac
    move-result-object v2

    #@dad
    move-object/from16 v0, p0

    #@daf
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@db2
    goto/16 :goto_0

    #@db4
    .line 1044
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    #@db6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@db9
    const-string/jumbo v4, "READ EF_SMS RECORD index="

    #@dbc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dbf
    move-result-object v2

    #@dc0
    const/4 v4, 0x0

    #@dc1
    aget v4, v13, v4

    #@dc3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dc6
    move-result-object v2

    #@dc7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dca
    move-result-object v2

    #@dcb
    move-object/from16 v0, p0

    #@dcd
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@dd0
    .line 1045
    move-object/from16 v0, p0

    #@dd2
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@dd4
    const/4 v4, 0x0

    #@dd5
    aget v4, v13, v4

    #@dd7
    .line 1046
    const/16 v5, 0x16

    #@dd9
    move-object/from16 v0, p0

    #@ddb
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    #@dde
    move-result-object v5

    #@ddf
    .line 1045
    const/16 v6, 0x6f3c

    #@de1
    invoke-virtual {v2, v6, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    #@de4
    goto/16 :goto_0

    #@de6
    .line 1051
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "index":[I
    :pswitch_14
    const/4 v14, 0x0

    #@de7
    .line 1052
    move-object/from16 v0, p1

    #@de9
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@deb
    check-cast v9, Landroid/os/AsyncResult;

    #@ded
    .line 1053
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@def
    if-nez v2, :cond_44

    #@df1
    .line 1054
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@df3
    check-cast v2, [B

    #@df5
    move-object/from16 v0, p0

    #@df7
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    #@dfa
    goto/16 :goto_0

    #@dfc
    .line 1056
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    #@dfe
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e01
    const-string/jumbo v4, "Error on GET_SMS with exp "

    #@e04
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e07
    move-result-object v2

    #@e08
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e0a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e0d
    move-result-object v2

    #@e0e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e11
    move-result-object v2

    #@e12
    move-object/from16 v0, p0

    #@e14
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@e17
    goto/16 :goto_0

    #@e19
    .line 1060
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    const/4 v14, 0x1

    #@e1a
    .line 1062
    move-object/from16 v0, p1

    #@e1c
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e1e
    check-cast v9, Landroid/os/AsyncResult;

    #@e20
    .line 1063
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e22
    check-cast v10, [B

    #@e24
    .line 1065
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e26
    if-nez v2, :cond_1

    #@e28
    .line 1069
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e2a
    invoke-direct {v2, v10}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    #@e2d
    move-object/from16 v0, p0

    #@e2f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e31
    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    #@e33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e36
    const-string/jumbo v4, "SST: "

    #@e39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3c
    move-result-object v2

    #@e3d
    move-object/from16 v0, p0

    #@e3f
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    #@e41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e44
    move-result-object v2

    #@e45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e48
    move-result-object v2

    #@e49
    move-object/from16 v0, p0

    #@e4b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e4e
    goto/16 :goto_0

    #@e50
    .line 1074
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_16
    const/4 v14, 0x1

    #@e51
    .line 1076
    move-object/from16 v0, p1

    #@e53
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e55
    check-cast v9, Landroid/os/AsyncResult;

    #@e57
    .line 1078
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e59
    if-nez v2, :cond_1

    #@e5b
    .line 1082
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@e5d
    check-cast v2, [B

    #@e5f
    move-object/from16 v0, p0

    #@e61
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@e63
    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    #@e65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e68
    const-string/jumbo v4, "iCPHS: "

    #@e6b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6e
    move-result-object v2

    #@e6f
    move-object/from16 v0, p0

    #@e71
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@e73
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@e76
    move-result-object v4

    #@e77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7a
    move-result-object v2

    #@e7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7e
    move-result-object v2

    #@e7f
    move-object/from16 v0, p0

    #@e81
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e84
    goto/16 :goto_0

    #@e86
    .line 1088
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    const/4 v14, 0x0

    #@e87
    .line 1089
    move-object/from16 v0, p1

    #@e89
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e8b
    check-cast v9, Landroid/os/AsyncResult;

    #@e8d
    .line 1091
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e8f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e92
    const-string/jumbo v4, "EVENT_SET_MBDN_DONE ex:"

    #@e95
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e98
    move-result-object v2

    #@e99
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@e9b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e9e
    move-result-object v2

    #@e9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea2
    move-result-object v2

    #@ea3
    move-object/from16 v0, p0

    #@ea5
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@ea8
    .line 1092
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@eaa
    if-nez v2, :cond_45

    #@eac
    .line 1093
    move-object/from16 v0, p0

    #@eae
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@eb0
    move-object/from16 v0, p0

    #@eb2
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@eb4
    .line 1094
    move-object/from16 v0, p0

    #@eb6
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@eb8
    move-object/from16 v0, p0

    #@eba
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@ebc
    .line 1097
    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    #@ebf
    move-result v2

    #@ec0
    if-eqz v2, :cond_47

    #@ec2
    .line 1098
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@ec4
    move-object/from16 v0, p0

    #@ec6
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@ec8
    move-object/from16 v0, p0

    #@eca
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@ecc
    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@ecf
    .line 1099
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@ed1
    move-object/from16 v19, v0

    #@ed3
    check-cast v19, Landroid/os/Message;

    #@ed5
    .line 1108
    .local v19, "onCphsCompleted":Landroid/os/Message;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ed7
    if-nez v2, :cond_46

    #@ed9
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@edb
    if-eqz v2, :cond_46

    #@edd
    .line 1109
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@edf
    check-cast v2, Landroid/os/Message;

    #@ee1
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@ee4
    move-result-object v2

    #@ee5
    .line 1110
    const/4 v4, 0x0

    #@ee6
    .line 1109
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@ee8
    .line 1111
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@eea
    check-cast v2, Landroid/os/Message;

    #@eec
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@eef
    .line 1113
    const-string/jumbo v2, "Callback with MBDN successful."

    #@ef2
    move-object/from16 v0, p0

    #@ef4
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@ef7
    .line 1115
    const/16 v19, 0x0

    #@ef9
    .line 1118
    .end local v19    # "onCphsCompleted":Landroid/os/Message;
    :cond_46
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@efb
    move-object/from16 v0, p0

    #@efd
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@eff
    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@f02
    .line 1120
    const/16 v4, 0x19

    #@f04
    move-object/from16 v0, p0

    #@f06
    move-object/from16 v1, v19

    #@f08
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f0b
    move-result-object v8

    #@f0c
    .line 1119
    const/16 v4, 0x6f17

    #@f0e
    const/16 v5, 0x6f4a

    #@f10
    const/4 v6, 0x1

    #@f11
    const/4 v7, 0x0

    #@f12
    .line 1118
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@f15
    goto/16 :goto_0

    #@f17
    .line 1123
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_47
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f19
    if-eqz v2, :cond_1

    #@f1b
    .line 1124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@f1e
    move-result-object v20

    #@f1f
    .line 1125
    .local v20, "resource":Landroid/content/res/Resources;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f21
    if-eqz v2, :cond_48

    #@f23
    const v2, 0x112008f

    #@f26
    move-object/from16 v0, v20

    #@f28
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@f2b
    move-result v2

    #@f2c
    if-eqz v2, :cond_48

    #@f2e
    .line 1129
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f30
    check-cast v2, Landroid/os/Message;

    #@f32
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f35
    move-result-object v2

    #@f36
    .line 1130
    new-instance v4, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@f38
    .line 1131
    const-string/jumbo v5, "Update SIM voice mailbox error"

    #@f3b
    .line 1130
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    #@f3e
    .line 1129
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f40
    .line 1136
    :goto_1c
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f42
    check-cast v2, Landroid/os/Message;

    #@f44
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@f47
    goto/16 :goto_0

    #@f49
    .line 1133
    :cond_48
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f4b
    check-cast v2, Landroid/os/Message;

    #@f4d
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f50
    move-result-object v2

    #@f51
    .line 1134
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f53
    .line 1133
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f55
    goto :goto_1c

    #@f56
    .line 1141
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "resource":Landroid/content/res/Resources;
    :pswitch_18
    const/4 v14, 0x0

    #@f57
    .line 1142
    move-object/from16 v0, p1

    #@f59
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f5b
    check-cast v9, Landroid/os/AsyncResult;

    #@f5d
    .line 1143
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f5f
    if-nez v2, :cond_49

    #@f61
    .line 1144
    move-object/from16 v0, p0

    #@f63
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@f65
    move-object/from16 v0, p0

    #@f67
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@f69
    .line 1145
    move-object/from16 v0, p0

    #@f6b
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@f6d
    move-object/from16 v0, p0

    #@f6f
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    #@f71
    .line 1150
    :goto_1d
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f73
    if-eqz v2, :cond_1

    #@f75
    .line 1151
    const-string/jumbo v2, "Callback with CPHS MB successful."

    #@f78
    move-object/from16 v0, p0

    #@f7a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@f7d
    .line 1152
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f7f
    check-cast v2, Landroid/os/Message;

    #@f81
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@f84
    move-result-object v2

    #@f85
    .line 1153
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f87
    .line 1152
    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@f89
    .line 1154
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@f8b
    check-cast v2, Landroid/os/Message;

    #@f8d
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@f90
    goto/16 :goto_0

    #@f92
    .line 1147
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    #@f94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f97
    const-string/jumbo v4, "Set CPHS MailBox with exception: "

    #@f9a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9d
    move-result-object v2

    #@f9e
    .line 1148
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fa0
    .line 1147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa3
    move-result-object v2

    #@fa4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa7
    move-result-object v2

    #@fa8
    move-object/from16 v0, p0

    #@faa
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fad
    goto :goto_1d

    #@fae
    .line 1158
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    const/4 v14, 0x0

    #@faf
    .line 1159
    move-object/from16 v0, p1

    #@fb1
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fb3
    check-cast v9, Landroid/os/AsyncResult;

    #@fb5
    .line 1160
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    #@fb7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fba
    const-string/jumbo v4, "Sim REFRESH with exception: "

    #@fbd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc0
    move-result-object v2

    #@fc1
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fc3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fc6
    move-result-object v2

    #@fc7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fca
    move-result-object v2

    #@fcb
    move-object/from16 v0, p0

    #@fcd
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@fd0
    .line 1161
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fd2
    if-nez v2, :cond_1

    #@fd4
    .line 1162
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@fd6
    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    #@fd8
    move-object/from16 v0, p0

    #@fda
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    #@fdd
    goto/16 :goto_0

    #@fdf
    .line 1166
    .end local v9    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a
    const/4 v14, 0x1

    #@fe0
    .line 1168
    move-object/from16 v0, p1

    #@fe2
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@fe4
    check-cast v9, Landroid/os/AsyncResult;

    #@fe6
    .line 1169
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@fe8
    check-cast v10, [B

    #@fea
    .line 1171
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@fec
    if-nez v2, :cond_1

    #@fee
    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    #@ff0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ff3
    const-string/jumbo v4, "EF_CFIS: "

    #@ff6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff9
    move-result-object v2

    #@ffa
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@ffd
    move-result-object v4

    #@ffe
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1001
    move-result-object v2

    #@1002
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1005
    move-result-object v2

    #@1006
    move-object/from16 v0, p0

    #@1008
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@100b
    .line 1177
    move-object/from16 v0, p0

    #@100d
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@1010
    move-result v2

    #@1011
    if-eqz v2, :cond_4b

    #@1013
    .line 1178
    move-object/from16 v0, p0

    #@1015
    iput-object v10, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@1017
    .line 1181
    const/4 v2, 0x1

    #@1018
    aget-byte v2, v10, v2

    #@101a
    and-int/lit8 v2, v2, 0x1

    #@101c
    if-eqz v2, :cond_4a

    #@101e
    const/4 v2, 0x1

    #@101f
    :goto_1e
    move-object/from16 v0, p0

    #@1021
    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@1023
    .line 1182
    new-instance v2, Ljava/lang/StringBuilder;

    #@1025
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1028
    const-string/jumbo v4, "EF_CFIS: callForwardingEnabled="

    #@102b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102e
    move-result-object v2

    #@102f
    move-object/from16 v0, p0

    #@1031
    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@1033
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1036
    move-result-object v2

    #@1037
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103a
    move-result-object v2

    #@103b
    move-object/from16 v0, p0

    #@103d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1040
    .line 1184
    move-object/from16 v0, p0

    #@1042
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@1044
    const/4 v4, 0x1

    #@1045
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1048
    move-result-object v4

    #@1049
    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@104c
    goto/16 :goto_0

    #@104e
    .line 1181
    :cond_4a
    const/4 v2, 0x0

    #@104f
    goto :goto_1e

    #@1050
    .line 1186
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1052
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1055
    const-string/jumbo v4, "EF_CFIS: invalid data="

    #@1058
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105b
    move-result-object v2

    #@105c
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@105f
    move-result-object v4

    #@1060
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1063
    move-result-object v2

    #@1064
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1067
    move-result-object v2

    #@1068
    move-object/from16 v0, p0

    #@106a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@106d
    goto/16 :goto_0

    #@106f
    .line 1191
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1b
    const/4 v14, 0x1

    #@1070
    .line 1193
    move-object/from16 v0, p1

    #@1072
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1074
    check-cast v9, Landroid/os/AsyncResult;

    #@1076
    .line 1195
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1078
    if-eqz v2, :cond_4c

    #@107a
    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    #@107c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@107f
    const-string/jumbo v4, "Exception in fetching EF_CSP data "

    #@1082
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1085
    move-result-object v2

    #@1086
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1088
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@108b
    move-result-object v2

    #@108c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@108f
    move-result-object v2

    #@1090
    move-object/from16 v0, p0

    #@1092
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@1095
    goto/16 :goto_0

    #@1097
    .line 1200
    :cond_4c
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1099
    check-cast v10, [B

    #@109b
    .line 1202
    .restart local v10    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    #@109d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10a0
    const-string/jumbo v4, "EF_CSP: "

    #@10a3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a6
    move-result-object v2

    #@10a7
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@10aa
    move-result-object v4

    #@10ab
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10ae
    move-result-object v2

    #@10af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b2
    move-result-object v2

    #@10b3
    move-object/from16 v0, p0

    #@10b5
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@10b8
    .line 1203
    move-object/from16 v0, p0

    #@10ba
    invoke-direct {v0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    #@10bd
    goto/16 :goto_0

    #@10bf
    .line 1207
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1c
    const/4 v14, 0x1

    #@10c0
    .line 1209
    move-object/from16 v0, p1

    #@10c2
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@10c4
    check-cast v9, Landroid/os/AsyncResult;

    #@10c6
    .line 1210
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@10c8
    check-cast v10, [B

    #@10ca
    .line 1212
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10cc
    if-eqz v2, :cond_4d

    #@10ce
    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    #@10d0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10d3
    const-string/jumbo v4, "Exception in get GID1 "

    #@10d6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d9
    move-result-object v2

    #@10da
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@10dc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10df
    move-result-object v2

    #@10e0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e3
    move-result-object v2

    #@10e4
    move-object/from16 v0, p0

    #@10e6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@10e9
    .line 1214
    const/4 v2, 0x0

    #@10ea
    move-object/from16 v0, p0

    #@10ec
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10ee
    goto/16 :goto_0

    #@10f0
    .line 1217
    :cond_4d
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@10f3
    move-result-object v2

    #@10f4
    move-object/from16 v0, p0

    #@10f6
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@10f8
    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    #@10fa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10fd
    const-string/jumbo v4, "GID1: "

    #@1100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1103
    move-result-object v2

    #@1104
    move-object/from16 v0, p0

    #@1106
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@1108
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110b
    move-result-object v2

    #@110c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110f
    move-result-object v2

    #@1110
    move-object/from16 v0, p0

    #@1112
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@1115
    goto/16 :goto_0

    #@1117
    .line 1223
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "data":[B
    :pswitch_1d
    const/4 v14, 0x1

    #@1118
    .line 1225
    move-object/from16 v0, p1

    #@111a
    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@111c
    check-cast v9, Landroid/os/AsyncResult;

    #@111e
    .line 1226
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@1120
    check-cast v10, [B

    #@1122
    .line 1228
    .restart local v10    # "data":[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1124
    if-eqz v2, :cond_4e

    #@1126
    .line 1229
    new-instance v2, Ljava/lang/StringBuilder;

    #@1128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@112b
    const-string/jumbo v4, "Exception in get GID2 "

    #@112e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1131
    move-result-object v2

    #@1132
    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1137
    move-result-object v2

    #@1138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@113b
    move-result-object v2

    #@113c
    move-object/from16 v0, p0

    #@113e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@1141
    .line 1230
    const/4 v2, 0x0

    #@1142
    move-object/from16 v0, p0

    #@1144
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1146
    goto/16 :goto_0

    #@1148
    .line 1233
    :cond_4e
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@114b
    move-result-object v2

    #@114c
    move-object/from16 v0, p0

    #@114e
    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1150
    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    #@1152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1155
    const-string/jumbo v4, "GID2: "

    #@1158
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115b
    move-result-object v2

    #@115c
    move-object/from16 v0, p0

    #@115e
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@1160
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1163
    move-result-object v2

    #@1164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1167
    move-result-object v2

    #@1168
    move-object/from16 v0, p0

    #@116a
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    #@116d
    goto/16 :goto_0

    #@116f
    .line 626
    nop

    #@1170
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
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1868
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@2
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1846
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
    .line 1845
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1851
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
    .line 1850
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1859
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
    .line 1858
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1855
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
    .line 1854
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
    .line 1439
    const-string/jumbo v3, "record load complete"

    #@5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@8
    .line 1441
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    .line 1442
    .local v1, "resource":Landroid/content/res/Resources;
    const v3, 0x1120095

    #@f
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 1443
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    #@17
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    #@19
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    #@1c
    .line 1448
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@21
    move-result-object v3

    #@22
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@24
    if-eq v3, v4, :cond_0

    #@26
    .line 1449
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@28
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2b
    move-result-object v3

    #@2c
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2e
    if-ne v3, v4, :cond_2

    #@30
    .line 1451
    :cond_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@32
    .line 1453
    return-void

    #@33
    .line 1445
    :cond_1
    const-string/jumbo v3, "Not using EF LI/EF PL"

    #@36
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@39
    goto :goto_0

    #@3a
    .line 1458
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 1459
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_3

    #@44
    .line 1460
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    .line 1461
    const-string/jumbo v4, "\'"

    #@57
    .line 1460
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@62
    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v4, "update icc_operator_numeric="

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@79
    .line 1463
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7b
    .line 1464
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@7d
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@80
    move-result v4

    #@81
    .line 1463
    invoke-virtual {v3, v4, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@84
    .line 1465
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    #@87
    move-result-object v2

    #@88
    .line 1466
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    #@8b
    move-result v3

    #@8c
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    #@8f
    .line 1471
    .end local v2    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@94
    move-result v3

    #@95
    if-nez v3, :cond_4

    #@97
    .line 1472
    new-instance v3, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v4, "onAllRecordsLoaded set mcc imsi"

    #@9f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    const-string/jumbo v4, ""

    #@a6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@b1
    .line 1473
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@b3
    .line 1474
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b5
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@b8
    move-result v4

    #@b9
    .line 1475
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@bb
    const/4 v6, 0x3

    #@bc
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c3
    move-result v5

    #@c4
    .line 1474
    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@c7
    move-result-object v5

    #@c8
    .line 1473
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@cb
    .line 1480
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    #@ce
    .line 1481
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    #@d1
    .line 1483
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    #@d3
    .line 1484
    new-instance v4, Landroid/os/AsyncResult;

    #@d5
    invoke-direct {v4, v7, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@d8
    .line 1483
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@db
    .line 1438
    return-void

    #@dc
    .line 1468
    :cond_3
    const-string/jumbo v3, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    #@df
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@e2
    goto :goto_1

    #@e3
    .line 1477
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
    .line 1508
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@3
    .line 1507
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1426
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@7
    .line 1427
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
    .line 1429
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@2f
    if-nez v0, :cond_1

    #@31
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    #@38
    .line 1423
    :cond_0
    :goto_0
    return-void

    #@39
    .line 1431
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    #@3b
    if-gez v0, :cond_0

    #@3d
    .line 1432
    const-string/jumbo v0, "recordsToLoad <0, programmer error suspected"

    #@40
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    #@43
    .line 1433
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
    .line 583
    if-eqz p1, :cond_0

    #@2
    .line 587
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    #@5
    .line 582
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
    .line 233
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    #@4
    .line 234
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    #@6
    .line 235
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    #@8
    .line 236
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    #@a
    .line 237
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
    .line 238
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    #@25
    .line 240
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    #@27
    .line 241
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@29
    .line 242
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@2b
    .line 243
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    #@2d
    .line 244
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    #@2f
    .line 245
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    #@31
    .line 246
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    #@33
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    #@35
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    #@38
    .line 250
    const-string/jumbo v0, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    #@3b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@3e
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v1, "update icc_operator_numeric="

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@55
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@57
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@5c
    move-result v1

    #@5d
    const-string/jumbo v2, ""

    #@60
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@63
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@65
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@67
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@6a
    move-result v1

    #@6b
    const-string/jumbo v2, ""

    #@6e
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@71
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@73
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@75
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    #@78
    move-result v1

    #@79
    const-string/jumbo v2, ""

    #@7c
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@7f
    .line 259
    const/4 v0, 0x0

    #@80
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    #@82
    .line 232
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
    .line 331
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@4
    .line 332
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@6
    .line 334
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
    .line 336
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@2f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    #@31
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    #@33
    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 338
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
    .line 339
    const/16 v4, 0x1e

    #@43
    invoke-virtual {p0, v4, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@46
    move-result-object v6

    #@47
    .line 338
    const/4 v4, 0x1

    #@48
    const/4 v5, 0x0

    #@49
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@4c
    .line 327
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
    .line 517
    if-eq p1, v1, :cond_0

    #@3
    return-void

    #@4
    .line 519
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@6
    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    #@f
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@11
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_5

    #@17
    .line 526
    if-eqz p2, :cond_3

    #@19
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@1b
    const/4 v1, 0x1

    #@1c
    aget-byte v2, v0, v1

    #@1e
    or-int/lit8 v2, v2, 0x1

    #@20
    int-to-byte v2, v2

    #@21
    aput-byte v2, v0, v1

    #@23
    .line 532
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v1, "setVoiceCallForwardingFlag: enable="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 533
    const-string/jumbo v1, " mEfCfis="

    #@36
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@3c
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@4b
    .line 537
    if-eqz p2, :cond_1

    #@4d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_4

    #@53
    .line 548
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@55
    .line 549
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@57
    .line 550
    const/16 v1, 0x6fcb

    #@59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v1

    #@5d
    const/16 v2, 0xe

    #@5f
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@62
    move-result-object v5

    #@63
    .line 549
    const/16 v1, 0x6fcb

    #@65
    const/4 v2, 0x1

    #@66
    const/4 v4, 0x0

    #@67
    .line 548
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@6a
    .line 556
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@6c
    if-eqz v0, :cond_2

    #@6e
    .line 557
    if-eqz p2, :cond_6

    #@70
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@72
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@74
    const/4 v2, 0x0

    #@75
    aget-byte v1, v1, v2

    #@77
    and-int/lit16 v1, v1, 0xf0

    #@79
    or-int/lit8 v1, v1, 0xa

    #@7b
    int-to-byte v1, v1

    #@7c
    const/4 v2, 0x0

    #@7d
    aput-byte v1, v0, v2

    #@7f
    .line 565
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@81
    .line 566
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@83
    .line 567
    const/16 v2, 0x6f13

    #@85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@88
    move-result-object v2

    #@89
    const/16 v3, 0xe

    #@8b
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8e
    move-result-object v2

    #@8f
    .line 566
    const/16 v3, 0x6f13

    #@91
    .line 565
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    #@94
    .line 515
    :cond_2
    :goto_4
    return-void

    #@95
    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@97
    const/4 v1, 0x1

    #@98
    aget-byte v2, v0, v1

    #@9a
    and-int/lit16 v2, v2, 0xfe

    #@9c
    int-to-byte v2, v2

    #@9d
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9f
    goto :goto_0

    #@a0
    .line 569
    :catch_0
    move-exception v7

    #@a1
    .line 570
    .local v7, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    #@a4
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a7
    goto :goto_4

    #@a8
    .line 538
    .end local v7    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v1, "EF_CFIS: updating cf number, "

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@bf
    .line 539
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    #@c2
    move-result-object v6

    #@c3
    .line 541
    .local v6, "bcdNumber":[B
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@c5
    array-length v1, v6

    #@c6
    const/4 v2, 0x0

    #@c7
    const/4 v3, 0x3

    #@c8
    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@cb
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@cd
    array-length v1, v6

    #@ce
    int-to-byte v1, v1

    #@cf
    const/4 v2, 0x2

    #@d0
    aput-byte v1, v0, v2

    #@d2
    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@d4
    const/4 v1, -0x1

    #@d5
    const/16 v2, 0xe

    #@d7
    aput-byte v1, v0, v2

    #@d9
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@db
    const/4 v1, -0x1

    #@dc
    const/16 v2, 0xf

    #@de
    aput-byte v1, v0, v2

    #@e0
    goto/16 :goto_1

    #@e2
    .line 552
    .end local v6    # "bcdNumber":[B
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v1, "setVoiceCallForwardingFlag: ignoring enable="

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v0

    #@f2
    .line 553
    const-string/jumbo v1, " invalid mEfCfis="

    #@f5
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    .line 553
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@fb
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v0

    #@107
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    #@10a
    goto/16 :goto_2

    #@10c
    .line 561
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@10e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@110
    const/4 v2, 0x0

    #@111
    aget-byte v1, v1, v2

    #@113
    and-int/lit16 v1, v1, 0xf0

    #@115
    or-int/lit8 v1, v1, 0x5

    #@117
    int-to-byte v1, v1

    #@118
    const/4 v2, 0x0

    #@119
    aput-byte v1, v0, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@11b
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
    .line 379
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 380
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@8
    move-result-object v0

    #@9
    .line 381
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    #@b
    const-string/jumbo v3, "Voicemail number is fixed by operator"

    #@e
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    #@11
    .line 380
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    .line 382
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 383
    return-void

    #@17
    .line 386
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@19
    .line 387
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@1b
    .line 389
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    #@1d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    #@1f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    #@21
    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 391
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
    .line 393
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@30
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@32
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@35
    .line 394
    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    #@37
    .line 395
    const/16 v2, 0x14

    #@39
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@3c
    move-result-object v6

    #@3d
    .line 393
    const/16 v2, 0x6fc7

    #@3f
    const/16 v3, 0x6fc8

    #@41
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@44
    .line 378
    :goto_0
    return-void

    #@45
    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_2

    #@4b
    .line 399
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    #@4d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4f
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    #@52
    .line 401
    const/16 v2, 0x19

    #@54
    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@57
    move-result-object v6

    #@58
    .line 399
    const/16 v2, 0x6f17

    #@5a
    .line 400
    const/16 v3, 0x6f4a

    #@5c
    const/4 v4, 0x1

    #@5d
    .line 399
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    #@60
    goto :goto_0

    #@61
    .line 404
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@64
    move-result-object v0

    #@65
    .line 405
    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    #@67
    const-string/jumbo v3, "Update SIM voice mailbox error"

    #@6a
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    #@6d
    .line 404
    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6f
    .line 406
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
    .line 426
    if-eq p1, v1, :cond_0

    #@4
    .line 428
    return-void

    #@5
    .line 432
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 436
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
    .line 437
    if-nez p2, :cond_3

    #@14
    .line 436
    :goto_0
    or-int/2addr v0, v3

    #@15
    int-to-byte v0, v0

    #@16
    const/4 v1, 0x0

    #@17
    aput-byte v0, v2, v1

    #@19
    .line 440
    if-gez p2, :cond_4

    #@1b
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@1d
    const/4 v1, 0x0

    #@1e
    const/4 v2, 0x1

    #@1f
    aput-byte v1, v0, v2

    #@21
    .line 448
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@23
    .line 449
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@25
    .line 450
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
    .line 449
    const/16 v1, 0x6fca

    #@30
    const/4 v2, 0x1

    #@31
    const/4 v4, 0x0

    #@32
    .line 448
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@35
    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@37
    if-eqz v0, :cond_2

    #@39
    .line 455
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
    .line 456
    if-nez p2, :cond_5

    #@44
    const/4 v0, 0x5

    #@45
    .line 455
    :goto_2
    or-int/2addr v0, v2

    #@46
    int-to-byte v0, v0

    #@47
    const/4 v2, 0x0

    #@48
    aput-byte v0, v1, v2

    #@4a
    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@4c
    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@4e
    .line 459
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
    .line 458
    const/16 v3, 0x6f11

    #@5c
    .line 457
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    #@5f
    .line 425
    :cond_2
    :goto_3
    return-void

    #@60
    :cond_3
    move v0, v1

    #@61
    .line 437
    goto :goto_0

    #@62
    .line 445
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
    .line 461
    :catch_0
    move-exception v6

    #@6a
    .line 462
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    #@6d
    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@70
    goto :goto_3

    #@71
    .line 456
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
    .line 94
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
    .line 95
    const-string/jumbo v1, " mVmConfig"

    #@17
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    #@1d
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 96
    const-string/jumbo v1, " mSpnOverride="

    #@24
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 96
    const-string/jumbo v1, "mSpnOverride"

    #@2b
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 97
    const-string/jumbo v1, " callForwardingEnabled="

    #@32
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 97
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    #@38
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 98
    const-string/jumbo v1, " spnState="

    #@3f
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    #@45
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 99
    const-string/jumbo v1, " mCphsInfo="

    #@4c
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    #@52
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 100
    const-string/jumbo v1, " mCspPlmnEnabled="

    #@59
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 100
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    #@5f
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 101
    const-string/jumbo v1, " efMWIS="

    #@66
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    #@6c
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 102
    const-string/jumbo v1, " efCPHS_MWI="

    #@73
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    #@79
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 103
    const-string/jumbo v1, " mEfCff="

    #@80
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    #@86
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    .line 104
    const-string/jumbo v1, " mEfCfis="

    #@8d
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    #@93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    .line 105
    const-string/jumbo v1, " getOperatorNumeric="

    #@9a
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v0

    #@9e
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 94
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
