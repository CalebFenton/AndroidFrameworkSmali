.class public final enum Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
.super Ljava/lang/Enum;
.source "ComprehensionTlvTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

.field public static final enum USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v6, 0x3

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@7
    const-string/jumbo v1, "COMMAND_DETAILS"

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@e
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@10
    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@12
    const-string/jumbo v1, "DEVICE_IDENTITIES"

    #@15
    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@18
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1a
    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1c
    const-string/jumbo v1, "RESULT"

    #@1f
    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@22
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@24
    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@26
    const-string/jumbo v1, "DURATION"

    #@29
    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@2c
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2e
    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@30
    const-string/jumbo v1, "ALPHA_ID"

    #@33
    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@36
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@38
    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@3a
    const-string/jumbo v1, "ADDRESS"

    #@3d
    const/4 v2, 0x6

    #@3e
    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@41
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@43
    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@45
    const-string/jumbo v1, "USSD_STRING"

    #@48
    const/4 v2, 0x6

    #@49
    const/16 v3, 0xa

    #@4b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@4e
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@50
    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@52
    const-string/jumbo v1, "SMS_TPDU"

    #@55
    const/4 v2, 0x7

    #@56
    const/16 v3, 0xb

    #@58
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@5b
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@5d
    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@5f
    const-string/jumbo v1, "TEXT_STRING"

    #@62
    const/16 v2, 0x8

    #@64
    const/16 v3, 0xd

    #@66
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@69
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@6b
    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@6d
    const-string/jumbo v1, "TONE"

    #@70
    const/16 v2, 0x9

    #@72
    const/16 v3, 0xe

    #@74
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@77
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@79
    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@7b
    const-string/jumbo v1, "ITEM"

    #@7e
    const/16 v2, 0xa

    #@80
    const/16 v3, 0xf

    #@82
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@85
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@87
    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@89
    const-string/jumbo v1, "ITEM_ID"

    #@8c
    const/16 v2, 0xb

    #@8e
    const/16 v3, 0x10

    #@90
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@93
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@95
    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@97
    const-string/jumbo v1, "RESPONSE_LENGTH"

    #@9a
    const/16 v2, 0xc

    #@9c
    const/16 v3, 0x11

    #@9e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@a1
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@a3
    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@a5
    const-string/jumbo v1, "FILE_LIST"

    #@a8
    const/16 v2, 0xd

    #@aa
    const/16 v3, 0x12

    #@ac
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@af
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@b1
    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@b3
    const-string/jumbo v1, "HELP_REQUEST"

    #@b6
    const/16 v2, 0xe

    #@b8
    const/16 v3, 0x15

    #@ba
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@bd
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@bf
    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@c1
    const-string/jumbo v1, "DEFAULT_TEXT"

    #@c4
    const/16 v2, 0xf

    #@c6
    const/16 v3, 0x17

    #@c8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@cb
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@cd
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@cf
    const-string/jumbo v1, "EVENT_LIST"

    #@d2
    const/16 v2, 0x10

    #@d4
    const/16 v3, 0x19

    #@d6
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@d9
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@db
    .line 43
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@dd
    const-string/jumbo v1, "ICON_ID"

    #@e0
    const/16 v2, 0x11

    #@e2
    const/16 v3, 0x1e

    #@e4
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@e7
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@e9
    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@eb
    const-string/jumbo v1, "ITEM_ICON_ID_LIST"

    #@ee
    const/16 v2, 0x12

    #@f0
    const/16 v3, 0x1f

    #@f2
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@f5
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@f7
    .line 45
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@f9
    const-string/jumbo v1, "IMMEDIATE_RESPONSE"

    #@fc
    const/16 v2, 0x13

    #@fe
    const/16 v3, 0x2b

    #@100
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@103
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@105
    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@107
    const-string/jumbo v1, "LANGUAGE"

    #@10a
    const/16 v2, 0x14

    #@10c
    const/16 v3, 0x2d

    #@10e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@111
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@113
    .line 47
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@115
    const-string/jumbo v1, "URL"

    #@118
    const/16 v2, 0x15

    #@11a
    const/16 v3, 0x31

    #@11c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@11f
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@121
    .line 48
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@123
    const-string/jumbo v1, "BROWSER_TERMINATION_CAUSE"

    #@126
    const/16 v2, 0x16

    #@128
    const/16 v3, 0x34

    #@12a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@12d
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@12f
    .line 49
    new-instance v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@131
    const-string/jumbo v1, "TEXT_ATTRIBUTE"

    #@134
    const/16 v2, 0x17

    #@136
    const/16 v3, 0x50

    #@138
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    #@13b
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@13d
    .line 25
    const/16 v0, 0x18

    #@13f
    new-array v0, v0, [Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@141
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@143
    const/4 v2, 0x0

    #@144
    aput-object v1, v0, v2

    #@146
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@148
    aput-object v1, v0, v4

    #@14a
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@14c
    aput-object v1, v0, v5

    #@14e
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@150
    aput-object v1, v0, v6

    #@152
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@154
    aput-object v1, v0, v7

    #@156
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@158
    aput-object v1, v0, v8

    #@15a
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@15c
    const/4 v2, 0x6

    #@15d
    aput-object v1, v0, v2

    #@15f
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@161
    const/4 v2, 0x7

    #@162
    aput-object v1, v0, v2

    #@164
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@166
    const/16 v2, 0x8

    #@168
    aput-object v1, v0, v2

    #@16a
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@16c
    const/16 v2, 0x9

    #@16e
    aput-object v1, v0, v2

    #@170
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@172
    const/16 v2, 0xa

    #@174
    aput-object v1, v0, v2

    #@176
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@178
    const/16 v2, 0xb

    #@17a
    aput-object v1, v0, v2

    #@17c
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@17e
    const/16 v2, 0xc

    #@180
    aput-object v1, v0, v2

    #@182
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@184
    const/16 v2, 0xd

    #@186
    aput-object v1, v0, v2

    #@188
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@18a
    const/16 v2, 0xe

    #@18c
    aput-object v1, v0, v2

    #@18e
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@190
    const/16 v2, 0xf

    #@192
    aput-object v1, v0, v2

    #@194
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@196
    const/16 v2, 0x10

    #@198
    aput-object v1, v0, v2

    #@19a
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@19c
    const/16 v2, 0x11

    #@19e
    aput-object v1, v0, v2

    #@1a0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1a2
    const/16 v2, 0x12

    #@1a4
    aput-object v1, v0, v2

    #@1a6
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1a8
    const/16 v2, 0x13

    #@1aa
    aput-object v1, v0, v2

    #@1ac
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1ae
    const/16 v2, 0x14

    #@1b0
    aput-object v1, v0, v2

    #@1b2
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1b4
    const/16 v2, 0x15

    #@1b6
    aput-object v1, v0, v2

    #@1b8
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1ba
    const/16 v2, 0x16

    #@1bc
    aput-object v1, v0, v2

    #@1be
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1c0
    const/16 v2, 0x17

    #@1c2
    aput-object v1, v0, v2

    #@1c4
    sput-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@1c6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 54
    iput p3, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    #@5
    .line 53
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 67
    invoke-static {}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

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
    .line 68
    .local v0, "e":Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    iget v4, v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 69
    return-object v0

    #@f
    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 72
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    #@0
    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->mValue:I

    #@2
    return v0
.end method
