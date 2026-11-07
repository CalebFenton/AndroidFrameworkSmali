.class public final enum Lcom/android/internal/telephony/cat/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist OK:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum greylist USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum blacklist USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;


# instance fields
.field private blacklist mCode:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/ResultCode;
    .registers 38

    .line 30
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v14, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v18, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v20, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v21, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v22, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v24, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v25, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v26, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v27, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v28, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v29, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v30, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v31, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v32, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v34, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v35, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v36, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v37, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    filled-new-array/range {v1 .. v37}, [Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_WITH_PARTIAL_COMPREHENSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_WITH_MISSING_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_WITH_ADDITIONAL_EFS_READ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_ICON_NOT_DISPLAYED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_MODIFIED_BY_NAA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_LIMITED_SERVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_WITH_MODIFICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_NAA_NOT_ACTIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "PRFRMD_TONE_NOT_PLAYED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "UICC_SESSION_TERM_BY_USER"

    const/16 v2, 0xa

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "BACKWARD_MOVE_BY_USER"

    const/16 v2, 0xb

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "NO_RESPONSE_FROM_USER"

    const/16 v2, 0xc

    const/16 v5, 0x12

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "HELP_INFO_REQUIRED"

    const/16 v2, 0xd

    const/16 v6, 0x13

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "USSD_SS_SESSION_TERM_BY_USER"

    const/16 v2, 0xe

    const/16 v7, 0x14

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "TERMINAL_CRNTLY_UNABLE_TO_PROCESS"

    const/16 v2, 0xf

    const/16 v8, 0x20

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "NETWORK_CRNTLY_UNABLE_TO_PROCESS"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "USER_NOT_ACCEPT"

    const/16 v3, 0x22

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "USER_CLEAR_DOWN_CALL"

    const/16 v4, 0x23

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "CONTRADICTION_WITH_TIMER"

    const/16 v5, 0x24

    invoke-direct {v0, v1, v6, v5}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "NAA_CALL_CONTROL_TEMPORARY"

    const/16 v6, 0x25

    invoke-direct {v0, v1, v7, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x15

    const/16 v6, 0x26

    const-string v7, "LAUNCH_BROWSER_ERROR"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x16

    const/16 v6, 0x27

    const-string v7, "MMS_TEMPORARY"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x17

    const/16 v6, 0x30

    const-string v7, "BEYOND_TERMINAL_CAPABILITY"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x18

    const/16 v6, 0x31

    const-string v7, "CMD_TYPE_NOT_UNDERSTOOD"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x19

    const/16 v6, 0x32

    const-string v7, "CMD_DATA_NOT_UNDERSTOOD"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x1a

    const/16 v6, 0x33

    const-string v7, "CMD_NUM_NOT_KNOWN"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x1b

    const/16 v6, 0x34

    const-string v7, "SS_RETURN_ERROR"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 158
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x1c

    const/16 v6, 0x35

    const-string v7, "SMS_RP_ERROR"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x1d

    const/16 v6, 0x36

    const-string v7, "REQUIRED_VALUES_MISSING"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x1e

    const/16 v6, 0x37

    const-string v7, "USSD_RETURN_ERROR"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 168
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v1, 0x1f

    const/16 v6, 0x38

    const-string v7, "MULTI_CARDS_CMD_ERROR"

    invoke-direct {v0, v7, v1, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 174
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "USIM_CALL_CONTROL_PERMANENT"

    const/16 v6, 0x39

    invoke-direct {v0, v1, v8, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    .line 178
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "BIP_ERROR"

    const/16 v6, 0x3a

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 182
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "ACCESS_TECH_UNABLE_TO_PROCESS"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "FRAMES_ERROR"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 188
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    const-string v1, "MMS_ERROR"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    .line 30
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->$values()[Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->$VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput p3, p0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;
    .registers 6

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 208
    iget v4, v3, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ResultCode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 30
    const-class v0, Lcom/android/internal/telephony/cat/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/ResultCode;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/cat/ResultCode;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->$VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/ResultCode;

    return-object v0
.end method


# virtual methods
.method public greylist-max-r value()I
    .registers 1

    .line 203
    iget p0, p0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    return p0
.end method
