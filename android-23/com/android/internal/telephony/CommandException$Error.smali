.class public final enum Lcom/android/internal/telephony/CommandException$Error;
.super Ljava/lang/Enum;
.source "CommandException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandException$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

.field public static final enum USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;


# direct methods
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
    .line 30
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@7
    const-string/jumbo v1, "INVALID_RESPONSE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    #@f
    .line 31
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@11
    const-string/jumbo v1, "RADIO_NOT_AVAILABLE"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@19
    .line 32
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@1b
    const-string/jumbo v1, "GENERIC_FAILURE"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@23
    .line 33
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@25
    const-string/jumbo v1, "PASSWORD_INCORRECT"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@2d
    .line 34
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@2f
    const-string/jumbo v1, "SIM_PIN2"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    #@37
    .line 35
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@39
    const-string/jumbo v1, "SIM_PUK2"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@40
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    #@42
    .line 36
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@44
    const-string/jumbo v1, "REQUEST_NOT_SUPPORTED"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@4b
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@4d
    .line 37
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@4f
    const-string/jumbo v1, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    #@58
    .line 38
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@5a
    const-string/jumbo v1, "OP_NOT_ALLOWED_BEFORE_REG_NW"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@64
    .line 39
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@66
    const-string/jumbo v1, "SMS_FAIL_RETRY"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@6e
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    #@70
    .line 40
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@72
    const-string/jumbo v1, "SIM_ABSENT"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    #@7c
    .line 41
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@7e
    const-string/jumbo v1, "SUBSCRIPTION_NOT_AVAILABLE"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@86
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@88
    .line 42
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@8a
    const-string/jumbo v1, "MODE_NOT_SUPPORTED"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@92
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@94
    .line 43
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@96
    const-string/jumbo v1, "FDN_CHECK_FAILURE"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@9e
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@a0
    .line 44
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@a2
    const-string/jumbo v1, "ILLEGAL_SIM_OR_ME"

    #@a5
    const/16 v2, 0xe

    #@a7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    #@ac
    .line 45
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@ae
    const-string/jumbo v1, "MISSING_RESOURCE"

    #@b1
    const/16 v2, 0xf

    #@b3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@b6
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    #@b8
    .line 46
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@ba
    const-string/jumbo v1, "NO_SUCH_ELEMENT"

    #@bd
    const/16 v2, 0x10

    #@bf
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@c2
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    #@c4
    .line 47
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@c6
    const-string/jumbo v1, "SUBSCRIPTION_NOT_SUPPORTED"

    #@c9
    const/16 v2, 0x11

    #@cb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@ce
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@d0
    .line 48
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@d2
    const-string/jumbo v1, "DIAL_MODIFIED_TO_USSD"

    #@d5
    const/16 v2, 0x12

    #@d7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@da
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@dc
    .line 49
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@de
    const-string/jumbo v1, "DIAL_MODIFIED_TO_SS"

    #@e1
    const/16 v2, 0x13

    #@e3
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@e6
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@e8
    .line 50
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@ea
    const-string/jumbo v1, "DIAL_MODIFIED_TO_DIAL"

    #@ed
    const/16 v2, 0x14

    #@ef
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@f2
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@f4
    .line 51
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@f6
    const-string/jumbo v1, "USSD_MODIFIED_TO_DIAL"

    #@f9
    const/16 v2, 0x15

    #@fb
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@fe
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@100
    .line 52
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@102
    const-string/jumbo v1, "USSD_MODIFIED_TO_SS"

    #@105
    const/16 v2, 0x16

    #@107
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@10a
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@10c
    .line 53
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@10e
    const-string/jumbo v1, "USSD_MODIFIED_TO_USSD"

    #@111
    const/16 v2, 0x17

    #@113
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@116
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@118
    .line 54
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@11a
    const-string/jumbo v1, "SS_MODIFIED_TO_DIAL"

    #@11d
    const/16 v2, 0x18

    #@11f
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@122
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@124
    .line 55
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@126
    const-string/jumbo v1, "SS_MODIFIED_TO_USSD"

    #@129
    const/16 v2, 0x19

    #@12b
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@12e
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@130
    .line 56
    new-instance v0, Lcom/android/internal/telephony/CommandException$Error;

    #@132
    const-string/jumbo v1, "SS_MODIFIED_TO_SS"

    #@135
    const/16 v2, 0x1a

    #@137
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandException$Error;-><init>(Ljava/lang/String;I)V

    #@13a
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@13c
    .line 29
    const/16 v0, 0x1b

    #@13e
    new-array v0, v0, [Lcom/android/internal/telephony/CommandException$Error;

    #@140
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    #@142
    aput-object v1, v0, v3

    #@144
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@146
    aput-object v1, v0, v4

    #@148
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@14a
    aput-object v1, v0, v5

    #@14c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@14e
    aput-object v1, v0, v6

    #@150
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    #@152
    aput-object v1, v0, v7

    #@154
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    #@156
    const/4 v2, 0x5

    #@157
    aput-object v1, v0, v2

    #@159
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@15b
    const/4 v2, 0x6

    #@15c
    aput-object v1, v0, v2

    #@15e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    #@160
    const/4 v2, 0x7

    #@161
    aput-object v1, v0, v2

    #@163
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@165
    const/16 v2, 0x8

    #@167
    aput-object v1, v0, v2

    #@169
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    #@16b
    const/16 v2, 0x9

    #@16d
    aput-object v1, v0, v2

    #@16f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    #@171
    const/16 v2, 0xa

    #@173
    aput-object v1, v0, v2

    #@175
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@177
    const/16 v2, 0xb

    #@179
    aput-object v1, v0, v2

    #@17b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@17d
    const/16 v2, 0xc

    #@17f
    aput-object v1, v0, v2

    #@181
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@183
    const/16 v2, 0xd

    #@185
    aput-object v1, v0, v2

    #@187
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    #@189
    const/16 v2, 0xe

    #@18b
    aput-object v1, v0, v2

    #@18d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    #@18f
    const/16 v2, 0xf

    #@191
    aput-object v1, v0, v2

    #@193
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    #@195
    const/16 v2, 0x10

    #@197
    aput-object v1, v0, v2

    #@199
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@19b
    const/16 v2, 0x11

    #@19d
    aput-object v1, v0, v2

    #@19f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@1a1
    const/16 v2, 0x12

    #@1a3
    aput-object v1, v0, v2

    #@1a5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@1a7
    const/16 v2, 0x13

    #@1a9
    aput-object v1, v0, v2

    #@1ab
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@1ad
    const/16 v2, 0x14

    #@1af
    aput-object v1, v0, v2

    #@1b1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@1b3
    const/16 v2, 0x15

    #@1b5
    aput-object v1, v0, v2

    #@1b7
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@1b9
    const/16 v2, 0x16

    #@1bb
    aput-object v1, v0, v2

    #@1bd
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@1bf
    const/16 v2, 0x17

    #@1c1
    aput-object v1, v0, v2

    #@1c3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@1c5
    const/16 v2, 0x18

    #@1c7
    aput-object v1, v0, v2

    #@1c9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@1cb
    const/16 v2, 0x19

    #@1cd
    aput-object v1, v0, v2

    #@1cf
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@1d1
    const/16 v2, 0x1a

    #@1d3
    aput-object v1, v0, v2

    #@1d5
    sput-object v0, Lcom/android/internal/telephony/CommandException$Error;->$VALUES:[Lcom/android/internal/telephony/CommandException$Error;

    #@1d7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandException$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Lcom/android/internal/telephony/CommandException$Error;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/CommandException$Error;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandException$Error;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->$VALUES:[Lcom/android/internal/telephony/CommandException$Error;

    #@2
    return-object v0
.end method
