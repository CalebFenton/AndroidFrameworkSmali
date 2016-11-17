.class public final enum Lcom/android/internal/telephony/cat/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum OK:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

.field public static final enum USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@7
    const-string/jumbo v1, "OK"

    #@a
    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@d
    .line 34
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@f
    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@11
    const-string/jumbo v1, "PRFRMD_WITH_PARTIAL_COMPREHENSION"

    #@14
    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@17
    .line 37
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    #@19
    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@1b
    const-string/jumbo v1, "PRFRMD_WITH_MISSING_INFO"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@21
    .line 40
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    #@23
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@25
    const-string/jumbo v1, "PRFRMD_WITH_ADDITIONAL_EFS_READ"

    #@28
    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 43
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    #@2d
    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@2f
    const-string/jumbo v1, "PRFRMD_ICON_NOT_DISPLAYED"

    #@32
    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@35
    .line 49
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@37
    .line 51
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@39
    const-string/jumbo v1, "PRFRMD_MODIFIED_BY_NAA"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 52
    const/4 v3, 0x5

    #@3e
    .line 51
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@41
    .line 52
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    #@43
    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@45
    const-string/jumbo v1, "PRFRMD_LIMITED_SERVICE"

    #@48
    const/4 v2, 0x6

    #@49
    .line 55
    const/4 v3, 0x6

    #@4a
    .line 54
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 55
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    #@4f
    .line 57
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@51
    const-string/jumbo v1, "PRFRMD_WITH_MODIFICATION"

    #@54
    const/4 v2, 0x7

    #@55
    .line 58
    const/4 v3, 0x7

    #@56
    .line 57
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@59
    .line 58
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    #@5b
    .line 60
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@5d
    const-string/jumbo v1, "PRFRMD_NAA_NOT_ACTIVE"

    #@60
    const/16 v2, 0x8

    #@62
    .line 61
    const/16 v3, 0x8

    #@64
    .line 60
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@67
    .line 61
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    #@69
    .line 63
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@6b
    const-string/jumbo v1, "PRFRMD_TONE_NOT_PLAYED"

    #@6e
    const/16 v2, 0x9

    #@70
    .line 64
    const/16 v3, 0x9

    #@72
    .line 63
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@75
    .line 64
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@77
    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@79
    const-string/jumbo v1, "UICC_SESSION_TERM_BY_USER"

    #@7c
    const/16 v2, 0xa

    #@7e
    .line 67
    const/16 v3, 0x10

    #@80
    .line 66
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@83
    .line 67
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@85
    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@87
    const-string/jumbo v1, "BACKWARD_MOVE_BY_USER"

    #@8a
    const/16 v2, 0xb

    #@8c
    .line 70
    const/16 v3, 0x11

    #@8e
    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@91
    .line 70
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@93
    .line 72
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@95
    const-string/jumbo v1, "NO_RESPONSE_FROM_USER"

    #@98
    const/16 v2, 0xc

    #@9a
    .line 73
    const/16 v3, 0x12

    #@9c
    .line 72
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@9f
    .line 73
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@a1
    .line 75
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@a3
    const-string/jumbo v1, "HELP_INFO_REQUIRED"

    #@a6
    const/16 v2, 0xd

    #@a8
    .line 76
    const/16 v3, 0x13

    #@aa
    .line 75
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@ad
    .line 76
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    #@af
    .line 78
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@b1
    const-string/jumbo v1, "USSD_SS_SESSION_TERM_BY_USER"

    #@b4
    const/16 v2, 0xe

    #@b6
    .line 79
    const/16 v3, 0x14

    #@b8
    .line 78
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@bb
    .line 79
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@bd
    .line 82
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@bf
    const-string/jumbo v1, "TERMINAL_CRNTLY_UNABLE_TO_PROCESS"

    #@c2
    const/16 v2, 0xf

    #@c4
    .line 88
    const/16 v3, 0x20

    #@c6
    .line 82
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@c9
    .line 88
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@cb
    .line 90
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@cd
    const-string/jumbo v1, "NETWORK_CRNTLY_UNABLE_TO_PROCESS"

    #@d0
    const/16 v2, 0x10

    #@d2
    .line 91
    const/16 v3, 0x21

    #@d4
    .line 90
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@d7
    .line 91
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@d9
    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@db
    const-string/jumbo v1, "USER_NOT_ACCEPT"

    #@de
    const/16 v2, 0x11

    #@e0
    .line 94
    const/16 v3, 0x22

    #@e2
    .line 93
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@e5
    .line 94
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    #@e7
    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@e9
    const-string/jumbo v1, "USER_CLEAR_DOWN_CALL"

    #@ec
    const/16 v2, 0x12

    #@ee
    .line 97
    const/16 v3, 0x23

    #@f0
    .line 96
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@f3
    .line 97
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    #@f5
    .line 99
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@f7
    const-string/jumbo v1, "CONTRADICTION_WITH_TIMER"

    #@fa
    const/16 v2, 0x13

    #@fc
    .line 100
    const/16 v3, 0x24

    #@fe
    .line 99
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@101
    .line 100
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    #@103
    .line 102
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@105
    const-string/jumbo v1, "NAA_CALL_CONTROL_TEMPORARY"

    #@108
    const/16 v2, 0x14

    #@10a
    .line 103
    const/16 v3, 0x25

    #@10c
    .line 102
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@10f
    .line 103
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@111
    .line 105
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@113
    const-string/jumbo v1, "LAUNCH_BROWSER_ERROR"

    #@116
    const/16 v2, 0x15

    #@118
    .line 106
    const/16 v3, 0x26

    #@11a
    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@11d
    .line 106
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@11f
    .line 108
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@121
    const-string/jumbo v1, "MMS_TEMPORARY"

    #@124
    const/16 v2, 0x16

    #@126
    .line 109
    const/16 v3, 0x27

    #@128
    .line 108
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@12b
    .line 109
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@12d
    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@12f
    const-string/jumbo v1, "BEYOND_TERMINAL_CAPABILITY"

    #@132
    const/16 v2, 0x17

    #@134
    .line 119
    const/16 v3, 0x30

    #@136
    .line 112
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@139
    .line 119
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@13b
    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@13d
    const-string/jumbo v1, "CMD_TYPE_NOT_UNDERSTOOD"

    #@140
    const/16 v2, 0x18

    #@142
    .line 122
    const/16 v3, 0x31

    #@144
    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@147
    .line 122
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@149
    .line 124
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@14b
    const-string/jumbo v1, "CMD_DATA_NOT_UNDERSTOOD"

    #@14e
    const/16 v2, 0x19

    #@150
    .line 125
    const/16 v3, 0x32

    #@152
    .line 124
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@155
    .line 125
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@157
    .line 127
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@159
    const-string/jumbo v1, "CMD_NUM_NOT_KNOWN"

    #@15c
    const/16 v2, 0x1a

    #@15e
    .line 128
    const/16 v3, 0x33

    #@160
    .line 127
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@163
    .line 128
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    #@165
    .line 130
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@167
    const-string/jumbo v1, "SS_RETURN_ERROR"

    #@16a
    const/16 v2, 0x1b

    #@16c
    .line 131
    const/16 v3, 0x34

    #@16e
    .line 130
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@171
    .line 131
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@173
    .line 133
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@175
    const-string/jumbo v1, "SMS_RP_ERROR"

    #@178
    const/16 v2, 0x1c

    #@17a
    .line 134
    const/16 v3, 0x35

    #@17c
    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@17f
    .line 134
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@181
    .line 136
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@183
    const-string/jumbo v1, "REQUIRED_VALUES_MISSING"

    #@186
    const/16 v2, 0x1d

    #@188
    .line 137
    const/16 v3, 0x36

    #@18a
    .line 136
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@18d
    .line 137
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@18f
    .line 139
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@191
    const-string/jumbo v1, "USSD_RETURN_ERROR"

    #@194
    const/16 v2, 0x1e

    #@196
    .line 140
    const/16 v3, 0x37

    #@198
    .line 139
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@19b
    .line 140
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@19d
    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@19f
    const-string/jumbo v1, "MULTI_CARDS_CMD_ERROR"

    #@1a2
    const/16 v2, 0x1f

    #@1a4
    .line 143
    const/16 v3, 0x38

    #@1a6
    .line 142
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@1a9
    .line 143
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@1ab
    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@1ad
    const-string/jumbo v1, "USIM_CALL_CONTROL_PERMANENT"

    #@1b0
    const/16 v2, 0x20

    #@1b2
    .line 149
    const/16 v3, 0x39

    #@1b4
    .line 145
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@1b7
    .line 149
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    #@1b9
    .line 151
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@1bb
    const-string/jumbo v1, "BIP_ERROR"

    #@1be
    const/16 v2, 0x21

    #@1c0
    .line 152
    const/16 v3, 0x3a

    #@1c2
    .line 151
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@1c5
    .line 152
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@1c7
    .line 154
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@1c9
    const-string/jumbo v1, "ACCESS_TECH_UNABLE_TO_PROCESS"

    #@1cc
    const/16 v2, 0x22

    #@1ce
    .line 155
    const/16 v3, 0x3b

    #@1d0
    .line 154
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@1d3
    .line 155
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@1d5
    .line 157
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@1d7
    const-string/jumbo v1, "FRAMES_ERROR"

    #@1da
    const/16 v2, 0x23

    #@1dc
    .line 158
    const/16 v3, 0x3c

    #@1de
    .line 157
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@1e1
    .line 158
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@1e3
    .line 160
    new-instance v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@1e5
    const-string/jumbo v1, "MMS_ERROR"

    #@1e8
    const/16 v2, 0x24

    #@1ea
    .line 161
    const/16 v3, 0x3d

    #@1ec
    .line 160
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ResultCode;-><init>(Ljava/lang/String;II)V

    #@1ef
    .line 161
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@1f1
    .line 27
    const/16 v0, 0x25

    #@1f3
    new-array v0, v0, [Lcom/android/internal/telephony/cat/ResultCode;

    #@1f5
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    #@1f7
    aput-object v1, v0, v4

    #@1f9
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    #@1fb
    aput-object v1, v0, v5

    #@1fd
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    #@1ff
    aput-object v1, v0, v6

    #@201
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    #@203
    aput-object v1, v0, v7

    #@205
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@207
    aput-object v1, v0, v8

    #@209
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    #@20b
    const/4 v2, 0x5

    #@20c
    aput-object v1, v0, v2

    #@20e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    #@210
    const/4 v2, 0x6

    #@211
    aput-object v1, v0, v2

    #@213
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    #@215
    const/4 v2, 0x7

    #@216
    aput-object v1, v0, v2

    #@218
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    #@21a
    const/16 v2, 0x8

    #@21c
    aput-object v1, v0, v2

    #@21e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    #@220
    const/16 v2, 0x9

    #@222
    aput-object v1, v0, v2

    #@224
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@226
    const/16 v2, 0xa

    #@228
    aput-object v1, v0, v2

    #@22a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@22c
    const/16 v2, 0xb

    #@22e
    aput-object v1, v0, v2

    #@230
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@232
    const/16 v2, 0xc

    #@234
    aput-object v1, v0, v2

    #@236
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    #@238
    const/16 v2, 0xd

    #@23a
    aput-object v1, v0, v2

    #@23c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    #@23e
    const/16 v2, 0xe

    #@240
    aput-object v1, v0, v2

    #@242
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@244
    const/16 v2, 0xf

    #@246
    aput-object v1, v0, v2

    #@248
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@24a
    const/16 v2, 0x10

    #@24c
    aput-object v1, v0, v2

    #@24e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    #@250
    const/16 v2, 0x11

    #@252
    aput-object v1, v0, v2

    #@254
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USER_CLEAR_DOWN_CALL:Lcom/android/internal/telephony/cat/ResultCode;

    #@256
    const/16 v2, 0x12

    #@258
    aput-object v1, v0, v2

    #@25a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cat/ResultCode;

    #@25c
    const/16 v2, 0x13

    #@25e
    aput-object v1, v0, v2

    #@260
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NAA_CALL_CONTROL_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@262
    const/16 v2, 0x14

    #@264
    aput-object v1, v0, v2

    #@266
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@268
    const/16 v2, 0x15

    #@26a
    aput-object v1, v0, v2

    #@26c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_TEMPORARY:Lcom/android/internal/telephony/cat/ResultCode;

    #@26e
    const/16 v2, 0x16

    #@270
    aput-object v1, v0, v2

    #@272
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    #@274
    const/16 v2, 0x17

    #@276
    aput-object v1, v0, v2

    #@278
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@27a
    const/16 v2, 0x18

    #@27c
    aput-object v1, v0, v2

    #@27e
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    #@280
    const/16 v2, 0x19

    #@282
    aput-object v1, v0, v2

    #@284
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_NUM_NOT_KNOWN:Lcom/android/internal/telephony/cat/ResultCode;

    #@286
    const/16 v2, 0x1a

    #@288
    aput-object v1, v0, v2

    #@28a
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@28c
    const/16 v2, 0x1b

    #@28e
    aput-object v1, v0, v2

    #@290
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->SMS_RP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@292
    const/16 v2, 0x1c

    #@294
    aput-object v1, v0, v2

    #@296
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    #@298
    const/16 v2, 0x1d

    #@29a
    aput-object v1, v0, v2

    #@29c
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@29e
    const/16 v2, 0x1e

    #@2a0
    aput-object v1, v0, v2

    #@2a2
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MULTI_CARDS_CMD_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@2a4
    const/16 v2, 0x1f

    #@2a6
    aput-object v1, v0, v2

    #@2a8
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    #@2aa
    const/16 v2, 0x20

    #@2ac
    aput-object v1, v0, v2

    #@2ae
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@2b0
    const/16 v2, 0x21

    #@2b2
    aput-object v1, v0, v2

    #@2b4
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->ACCESS_TECH_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    #@2b6
    const/16 v2, 0x22

    #@2b8
    aput-object v1, v0, v2

    #@2ba
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->FRAMES_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@2bc
    const/16 v2, 0x23

    #@2be
    aput-object v1, v0, v2

    #@2c0
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->MMS_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    #@2c2
    const/16 v2, 0x24

    #@2c4
    aput-object v1, v0, v2

    #@2c6
    sput-object v0, Lcom/android/internal/telephony/cat/ResultCode;->$VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

    #@2c8
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 167
    iput p3, p0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    #@5
    .line 166
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 179
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 180
    .local v0, "r":Lcom/android/internal/telephony/cat/ResultCode;
    iget v4, v0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 181
    return-object v0

    #@f
    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 184
    .end local v0    # "r":Lcom/android/internal/telephony/cat/ResultCode;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-class v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/ResultCode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->$VALUES:[Lcom/android/internal/telephony/cat/ResultCode;

    #@2
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    #@0
    .prologue
    .line 175
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultCode;->mCode:I

    #@2
    return v0
.end method
