.class public Lcom/android/internal/telephony/cat/ResultException;
.super Lcom/android/internal/telephony/cat/CatException;
.source "ResultException.java"


# static fields
.field private static synthetic -com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I


# instance fields
.field private mAdditionalInfo:I

.field private mExplanation:Ljava/lang/String;

.field private mResult:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_ResultCodeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/cat/ResultException;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/cat/ResultException;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0x9

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_24

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/16 v2, 0xa

    #@20
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_23

    #@22
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@24
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@27
    move-result v1

    #@28
    const/16 v2, 0xb

    #@2a
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_22

    #@2c
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@2e
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x1

    #@33
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_21

    #@35
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@37
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/16 v2, 0xc

    #@3d
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_20

    #@3f
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    #@41
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@44
    move-result v1

    #@45
    const/16 v2, 0xd

    #@47
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1f

    #@49
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@4b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@4e
    move-result v1

    #@4f
    const/16 v2, 0xe

    #@51
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1e

    #@53
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    #@55
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@58
    move-result v1

    #@59
    const/16 v2, 0xf

    #@5b
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1d

    #@5d
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@5f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@62
    move-result v1

    #@63
    const/4 v2, 0x2

    #@64
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1c

    #@66
    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    #@68
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@6b
    move-result v1

    #@6c
    const/16 v2, 0x10

    #@6e
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1b

    #@70
    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@72
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@75
    move-result v1

    #@76
    const/4 v2, 0x3

    #@77
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1a

    #@79
    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@7b
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@7e
    move-result v1

    #@7f
    const/4 v2, 0x4

    #@80
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_19

    #@82
    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@84
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@87
    move-result v1

    #@88
    const/16 v2, 0x11

    #@8a
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_18

    #@8c
    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@8e
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@91
    move-result v1

    #@92
    const/4 v2, 0x5

    #@93
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_17

    #@95
    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@97
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@9a
    move-result v1

    #@9b
    const/16 v2, 0x12

    #@9d
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_16

    #@9f
    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@a1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@a4
    move-result v1

    #@a5
    const/4 v2, 0x6

    #@a6
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_15

    #@a8
    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@aa
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@ad
    move-result v1

    #@ae
    const/16 v2, 0x13

    #@b0
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_14

    #@b2
    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@b4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@b7
    move-result v1

    #@b8
    const/16 v2, 0x14

    #@ba
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_13

    #@bc
    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@be
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@c1
    move-result v1

    #@c2
    const/16 v2, 0x15

    #@c4
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    #@c6
    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    #@c8
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@cb
    move-result v1

    #@cc
    const/16 v2, 0x16

    #@ce
    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_11

    #@d0
    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    #@d2
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@d5
    move-result v1

    #@d6
    const/16 v2, 0x17

    #@d8
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_10

    #@da
    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    #@dc
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@df
    move-result v1

    #@e0
    const/16 v2, 0x18

    #@e2
    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_f

    #@e4
    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@e6
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@e9
    move-result v1

    #@ea
    const/16 v2, 0x19

    #@ec
    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_e

    #@ee
    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    #@f0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@f3
    move-result v1

    #@f4
    const/16 v2, 0x1a

    #@f6
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_d

    #@f8
    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    #@fa
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@fd
    move-result v1

    #@fe
    const/16 v2, 0x1b

    #@100
    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_c

    #@102
    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    #@104
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@107
    move-result v1

    #@108
    const/16 v2, 0x1c

    #@10a
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_b

    #@10c
    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    #@10e
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@111
    move-result v1

    #@112
    const/16 v2, 0x1d

    #@114
    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_a

    #@116
    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@118
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@11b
    move-result v1

    #@11c
    const/16 v2, 0x1e

    #@11e
    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_9

    #@120
    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@122
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@125
    move-result v1

    #@126
    const/16 v2, 0x1f

    #@128
    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_8

    #@12a
    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@12c
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@12f
    move-result v1

    #@130
    const/16 v2, 0x20

    #@132
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_7

    #@134
    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@136
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@139
    move-result v1

    #@13a
    const/4 v2, 0x7

    #@13b
    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_6

    #@13d
    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@13f
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@142
    move-result v1

    #@143
    const/16 v2, 0x21

    #@145
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_5

    #@147
    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    #@149
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@14c
    move-result v1

    #@14d
    const/16 v2, 0x22

    #@14f
    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_4

    #@151
    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    #@153
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@156
    move-result v1

    #@157
    const/16 v2, 0x23

    #@159
    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_3

    #@15b
    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    #@15d
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@160
    move-result v1

    #@161
    const/16 v2, 0x8

    #@163
    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_2

    #@165
    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@167
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@16a
    move-result v1

    #@16b
    const/16 v2, 0x24

    #@16d
    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1

    #@16f
    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@171
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@174
    move-result v1

    #@175
    const/16 v2, 0x25

    #@177
    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_0

    #@179
    :goto_24
    sput-object v0, Lcom/android/internal/telephony/cat/ResultException;->-com_android_internal_telephony_cat_ResultCodeSwitchesValues:[I

    #@17b
    return-object v0

    #@17c
    :catch_0
    move-exception v1

    #@17d
    goto :goto_24

    #@17e
    :catch_1
    move-exception v1

    #@17f
    goto :goto_23

    #@180
    :catch_2
    move-exception v1

    #@181
    goto :goto_22

    #@182
    :catch_3
    move-exception v1

    #@183
    goto :goto_21

    #@184
    :catch_4
    move-exception v1

    #@185
    goto :goto_20

    #@186
    :catch_5
    move-exception v1

    #@187
    goto :goto_1f

    #@188
    :catch_6
    move-exception v1

    #@189
    goto :goto_1e

    #@18a
    :catch_7
    move-exception v1

    #@18b
    goto :goto_1d

    #@18c
    :catch_8
    move-exception v1

    #@18d
    goto :goto_1c

    #@18e
    :catch_9
    move-exception v1

    #@18f
    goto :goto_1b

    #@190
    :catch_a
    move-exception v1

    #@191
    goto :goto_1a

    #@192
    :catch_b
    move-exception v1

    #@193
    goto/16 :goto_19

    #@195
    :catch_c
    move-exception v1

    #@196
    goto/16 :goto_18

    #@198
    :catch_d
    move-exception v1

    #@199
    goto/16 :goto_17

    #@19b
    :catch_e
    move-exception v1

    #@19c
    goto/16 :goto_16

    #@19e
    :catch_f
    move-exception v1

    #@19f
    goto/16 :goto_15

    #@1a1
    :catch_10
    move-exception v1

    #@1a2
    goto/16 :goto_14

    #@1a4
    :catch_11
    move-exception v1

    #@1a5
    goto/16 :goto_13

    #@1a7
    :catch_12
    move-exception v1

    #@1a8
    goto/16 :goto_12

    #@1aa
    :catch_13
    move-exception v1

    #@1ab
    goto/16 :goto_11

    #@1ad
    :catch_14
    move-exception v1

    #@1ae
    goto/16 :goto_10

    #@1b0
    :catch_15
    move-exception v1

    #@1b1
    goto/16 :goto_f

    #@1b3
    :catch_16
    move-exception v1

    #@1b4
    goto/16 :goto_e

    #@1b6
    :catch_17
    move-exception v1

    #@1b7
    goto/16 :goto_d

    #@1b9
    :catch_18
    move-exception v1

    #@1ba
    goto/16 :goto_c

    #@1bc
    :catch_19
    move-exception v1

    #@1bd
    goto/16 :goto_b

    #@1bf
    :catch_1a
    move-exception v1

    #@1c0
    goto/16 :goto_a

    #@1c2
    :catch_1b
    move-exception v1

    #@1c3
    goto/16 :goto_9

    #@1c5
    :catch_1c
    move-exception v1

    #@1c6
    goto/16 :goto_8

    #@1c8
    :catch_1d
    move-exception v1

    #@1c9
    goto/16 :goto_7

    #@1cb
    :catch_1e
    move-exception v1

    #@1cc
    goto/16 :goto_6

    #@1ce
    :catch_1f
    move-exception v1

    #@1cf
    goto/16 :goto_5

    #@1d1
    :catch_20
    move-exception v1

    #@1d2
    goto/16 :goto_4

    #@1d4
    :catch_21
    move-exception v1

    #@1d5
    goto/16 :goto_3

    #@1d7
    :catch_22
    move-exception v1

    #@1d8
    goto/16 :goto_2

    #@1da
    :catch_23
    move-exception v1

    #@1db
    goto/16 :goto_1

    #@1dd
    :catch_24
    move-exception v1

    #@1de
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatException;-><init>()V

    #@3
    .line 36
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultException;->-getcom_android_internal_telephony_cat_ResultCodeSwitchesValues()[I

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    #@a
    move-result v1

    #@b
    aget v0, v0, v1

    #@d
    packed-switch v0, :pswitch_data_0

    #@10
    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    #@12
    .line 53
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    #@15
    .line 54
    const-string/jumbo v0, ""

    #@18
    iput-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    #@1a
    .line 30
    return-void

    #@1b
    .line 45
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    #@1d
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "For result code, "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 47
    const-string/jumbo v2, ", additional information must be given!"

    #@30
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3b
    throw v0

    #@3c
    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;I)V
    .locals 2
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "additionalInfo"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@3
    .line 65
    if-gez p2, :cond_0

    #@5
    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    .line 67
    const-string/jumbo v1, "Additional info must be greater than zero!"

    #@a
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
    throw v0

    #@e
    .line 70
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    #@10
    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "additionalInfo"    # I
    .param p3, "explanation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    #@3
    .line 75
    iput-object p3, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    #@5
    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "explanation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    #@3
    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    #@5
    .line 57
    return-void
.end method


# virtual methods
.method public additionalInfo()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    #@2
    return v0
.end method

.method public explanation()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAdditionalInfo()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 83
    iget v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public result()Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "result="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " additionalInfo="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 97
    const-string/jumbo v1, " explantion="

    #@22
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    #@28
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
