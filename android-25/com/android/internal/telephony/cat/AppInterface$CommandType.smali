.class public final enum Lcom/android/internal/telephony/cat/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x12

    #@2
    const/16 v7, 0x11

    #@4
    const/16 v6, 0x10

    #@6
    const/4 v5, 0x5

    #@7
    const/4 v4, 0x1

    #@8
    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@a
    const-string/jumbo v1, "DISPLAY_TEXT"

    #@d
    const/4 v2, 0x0

    #@e
    const/16 v3, 0x21

    #@10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@13
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@15
    .line 65
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@17
    const-string/jumbo v1, "GET_INKEY"

    #@1a
    const/16 v2, 0x22

    #@1c
    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@1f
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@21
    .line 66
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@23
    const-string/jumbo v1, "GET_INPUT"

    #@26
    const/4 v2, 0x2

    #@27
    const/16 v3, 0x23

    #@29
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@2c
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2e
    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@30
    const-string/jumbo v1, "LAUNCH_BROWSER"

    #@33
    const/4 v2, 0x3

    #@34
    const/16 v3, 0x15

    #@36
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@39
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@3b
    .line 68
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@3d
    const-string/jumbo v1, "PLAY_TONE"

    #@40
    const/4 v2, 0x4

    #@41
    const/16 v3, 0x20

    #@43
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@46
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@48
    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@4a
    const-string/jumbo v1, "REFRESH"

    #@4d
    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@50
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@52
    .line 70
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@54
    const-string/jumbo v1, "SELECT_ITEM"

    #@57
    const/4 v2, 0x6

    #@58
    const/16 v3, 0x24

    #@5a
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@5d
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@5f
    .line 71
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@61
    const-string/jumbo v1, "SEND_SS"

    #@64
    const/4 v2, 0x7

    #@65
    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@68
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@6a
    .line 72
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@6c
    const-string/jumbo v1, "SEND_USSD"

    #@6f
    const/16 v2, 0x8

    #@71
    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@74
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@76
    .line 73
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@78
    const-string/jumbo v1, "SEND_SMS"

    #@7b
    const/16 v2, 0x9

    #@7d
    const/16 v3, 0x13

    #@7f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@82
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@84
    .line 74
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@86
    const-string/jumbo v1, "SEND_DTMF"

    #@89
    const/16 v2, 0xa

    #@8b
    const/16 v3, 0x14

    #@8d
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@90
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@92
    .line 75
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@94
    const-string/jumbo v1, "SET_UP_EVENT_LIST"

    #@97
    const/16 v2, 0xb

    #@99
    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@9c
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@9e
    .line 76
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@a0
    const-string/jumbo v1, "SET_UP_IDLE_MODE_TEXT"

    #@a3
    const/16 v2, 0xc

    #@a5
    const/16 v3, 0x28

    #@a7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@aa
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@ac
    .line 77
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@ae
    const-string/jumbo v1, "SET_UP_MENU"

    #@b1
    const/16 v2, 0xd

    #@b3
    const/16 v3, 0x25

    #@b5
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@b8
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@ba
    .line 78
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@bc
    const-string/jumbo v1, "SET_UP_CALL"

    #@bf
    const/16 v2, 0xe

    #@c1
    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@c4
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@c6
    .line 79
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@c8
    const-string/jumbo v1, "PROVIDE_LOCAL_INFORMATION"

    #@cb
    const/16 v2, 0xf

    #@cd
    const/16 v3, 0x26

    #@cf
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@d2
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@d4
    .line 80
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@d6
    const-string/jumbo v1, "OPEN_CHANNEL"

    #@d9
    const/16 v2, 0x40

    #@db
    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@de
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@e0
    .line 81
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@e2
    const-string/jumbo v1, "CLOSE_CHANNEL"

    #@e5
    const/16 v2, 0x41

    #@e7
    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@ea
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@ec
    .line 82
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@ee
    const-string/jumbo v1, "RECEIVE_DATA"

    #@f1
    const/16 v2, 0x42

    #@f3
    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@f6
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@f8
    .line 83
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@fa
    const-string/jumbo v1, "SEND_DATA"

    #@fd
    const/16 v2, 0x13

    #@ff
    const/16 v3, 0x43

    #@101
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@104
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@106
    .line 84
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@108
    const-string/jumbo v1, "GET_CHANNEL_STATUS"

    #@10b
    const/16 v2, 0x14

    #@10d
    const/16 v3, 0x44

    #@10f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    #@112
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@114
    .line 63
    const/16 v0, 0x15

    #@116
    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@118
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@11a
    const/4 v2, 0x0

    #@11b
    aput-object v1, v0, v2

    #@11d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@11f
    aput-object v1, v0, v4

    #@121
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@123
    const/4 v2, 0x2

    #@124
    aput-object v1, v0, v2

    #@126
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@128
    const/4 v2, 0x3

    #@129
    aput-object v1, v0, v2

    #@12b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@12d
    const/4 v2, 0x4

    #@12e
    aput-object v1, v0, v2

    #@130
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@132
    aput-object v1, v0, v5

    #@134
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@136
    const/4 v2, 0x6

    #@137
    aput-object v1, v0, v2

    #@139
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@13b
    const/4 v2, 0x7

    #@13c
    aput-object v1, v0, v2

    #@13e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@140
    const/16 v2, 0x8

    #@142
    aput-object v1, v0, v2

    #@144
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@146
    const/16 v2, 0x9

    #@148
    aput-object v1, v0, v2

    #@14a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@14c
    const/16 v2, 0xa

    #@14e
    aput-object v1, v0, v2

    #@150
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@152
    const/16 v2, 0xb

    #@154
    aput-object v1, v0, v2

    #@156
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@158
    const/16 v2, 0xc

    #@15a
    aput-object v1, v0, v2

    #@15c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@15e
    const/16 v2, 0xd

    #@160
    aput-object v1, v0, v2

    #@162
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@164
    const/16 v2, 0xe

    #@166
    aput-object v1, v0, v2

    #@168
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@16a
    const/16 v2, 0xf

    #@16c
    aput-object v1, v0, v2

    #@16e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@170
    aput-object v1, v0, v6

    #@172
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@174
    aput-object v1, v0, v7

    #@176
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@178
    aput-object v1, v0, v8

    #@17a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@17c
    const/16 v2, 0x13

    #@17e
    aput-object v1, v0, v2

    #@180
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@182
    const/16 v2, 0x14

    #@184
    aput-object v1, v0, v2

    #@186
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@188
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 89
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    #@5
    .line 88
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 5
    .param p0, "value"    # I

    #@0
    .prologue
    .line 105
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

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
    .line 106
    .local v0, "e":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    iget v4, v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    #@c
    if-ne v4, p0, :cond_0

    #@e
    .line 107
    return-object v0

    #@f
    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 110
    .end local v0    # "e":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_1
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    #@0
    .prologue
    .line 63
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    #@2
    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    #@2
    return v0
.end method
